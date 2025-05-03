.text
.align 4

.set LAB_0021a8b4, 0x0021a8b4
.set Force__Get, 0x002f731c
.set Force__IsAllied, 0x002ecdf0

ReverseModeAsm:
    ldr        r0, [r4, #0x0]
    ldr        r0, [r0, #0x6c]
    ldrb       r0, [r0, #0x8]
    bl         Force__Get
    mov        r1, #0x0
    bl         Force__IsAllied
    cmp        r0, #0x0
    bne        LAB_0021a8b4
    ldrh       r0, [r6, #0x52]
    add        r1, r4, #0x2a
    and        r3, r0, #0x7
    ldrb       r2, [r1, r0, asr #0x3]
    orr        r2, r2, r7, lsl r3
    strb       r2, [r1, r0, asr #0x3]
    b          LAB_0021a8b4