
;; Function String::String(const char*) (_ZN6StringC2EPKc)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
Redirecting jump 23 from 7 to 9.
merging block 7 into block 6
Merged 6 and 7 without moving.
merging block 8 into block 6
Merged 6 and 8 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.h:10 (set (reg:CCZ 17 flags)
        (compare:CCZ (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                    (const_int 4 [0x4])) [0 p+0 S4 A32])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 6 5 7 2 class_string.h:10 (set (pc)
        (if_then_else (eq (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 12)
            (pc))) -1 (nil))
;; End of basic block 2 -> ( 4 3)

;; Succ edge  4
;; Succ edge  3 (fallthru)

;; Start of basic block ( 2) -> 3
;; Pred edge  2 (fallthru)
(note 7 6 8 3 [bb 3] NOTE_INSN_BASIC_BLOCK)

(insn 8 7 9 3 class_string.h:10 (set (reg/f:SI 63)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 p+0 S4 A32])) -1 (nil))

(insn 9 8 10 3 class_string.h:10 (set (reg:QI 62 [ D.21135 ])
        (mem:QI (reg/f:SI 63) [0 S1 A8])) -1 (nil))

(insn 10 9 11 3 class_string.h:10 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 62 [ D.21135 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 11 10 12 3 class_string.h:10 (set (pc)
        (if_then_else (ne (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 25)
            (pc))) -1 (nil))
;; End of basic block 3 -> ( 4 5)

;; Succ edge  4 (fallthru)
;; Succ edge  5

;; Start of basic block ( 2 3) -> 4
;; Pred edge  2
;; Pred edge  3 (fallthru)
(code_label 12 11 13 4 2 "" [1 uses])

(note 13 12 14 4 [bb 4] NOTE_INSN_BASIC_BLOCK)

(insn 14 13 15 4 class_string.h:12 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (const_int 1 [0x1])) -1 (nil))

(call_insn 15 14 16 4 class_string.h:12 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_Znaj") [flags 0x41]  <function_decl 0xb751f400 operator new []>) [0 S1 A8])
            (const_int 4 [0x4]))) -1 (nil)
    (nil))

(insn 16 15 17 4 class_string.h:12 (set (reg/f:SI 61 [ D.21137 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 17 16 18 4 class_string.h:12 (set (reg/f:SI 60 [ D.21138 ])
        (reg/f:SI 61 [ D.21137 ])) -1 (nil))

(insn 18 17 19 4 class_string.h:12 (set (reg/f:SI 64)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 19 18 20 4 class_string.h:12 (set (mem/s/f/j:SI (reg/f:SI 64) [0 <variable>._p+0 S4 A32])
        (reg/f:SI 60 [ D.21138 ])) -1 (nil))

(insn 20 19 21 4 class_string.h:13 (set (reg/f:SI 65)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 21 20 22 4 class_string.h:13 (set (reg/f:SI 59 [ D.21139 ])
        (mem/s/f/j:SI (reg/f:SI 65) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 22 21 23 4 class_string.h:13 (set (mem:QI (reg/f:SI 59 [ D.21139 ]) [0 S1 A8])
        (const_int 0 [0x0])) -1 (nil))

(jump_insn 23 22 24 4 class_string.h:10 (set (pc)
        (label_ref:SI 39)) 459 {jump} (nil))
;; End of basic block 4 -> ( 6)

;; Succ edge  6 [100.0%] 

(barrier 24 23 25)

;; Start of basic block ( 3) -> 5
;; Pred edge  3
(code_label 25 24 26 5 3 "" [1 uses])

(note 26 25 27 5 [bb 5] NOTE_INSN_BASIC_BLOCK)

(insn 27 26 28 5 class_string.h:17 (set (reg/f:SI 58 [ D.21141 ])
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 28 27 29 5 class_string.h:17 (set (reg/f:SI 66)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 p+0 S4 A32])) -1 (nil))

(insn 29 28 30 5 class_string.h:17 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 8 [0x8])) [0 S4 A32])
        (reg/f:SI 66)) -1 (nil))

(insn 30 29 31 5 class_string.h:17 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg/f:SI 58 [ D.21141 ])) -1 (nil))

(insn 31 30 32 5 class_string.h:17 (set (reg/f:SI 67)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 32 31 33 5 class_string.h:17 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 67)) -1 (nil))

(call_insn 33 32 39 5 class_string.h:17 (call (mem:QI (symbol_ref/i:SI ("_ZN6String4copyEPPcPKc") [flags 0x1]  <function_decl 0xb6b1c180 copy>) [0 S1 A8])
        (const_int 12 [0xc])) -1 (nil)
    (nil))
;; End of basic block 5 -> ( 6)

;; Succ edge  6 (fallthru)

;; Start of basic block ( 5 4) -> 6
;; Pred edge  5 (fallthru)
;; Pred edge  4 [100.0%] 
(code_label 39 33 42 6 5 "" [1 uses])

(note 42 39 0 6 [bb 6] NOTE_INSN_BASIC_BLOCK)
;; End of basic block 6 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function String::String(const String&) (_ZN6StringC2ERKS_)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 4 into block 3
Merged 3 and 4 without moving.
merging block 5 into block 3
Merged 3 and 5 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.h:21 (set (reg/f:SI 65)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 str+0 S4 A32])) -1 (nil))

(insn 6 5 7 2 class_string.h:21 (set (reg/f:SI 64 [ D.21152 ])
        (mem/s/f/j:SI (reg/f:SI 65) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 7 6 8 2 class_string.h:21 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 64 [ D.21152 ])) -1 (nil))

(call_insn/i 8 7 9 2 class_string.h:21 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("strlen") [flags 0x41]  <function_decl 0xb74d6780 strlen>) [0 S1 A8])
            (const_int 4 [0x4]))) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (expr_list:REG_DEP_TRUE (use (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32]))
        (nil)))

(insn 9 8 10 2 class_string.h:21 (set (reg:SI 63 [ D.21153 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 10 9 11 2 class_string.h:21 (parallel [
            (set (reg:SI 62 [ D.21154 ])
                (plus:SI (reg:SI 63 [ D.21153 ])
                    (const_int 1 [0x1])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 11 10 12 2 class_string.h:21 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 62 [ D.21154 ])) -1 (nil))

(call_insn 12 11 13 2 class_string.h:21 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_Znaj") [flags 0x41]  <function_decl 0xb751f400 operator new []>) [0 S1 A8])
            (const_int 4 [0x4]))) -1 (nil)
    (nil))

(insn 13 12 14 2 class_string.h:21 (set (reg/f:SI 61 [ D.21155 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 14 13 15 2 class_string.h:21 (set (reg/f:SI 60 [ D.21156 ])
        (reg/f:SI 61 [ D.21155 ])) -1 (nil))

(insn 15 14 16 2 class_string.h:21 (set (reg/f:SI 66)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 16 15 17 2 class_string.h:21 (set (mem/s/f/j:SI (reg/f:SI 66) [0 <variable>._p+0 S4 A32])
        (reg/f:SI 60 [ D.21156 ])) -1 (nil))

(insn 17 16 18 2 class_string.h:23 (set (reg/f:SI 67)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 str+0 S4 A32])) -1 (nil))

(insn 18 17 19 2 class_string.h:23 (set (reg/f:SI 59 [ D.21157 ])
        (mem/s/f/j:SI (reg/f:SI 67) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 19 18 20 2 class_string.h:23 (set (reg/f:SI 58 [ D.21158 ])
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 20 19 21 2 class_string.h:23 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 8 [0x8])) [0 S4 A32])
        (reg/f:SI 59 [ D.21157 ])) -1 (nil))

(insn 21 20 22 2 class_string.h:23 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg/f:SI 58 [ D.21158 ])) -1 (nil))

(insn 22 21 23 2 class_string.h:23 (set (reg/f:SI 68)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 23 22 24 2 class_string.h:23 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 68)) -1 (nil))

(call_insn 24 23 0 2 class_string.h:23 (call (mem:QI (symbol_ref/i:SI ("_ZN6String4copyEPPcPKc") [flags 0x1]  <function_decl 0xb6b1c180 copy>) [0 S1 A8])
        (const_int 12 [0xc])) -1 (nil)
    (nil))
;; End of basic block 2 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function String& String::operator=(const String&) (_ZN6StringaSERKS_)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 8 into block 7
Merged 7 and 8 without moving.
merging block 9 into block 7
Merged 7 and 9 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.h:28 (set (reg/f:SI 66)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 str+0 S4 A32])) -1 (nil))

(insn 6 5 7 2 class_string.h:28 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg/f:SI 66)) -1 (nil))

(insn 7 6 8 2 class_string.h:28 (set (reg/f:SI 67)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 8 7 9 2 class_string.h:28 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 67)) -1 (nil))

