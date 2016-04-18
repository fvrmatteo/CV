mov dword ptr [rsp - 8], 0xbfd7fe30			;PUSH VM_VALUE -> in this case VM_VALUE = 0xBFD7FE30 
mov qword ptr [rsp - 0x10], CALLER_ADDRESS

mov qword ptr [rsp - 0x18], rcx				;all the original registers are saved, basically a PUSHA (but it doesn't exist on x64)
mov qword ptr [rsp - 0x20], rdx
mov qword ptr [rsp - 0x28], r11
mov qword ptr [rsp - 0x30], rdi
mov qword ptr [rsp - 0x38], r13
mov qword ptr [rsp - 0x40], r14
mov qword ptr [rsp - 0x48], r10
mov qword ptr [rsp - 0x50], r9
mov qword ptr [rsp - 0x58], rax
mov [rsp - 0x60], rflags
mov qword ptr [rsp - 0x68], r12
mov qword ptr [rsp - 0x70], rbp
mov qword ptr [rsp - 0x78], r15
mov qword ptr [rsp - 0x80], rsi
mov qword ptr [rsp - 0x88], r8
mov qword ptr [rsp - 0x90], rbx
mov qword ptr [rsp - 0x98], 0

mov rsi, qword ptr [rsp - 8]				;retrieve VM_VALUE		0xBFD7FE30
neg esi										;neg VM_VALUE			0x402801D0
bswap esi									;bswap VM_VALUE			0xD0012840
rol esi, 1									;rol VM_VALUE, 1		0xA0025081
dec esi										;dec VM_VALUE			0xA0025080
rol esi, 3									;rol VM_VALUE, 3		0x00128405	-->	you can notice VM_VALUE looks like a displacement

movabs rax, 0x100000000						;the value 0x100000000 is the PE base
add rsi, rax								;here it is calculated a real BASE + OFFSET --> 0x100000000 + 0x00128405 = 0x100128405
lea rbp, [rsp]
and rsp, 0xfffffffffffffff0
mov rbx, rsi
movabs rax, 0
lea r12, [rip + 0xc06]						;guess what is retrieved here? A dispatch table
movzx eax, byte ptr [rsi]					;and here? The first byte of the intermediate VM CODE pointed by RSI
add rsi, 1									;rsi = VM_RIP is incremented to point to the next virtual instruction
sub rsp, 0x218
jmp qword ptr ds:[r12+rax*8]				;jump to the first virtualized instruction / handler