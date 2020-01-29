; Assembly exercise from the book
; Practical Reverse Engineering: X86, X64, ARM, Windows Kernel, Reversing Tools, and Obfuscation
; by: Alexandre Gazet, Bruce Dang, and Elias Bachaalany
; Chapter 1 (x86 and x64) p.11 Q.1

01: 8B 7D 08    mov edi, [ebp+8]
02: 8B D7       mov edx, edi
03: 33 C0       xor eax, eax
04: 83 C9 FF    or ecx, 0FFFFFFFFh
05: F2 AE       repne scasb
06: 83 C1 02    add ecx, 2
07: F7 D9       neg ecx
08: 8A 45 0C    mov al, [ebp+0Ch]
09: 8B FA       mov edi, edx
10: F3 AA       rep stosb
11: 8B C2       mov eax, edx
