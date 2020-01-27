# .gdbinit

# prompt (the extra space is intentional)
set prompt \001\033[01;32mgdb\001\033[01;34m\002 $\001\033[00;00m\002

# history
set history save on
set history filename ~/.gdb/history

# pretty printing
set print array on
set print pretty on
set print asm-demangle on

# avoid the annoying paging
set height 0

# whisper
# target extended-remote :22331 for multiple ports
mon exec SetRTTAddr 0x38000000
set *0x5C001004 |= 0x1
file build/king_stm32.elf
target remote :2331