(call_insn 9 8 10 2 class_string.h:28 (set (reg:QI 0 ax)
        (call (mem:QI (symbol_ref/i:SI ("_ZN6StringneERKS_") [flags 0x1]  <function_decl 0xb6b1c000 operator!=>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(insn 10 9 11 2 class_string.h:28 (set (reg:QI 63 [ D.21163 ])
        (reg:QI 0 ax)) -1 (nil))

(insn 11 10 12 2 class_string.h:28 (set (reg:QI 64 [ retval.63 ])
        (reg:QI 63 [ D.21163 ])) -1 (nil))

(insn 12 11 13 2 class_string.h:28 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 64 [ retval.63 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 13 12 14 2 class_string.h:28 (set (pc)
        (if_then_else (eq (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 38)
            (pc))) -1 (nil))
;; End of basic block 2 -> ( 3 6)

;; Succ edge  3 (fallthru)
;; Succ edge  6

;; Start of basic block ( 2) -> 3
;; Pred edge  2 (fallthru)
(note 14 13 15 3 [bb 3] NOTE_INSN_BASIC_BLOCK)

(insn 15 14 16 3 class_string.h:30 (set (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -4 [0xfffffffc])) [0 temp+0 S4 A32])
        (const_int 0 [0x0])) -1 (nil))

(insn 16 15 17 3 class_string.h:31 (set (reg/f:SI 68)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 str+0 S4 A32])) -1 (nil))

(insn 17 16 18 3 class_string.h:31 (set (reg/f:SI 62 [ D.21166 ])
        (mem/s/f/j:SI (reg/f:SI 68) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 18 17 19 3 class_string.h:31 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 8 [0x8])) [0 S4 A32])
        (reg/f:SI 62 [ D.21166 ])) -1 (nil))

(insn 19 18 20 3 class_string.h:31 (parallel [
            (set (reg:SI 69)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 20 19 21 3 class_string.h:31 (set (mem/f/i:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg:SI 69)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(insn 21 20 22 3 class_string.h:31 (set (reg/f:SI 70)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 22 21 23 3 class_string.h:31 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 70)) -1 (nil))

(call_insn 23 22 24 3 class_string.h:31 (call (mem:QI (symbol_ref/i:SI ("_ZN6String4copyEPPcPKc") [flags 0x1]  <function_decl 0xb6b1c180 copy>) [0 S1 A8])
        (const_int 12 [0xc])) -1 (nil)
    (nil))

(insn 24 23 25 3 class_string.h:32 (set (reg/f:SI 71)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 25 24 26 3 class_string.h:32 (set (reg/f:SI 61 [ D.21167 ])
        (mem/s/f/j:SI (reg/f:SI 71) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 26 25 27 3 class_string.h:32 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg/f:SI 61 [ D.21167 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 27 26 28 3 class_string.h:32 (set (pc)
        (if_then_else (eq (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 33)
            (pc))) -1 (nil))
;; End of basic block 3 -> ( 4 5)

;; Succ edge  4 (fallthru)
;; Succ edge  5

;; Start of basic block ( 3) -> 4
;; Pred edge  3 (fallthru)
(note 28 27 29 4 [bb 4] NOTE_INSN_BASIC_BLOCK)

(insn 29 28 30 4 class_string.h:32 (set (reg/f:SI 72)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 30 29 31 4 class_string.h:32 (set (reg/f:SI 60 [ D.21170 ])
        (mem/s/f/j:SI (reg/f:SI 72) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 31 30 32 4 class_string.h:32 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 60 [ D.21170 ])) -1 (nil))

(call_insn 32 31 33 4 class_string.h:32 (call (mem:QI (symbol_ref:SI ("_ZdaPv") [flags 0x41]  <function_decl 0xb751f500 operator delete []>) [0 S1 A8])
        (const_int 4 [0x4])) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))
;; End of basic block 4 -> ( 5)

;; Succ edge  5 (fallthru)

;; Start of basic block ( 3 4) -> 5
;; Pred edge  3
;; Pred edge  4 (fallthru)
(code_label 33 32 34 5 10 "" [1 uses])

(note 34 33 35 5 [bb 5] NOTE_INSN_BASIC_BLOCK)

(insn 35 34 36 5 class_string.h:33 (set (reg/f:SI 59 [ temp.64 ])
        (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -4 [0xfffffffc])) [0 temp+0 S4 A32])) -1 (nil))

(insn 36 35 37 5 class_string.h:33 (set (reg/f:SI 73)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 37 36 38 5 class_string.h:33 (set (mem/s/f/j:SI (reg/f:SI 73) [0 <variable>._p+0 S4 A32])
        (reg/f:SI 59 [ temp.64 ])) -1 (nil))
;; End of basic block 5 -> ( 6)

;; Succ edge  6 (fallthru)

;; Start of basic block ( 2 5) -> 6
;; Pred edge  2
;; Pred edge  5 (fallthru)
(code_label 38 37 39 6 9 "" [1 uses])

(note 39 38 40 6 [bb 6] NOTE_INSN_BASIC_BLOCK)

(insn 40 39 41 6 class_string.h:35 (set (reg/f:SI 58 [ D.21174 ])
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 41 40 45 6 class_string.h:35 (set (reg:SI 65 [ <result> ])
        (reg/f:SI 58 [ D.21174 ])) -1 (nil))

(insn 45 41 51 6 class_string.h:36 (set (reg/i:SI 0 ax)
        (reg:SI 65 [ <result> ])) -1 (nil))

(insn 51 45 0 6 class_string.h:36 (use (reg/i:SI 0 ax)) -1 (nil))
;; End of basic block 6 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function int String::size() const (_ZNK6String4sizeEv)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 7 into block 6
Merged 6 and 7 without moving.
merging block 8 into block 6
Merged 6 and 8 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.h:43 (set (reg/f:SI 62)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 6 5 7 2 class_string.h:43 (set (reg/f:SI 63)
        (mem/s/f/j:SI (reg/f:SI 62) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 7 6 8 2 class_string.h:43 (set (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -8 [0xfffffff8])) [0 ret+0 S4 A32])
        (reg/f:SI 63)) -1 (nil))

(insn 8 7 9 2 class_string.h:44 (set (mem/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -4 [0xfffffffc])) [0 count+0 S4 A32])
        (const_int 0 [0x0])) -1 (nil))

(jump_insn 9 8 10 2 class_string.h:45 (set (pc)
        (label_ref 13)) -1 (nil))
;; End of basic block 2 -> ( 4)

;; Succ edge  4

(barrier 10 9 20)

;; Start of basic block ( 4) -> 3
;; Pred edge  4
(code_label 20 10 11 3 14 "" [1 uses])

(note 11 20 12 3 [bb 3] NOTE_INSN_BASIC_BLOCK)

(insn 12 11 13 3 class_string.h:47 (parallel [
            (set (mem/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                        (const_int -4 [0xfffffffc])) [0 count+0 S4 A32])
                (plus:SI (mem/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                            (const_int -4 [0xfffffffc])) [0 count+0 S4 A32])
                    (const_int 1 [0x1])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))
;; End of basic block 3 -> ( 4)

;; Succ edge  4 (fallthru)

;; Start of basic block ( 2 3) -> 4
;; Pred edge  2
;; Pred edge  3 (fallthru)
(code_label 13 12 14 4 13 "" [1 uses])

(note 14 13 15 4 [bb 4] NOTE_INSN_BASIC_BLOCK)

(insn 15 14 16 4 class_string.h:45 (set (reg/f:SI 64)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -8 [0xfffffff8])) [0 ret+0 S4 A32])) -1 (nil))

(insn 16 15 17 4 class_string.h:45 (set (reg:QI 59 [ D.21185 ])
        (mem:QI (reg/f:SI 64) [0 S1 A8])) -1 (nil))

(insn 17 16 18 4 class_string.h:45 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 59 [ D.21185 ])
            (const_int 0 [0x0]))) -1 (nil))

(insn 18 17 19 4 class_string.h:45 (set (reg:QI 60 [ retval.65 ])
        (ne:QI (reg:CCZ 17 flags)
            (const_int 0 [0x0]))) -1 (expr_list:REG_EQUAL (ne:QI (reg:QI 59 [ D.21185 ])
            (const_int 0 [0x0]))
        (nil)))

(insn 19 18 21 4 class_string.h:45 (parallel [
            (set (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                        (const_int -8 [0xfffffff8])) [0 ret+0 S4 A32])
                (plus:SI (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                            (const_int -8 [0xfffffff8])) [0 ret+0 S4 A32])
                    (const_int 1 [0x1])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 21 19 22 4 class_string.h:45 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 60 [ retval.65 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 22 21 23 4 class_string.h:45 (set (pc)
        (if_then_else (ne (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 20)
            (pc))) -1 (nil))
;; End of basic block 4 -> ( 3 5)

;; Succ edge  3
;; Succ edge  5 (fallthru)

;; Start of basic block ( 4) -> 5
;; Pred edge  4 (fallthru)
(note 23 22 24 5 [bb 5] NOTE_INSN_BASIC_BLOCK)

(insn 24 23 25 5 class_string.h:49 (set (reg:SI 58 [ D.21186 ])
        (mem/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -4 [0xfffffffc])) [0 count+0 S4 A32])) -1 (nil))

(insn 25 24 29 5 class_string.h:49 (set (reg:SI 61 [ <result> ])
        (reg:SI 58 [ D.21186 ])) -1 (nil))

(insn 29 25 35 5 class_string.h:50 (set (reg/i:SI 0 ax)
        (reg:SI 61 [ <result> ])) -1 (nil))

(insn 35 29 0 5 class_string.h:50 (use (reg/i:SI 0 ax)) -1 (nil))
;; End of basic block 5 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function bool String::operator==(const String&) (_ZN6StringeqERKS_)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 12 into block 11
Merged 11 and 12 without moving.
merging block 13 into block 11
Merged 11 and 13 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.h:75 (set (reg/f:SI 67)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 6 5 7 2 class_string.h:75 (set (reg/f:SI 68)
        (mem/s/f/j:SI (reg/f:SI 67) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 7 6 8 2 class_string.h:75 (set (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -8 [0xfffffff8])) [0 left+0 S4 A32])
        (reg/f:SI 68)) -1 (nil))

(insn 8 7 9 2 class_string.h:76 (set (reg/f:SI 69)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 str+0 S4 A32])) -1 (nil))

(insn 9 8 10 2 class_string.h:76 (set (reg/f:SI 70)
        (mem/s/f/j:SI (reg/f:SI 69) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 10 9 11 2 class_string.h:76 (set (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -4 [0xfffffffc])) [0 right+0 S4 A32])
        (reg/f:SI 70)) -1 (nil))

(insn 11 10 12 2 class_string.h:77 (set (reg/f:SI 71)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -4 [0xfffffffc])) [0 right+0 S4 A32])) -1 (nil))

