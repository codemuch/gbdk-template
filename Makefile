GBDK_HOME = /home/et/dev/gbdk/
CC = $(GBDK_HOME)bin/lcc
COMPILER_FLAGS = -std=c99 -Wall -g
SRCS = $(wildcard ./src/*.c ./lib/*.c)
OBJS = $(SRCS:.c=.o)
INCLUDE_PATHS = -Iinclude

# Change this to what you would like to call your ROM
TARGET = template.gb

all: $(TARGET)

# Make a .GB ROM, and remove all of the intermediate files
$(TARGET): $(OBJS)
	$(CC) -o $@ $(OBJS)
	rm -f ./src/*.o ./src/*.lst ./src/*.sym ./src/*.asm ./*.ihx

%.o: %.c
	$(CC) $(COMPILER_FLAGS) $(INCLUDE_PATHS) -c $< -o $@

# Delete all of the generated files including the ROM
clean:
	rm -f ./src/*.o ./src/*.lst ./src*.map ./src/*.gb ./src/*~ ./src/*.rel ./src/*.cdb ./src/*.lnk ./src/*.sym ./src/*.asm ./src/*.noi ./*.ihx ./*.gb