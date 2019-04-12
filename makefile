CC=gcc
CFLAGSO= -Wall -Wextra -static -O3 -funroll-loops -fexpensive-optimizations
CFLAGSD=  -pg -ggdb -Wall -lm   -Wno-missing-braces -static 

all: sparrow #sparrownX

sparrow:	sparrow.c
			$(CC) $(CFLAGSO) -DXOR sparrow.c  -lm -o sparrow

sparrownX:	sparrow.c
			$(CC) $(CFLAGSO)  sparrow.c -lm -o sparrownX			
			
debug:	sparrow.c
			$(CC) $(CFLAGSD)  -DXOR sparrow.c -lm -o sparrow
						
clean:	
		rm -f *.o *.a *.so
		rm -f sparrow
		rm -f sparrownX