(insn 12 11 13 2 class_string.h:77 (set (reg:QI 65 [ D.21204 ])
        (mem:QI (reg/f:SI 71) [0 S1 A8])) -1 (nil))

(insn 13 12 14 2 class_string.h:77 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 65 [ D.21204 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 14 13 15 2 class_string.h:77 (set (pc)
        (if_then_else (ne (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 24)
            (pc))) -1 (nil))
;; End of basic block 2 -> ( 3 5)

;; Succ edge  3 (fallthru)
;; Succ edge  5

;; Start of basic block ( 2) -> 3
;; Pred edge  2 (fallthru)
(note 15 14 16 3 [bb 3] NOTE_INSN_BASIC_BLOCK)

(insn 16 15 17 3 class_string.h:77 (set (reg/f:SI 72)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -8 [0xfffffff8])) [0 left+0 S4 A32])) -1 (nil))

(insn 17 16 18 3 class_string.h:77 (set (reg:QI 64 [ D.21207 ])
        (mem:QI (reg/f:SI 72) [0 S1 A8])) -1 (nil))

(insn 18 17 19 3 class_string.h:77 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 64 [ D.21207 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 19 18 20 3 class_string.h:77 (set (pc)
        (if_then_else (ne (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 24)
            (pc))) -1 (nil))
;; End of basic block 3 -> ( 4 5)

;; Succ edge  4 (fallthru)
;; Succ edge  5

;; Start of basic block ( 3) -> 4
;; Pred edge  3 (fallthru)
(note 20 19 21 4 [bb 4] NOTE_INSN_BASIC_BLOCK)

(insn 21 20 22 4 class_string.h:77 (set (reg:QI 63 [ D.21210 ])
        (const_int 1 [0x1])) -1 (nil))

(jump_insn 22 21 23 4 class_string.h:77 (set (pc)
        (label_ref 51)) -1 (nil))
;; End of basic block 4 -> ( 10)

;; Succ edge  10

(barrier 23 22 24)

;; Start of basic block ( 2 3 5) -> 5
;; Pred edge  2
;; Pred edge  3
;; Pred edge  5
(code_label 24 23 25 5 17 "" [3 uses])

(note 25 24 26 5 [bb 5] NOTE_INSN_BASIC_BLOCK)

(insn 26 25 27 5 class_string.h:78 (set (reg/f:SI 73)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -8 [0xfffffff8])) [0 left+0 S4 A32])) -1 (nil))

(insn 27 26 28 5 class_string.h:78 (set (reg:QI 62 [ D.21214 ])
        (mem:QI (reg/f:SI 73) [0 S1 A8])) -1 (nil))

(insn 28 27 29 5 class_string.h:78 (set (reg/f:SI 74)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -4 [0xfffffffc])) [0 right+0 S4 A32])) -1 (nil))

(insn 29 28 30 5 class_string.h:78 (set (reg:QI 61 [ D.21215 ])
        (mem:QI (reg/f:SI 74) [0 S1 A8])) -1 (nil))

(insn 30 29 31 5 class_string.h:78 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 62 [ D.21214 ])
            (reg:QI 61 [ D.21215 ]))) -1 (nil))

(insn 31 30 32 5 class_string.h:78 (set (reg:QI 60 [ D.21216 ])
        (eq:QI (reg:CCZ 17 flags)
            (const_int 0 [0x0]))) -1 (expr_list:REG_EQUAL (eq:QI (reg:QI 62 [ D.21214 ])
            (reg:QI 61 [ D.21215 ]))
        (nil)))

(insn 32 31 33 5 class_string.h:78 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 60 [ D.21216 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 33 32 34 5 class_string.h:78 (set (pc)
        (if_then_else (ne (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 24)
            (pc))) -1 (nil))
;; End of basic block 5 -> ( 5 6)

;; Succ edge  5
;; Succ edge  6 (fallthru)

;; Start of basic block ( 5) -> 6
;; Pred edge  5 (fallthru)
(note 34 33 35 6 [bb 6] NOTE_INSN_BASIC_BLOCK)

(insn 35 34 36 6 class_string.h:79 (set (reg/f:SI 75)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -8 [0xfffffff8])) [0 left+0 S4 A32])) -1 (nil))

(insn 36 35 37 6 class_string.h:79 (set (reg:QI 59 [ D.21218 ])
        (mem:QI (reg/f:SI 75) [0 S1 A8])) -1 (nil))

(insn 37 36 38 6 class_string.h:79 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 59 [ D.21218 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 38 37 39 6 class_string.h:79 (set (pc)
        (if_then_else (ne (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 48)
            (pc))) -1 (nil))
;; End of basic block 6 -> ( 7 9)

;; Succ edge  7 (fallthru)
;; Succ edge  9

;; Start of basic block ( 6) -> 7
;; Pred edge  6 (fallthru)
(note 39 38 40 7 [bb 7] NOTE_INSN_BASIC_BLOCK)

(insn 40 39 41 7 class_string.h:79 (set (reg/f:SI 76)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 54 virtual-stack-vars)
                (const_int -4 [0xfffffffc])) [0 right+0 S4 A32])) -1 (nil))

(insn 41 40 42 7 class_string.h:79 (set (reg:QI 58 [ D.21220 ])
        (mem:QI (reg/f:SI 76) [0 S1 A8])) -1 (nil))

(insn 42 41 43 7 class_string.h:79 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 58 [ D.21220 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 43 42 44 7 class_string.h:79 (set (pc)
        (if_then_else (ne (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 48)
            (pc))) -1 (nil))
;; End of basic block 7 -> ( 8 9)

;; Succ edge  8 (fallthru)
;; Succ edge  9

;; Start of basic block ( 7) -> 8
;; Pred edge  7 (fallthru)
(note 44 43 45 8 [bb 8] NOTE_INSN_BASIC_BLOCK)

(insn 45 44 46 8 class_string.h:80 (set (reg:QI 63 [ D.21210 ])
        (const_int 1 [0x1])) -1 (nil))

(jump_insn 46 45 47 8 class_string.h:80 (set (pc)
        (label_ref 51)) -1 (nil))
;; End of basic block 8 -> ( 10)

;; Succ edge  10

(barrier 47 46 48)

;; Start of basic block ( 6 7) -> 9
;; Pred edge  6
;; Pred edge  7
(code_label 48 47 49 9 19 "" [2 uses])

(note 49 48 50 9 [bb 9] NOTE_INSN_BASIC_BLOCK)

(insn 50 49 51 9 class_string.h:82 (set (reg:QI 63 [ D.21210 ])
        (const_int 0 [0x0])) -1 (nil))
;; End of basic block 9 -> ( 10)

;; Succ edge  10 (fallthru)

;; Start of basic block ( 4 8 9) -> 10
;; Pred edge  4
;; Pred edge  8
;; Pred edge  9 (fallthru)
(code_label 51 50 52 10 18 "" [2 uses])

(note 52 51 53 10 [bb 10] NOTE_INSN_BASIC_BLOCK)

(insn 53 52 57 10 class_string.h:82 (set (reg:QI 66 [ <result> ])
        (reg:QI 63 [ D.21210 ])) -1 (nil))

(insn 57 53 63 10 class_string.h:83 (set (reg/i:QI 0 ax)
        (reg:QI 66 [ <result> ])) -1 (nil))

(insn 63 57 0 10 class_string.h:83 (use (reg/i:QI 0 ax)) -1 (nil))
;; End of basic block 10 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function bool String::operator!=(const String&) (_ZN6StringneERKS_)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 7 into block 6
Merged 6 and 7 without moving.
merging block 8 into block 6
Merged 6 and 8 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.h:86 (set (reg/f:SI 62)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 str+0 S4 A32])) -1 (nil))

