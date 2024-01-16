# Define the path to the source files
SRC_CHIP8 = src/include/chip8

# List of source files
CPP_SRCS = \
	$(SRC_CHIP8)/chip8.cpp \
	$(SRC_CHIP8)/platform.cpp \
	main.cpp

# Compiler flags
CXXFLAGS = -Isrc/include -Lsrc/lib

# Libraries to link against
LIBS = -lmingw32 -lSDL2main -lSDL2

# Output executable name
OUTPUT = main

# Default target
all: $(CPP_SRCS)
	g++ $(CXXFLAGS) -o $(OUTPUT) $(CPP_SRCS) $(LIBS)
