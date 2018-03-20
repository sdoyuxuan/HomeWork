#ifndef _ALLOC_H
#include<iostream>
#include<mutex>
using namespace std;
#define _THROW_BAD_ALLOC do{cerr<<"out of memeory"<<endl;  \
	                      exit(1); }while (false)
class Malloc_alloc{
private:
//out of memory 处理
static void * oom_malloc(size_t);
static void * oom_realloc(void*, size_t);
static void(*handerforoom)();
public:
typedef void(*pFun) ();
static void* allocate(size_t n)
{
			void * ret = malloc(n);
			if (ret == NULL)
				{
				ret = oom_malloc(n);
					  }
		   return ret;
																				}
																					static void* reallocate(void* p, size_t new_sz)
																						{
																								void * ret = realloc(p, new_sz); // new_sz ==0 时 ，realloc返回NULL 使用效果相当于free
																										if (new_sz != 0 && ret == NULL)
																												{
																															ret = oom_realloc(p, new_sz);
																																	}
																																			return ret;
																																				}
																																					static pFun set_malloc_handler(pFun p)
																																						{
																																								pFun old;
																																										old = handerforoom;
																																												handerforoom = p;
																																														return old; //保存老的返回回去，为了当使用这个的用户使用完成时，恢复默认的设置，以待下次使用
																																															}
																																																static void deallocate(void*p)
																																																	{
																																																			free(p);
																																																				}
																																																				};
																																																				void(*Malloc_alloc::handerforoom)() = NULL;//类内静态成员初始化
																																																				void * Malloc_alloc::oom_malloc(size_t size)
																																																				{
																																																					void * ret = NULL;
																																																						pFun my_oom_handler = Malloc_alloc::handerforoom; // 这里我创建一个局部的函数指针变量而不去用malloc_alloc 共有的静态的函数指针，是为了保住该函数是线程安全函数。
																																																							for (;;)                                         // 因为每一个线程的栈空间是私有的。如果我直接使用共有的静态函数指针的话，可能我前一步判断它不为空，在正要使用时，一个线程就把它置为NULL，所以一当使用时就会立马崩溃
																																																								{
																																																										if (my_oom_handler == NULL) _THROW_BAD_ALLOC;
																																																												(*my_oom_handler)();
																																																														ret = malloc(size);
																																																																if (ret != NULL) return ret;
																																																																	}
																																																																	}
																																																																	void * Malloc_alloc::oom_realloc(void * p, size_t newsize)
																																																																	{
																																																																		pFun my_oom_handler = Malloc_alloc::handerforoom;
																																																																			for (;;)
																																																																				{
																																																																						if (my_oom_handler == NULL) _THROW_BAD_ALLOC;
																																																																								(*my_oom_handler)();
																																																																										p = realloc(p, newsize);
																																																																												if (p != NULL) return p;
																																																																													}
																																																																													}
																																																																													///////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
																																																																													/*一级内存配置器完毕！！！！*/
																																																																													//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
																																																																													enum {_ALIGN=8};
																																																																													enum {MaxBytes=128};
																																																																													enum { freeList_num = MaxBytes / _ALIGN };
																																																																													template<bool threads,int inst>
																																																																													class Defaultalloctemplate
																																																																													{
																																																																													public:
																																																																														union  block{
																																																																															    block* free_list_next;
																																																																															    		char usr_data[1];
																																																																															    			};
																																																																															    			private:
																																																																															    				static block* volatile free_list[freeList_num];
																																																																															    					static char * start_pool_free;
																																																																															    						static char * end_pool_free;
																																																																															    							static size_t heapsize;
																																																																															    							private:
																																																																															    								static size_t Round_up(size_t bytes) //向上对齐为八的倍数，具体操作就是给bytes的低三位对应的每一次都加上1，然后产生进位，保住bytes是向上调整了，然后再用按位与把低三位上的数全消为0
																																																																															    									{                                    //则剩下的数必为8的倍数 。填充的时候需要调
																																																																															    											return (bytes + _ALIGN - 1)&~(_ALIGN-1);
																																																																															    												}
																																																																															    													static size_t freeList_index(size_t bytes) // 找相应小块内存在自由链表中的下标
																																																																															    														{
																																																																															    																return (bytes + _ALIGN - 1) / _ALIGN - 1;
																																																																															    																	}
																																																																															    																		static void* refill(size_t __n);
																																																																															    																			static char* _S_chunk_alloc(size_t __size, int& __nobjs);
																																																																															    																			private:
																																																																															    																				static std::mutex mtx; // alloc 生命周期结束自动释放所以不存在内存泄漏
																																																																															    																						class _mutex{
																																																																															    																							public:
																																																																															    																									_mutex()
																																																																															    																											{
																																																																															    																														if (threads)
																																																																															    																																	{
																																																																															    																																					mtx.lock();
																																																																															    																																								}
																																																																															    																																										}
																																																																															    																																												~_mutex()
																																																																															    																																														{
																																																																															    																																																	if (threads) mtx.unlock();
																																																																															    																																																			}
																																																																															    																																																				};
																																																																															    																																																				public:
																																																																															    																																																					static void* Allocate(size_t);
																																																																															    																																																							static void* deallocate(void*p, size_t n);
	//
																																																																															    																																																								static void* reallocate(void*p, size_t old_sz, size_t new_sz);
																																																																															    																																																								};
																																																																															    																																																								template<bool threads, int inst>
																																																																															    																																																								std::mutex Defaultalloctemplate<threads, inst>::mtx; // mtx变量默认构造函数
																																																																															    																																																								template<bool threads, int inst>
																																																																															    																																																								typename Defaultalloctemplate<threads, inst>::block * volatile Defaultalloctemplate<threads, inst>::free_list[Defaultalloctemplate<threads, inst>::freeList_num] = { 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0 };
																																																																															    																																																								template<bool threads, int inst>
																																																																															    																																																								char * Defaultalloctemplate<threads, inst>::start_pool_free = NULL;
																																																																															    																																																								template<bool threads, int inst>
																																																																															    																																																								char * Defaultalloctemplate<threads, inst>::end_pool_free = NULL;
																																																																															    																																																								template<bool threads, int inst>
																																																																															    																																																								size_t Defaultalloctemplate<threads, inst>::heapsize = 0;
																																																																															    																																																								template<bool threads, int inst>
																																																																															    																																																								void * Defaultalloctemplate<threads, inst>::Allocate(size_t n)
																																																																															    																																																								{
																																																																															    																																																									void * ret=NULL;
																																																																															    																																																										if (n > MaxBytes)
																																																																															    																																																											{
																																																																															    																																																													ret = Malloc_alloc::allocate(n);
																																																																															    																																																															return ret;
																																																																															    																																																																}
																																																																															    																																																																	if (threads)
																																																																															    																																																																		{
																																																																															    																																																																				_mutex _lock;
																																																																															    																																																																					}
																																																																															    																																																																						block *volatile * Index_List = free_list + freeList_index(n); // 代表该2级指针所指的一级指针变量内容的储存空间易变
																																																																															    																																																																							if (Index_List == NULL)
																																																																															    																																																																								{
																																																																															    																																																																										ret = refill(Round_up(n));
																																																																															    																																																																											}
																																																																															    																																																																												else
																																																																															    																																																																													{
																																																																															    																																																																															ret = *Index_List;
																																																																															    																																																																																	*Index_List = (*Index_List)->free_list_next;
																																																																															    																																																																																		}
																																																																															    																																																																																			return ret;
																																																																															    																																																																																			}
#endif