(insn 6 5 7 2 class_string.h:86 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg/f:SI 62)) -1 (nil))

(insn 7 6 8 2 class_string.h:86 (set (reg/f:SI 63)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 8 7 9 2 class_string.h:86 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 63)) -1 (nil))

(call_insn 9 8 10 2 class_string.h:86 (set (reg:QI 0 ax)
        (call (mem:QI (symbol_ref/i:SI ("_ZN6StringeqERKS_") [flags 0x1]  <function_decl 0xb6b0ff80 operator==>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(insn 10 9 11 2 class_string.h:86 (set (reg:QI 59 [ D.21224 ])
        (reg:QI 0 ax)) -1 (nil))

(insn 11 10 12 2 class_string.h:86 (set (reg:QI 60 [ retval.68 ])
        (reg:QI 59 [ D.21224 ])) -1 (nil))

(insn 12 11 13 2 class_string.h:86 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 60 [ retval.68 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 13 12 14 2 class_string.h:86 (set (pc)
        (if_then_else (eq (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 18)
            (pc))) -1 (nil))
;; End of basic block 2 -> ( 3 4)

;; Succ edge  3 (fallthru)
;; Succ edge  4

;; Start of basic block ( 2) -> 3
;; Pred edge  2 (fallthru)
(note 14 13 15 3 [bb 3] NOTE_INSN_BASIC_BLOCK)

(insn 15 14 16 3 class_string.h:86 (set (reg:QI 58 [ D.21227 ])
        (const_int 0 [0x0])) -1 (nil))

(jump_insn 16 15 17 3 class_string.h:86 (set (pc)
        (label_ref 21)) -1 (nil))
;; End of basic block 3 -> ( 5)

;; Succ edge  5

(barrier 17 16 18)

;; Start of basic block ( 2) -> 4
;; Pred edge  2
(code_label 18 17 19 4 22 "" [1 uses])

(note 19 18 20 4 [bb 4] NOTE_INSN_BASIC_BLOCK)

(insn 20 19 21 4 class_string.h:87 (set (reg:QI 58 [ D.21227 ])
        (const_int 1 [0x1])) -1 (nil))
;; End of basic block 4 -> ( 5)

;; Succ edge  5 (fallthru)

;; Start of basic block ( 3 4) -> 5
;; Pred edge  3
;; Pred edge  4 (fallthru)
(code_label 21 20 22 5 23 "" [1 uses])

(note 22 21 23 5 [bb 5] NOTE_INSN_BASIC_BLOCK)

(insn 23 22 27 5 class_string.h:87 (set (reg:QI 61 [ <result> ])
        (reg:QI 58 [ D.21227 ])) -1 (nil))

(insn 27 23 33 5 class_string.h:88 (set (reg/i:QI 0 ax)
        (reg:QI 61 [ <result> ])) -1 (nil))

(insn 33 27 0 5 class_string.h:88 (use (reg/i:QI 0 ax)) -1 (nil))
;; End of basic block 5 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function String::~String() (_ZN6StringD2Ev)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 6 into block 5
Merged 5 and 6 without moving.
merging block 7 into block 5
Merged 5 and 7 without moving.
merging block 8 into block 5
Merged 5 and 8 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.h:96 (set (reg/f:SI 60)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 6 5 7 2 class_string.h:96 (set (reg/f:SI 59 [ D.21246 ])
        (mem/s/f/j:SI (reg/f:SI 60) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 7 6 8 2 class_string.h:96 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg/f:SI 59 [ D.21246 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 8 7 9 2 class_string.h:96 (set (pc)
        (if_then_else (eq (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 14)
            (pc))) -1 (nil))
;; End of basic block 2 -> ( 3 4)

;; Succ edge  3 (fallthru)
;; Succ edge  4

;; Start of basic block ( 2) -> 3
;; Pred edge  2 (fallthru)
(note 9 8 10 3 [bb 3] NOTE_INSN_BASIC_BLOCK)

(insn 10 9 11 3 class_string.h:96 (set (reg/f:SI 61)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 11 10 12 3 class_string.h:96 (set (reg/f:SI 58 [ D.21249 ])
        (mem/s/f/j:SI (reg/f:SI 61) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 12 11 13 3 class_string.h:96 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 58 [ D.21249 ])) -1 (nil))

(call_insn 13 12 14 3 class_string.h:96 (call (mem:QI (symbol_ref:SI ("_ZdaPv") [flags 0x41]  <function_decl 0xb751f500 operator delete []>) [0 S1 A8])
        (const_int 4 [0x4])) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))
;; End of basic block 3 -> ( 4)

;; Succ edge  4 (fallthru)

;; Start of basic block ( 2 3) -> 4
;; Pred edge  2
;; Pred edge  3 (fallthru)
(code_label 14 13 15 4 26 "" [1 uses])

(note 15 14 16 4 [bb 4] NOTE_INSN_BASIC_BLOCK)

(insn 16 15 17 4 class_string.h:97 (set (reg/f:SI 62)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 this+0 S4 A32])) -1 (nil))

(insn 17 16 0 4 class_string.h:97 (set (mem/s/f/j:SI (reg/f:SI 62) [0 <variable>._p+0 S4 A32])
        (const_int 0 [0x0])) -1 (nil))
;; End of basic block 4 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function void String::copy(char**, const char*) (_ZN6String4copyEPPcPKc)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 4 into block 3
Merged 3 and 4 without moving.
merging block 5 into block 3
Merged 3 and 5 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.h:102 (set (reg/f:SI 63)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 8 [0x8])) [0 dest+0 S4 A32])) -1 (nil))

(insn 6 5 7 2 class_string.h:102 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 63)) -1 (nil))

(call_insn/i 7 6 8 2 class_string.h:102 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("strlen") [flags 0x41]  <function_decl 0xb74d6780 strlen>) [0 S1 A8])
            (const_int 4 [0x4]))) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (expr_list:REG_DEP_TRUE (use (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32]))
        (nil)))

(insn 8 7 9 2 class_string.h:102 (set (reg:SI 62 [ D.21255 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 9 8 10 2 class_string.h:102 (parallel [
            (set (reg:SI 61 [ D.21256 ])
                (plus:SI (reg:SI 62 [ D.21255 ])
                    (const_int 1 [0x1])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 10 9 11 2 class_string.h:102 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 61 [ D.21256 ])) -1 (nil))

(call_insn 11 10 12 2 class_string.h:102 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_Znaj") [flags 0x41]  <function_decl 0xb751f400 operator new []>) [0 S1 A8])
            (const_int 4 [0x4]))) -1 (nil)
    (nil))

(insn 12 11 13 2 class_string.h:102 (set (reg/f:SI 60 [ D.21257 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 13 12 14 2 class_string.h:102 (set (reg/f:SI 59 [ D.21258 ])
        (reg/f:SI 60 [ D.21257 ])) -1 (nil))

(insn 14 13 15 2 class_string.h:102 (set (reg/f:SI 64)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 src+0 S4 A32])) -1 (nil))

(insn 15 14 16 2 class_string.h:102 (set (mem/f:SI (reg/f:SI 64) [0 S4 A32])
        (reg/f:SI 59 [ D.21258 ])) -1 (nil))

(insn 16 15 17 2 class_string.h:103 (set (reg/f:SI 65)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 src+0 S4 A32])) -1 (nil))

(insn 17 16 18 2 class_string.h:103 (set (reg/f:SI 58 [ D.21259 ])
        (mem/f:SI (reg/f:SI 65) [0 S4 A32])) -1 (nil))

(insn 18 17 19 2 class_string.h:103 (set (reg/f:SI 66)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 8 [0x8])) [0 dest+0 S4 A32])) -1 (nil))

(insn 19 18 20 2 class_string.h:103 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg/f:SI 66)) -1 (nil))

(insn 20 19 21 2 class_string.h:103 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 58 [ D.21259 ])) -1 (nil))

(call_insn 21 20 0 2 class_string.h:103 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("strcpy") [flags 0x41]  <function_decl 0xb74d6180 strcpy>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))
;; End of basic block 2 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function std::ostream& operator<<(std::ostream&, String&) (_ZlsRSoR6String)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 4 into block 3
Merged 3 and 4 without moving.
merging block 5 into block 3
Merged 3 and 5 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.h:110 (set (reg/f:SI 61)
        (mem/f/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                (const_int 4 [0x4])) [0 str+0 S4 A32])) -1 (nil))

(insn 6 5 7 2 class_string.h:110 (set (reg/f:SI 59 [ D.21264 ])
        (mem/s/f/j:SI (reg/f:SI 61) [0 <variable>._p+0 S4 A32])) -1 (nil))

(insn 7 6 8 2 class_string.h:110 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg/f:SI 59 [ D.21264 ])) -1 (nil))

(insn 8 7 9 2 class_string.h:110 (set (reg/f:SI 62)
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 _cout+0 S4 A32])) -1 (nil))

(insn 9 8 10 2 class_string.h:110 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 62)) -1 (nil))

(call_insn 10 9 11 2 class_string.h:110 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc") [flags 0x41]  <function_decl 0xb6c49300 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (nil)
    (nil))

