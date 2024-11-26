	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 1
	.globl	_calculateSubnetMask            ; -- Begin function calculateSubnetMask
	.p2align	2
_calculateSubnetMask:                   ; @calculateSubnetMask
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #80
	stp	x29, x30, [sp, #64]             ; 16-byte Folded Spill
	add	x29, sp, #64
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	stur	x1, [x29, #-16]
	ldur	w9, [x29, #-4]
	mov	w8, #32                         ; =0x20
	subs	w8, w8, w9
	mov	w9, #-1                         ; =0xffffffff
	lsl	w8, w9, w8
	and	w8, w8, w9
	stur	w8, [x29, #-20]
	ldur	x0, [x29, #-16]
	ldur	w8, [x29, #-20]
	lsr	w8, w8, #24
	and	w13, w8, #0xff
	ldur	w8, [x29, #-20]
	lsr	w8, w8, #16
	and	w12, w8, #0xff
	ldur	w8, [x29, #-20]
	lsr	w8, w8, #8
	and	w11, w8, #0xff
	ldurb	w10, [x29, #-20]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x13
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x12
	str	x8, [x9, #8]
                                        ; implicit-def: $x8
	mov	x8, x11
	str	x8, [x9, #16]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #24]
	mov	w1, #0                          ; =0x0
	mov	x2, #-1                         ; =0xffffffffffffffff
	adrp	x3, l_.str@PAGE
	add	x3, x3, l_.str@PAGEOFF
	bl	___sprintf_chk
	ldp	x29, x30, [sp, #64]             ; 16-byte Folded Reload
	add	sp, sp, #80
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_getBaseIP                      ; -- Begin function getBaseIP
	.p2align	2
_getBaseIP:                             ; @getBaseIP
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-32]
	stur	w1, [x29, #-36]
	str	x2, [sp, #48]
	ldur	x0, [x29, #-32]
	mov	x9, sp
	sub	x8, x29, #24
	mov	x10, x8
	str	x10, [x9]
	add	x10, x8, #4
	str	x10, [x9, #8]
	add	x10, x8, #8
	str	x10, [x9, #16]
	add	x8, x8, #12
	str	x8, [x9, #24]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_sscanf
	ldur	w9, [x29, #-24]
	ldur	w8, [x29, #-20]
	lsl	w8, w8, #16
	orr	w8, w8, w9, lsl #24
	ldur	w9, [x29, #-16]
	orr	w8, w8, w9, lsl #8
	ldur	w9, [x29, #-12]
	orr	w8, w8, w9
	str	w8, [sp, #44]
	ldur	w9, [x29, #-36]
	mov	w8, #32                         ; =0x20
	subs	w8, w8, w9
	mov	w9, #-1                         ; =0xffffffff
	lsl	w8, w9, w8
	and	w9, w8, w9
	ldr	w8, [sp, #44]
	and	w8, w8, w9
	str	w8, [sp, #44]
	ldr	x0, [sp, #48]
	ldr	w8, [sp, #44]
	lsr	w8, w8, #24
	and	w13, w8, #0xff
	ldr	w8, [sp, #44]
	lsr	w8, w8, #16
	and	w12, w8, #0xff
	ldr	w8, [sp, #44]
	lsr	w8, w8, #8
	and	w11, w8, #0xff
	ldrb	w10, [sp, #44]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x13
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x12
	str	x8, [x9, #8]
                                        ; implicit-def: $x8
	mov	x8, x11
	str	x8, [x9, #16]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #24]
	mov	w1, #0                          ; =0x0
	mov	x2, #-1                         ; =0xffffffffffffffff
	adrp	x3, l_.str@PAGE
	add	x3, x3, l_.str@PAGEOFF
	bl	___sprintf_chk
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB1_2
	b	LBB1_1
LBB1_1:
	bl	___stack_chk_fail
LBB1_2:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_calculateNeededBits            ; -- Begin function calculateNeededBits
	.p2align	2
_calculateNeededBits:                   ; @calculateNeededBits
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	stur	w0, [x29, #-4]
	ldur	w8, [x29, #-4]
	add	w8, w8, #2
	scvtf	d0, w8
	bl	_log2
	fcvtpu	w0, d0
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_calculateNextSubnetIP          ; -- Begin function calculateNextSubnetIP
	.p2align	2
_calculateNextSubnetIP:                 ; @calculateNextSubnetIP
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #112
	stp	x29, x30, [sp, #96]             ; 16-byte Folded Spill
	add	x29, sp, #96
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	stur	x0, [x29, #-32]
	stur	w1, [x29, #-36]
	str	x2, [sp, #48]
	ldur	x0, [x29, #-32]
	mov	x9, sp
	sub	x8, x29, #24
	mov	x10, x8
	str	x10, [x9]
	add	x10, x8, #4
	str	x10, [x9, #8]
	add	x10, x8, #8
	str	x10, [x9, #16]
	add	x8, x8, #12
	str	x8, [x9, #24]
	adrp	x1, l_.str.1@PAGE
	add	x1, x1, l_.str.1@PAGEOFF
	bl	_sscanf
	ldur	w9, [x29, #-24]
	ldur	w8, [x29, #-20]
	lsl	w8, w8, #16
	orr	w8, w8, w9, lsl #24
	ldur	w9, [x29, #-16]
	orr	w8, w8, w9, lsl #8
	ldur	w9, [x29, #-12]
	orr	w8, w8, w9
	str	w8, [sp, #44]
	ldur	w9, [x29, #-36]
	mov	w8, #32                         ; =0x20
	subs	w9, w8, w9
	mov	w8, #1                          ; =0x1
	lsl	w9, w8, w9
	ldr	w8, [sp, #44]
	add	w8, w8, w9
	str	w8, [sp, #44]
	ldr	x0, [sp, #48]
	ldr	w8, [sp, #44]
	lsr	w8, w8, #24
	and	w13, w8, #0xff
	ldr	w8, [sp, #44]
	lsr	w8, w8, #16
	and	w12, w8, #0xff
	ldr	w8, [sp, #44]
	lsr	w8, w8, #8
	and	w11, w8, #0xff
	ldrb	w10, [sp, #44]
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x13
	str	x8, [x9]
                                        ; implicit-def: $x8
	mov	x8, x12
	str	x8, [x9, #8]
                                        ; implicit-def: $x8
	mov	x8, x11
	str	x8, [x9, #16]
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9, #24]
	mov	w1, #0                          ; =0x0
	mov	x2, #-1                         ; =0xffffffffffffffff
	adrp	x3, l_.str@PAGE
	add	x3, x3, l_.str@PAGEOFF
	bl	___sprintf_chk
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB3_2
	b	LBB3_1
LBB3_1:
	bl	___stack_chk_fail
LBB3_2:
	ldp	x29, x30, [sp, #96]             ; 16-byte Folded Reload
	add	sp, sp, #112
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_sortSubnetsByHosts             ; -- Begin function sortSubnetsByHosts
	.p2align	2
_sortSubnetsByHosts:                    ; @sortSubnetsByHosts
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #128
	stp	x29, x30, [sp, #112]            ; 16-byte Folded Spill
	add	x29, sp, #112
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-8]
	str	x0, [sp, #40]
	str	w1, [sp, #36]
	str	wzr, [sp, #32]
	b	LBB4_1
LBB4_1:                                 ; =>This Loop Header: Depth=1
                                        ;     Child Loop BB4_3 Depth 2
	ldr	w8, [sp, #32]
	ldr	w9, [sp, #36]
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB4_10
	b	LBB4_2
LBB4_2:                                 ;   in Loop: Header=BB4_1 Depth=1
	str	wzr, [sp, #28]
	b	LBB4_3
LBB4_3:                                 ;   Parent Loop BB4_1 Depth=1
                                        ; =>  This Inner Loop Header: Depth=2
	ldr	w8, [sp, #28]
	ldr	w9, [sp, #36]
	ldr	w10, [sp, #32]
	subs	w9, w9, w10
	subs	w9, w9, #1
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB4_8
	b	LBB4_4
LBB4_4:                                 ;   in Loop: Header=BB4_3 Depth=2
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #28]
	mov	x10, #56                        ; =0x38
	mul	x9, x9, x10
	add	x8, x8, x9
	ldr	w8, [x8, #20]
	ldr	x11, [sp, #40]
	ldr	w9, [sp, #28]
	add	w9, w9, #1
	mov	w10, #56                        ; =0x38
	smaddl	x9, w9, w10, x11
	ldr	w9, [x9, #20]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB4_6
	b	LBB4_5
LBB4_5:                                 ;   in Loop: Header=BB4_3 Depth=2
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #28]
	mov	x10, #56                        ; =0x38
	str	x10, [sp]                       ; 8-byte Folded Spill
	mul	x9, x9, x10
	add	x1, x8, x9
	add	x0, sp, #48
	str	x0, [sp, #8]                    ; 8-byte Folded Spill
	mov	x2, #56                         ; =0x38
	str	x2, [sp, #16]                   ; 8-byte Folded Spill
	bl	_memcpy
	ldr	x10, [sp]                       ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x8, [sp, #40]
	ldrsw	x9, [sp, #28]
	mul	x9, x9, x10
	add	x0, x8, x9
	ldr	x10, [sp, #40]
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	mov	w9, #56                         ; =0x38
	smaddl	x1, w8, w9, x10
	bl	_memcpy
	ldr	x1, [sp, #8]                    ; 8-byte Folded Reload
	ldr	x2, [sp, #16]                   ; 8-byte Folded Reload
	ldr	x10, [sp, #40]
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	mov	w9, #56                         ; =0x38
	smaddl	x0, w8, w9, x10
	bl	_memcpy
	b	LBB4_6
LBB4_6:                                 ;   in Loop: Header=BB4_3 Depth=2
	b	LBB4_7
LBB4_7:                                 ;   in Loop: Header=BB4_3 Depth=2
	ldr	w8, [sp, #28]
	add	w8, w8, #1
	str	w8, [sp, #28]
	b	LBB4_3
LBB4_8:                                 ;   in Loop: Header=BB4_1 Depth=1
	b	LBB4_9
LBB4_9:                                 ;   in Loop: Header=BB4_1 Depth=1
	ldr	w8, [sp, #32]
	add	w8, w8, #1
	str	w8, [sp, #32]
	b	LBB4_1
LBB4_10:
	ldur	x9, [x29, #-8]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB4_12
	b	LBB4_11
LBB4_11:
	bl	___stack_chk_fail
LBB4_12:
	ldp	x29, x30, [sp, #112]            ; 16-byte Folded Reload
	add	sp, sp, #128
	ret
	.cfi_endproc
                                        ; -- End function
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	stp	x28, x27, [sp, #-32]!           ; 16-byte Folded Spill
	stp	x29, x30, [sp, #16]             ; 16-byte Folded Spill
	add	x29, sp, #16
	sub	sp, sp, #3040
	.cfi_def_cfa w29, 16
	.cfi_offset w30, -8
	.cfi_offset w29, -16
	.cfi_offset w27, -24
	.cfi_offset w28, -32
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	stur	x8, [x29, #-24]
	str	wzr, [sp, #164]
	adrp	x0, l_.str.2@PAGE
	add	x0, x0, l_.str.2@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.3@PAGE
	add	x0, x0, l_.str.3@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.4@PAGE
	add	x0, x0, l_.str.4@PAGEOFF
	bl	_printf
	mov	x9, sp
	sub	x8, x29, #40
	str	x8, [sp, #96]                   ; 8-byte Folded Spill
	str	x8, [x9]
	adrp	x0, l_.str.5@PAGE
	add	x0, x0, l_.str.5@PAGEOFF
	bl	_scanf
	adrp	x0, l_.str.6@PAGE
	add	x0, x0, l_.str.6@PAGEOFF
	bl	_printf
	mov	x9, sp
	add	x8, sp, #160
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	str	x0, [sp, #120]                  ; 8-byte Folded Spill
	bl	_scanf
	add	x8, sp, #152
	str	x8, [sp, #88]                   ; 8-byte Folded Spill
	str	wzr, [sp, #152]
	adrp	x0, l_.str.8@PAGE
	add	x0, x0, l_.str.8@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.9@PAGE
	add	x0, x0, l_.str.9@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #88]                   ; 8-byte Folded Reload
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	bl	_scanf
	ldr	x0, [sp, #96]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #160]
	sub	x2, x29, #56
	str	x2, [sp, #104]                  ; 8-byte Folded Spill
	bl	_getBaseIP
	ldr	w0, [sp, #160]
	sub	x1, x29, #72
	str	x1, [sp, #112]                  ; 8-byte Folded Spill
	bl	_calculateSubnetMask
	ldr	x8, [sp, #104]                  ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.10@PAGE
	add	x0, x0, l_.str.10@PAGEOFF
	bl	_printf
	ldr	x8, [sp, #112]                  ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.11@PAGE
	add	x0, x0, l_.str.11@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.12@PAGE
	add	x0, x0, l_.str.12@PAGEOFF
	bl	_printf
	ldr	x0, [sp, #120]                  ; 8-byte Folded Reload
	mov	x9, sp
	add	x8, sp, #156
	str	x8, [x9]
	bl	_scanf
	str	wzr, [sp, #148]
	b	LBB5_1
LBB5_1:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #148]
	ldr	w9, [sp, #156]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB5_7
	b	LBB5_2
LBB5_2:                                 ;   in Loop: Header=BB5_1 Depth=1
	add	x8, sp, #147
	str	x8, [sp, #80]                   ; 8-byte Folded Spill
	mov	w8, #110                        ; =0x6e
	strb	w8, [sp, #147]
	ldr	w8, [sp, #148]
	add	w10, w8, #1
	mov	x9, sp
                                        ; implicit-def: $x8
	mov	x8, x10
	str	x8, [x9]
	adrp	x0, l_.str.13@PAGE
	add	x0, x0, l_.str.13@PAGEOFF
	bl	_printf
	ldrsw	x8, [sp, #148]
	mov	x9, #56                         ; =0x38
	str	x9, [sp, #64]                   ; 8-byte Folded Spill
	mul	x9, x8, x9
	add	x8, sp, #168
	str	x8, [sp, #72]                   ; 8-byte Folded Spill
	add	x8, x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.14@PAGE
	add	x0, x0, l_.str.14@PAGEOFF
	bl	_scanf
	ldr	x10, [sp, #64]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldrsw	x9, [sp, #148]
	mul	x9, x9, x10
	add	x8, x8, x9
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.15@PAGE
	add	x0, x0, l_.str.15@PAGEOFF
	bl	_printf
	ldr	x10, [sp, #64]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #72]                   ; 8-byte Folded Reload
	ldrsw	x9, [sp, #148]
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x8, x8, #20
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.7@PAGE
	add	x0, x0, l_.str.7@PAGEOFF
	bl	_scanf
	adrp	x0, l_.str.16@PAGE
	add	x0, x0, l_.str.16@PAGEOFF
	bl	_printf
	bl	_getchar
	ldr	x8, [sp, #80]                   ; 8-byte Folded Reload
	mov	x9, sp
	str	x8, [x9]
	adrp	x0, l_.str.17@PAGE
	add	x0, x0, l_.str.17@PAGEOFF
	bl	_scanf
	ldrsb	w8, [sp, #147]
	subs	w8, w8, #121
	cset	w8, eq
	tbnz	w8, #0, LBB5_4
	b	LBB5_3
LBB5_3:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldrsb	w8, [sp, #147]
	subs	w8, w8, #89
	cset	w8, ne
	tbnz	w8, #0, LBB5_5
	b	LBB5_4
LBB5_4:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w10, [sp, #152]
	ldrsw	x8, [sp, #148]
	mov	x9, #56                         ; =0x38
	mul	x9, x8, x9
	add	x8, sp, #168
	add	x9, x8, x9
	ldr	w8, [x9, #20]
	add	w8, w8, w10
	str	w8, [x9, #20]
	mov	w8, #110                        ; =0x6e
	strb	w8, [sp, #147]
	b	LBB5_5
LBB5_5:                                 ;   in Loop: Header=BB5_1 Depth=1
	b	LBB5_6
LBB5_6:                                 ;   in Loop: Header=BB5_1 Depth=1
	ldr	w8, [sp, #148]
	add	w8, w8, #1
	str	w8, [sp, #148]
	b	LBB5_1
LBB5_7:
	ldr	w1, [sp, #156]
	add	x0, sp, #168
	bl	_sortSubnetsByHosts
	sub	x0, x29, #88
	sub	x1, x29, #56
	mov	x2, #16                         ; =0x10
	bl	___strcpy_chk
	mov	x9, sp
	adrp	x8, l_.str.19@PAGE
	add	x8, x8, l_.str.19@PAGEOFF
	str	x8, [x9]
	adrp	x8, l_.str.20@PAGE
	add	x8, x8, l_.str.20@PAGEOFF
	str	x8, [x9, #8]
	adrp	x8, l_.str.21@PAGE
	add	x8, x8, l_.str.21@PAGEOFF
	str	x8, [x9, #16]
	adrp	x8, l_.str.22@PAGE
	add	x8, x8, l_.str.22@PAGEOFF
	str	x8, [x9, #24]
	adrp	x0, l_.str.18@PAGE
	add	x0, x0, l_.str.18@PAGEOFF
	bl	_printf
	adrp	x0, l_.str.23@PAGE
	add	x0, x0, l_.str.23@PAGEOFF
	bl	_printf
	str	wzr, [sp, #140]
	b	LBB5_8
LBB5_8:                                 ; =>This Inner Loop Header: Depth=1
	ldr	w8, [sp, #140]
	ldr	w9, [sp, #156]
	subs	w8, w8, w9
	cset	w8, ge
	tbnz	w8, #0, LBB5_11
	b	LBB5_9
LBB5_9:                                 ;   in Loop: Header=BB5_8 Depth=1
	ldrsw	x8, [sp, #140]
	mov	x9, #56                         ; =0x38
	str	x9, [sp, #40]                   ; 8-byte Folded Spill
	mul	x9, x8, x9
	add	x8, sp, #168
	str	x8, [sp, #48]                   ; 8-byte Folded Spill
	add	x8, x8, x9
	ldr	w0, [x8, #20]
	bl	_calculateNeededBits
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	str	w0, [sp, #136]
	ldr	w11, [sp, #136]
	mov	w9, #32                         ; =0x20
	subs	w9, w9, w11
	str	w9, [sp, #132]
	ldr	w0, [sp, #132]
	ldrsw	x9, [sp, #140]
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x1, x8, #40
	bl	_calculateSubnetMask
	ldr	x10, [sp, #40]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldrsw	x9, [sp, #140]
	mul	x9, x9, x10
	add	x8, x8, x9
	add	x0, x8, #24
	sub	x1, x29, #88
	str	x1, [sp, #56]                   ; 8-byte Folded Spill
	mov	x2, #16                         ; =0x10
	bl	___strcpy_chk
	ldr	x13, [sp, #40]                  ; 8-byte Folded Reload
	ldr	x8, [sp, #48]                   ; 8-byte Folded Reload
	ldrsw	x9, [sp, #140]
	mul	x10, x9, x13
	mov	x9, x8
	add	x12, x9, x10
	ldrsw	x9, [sp, #140]
	mul	x10, x9, x13
	mov	x9, x8
	add	x9, x9, x10
	ldr	w9, [x9, #20]
                                        ; implicit-def: $x11
	mov	x11, x9
	ldrsw	x9, [sp, #140]
	mul	x10, x9, x13
	mov	x9, x8
	add	x9, x9, x10
	add	x10, x9, #24
	ldrsw	x9, [sp, #140]
	mul	x9, x9, x13
	add	x8, x8, x9
	add	x8, x8, #40
	mov	x9, sp
	str	x12, [x9]
	str	x11, [x9, #8]
	str	x10, [x9, #16]
	str	x8, [x9, #24]
	adrp	x0, l_.str.24@PAGE
	add	x0, x0, l_.str.24@PAGEOFF
	bl	_printf
	ldr	x2, [sp, #56]                   ; 8-byte Folded Reload
	ldr	w1, [sp, #132]
	mov	x0, x2
	bl	_calculateNextSubnetIP
	b	LBB5_10
LBB5_10:                                ;   in Loop: Header=BB5_8 Depth=1
	ldr	w8, [sp, #140]
	add	w8, w8, #1
	str	w8, [sp, #140]
	b	LBB5_8
LBB5_11:
	adrp	x0, l_.str.25@PAGE
	add	x0, x0, l_.str.25@PAGEOFF
	bl	_system
	ldur	x9, [x29, #-24]
	adrp	x8, ___stack_chk_guard@GOTPAGE
	ldr	x8, [x8, ___stack_chk_guard@GOTPAGEOFF]
	ldr	x8, [x8]
	subs	x8, x8, x9
	cset	w8, eq
	tbnz	w8, #0, LBB5_13
	b	LBB5_12
LBB5_12:
	bl	___stack_chk_fail
LBB5_13:
	mov	w0, #0                          ; =0x0
	add	sp, sp, #3040
	ldp	x29, x30, [sp, #16]             ; 16-byte Folded Reload
	ldp	x28, x27, [sp], #32             ; 16-byte Folded Reload
	ret
	.cfi_endproc
                                        ; -- End function
	.section	__TEXT,__cstring,cstring_literals
l_.str:                                 ; @.str
	.asciz	"%d.%d.%d.%d"

l_.str.1:                               ; @.str.1
	.asciz	"%u.%u.%u.%u"

l_.str.2:                               ; @.str.2
	.asciz	"\t VLSM CALCULATOR VERSION 2 \t\n"

l_.str.3:                               ; @.str.3
	.asciz	"\tMade by Nikolai Pazon | @tristan.nikolai\t\n"

l_.str.4:                               ; @.str.4
	.asciz	"Enter IP address (e.g., 192.168.0.0): "

l_.str.5:                               ; @.str.5
	.asciz	"%15s"

l_.str.6:                               ; @.str.6
	.asciz	"Enter prefix length (e.g., 24): "

l_.str.7:                               ; @.str.7
	.asciz	"%d"

l_.str.8:                               ; @.str.8
	.asciz	"\n\nWildcards are a value that will be added to the # of hosts\n"

l_.str.9:                               ; @.str.9
	.asciz	"Enter wildcard (X), 0 if none: "

l_.str.10:                              ; @.str.10
	.asciz	"\nBase IP Address: %s\n"

l_.str.11:                              ; @.str.11
	.asciz	"Subnet Mask: %s\n"

l_.str.12:                              ; @.str.12
	.asciz	"\nEnter the number of subnets: "

l_.str.13:                              ; @.str.13
	.asciz	"\nEnter name for Subnet %d: "

l_.str.14:                              ; @.str.14
	.asciz	"%19s"

l_.str.15:                              ; @.str.15
	.asciz	"Enter required #hosts for %s: "

l_.str.16:                              ; @.str.16
	.asciz	"Has wildcard? (y/n): "

l_.str.17:                              ; @.str.17
	.asciz	"%c"

l_.str.18:                              ; @.str.18
	.asciz	"\n%-15s %-10s %-15s %-15s\n"

l_.str.19:                              ; @.str.19
	.asciz	"Subnet Name"

l_.str.20:                              ; @.str.20
	.asciz	"Hosts"

l_.str.21:                              ; @.str.21
	.asciz	"Subnet IP"

l_.str.22:                              ; @.str.22
	.asciz	"Subnet Mask"

l_.str.23:                              ; @.str.23
	.asciz	"---------------------------------------------------------\n"

l_.str.24:                              ; @.str.24
	.asciz	"%-15s %-10d %-15s %-15s\n"

l_.str.25:                              ; @.str.25
	.asciz	"PAUSE"

.subsections_via_symbols
