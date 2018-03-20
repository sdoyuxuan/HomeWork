	.file	"test2.cpp"
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN5Base1C2Ev,"axG",@progbits,_ZN5Base1C5Ev,comdat
	.align 2
	.weak	_ZN5Base1C2Ev
	.type	_ZN5Base1C2Ev, @function
_ZN5Base1C2Ev:
.LFB959:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$_ZTV5Base1+8, (%eax)
	movl	8(%ebp), %eax
	movl	$0, 4(%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE959:
	.size	_ZN5Base1C2Ev, .-_ZN5Base1C2Ev
	.weak	_ZN5Base1C1Ev
	.set	_ZN5Base1C1Ev,_ZN5Base1C2Ev
	.section	.rodata
.LC0:
	.string	"i am Base1"
	.section	.text._ZN5Base11AEv,"axG",@progbits,_ZN5Base11AEv,comdat
	.align 2
	.weak	_ZN5Base11AEv
	.type	_ZN5Base11AEv, @function
_ZN5Base11AEv:
.LFB961:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$.LC0, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE961:
	.size	_ZN5Base11AEv, .-_ZN5Base11AEv
	.section	.text._ZN5Base2C2Ev,"axG",@progbits,_ZN5Base2C5Ev,comdat
	.align 2
	.weak	_ZN5Base2C2Ev
	.type	_ZN5Base2C2Ev, @function
_ZN5Base2C2Ev:
.LFB963:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	8(%ebp), %eax
	movl	$_ZTV5Base2+8, (%eax)
	movl	8(%ebp), %eax
	movl	$1, 4(%eax)
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE963:
	.size	_ZN5Base2C2Ev, .-_ZN5Base2C2Ev
	.weak	_ZN5Base2C1Ev
	.set	_ZN5Base2C1Ev,_ZN5Base2C2Ev
	.section	.rodata
.LC1:
	.string	"i am Base2"
	.section	.text._ZN5Base21AEv,"axG",@progbits,_ZN5Base21AEv,comdat
	.align 2
	.weak	_ZN5Base21AEv
	.type	_ZN5Base21AEv, @function
_ZN5Base21AEv:
.LFB965:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$.LC1, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE965:
	.size	_ZN5Base21AEv, .-_ZN5Base21AEv
	.section	.rodata
.LC2:
	.string	"B"
	.section	.text._ZN5Base21BEv,"axG",@progbits,_ZN5Base21BEv,comdat
	.align 2
	.weak	_ZN5Base21BEv
	.type	_ZN5Base21BEv, @function
_ZN5Base21BEv:
.LFB966:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$.LC2, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE966:
	.size	_ZN5Base21BEv, .-_ZN5Base21BEv
	.section	.text._ZN7DerviedC2Ev,"axG",@progbits,_ZN7DerviedC5Ev,comdat
	.align 2
	.weak	_ZN7DerviedC2Ev
	.type	_ZN7DerviedC2Ev, @function
_ZN7DerviedC2Ev:
.LFB968:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	_ZN5Base1C2Ev
	movl	8(%ebp), %eax
	addl	$8, %eax
	movl	%eax, (%esp)
	call	_ZN5Base2C2Ev
	movl	8(%ebp), %eax
	movl	$_ZTV7Dervied+8, (%eax)
	movl	8(%ebp), %eax
	movl	$_ZTV7Dervied+20, 8(%eax)
	movl	8(%ebp), %eax
	movl	$2, 16(%eax)
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE968:
	.size	_ZN7DerviedC2Ev, .-_ZN7DerviedC2Ev
	.weak	_ZN7DerviedC1Ev
	.set	_ZN7DerviedC1Ev,_ZN7DerviedC2Ev
	.section	.text._ZN7Dervied1AEv,"axG",@progbits,_ZN7Dervied1AEv,comdat
	.weak	_ZTchn8_h8_N7Dervied1AEv
	.type	_ZTchn8_h8_N7Dervied1AEv, @function
_ZTchn8_h8_N7Dervied1AEv:
.LFB985:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	addl	$-8, 4(%esp)
	jmp	.LTHUNK1
	.cfi_endproc
.LFE985:
	.size	_ZTchn8_h8_N7Dervied1AEv, .-_ZTchn8_h8_N7Dervied1AEv
	.section	.rodata
.LC3:
	.string	"i am Dervied"
	.section	.text._ZN7Dervied1AEv,"axG",@progbits,_ZN7Dervied1AEv,comdat
	.align 2
	.weak	_ZN7Dervied1AEv
	.type	_ZN7Dervied1AEv, @function
_ZN7Dervied1AEv:
.LFB970:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$.LC3, 4(%esp)
	movl	$_ZSt4cout, (%esp)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	movl	$_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_, 4(%esp)
	movl	%eax, (%esp)
	call	_ZNSolsEPFRSoS_E
	movl	8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE970:
	.size	_ZN7Dervied1AEv, .-_ZN7Dervied1AEv
	.text
.globl _Z4testP5Base2
	.type	_Z4testP5Base2, @function
_Z4testP5Base2:
.LFB971:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	*%edx
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE971:
	.size	_Z4testP5Base2, .-_Z4testP5Base2
	.section	.text._ZN5Base2aSERKS_,"axG",@progbits,_ZN5Base2aSERKS_,comdat
	.align 2
	.weak	_ZN5Base2aSERKS_
	.type	_ZN5Base2aSERKS_, @function
_ZN5Base2aSERKS_:
.LFB973:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	movl	12(%ebp), %eax
	movl	4(%eax), %edx
	movl	8(%ebp), %eax
	movl	%edx, 4(%eax)
	movl	8(%ebp), %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE973:
	.size	_ZN5Base2aSERKS_, .-_ZN5Base2aSERKS_
	.text
.globl main
	.type	main, @function
main:
.LFB972:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$64, %esp
	leal	36(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN7DerviedC1Ev
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN5Base2C1Ev
	leal	36(%esp), %eax
	addl	$8, %eax
	movl	%eax, 4(%esp)
	leal	28(%esp), %eax
	movl	%eax, (%esp)
	call	_ZN5Base2aSERKS_
	leal	36(%esp), %eax
	movl	%eax, 56(%esp) // esp+36 d esp+56 p
	leal	36(%esp), %eax
	addl	$8, %eax
	movl	%eax, 60(%esp) // 60+esp q
	movl	56(%esp), %eax // (*p).B()
	movl	8(%eax), %eax  // Base2 vptr eax
	addl	$4, %eax        // B()dizhi
	movl	(%eax), %eax  // B hanshu di zhi eax
	movl	56(%esp), %edx
	addl	$8, %edx
	movl	%edx, (%esp) // this chuan can
	call	*%eax  //diaoyong B()
	movl	56(%esp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	56(%esp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	60(%esp), %eax
	movl	(%eax), %eax
	movl	(%eax), %edx
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	*%edx
	movl	60(%esp), %eax
	movl	(%eax), %eax
	addl	$4, %eax
	movl	(%eax), %edx
	movl	60(%esp), %eax
	movl	%eax, (%esp)
	call	*%edx
	cmpl	$0, 56(%esp)
	je	.L20
	movl	56(%esp), %eax
	addl	$8, %eax
	jmp	.L21
.L20:
	movl	$0, %eax
.L21:
	movl	%eax, (%esp)
	call	_Z4testP5Base2
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE972:
	.size	main, .-main
	.weak	_ZTV7Dervied
	.section	.rodata._ZTV7Dervied,"aG",@progbits,_ZTV7Dervied,comdat
	.align 8
	.type	_ZTV7Dervied, @object
	.size	_ZTV7Dervied, 28
_ZTV7Dervied:
	.long	0
	.long	_ZTI7Dervied
	.long	_ZN7Dervied1AEv
	.long	-8
	.long	_ZTI7Dervied
	.long	_ZTchn8_h8_N7Dervied1AEv
	.long	_ZN5Base21BEv
	.weak	_ZTV5Base2
	.section	.rodata._ZTV5Base2,"aG",@progbits,_ZTV5Base2,comdat
	.align 8
	.type	_ZTV5Base2, @object
	.size	_ZTV5Base2, 16
_ZTV5Base2:
	.long	0
	.long	_ZTI5Base2
	.long	_ZN5Base21AEv
	.long	_ZN5Base21BEv
	.weak	_ZTV5Base1
	.section	.rodata._ZTV5Base1,"aG",@progbits,_ZTV5Base1,comdat
	.align 8
	.type	_ZTV5Base1, @object
	.size	_ZTV5Base1, 12
_ZTV5Base1:
	.long	0
	.long	_ZTI5Base1
	.long	_ZN5Base11AEv
	.weak	_ZTS7Dervied
	.section	.rodata._ZTS7Dervied,"aG",@progbits,_ZTS7Dervied,comdat
	.type	_ZTS7Dervied, @object
	.size	_ZTS7Dervied, 9
_ZTS7Dervied:
	.string	"7Dervied"
	.weak	_ZTI7Dervied
	.section	.rodata._ZTI7Dervied,"aG",@progbits,_ZTI7Dervied,comdat
	.align 32
	.type	_ZTI7Dervied, @object
	.size	_ZTI7Dervied, 32
_ZTI7Dervied:
	.long	_ZTVN10__cxxabiv121__vmi_class_type_infoE+8
	.long	_ZTS7Dervied
	.long	0
	.long	2
	.long	_ZTI5Base1
	.long	2
	.long	_ZTI5Base2
	.long	2050
	.weak	_ZTS5Base2
	.section	.rodata._ZTS5Base2,"aG",@progbits,_ZTS5Base2,comdat
	.type	_ZTS5Base2, @object
	.size	_ZTS5Base2, 7
_ZTS5Base2:
	.string	"5Base2"
	.weak	_ZTI5Base2
	.section	.rodata._ZTI5Base2,"aG",@progbits,_ZTI5Base2,comdat
	.align 4
	.type	_ZTI5Base2, @object
	.size	_ZTI5Base2, 8
_ZTI5Base2:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS5Base2
	.weak	_ZTS5Base1
	.section	.rodata._ZTS5Base1,"aG",@progbits,_ZTS5Base1,comdat
	.type	_ZTS5Base1, @object
	.size	_ZTS5Base1, 7
_ZTS5Base1:
	.string	"5Base1"
	.weak	_ZTI5Base1
	.section	.rodata._ZTI5Base1,"aG",@progbits,_ZTI5Base1,comdat
	.align 4
	.type	_ZTI5Base1, @object
	.size	_ZTI5Base1, 8
_ZTI5Base1:
	.long	_ZTVN10__cxxabiv117__class_type_infoE+8
	.long	_ZTS5Base1
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB982:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	cmpl	$1, 8(%ebp)
	jne	.L25
	cmpl	$65535, 12(%ebp)
	jne	.L25
	movl	$_ZStL8__ioinit, (%esp)
	call	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %eax
	movl	$__dso_handle, 8(%esp)
	movl	$_ZStL8__ioinit, 4(%esp)
	movl	%eax, (%esp)
	call	__cxa_atexit
.L25:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE982:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__I__Z4testP5Base2, @function
_GLOBAL__I__Z4testP5Base2:
.LFB983:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	$65535, 4(%esp)
	movl	$1, (%esp)
	call	_Z41__static_initialization_and_destruction_0ii
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE983:
	.size	_GLOBAL__I__Z4testP5Base2, .-_GLOBAL__I__Z4testP5Base2
	.section	.ctors,"aw",@progbits
	.align 4
	.long	_GLOBAL__I__Z4testP5Base2
	.section	.text._ZN7Dervied1AEv,"axG",@progbits,_ZN7Dervied1AEv,comdat
	.weak	_ZTch0_h8_N7Dervied1AEv
	.type	_ZTch0_h8_N7Dervied1AEv, @function
_ZTch0_h8_N7Dervied1AEv:
.LFB984:
	.cfi_startproc
	.cfi_personality 0x0,__gxx_personality_v0
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	movl	8(%ebp), %eax
	movl	%eax, (%esp)
	call	.LTHUNK0
	testl	%eax, %eax
	je	.L29
	addl	$8, %eax
	jmp	.L30
.L29:
	movl	$0, %eax
.L30:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE984:
	.size	_ZTch0_h8_N7Dervied1AEv, .-_ZTch0_h8_N7Dervied1AEv
	.weakref	_ZL20__gthrw_pthread_oncePiPFvvE,pthread_once
	.weakref	_ZL27__gthrw_pthread_getspecificj,pthread_getspecific
	.weakref	_ZL27__gthrw_pthread_setspecificjPKv,pthread_setspecific
	.weakref	_ZL22__gthrw_pthread_createPmPK14pthread_attr_tPFPvS3_ES3_,pthread_create
	.weakref	_ZL20__gthrw_pthread_joinmPPv,pthread_join
	.weakref	_ZL21__gthrw_pthread_equalmm,pthread_equal
	.weakref	_ZL20__gthrw_pthread_selfv,pthread_self
	.weakref	_ZL22__gthrw_pthread_detachm,pthread_detach
	.weakref	_ZL22__gthrw_pthread_cancelm,pthread_cancel
	.weakref	_ZL19__gthrw_sched_yieldv,sched_yield
	.weakref	_ZL26__gthrw_pthread_mutex_lockP15pthread_mutex_t,pthread_mutex_lock
	.weakref	_ZL29__gthrw_pthread_mutex_trylockP15pthread_mutex_t,pthread_mutex_trylock
	.weakref	_ZL31__gthrw_pthread_mutex_timedlockP15pthread_mutex_tPK8timespec,pthread_mutex_timedlock
	.weakref	_ZL28__gthrw_pthread_mutex_unlockP15pthread_mutex_t,pthread_mutex_unlock
	.weakref	_ZL26__gthrw_pthread_mutex_initP15pthread_mutex_tPK19pthread_mutexattr_t,pthread_mutex_init
	.weakref	_ZL29__gthrw_pthread_mutex_destroyP15pthread_mutex_t,pthread_mutex_destroy
	.weakref	_ZL30__gthrw_pthread_cond_broadcastP14pthread_cond_t,pthread_cond_broadcast
	.weakref	_ZL27__gthrw_pthread_cond_signalP14pthread_cond_t,pthread_cond_signal
	.weakref	_ZL25__gthrw_pthread_cond_waitP14pthread_cond_tP15pthread_mutex_t,pthread_cond_wait
	.weakref	_ZL30__gthrw_pthread_cond_timedwaitP14pthread_cond_tP15pthread_mutex_tPK8timespec,pthread_cond_timedwait
	.weakref	_ZL28__gthrw_pthread_cond_destroyP14pthread_cond_t,pthread_cond_destroy
	.weakref	_ZL26__gthrw_pthread_key_createPjPFvPvE,pthread_key_create
	.weakref	_ZL26__gthrw_pthread_key_deletej,pthread_key_delete
	.weakref	_ZL30__gthrw_pthread_mutexattr_initP19pthread_mutexattr_t,pthread_mutexattr_init
	.weakref	_ZL33__gthrw_pthread_mutexattr_settypeP19pthread_mutexattr_ti,pthread_mutexattr_settype
	.weakref	_ZL33__gthrw_pthread_mutexattr_destroyP19pthread_mutexattr_t,pthread_mutexattr_destroy
	.set	.LTHUNK0,_ZN7Dervied1AEv
	.set	.LTHUNK1,_ZTch0_h8_N7Dervied1AEv
	.ident	"GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-17)"
	.section	.note.GNU-stack,"",@progbits