(insn 11 10 12 2 class_string.h:111 (set (reg/f:SI 58 [ D.21265 ])
        (mem/f/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 _cout+0 S4 A32])) -1 (nil))

(insn 12 11 16 2 class_string.h:111 (set (reg:SI 60 [ <result> ])
        (reg/f:SI 58 [ D.21265 ])) -1 (nil))

(insn 16 12 22 2 class_string.h:112 (set (reg/i:SI 0 ax)
        (reg:SI 60 [ <result> ])) -1 (nil))

(insn 22 16 0 2 class_string.h:112 (use (reg/i:SI 0 ax)) -1 (nil))
;; End of basic block 2 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function int main() (main)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 5 into block 4
Merged 4 and 5 without moving.
merging block 9 into block 8
Merged 8 and 9 without moving.
merging block 11 into block 10
Merged 10 and 11 without moving.
merging block 14 into block 13
Merged 13 and 14 without moving.
Forwarding edge 13->15 to 19 failed.
merging block 18 into block 17
Merged 17 and 18 without moving.
merging block 23 into block 22
Merged 22 and 23 without moving.
merging block 25 into block 24
Merged 24 and 25 without moving.
merging block 27 into block 26
Merged 26 and 27 without moving.
merging block 34 into block 33
Merged 33 and 34 without moving.
merging block 35 into block 33
Merged 33 and 35 without moving.


try_optimize_cfg iteration 2

Forwarding edge 13->15 to 19 failed.


try_optimize_cfg iteration 1

Forwarding edge 9->10 to 13 failed.
merging block 21 into block 20
Merged 20 and 21 without moving.


try_optimize_cfg iteration 2

Forwarding edge 9->10 to 13 failed.
(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.cpp:4 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref/f:SI ("*.LC0") [flags 0x2]  <string_cst 0xb6b6bf60>)) -1 (nil))

