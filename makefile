TARGET = task

ASM = nasm
LD  = ld

ASMFLAGS = -f elf64
LDFLAGS  = 

SRC = $(wildcard *.asm)
OBJ = $(patsubst %.asm, %.o, $(SRC))

all: $(SRC) $(TARGET)
  
$(TARGET): $(OBJ)
	$(LD) $(LDFLAGS) $< -o $@

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

clean:
	rm -f *.o $(TARGET)

.PHONY: all clean