(insn 6 5 7 2 class_string.cpp:4 (parallel [
            (set (reg:SI 75)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 7 6 8 2 class_string.cpp:4 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 75)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(call_insn 8 7 9 2 class_string.cpp:4 (call (mem:QI (symbol_ref/i:SI ("_ZN6StringC1EPKc") [flags 0x1]  <function_decl 0xb6b1c300 __comp_ctor >) [0 S1 A8])
        (const_int 8 [0x8])) -1 (nil)
    (nil))

(insn 9 8 10 2 class_string.cpp:5 (parallel [
            (set (reg:SI 76)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 10 9 11 2 class_string.cpp:5 (set (mem/f/i:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg:SI 76)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(insn 11 10 12 2 class_string.cpp:5 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4cout") [flags 0x40]  <var_decl 0xb6af3630 cout>)) -1 (nil))

(call_insn 12 11 166 2 class_string.cpp:5 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZlsRSoR6String") [flags 0x3]  <function_decl 0xb6b0f780 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 1 [0x1])
        (nil))
    (nil))
;; End of basic block 2 -> ( 3 25)

;; Succ edge  3 (fallthru)
;; Succ edge  25 (ab,abcall,eh)

;; Start of basic block ( 2) -> 3
;; Pred edge  2 (fallthru)
(note 166 12 13 3 [bb 3] NOTE_INSN_BASIC_BLOCK)

(insn 13 166 15 3 class_string.cpp:5 (set (reg/f:SI 73 [ D.21277 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 15 13 16 3 class_string.cpp:5 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_") [flags 0x41]  <function_decl 0xb6c41d00 endl>)) -1 (nil))

(insn 16 15 17 3 class_string.cpp:5 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 73 [ D.21277 ])) -1 (nil))

(call_insn 17 16 18 3 class_string.cpp:5 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZNSolsEPFRSoS_E") [flags 0x41]  <function_decl 0xb6c1fd00 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 1 [0x1])
        (nil))
    (nil))
;; End of basic block 3 -> ( 4 25)

;; Succ edge  4 (fallthru)
;; Succ edge  25 (ab,abcall,eh)

;; Start of basic block ( 3) -> 4
;; Pred edge  3 (fallthru)
(note 18 17 19 4 [bb 4] NOTE_INSN_BASIC_BLOCK)

(insn 19 18 20 4 class_string.cpp:6 (parallel [
            (set (reg:SI 77)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 20 19 21 4 class_string.cpp:6 (set (mem/f/i:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg:SI 77)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(insn 21 20 22 4 class_string.cpp:6 (parallel [
            (set (reg:SI 78)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -8 [0xfffffff8])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 22 21 23 4 class_string.cpp:6 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 78)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -8 [0xfffffff8]))
        (nil)))

(call_insn 23 22 24 4 class_string.cpp:6 (call (mem:QI (symbol_ref/i:SI ("_ZN6StringC1ERKS_") [flags 0x1]  <function_decl 0xb6b1c200 __comp_ctor >) [0 S1 A8])
        (const_int 8 [0x8])) -1 (expr_list:REG_EH_REGION (const_int 1 [0x1])
        (nil))
    (nil))
;; End of basic block 4 -> ( 5 25)

;; Succ edge  5 (fallthru)
;; Succ edge  25 (ab,abcall,eh)

;; Start of basic block ( 4) -> 5
;; Pred edge  4 (fallthru)
(note 24 23 25 5 [bb 5] NOTE_INSN_BASIC_BLOCK)

(insn 25 24 26 5 class_string.cpp:7 (parallel [
            (set (reg:SI 79)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -8 [0xfffffff8])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 26 25 27 5 class_string.cpp:7 (set (mem/f/i:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg:SI 79)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -8 [0xfffffff8]))
        (nil)))

(insn 27 26 28 5 class_string.cpp:7 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4cout") [flags 0x40]  <var_decl 0xb6af3630 cout>)) -1 (nil))

(call_insn 28 27 167 5 class_string.cpp:7 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZlsRSoR6String") [flags 0x3]  <function_decl 0xb6b0f780 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 2 [0x2])
        (nil))
    (nil))
;; End of basic block 5 -> ( 6 22)

;; Succ edge  6 (fallthru)
;; Succ edge  22 (ab,abcall,eh)

;; Start of basic block ( 5) -> 6
;; Pred edge  5 (fallthru)
(note 167 28 29 6 [bb 6] NOTE_INSN_BASIC_BLOCK)

(insn 29 167 31 6 class_string.cpp:7 (set (reg/f:SI 72 [ D.21278 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 31 29 32 6 class_string.cpp:7 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_") [flags 0x41]  <function_decl 0xb6c41d00 endl>)) -1 (nil))

(insn 32 31 33 6 class_string.cpp:7 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 72 [ D.21278 ])) -1 (nil))

(call_insn 33 32 34 6 class_string.cpp:7 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZNSolsEPFRSoS_E") [flags 0x41]  <function_decl 0xb6c1fd00 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 2 [0x2])
        (nil))
    (nil))
;; End of basic block 6 -> ( 7 22)

;; Succ edge  7 (fallthru)
;; Succ edge  22 (ab,abcall,eh)

;; Start of basic block ( 6) -> 7
;; Pred edge  6 (fallthru)
(note 34 33 35 7 [bb 7] NOTE_INSN_BASIC_BLOCK)

(insn 35 34 36 7 class_string.cpp:8 (parallel [
            (set (reg:SI 80)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -8 [0xfffffff8])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 36 35 37 7 class_string.cpp:8 (set (mem/f/i:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg:SI 80)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -8 [0xfffffff8]))
        (nil)))

(insn 37 36 38 7 class_string.cpp:8 (parallel [
            (set (reg:SI 81)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 38 37 39 7 class_string.cpp:8 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 81)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(call_insn 39 38 40 7 class_string.cpp:8 (set (reg:QI 0 ax)
        (call (mem:QI (symbol_ref/i:SI ("_ZN6StringeqERKS_") [flags 0x1]  <function_decl 0xb6b0ff80 operator==>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(insn 40 39 42 7 class_string.cpp:8 (set (reg:QI 70 [ D.21280 ])
        (reg:QI 0 ax)) -1 (nil))

(insn 42 40 43 7 class_string.cpp:8 (set (reg:QI 71 [ retval.69 ])
        (reg:QI 70 [ D.21280 ])) -1 (nil))

(insn 43 42 44 7 class_string.cpp:8 (set (reg:CCZ 17 flags)
        (compare:CCZ (reg:QI 71 [ retval.69 ])
            (const_int 0 [0x0]))) -1 (nil))

(jump_insn 44 43 45 7 class_string.cpp:8 (set (pc)
        (if_then_else (eq (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref 56)
            (pc))) -1 (nil))
;; End of basic block 7 -> ( 8 11)

;; Succ edge  8 (fallthru)
;; Succ edge  11

;; Start of basic block ( 7) -> 8
;; Pred edge  7 (fallthru)
(note 45 44 46 8 [bb 8] NOTE_INSN_BASIC_BLOCK)

(insn 46 45 47 8 class_string.cpp:9 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref/f:SI ("*.LC1") [flags 0x2]  <string_cst 0xb6b6b8e0>)) -1 (nil))

(insn 47 46 48 8 class_string.cpp:9 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4cout") [flags 0x40]  <var_decl 0xb6af3630 cout>)) -1 (nil))

(call_insn 48 47 168 8 class_string.cpp:9 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc") [flags 0x41]  <function_decl 0xb6c49300 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 2 [0x2])
        (nil))
    (nil))
;; End of basic block 8 -> ( 9 22)

;; Succ edge  9 (fallthru)
;; Succ edge  22 (ab,abcall,eh)

;; Start of basic block ( 8) -> 9
;; Pred edge  8 (fallthru)
(note 168 48 49 9 [bb 9] NOTE_INSN_BASIC_BLOCK)

(insn 49 168 51 9 class_string.cpp:9 (set (reg/f:SI 69 [ D.21283 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 51 49 52 9 class_string.cpp:9 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_") [flags 0x41]  <function_decl 0xb6c41d00 endl>)) -1 (nil))

(insn 52 51 53 9 class_string.cpp:9 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 69 [ D.21283 ])) -1 (nil))

(call_insn 53 52 169 9 class_string.cpp:9 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZNSolsEPFRSoS_E") [flags 0x41]  <function_decl 0xb6c1fd00 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 2 [0x2])
        (nil))
    (nil))
;; End of basic block 9 -> ( 10 22)

;; Succ edge  10 (fallthru)
;; Succ edge  22 (ab,abcall,eh)

;; Start of basic block ( 9) -> 10
;; Pred edge  9 (fallthru)
(note 169 53 54 10 [bb 10] NOTE_INSN_BASIC_BLOCK)

(jump_insn 54 169 55 10 class_string.cpp:9 (set (pc)
        (label_ref 66)) -1 (nil))
;; End of basic block 10 -> ( 13)

;; Succ edge  13

(barrier 55 54 56)

;; Start of basic block ( 7) -> 11
;; Pred edge  7
(code_label 56 55 57 11 34 "" [1 uses])

(note 57 56 58 11 [bb 11] NOTE_INSN_BASIC_BLOCK)

(insn 58 57 59 11 class_string.cpp:12 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref/f:SI ("*.LC2") [flags 0x2]  <string_cst 0xb6b6bde0>)) -1 (nil))

(insn 59 58 60 11 class_string.cpp:12 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4cout") [flags 0x40]  <var_decl 0xb6af3630 cout>)) -1 (nil))

(call_insn 60 59 170 11 class_string.cpp:12 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc") [flags 0x41]  <function_decl 0xb6c49300 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 2 [0x2])
        (nil))
    (nil))
;; End of basic block 11 -> ( 12 22)

;; Succ edge  12 (fallthru)
;; Succ edge  22 (ab,abcall,eh)

;; Start of basic block ( 11) -> 12
;; Pred edge  11 (fallthru)
(note 170 60 61 12 [bb 12] NOTE_INSN_BASIC_BLOCK)

(insn 61 170 63 12 class_string.cpp:12 (set (reg/f:SI 68 [ D.21285 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 63 61 64 12 class_string.cpp:12 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_") [flags 0x41]  <function_decl 0xb6c41d00 endl>)) -1 (nil))

(insn 64 63 65 12 class_string.cpp:12 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 68 [ D.21285 ])) -1 (nil))

(call_insn 65 64 66 12 class_string.cpp:12 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZNSolsEPFRSoS_E") [flags 0x41]  <function_decl 0xb6c1fd00 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 2 [0x2])
        (nil))
    (nil))
;; End of basic block 12 -> ( 13 22)

;; Succ edge  13 (fallthru)
;; Succ edge  22 (ab,abcall,eh)

;; Start of basic block ( 10 12) -> 13
;; Pred edge  10
;; Pred edge  12 (fallthru)
(code_label 66 65 67 13 35 "" [1 uses])

(note 67 66 68 13 [bb 13] NOTE_INSN_BASIC_BLOCK)

(insn 68 67 69 13 class_string.cpp:14 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref/f:SI ("*.LC3") [flags 0x2]  <string_cst 0xb6b745e8>)) -1 (nil))

(insn 69 68 70 13 class_string.cpp:14 (parallel [
            (set (reg:SI 82)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -12 [0xfffffff4])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 70 69 71 13 class_string.cpp:14 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 82)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -12 [0xfffffff4]))
        (nil)))

(call_insn 71 70 72 13 class_string.cpp:14 (call (mem:QI (symbol_ref/i:SI ("_ZN6StringC1EPKc") [flags 0x1]  <function_decl 0xb6b1c300 __comp_ctor >) [0 S1 A8])
        (const_int 8 [0x8])) -1 (expr_list:REG_EH_REGION (const_int 2 [0x2])
        (nil))
    (nil))
;; End of basic block 13 -> ( 14 22)

;; Succ edge  14 (fallthru)
;; Succ edge  22 (ab,abcall,eh)

;; Start of basic block ( 13) -> 14
;; Pred edge  13 (fallthru)
(note 72 71 73 14 [bb 14] NOTE_INSN_BASIC_BLOCK)

(insn 73 72 74 14 class_string.cpp:15 (parallel [
            (set (reg:SI 83)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 74 73 75 14 class_string.cpp:15 (set (mem/f/i:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg:SI 83)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(insn 75 74 76 14 class_string.cpp:15 (parallel [
            (set (reg:SI 84)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -12 [0xfffffff4])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 76 75 77 14 class_string.cpp:15 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 84)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -12 [0xfffffff4]))
        (nil)))

(call_insn 77 76 78 14 class_string.cpp:15 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref/i:SI ("_ZN6StringaSERKS_") [flags 0x1]  <function_decl 0xb6b0fa00 operator=>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 3 [0x3])
        (nil))
    (nil))
;; End of basic block 14 -> ( 15 20)

;; Succ edge  15 (fallthru)
;; Succ edge  20 (ab,abcall,eh)

;; Start of basic block ( 14) -> 15
;; Pred edge  14 (fallthru)
(note 78 77 79 15 [bb 15] NOTE_INSN_BASIC_BLOCK)

(insn 79 78 80 15 class_string.cpp:16 (parallel [
            (set (reg:SI 85)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 80 79 81 15 class_string.cpp:16 (set (mem/f/i:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg:SI 85)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(insn 81 80 82 15 class_string.cpp:16 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4cout") [flags 0x40]  <var_decl 0xb6af3630 cout>)) -1 (nil))

(call_insn 82 81 171 15 class_string.cpp:16 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZlsRSoR6String") [flags 0x3]  <function_decl 0xb6b0f780 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 3 [0x3])
        (nil))
    (nil))
;; End of basic block 15 -> ( 16 20)

;; Succ edge  16 (fallthru)
;; Succ edge  20 (ab,abcall,eh)

;; Start of basic block ( 15) -> 16
;; Pred edge  15 (fallthru)
(note 171 82 83 16 [bb 16] NOTE_INSN_BASIC_BLOCK)

(insn 83 171 85 16 class_string.cpp:16 (set (reg/f:SI 67 [ D.21286 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 85 83 86 16 class_string.cpp:16 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_") [flags 0x41]  <function_decl 0xb6c41d00 endl>)) -1 (nil))

(insn 86 85 87 16 class_string.cpp:16 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 67 [ D.21286 ])) -1 (nil))

(call_insn 87 86 88 16 class_string.cpp:16 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZNSolsEPFRSoS_E") [flags 0x41]  <function_decl 0xb6c1fd00 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 3 [0x3])
        (nil))
    (nil))
;; End of basic block 16 -> ( 17 20)

;; Succ edge  17 (fallthru)
;; Succ edge  20 (ab,abcall,eh)

;; Start of basic block ( 16) -> 17
;; Pred edge  16 (fallthru)
(note 88 87 89 17 [bb 17] NOTE_INSN_BASIC_BLOCK)

(insn 89 88 90 17 class_string.cpp:17 (parallel [
            (set (reg:SI 86)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 90 89 91 17 class_string.cpp:17 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 86)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(call_insn 91 90 92 17 class_string.cpp:17 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref/i:SI ("_ZNK6String4sizeEv") [flags 0x1]  <function_decl 0xb6b0fb00 size>) [0 S1 A8])
            (const_int 4 [0x4]))) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(insn 92 91 94 17 class_string.cpp:17 (set (reg:SI 66 [ D.21287 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 94 92 95 17 class_string.cpp:17 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (reg:SI 66 [ D.21287 ])) -1 (nil))

(insn 95 94 96 17 class_string.cpp:17 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4cout") [flags 0x40]  <var_decl 0xb6af3630 cout>)) -1 (nil))

(call_insn 96 95 172 17 class_string.cpp:17 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZNSolsEi") [flags 0x41]  <function_decl 0xb6c1f580 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 3 [0x3])
        (nil))
    (nil))
;; End of basic block 17 -> ( 18 20)

;; Succ edge  18 (fallthru)
;; Succ edge  20 (ab,abcall,eh)

;; Start of basic block ( 17) -> 18
;; Pred edge  17 (fallthru)
(note 172 96 97 18 [bb 18] NOTE_INSN_BASIC_BLOCK)

(insn 97 172 99 18 class_string.cpp:17 (set (reg/f:SI 65 [ D.21288 ])
        (reg:SI 0 ax)) -1 (nil))

(insn 99 97 100 18 class_string.cpp:17 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref:SI ("_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_") [flags 0x41]  <function_decl 0xb6c41d00 endl>)) -1 (nil))

(insn 100 99 101 18 class_string.cpp:17 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 65 [ D.21288 ])) -1 (nil))

(call_insn 101 100 102 18 class_string.cpp:17 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("_ZNSolsEPFRSoS_E") [flags 0x41]  <function_decl 0xb6c1fd00 operator<<>) [0 S1 A8])
            (const_int 8 [0x8]))) -1 (expr_list:REG_EH_REGION (const_int 3 [0x3])
        (nil))
    (nil))
;; End of basic block 18 -> ( 19 20)

;; Succ edge  19 (fallthru)
;; Succ edge  20 (ab,abcall,eh)

;; Start of basic block ( 18) -> 19
;; Pred edge  18 (fallthru)
(note 102 101 103 19 [bb 19] NOTE_INSN_BASIC_BLOCK)

(insn 103 102 104 19 class_string.cpp:18 (set (reg:SI 64 [ D.21289 ])
        (const_int 0 [0x0])) -1 (nil))

(insn 104 103 105 19 class_string.cpp:18 (parallel [
            (set (reg:SI 87)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -12 [0xfffffff4])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 105 104 106 19 class_string.cpp:18 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 87)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -12 [0xfffffff4]))
        (nil)))

(call_insn 106 105 107 19 class_string.cpp:18 (call (mem:QI (symbol_ref/i:SI ("_ZN6StringD1Ev") [flags 0x1]  <function_decl 0xb6b1c400 __comp_dtor >) [0 S1 A8])
        (const_int 4 [0x4])) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(jump_insn 107 106 108 19 class_string.cpp:18 (set (pc)
        (label_ref 131)) -1 (nil))
;; End of basic block 19 -> ( 24)

;; Succ edge  24

(barrier 108 107 182)

;; Start of basic block ( 14 15 16 17 18) -> 20
;; Pred edge  14 (ab,abcall,eh)
;; Pred edge  15 (ab,abcall,eh)
;; Pred edge  16 (ab,abcall,eh)
;; Pred edge  17 (ab,abcall,eh)
;; Pred edge  18 (ab,abcall,eh)
(code_label/s 182 108 185 20 42 "" [1 uses])

(note 185 182 183 20 [bb 20] NOTE_INSN_BASIC_BLOCK)

(insn 183 185 184 20 (set (reg:SI 89)
        (reg:SI 0 ax)) -1 (nil))

(insn 184 183 109 20 (set (reg:SI 88)
        (reg:SI 1 dx)) -1 (nil))

(note/s 109 184 111 20 "" NOTE_INSN_DELETED_LABEL 37)

(insn 111 109 112 20 class_string.cpp:18 (set (reg:SI 62 [ save_filt.74 ])
        (reg:SI 88)) -1 (nil))

(insn 112 111 113 20 class_string.cpp:18 (set (reg/f:SI 63 [ save_eptr.73 ])
        (reg:SI 89)) -1 (nil))

(insn 113 112 114 20 class_string.cpp:18 (parallel [
            (set (reg:SI 90)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -12 [0xfffffff4])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 114 113 115 20 class_string.cpp:18 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 90)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -12 [0xfffffff4]))
        (nil)))

(call_insn 115 114 116 20 class_string.cpp:18 (call (mem:QI (symbol_ref/i:SI ("_ZN6StringD1Ev") [flags 0x1]  <function_decl 0xb6b1c400 __comp_dtor >) [0 S1 A8])
        (const_int 4 [0x4])) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(insn 116 115 117 20 class_string.cpp:18 (set (reg:SI 89)
        (reg/f:SI 63 [ save_eptr.73 ])) -1 (nil))

(insn 117 116 175 20 class_string.cpp:18 (set (reg:SI 88)
        (reg:SI 62 [ save_filt.74 ])) -1 (nil))

(jump_insn 175 117 119 20 class_string.cpp:18 (set (pc)
        (label_ref 120)) -1 (nil))
;; End of basic block 20 -> ( 23)

;; Succ edge  23 [100.0%] 

(barrier 119 175 186)

;; Start of basic block ( 5 6 8 9 11 12 13) -> 22
;; Pred edge  5 (ab,abcall,eh)
;; Pred edge  6 (ab,abcall,eh)
;; Pred edge  8 (ab,abcall,eh)
;; Pred edge  9 (ab,abcall,eh)
;; Pred edge  11 (ab,abcall,eh)
;; Pred edge  12 (ab,abcall,eh)
;; Pred edge  13 (ab,abcall,eh)
(code_label/s 186 119 189 22 43 "" [1 uses])

(note 189 186 187 22 [bb 22] NOTE_INSN_BASIC_BLOCK)

(insn 187 189 188 22 (set (reg:SI 89)
        (reg:SI 0 ax)) -1 (nil))

(insn 188 187 120 22 (set (reg:SI 88)
        (reg:SI 1 dx)) -1 (nil))
;; End of basic block 22 -> ( 23)

;; Succ edge  23 [100.0%]  (fallthru)

;; Start of basic block ( 22 20) -> 23
;; Pred edge  22 [100.0%]  (fallthru)
;; Pred edge  20 [100.0%] 
(code_label/s 120 188 121 23 38 "" [2 uses])

(note 121 120 122 23 [bb 23] NOTE_INSN_BASIC_BLOCK)

(insn 122 121 123 23 class_string.cpp:18 (set (reg:SI 60 [ save_filt.76 ])
        (reg:SI 88)) -1 (nil))

(insn 123 122 124 23 class_string.cpp:18 (set (reg/f:SI 61 [ save_eptr.75 ])
        (reg:SI 89)) -1 (nil))

(insn 124 123 125 23 class_string.cpp:18 (parallel [
            (set (reg:SI 91)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -8 [0xfffffff8])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 125 124 126 23 class_string.cpp:18 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 91)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -8 [0xfffffff8]))
        (nil)))

(call_insn 126 125 127 23 class_string.cpp:18 (call (mem:QI (symbol_ref/i:SI ("_ZN6StringD1Ev") [flags 0x1]  <function_decl 0xb6b1c400 __comp_dtor >) [0 S1 A8])
        (const_int 4 [0x4])) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(insn 127 126 128 23 class_string.cpp:18 (set (reg:SI 89)
        (reg/f:SI 61 [ save_eptr.75 ])) -1 (nil))

(insn 128 127 177 23 class_string.cpp:18 (set (reg:SI 88)
        (reg:SI 60 [ save_filt.76 ])) -1 (nil))

(jump_insn 177 128 130 23 class_string.cpp:18 (set (pc)
        (label_ref 138)) -1 (nil))
;; End of basic block 23 -> ( 26)

;; Succ edge  26 [100.0%] 

(barrier 130 177 131)

;; Start of basic block ( 19) -> 24
;; Pred edge  19
(code_label 131 130 132 24 36 "" [1 uses])

(note 132 131 133 24 [bb 24] NOTE_INSN_BASIC_BLOCK)

(insn 133 132 134 24 class_string.cpp:18 (parallel [
            (set (reg:SI 92)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -8 [0xfffffff8])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 134 133 135 24 class_string.cpp:18 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 92)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -8 [0xfffffff8]))
        (nil)))

(call_insn 135 134 136 24 class_string.cpp:18 (call (mem:QI (symbol_ref/i:SI ("_ZN6StringD1Ev") [flags 0x1]  <function_decl 0xb6b1c400 __comp_dtor >) [0 S1 A8])
        (const_int 4 [0x4])) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(jump_insn 136 135 137 24 class_string.cpp:18 (set (pc)
        (label_ref 149)) -1 (nil))
;; End of basic block 24 -> ( 27)

;; Succ edge  27

(barrier 137 136 190)

;; Start of basic block ( 2 3 4) -> 25
;; Pred edge  2 (ab,abcall,eh)
;; Pred edge  3 (ab,abcall,eh)
;; Pred edge  4 (ab,abcall,eh)
(code_label/s 190 137 193 25 44 "" [1 uses])

(note 193 190 191 25 [bb 25] NOTE_INSN_BASIC_BLOCK)

(insn 191 193 192 25 (set (reg:SI 89)
        (reg:SI 0 ax)) -1 (nil))

(insn 192 191 138 25 (set (reg:SI 88)
        (reg:SI 1 dx)) -1 (nil))
;; End of basic block 25 -> ( 26)

;; Succ edge  26 [100.0%]  (fallthru)

;; Start of basic block ( 25 23) -> 26
;; Pred edge  25 [100.0%]  (fallthru)
;; Pred edge  23 [100.0%] 
(code_label/s 138 192 139 26 40 "" [2 uses])

(note 139 138 140 26 [bb 26] NOTE_INSN_BASIC_BLOCK)

(insn 140 139 141 26 class_string.cpp:18 (set (reg:SI 58 [ save_filt.78 ])
        (reg:SI 88)) -1 (nil))

(insn 141 140 142 26 class_string.cpp:18 (set (reg/f:SI 59 [ save_eptr.77 ])
        (reg:SI 89)) -1 (nil))

(insn 142 141 143 26 class_string.cpp:18 (parallel [
            (set (reg:SI 93)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 143 142 144 26 class_string.cpp:18 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 93)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(call_insn 144 143 145 26 class_string.cpp:18 (call (mem:QI (symbol_ref/i:SI ("_ZN6StringD1Ev") [flags 0x1]  <function_decl 0xb6b1c400 __comp_dtor >) [0 S1 A8])
        (const_int 4 [0x4])) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(insn 145 144 146 26 class_string.cpp:18 (set (reg:SI 89)
        (reg/f:SI 59 [ save_eptr.77 ])) -1 (nil))

(insn 146 145 179 26 class_string.cpp:18 (set (reg:SI 88)
        (reg:SI 58 [ save_filt.78 ])) -1 (nil))

(insn 179 146 180 26 class_string.cpp:18 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 89)) -1 (nil))

(call_insn 180 179 148 26 class_string.cpp:18 (call (mem:QI (symbol_ref:SI ("_Unwind_Resume") [flags 0x41]) [0 S1 A8])
        (const_int 16 [0x10])) -1 (expr_list:REG_NORETURN (const_int 0 [0x0])
        (nil))
    (nil))
;; End of basic block 26 -> ()


(barrier 148 180 149)

;; Start of basic block ( 24) -> 27
;; Pred edge  24
(code_label 149 148 150 27 39 "" [1 uses])

(note 150 149 151 27 [bb 27] NOTE_INSN_BASIC_BLOCK)

(insn 151 150 152 27 class_string.cpp:18 (parallel [
            (set (reg:SI 94)
                (plus:SI (reg/f:SI 54 virtual-stack-vars)
                    (const_int -4 [0xfffffffc])))
            (clobber (reg:CC 17 flags))
        ]) -1 (nil))

(insn 152 151 153 27 class_string.cpp:18 (set (mem/f/i:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg:SI 94)) -1 (expr_list:REG_EQUAL (plus:SI (reg/f:SI 54 virtual-stack-vars)
            (const_int -4 [0xfffffffc]))
        (nil)))

(call_insn 153 152 154 27 class_string.cpp:18 (call (mem:QI (symbol_ref/i:SI ("_ZN6StringD1Ev") [flags 0x1]  <function_decl 0xb6b1c400 __comp_dtor >) [0 S1 A8])
        (const_int 4 [0x4])) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))

(insn 154 153 158 27 class_string.cpp:18 (set (reg:SI 74 [ <result> ])
        (reg:SI 64 [ D.21289 ])) -1 (nil))

(insn 158 154 164 27 class_string.cpp:19 (set (reg/i:SI 0 ax)
        (reg:SI 74 [ <result> ])) -1 (nil))

(insn 164 158 0 27 class_string.cpp:19 (use (reg/i:SI 0 ax)) -1 (nil))
;; End of basic block 27 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function void __static_initialization_and_destruction_0(int, int) (_Z41__static_initialization_and_destruction_0ii)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
Edge 3->6 redirected to 8
Edge 4->6 redirected to 8
merging block 6 into block 5
Merged 5 and 6 without moving.
merging block 7 into block 5
Merged 5 and 7 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.cpp:19 (set (reg:CCZ 17 flags)
        (compare:CCZ (mem/c/i:SI (reg/f:SI 53 virtual-incoming-args) [0 __initialize_p+0 S4 A32])
            (const_int 1 [0x1]))) -1 (nil))

(jump_insn 6 5 7 2 class_string.cpp:19 (set (pc)
        (if_then_else (ne (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref:SI 23)
            (pc))) 440 {*jcc_1} (nil))
;; End of basic block 2 -> ( 3 5)

;; Succ edge  3 (fallthru)
;; Succ edge  5

;; Start of basic block ( 2) -> 3
;; Pred edge  2 (fallthru)
(note 7 6 8 3 [bb 3] NOTE_INSN_BASIC_BLOCK)

(insn 8 7 9 3 class_string.cpp:19 (set (reg:CCZ 17 flags)
        (compare:CCZ (mem/c/i:SI (plus:SI (reg/f:SI 53 virtual-incoming-args)
                    (const_int 4 [0x4])) [0 __priority+0 S4 A32])
            (const_int 65535 [0xffff]))) -1 (nil))

(jump_insn 9 8 10 3 class_string.cpp:19 (set (pc)
        (if_then_else (ne (reg:CCZ 17 flags)
                (const_int 0 [0x0]))
            (label_ref:SI 23)
            (pc))) 440 {*jcc_1} (nil))
;; End of basic block 3 -> ( 4 5)

;; Succ edge  4 (fallthru)
;; Succ edge  5

;; Start of basic block ( 3) -> 4
;; Pred edge  3 (fallthru)
(note 10 9 11 4 [bb 4] NOTE_INSN_BASIC_BLOCK)

(insn 11 10 12 4 /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7/iostream:72 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (symbol_ref:SI ("_ZStL8__ioinit") [flags 0x2]  <var_decl 0xb6af3898 __ioinit>)) -1 (nil))

(call_insn 12 11 13 4 /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7/iostream:72 (call (mem:QI (symbol_ref:SI ("_ZNSt8ios_base4InitC1Ev") [flags 0x41]  <function_decl 0xb6e25c80 __comp_ctor >) [0 S1 A8])
        (const_int 4 [0x4])) -1 (nil)
    (nil))

(insn 13 12 14 4 /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7/iostream:72 (set (reg/f:SI 58 [ __comp_dtor .72 ])
        (symbol_ref:SI ("_ZNSt8ios_base4InitD1Ev") [flags 0x41]  <function_decl 0xb6e25d80 __comp_dtor >)) -1 (nil))

(insn 14 13 15 4 /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7/iostream:72 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 8 [0x8])) [0 S4 A32])
        (symbol_ref:SI ("__dso_handle") [flags 0x40]  <var_decl 0xb6b3f318 __dso_handle>)) -1 (nil))

(insn 15 14 16 4 /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7/iostream:72 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (symbol_ref:SI ("_ZStL8__ioinit") [flags 0x2]  <var_decl 0xb6af3898 __ioinit>)) -1 (nil))

(insn 16 15 17 4 /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7/iostream:72 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (reg/f:SI 58 [ __comp_dtor .72 ])) -1 (nil))

(call_insn 17 16 23 4 /usr/lib/gcc/i686-redhat-linux/4.4.7/../../../../include/c++/4.4.7/iostream:72 (set (reg:SI 0 ax)
        (call (mem:QI (symbol_ref:SI ("__cxa_atexit") [flags 0x41]  <function_decl 0xb6b1c980 __cxa_atexit>) [0 S1 A8])
            (const_int 12 [0xc]))) -1 (expr_list:REG_EH_REGION (const_int 0 [0x0])
        (nil))
    (nil))
;; End of basic block 4 -> ( 5)

;; Succ edge  5 (fallthru)

;; Start of basic block ( 4 2 3) -> 5
;; Pred edge  4 (fallthru)
;; Pred edge  2
;; Pred edge  3
(code_label 23 17 26 5 47 "" [2 uses])

(note 26 23 0 5 [bb 5] NOTE_INSN_BASIC_BLOCK)
;; End of basic block 5 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)


;; Function (static initializers for class_string.cpp) (_GLOBAL__I__ZlsRSoR6String)



try_optimize_cfg iteration 1

Deleting fallthru block 2.
deleting block 2
merging block 4 into block 3
Merged 3 and 4 without moving.
merging block 5 into block 3
Merged 3 and 5 without moving.


try_optimize_cfg iteration 2



try_optimize_cfg iteration 1

(note 1 0 2 NOTE_INSN_DELETED)

(note 2 1 4 NOTE_INSN_FUNCTION_BEG)

;; Start of basic block ( 0) -> 2
;; Pred edge  ENTRY (fallthru)
(note 4 2 5 2 [bb 2] NOTE_INSN_BASIC_BLOCK)

(insn 5 4 6 2 class_string.cpp:19 (set (mem:SI (plus:SI (reg/f:SI 56 virtual-outgoing-args)
                (const_int 4 [0x4])) [0 S4 A32])
        (const_int 65535 [0xffff])) -1 (nil))

(insn 6 5 7 2 class_string.cpp:19 (set (mem:SI (reg/f:SI 56 virtual-outgoing-args) [0 S4 A32])
        (const_int 1 [0x1])) -1 (nil))

(call_insn 7 6 0 2 class_string.cpp:19 (call (mem:QI (symbol_ref:SI ("_Z41__static_initialization_and_destruction_0ii") [flags 0x3]  <function_decl 0xb6b1c900 __static_initialization_and_destruction_0>) [0 S1 A8])
        (const_int 8 [0x8])) -1 (nil)
    (nil))
;; End of basic block 2 -> ( 1)

;; Succ edge  EXIT [100.0%]  (fallthru)
