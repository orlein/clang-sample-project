# Compiler and flags
CC = clang
CFLAGS = -Wall -Wextra -Iinclude -g

# Directories
SRC_DIR = src
INCLUDE_DIR = include
BIN_DIR = bin

# Output binary
TARGET = $(BIN_DIR)/app

# Source and object files
SRCS = $(wildcard $(SRC_DIR)/*.c)
OBJS = $(SRCS:$(SRC_DIR)/%.c=$(BIN_DIR)/%.o)

# OS-specific adjustments
ifeq ($(OS),Windows_NT)
    RM = del /Q
    MKDIR = if not exist $(BIN_DIR) mkdir $(BIN_DIR)
    EXE = $(TARGET).exe
else
    RM = rm -rf
    MKDIR = mkdir -p $(BIN_DIR)
    EXE = $(TARGET)
endif

# Default target
all: $(EXE)

# Rule for building the binary
$(EXE): $(OBJS)
	$(MKDIR)
	$(CC) $(CFLAGS) -o $@ $^

# Rule for building object files
$(BIN_DIR)/%.o: $(SRC_DIR)/%.c
	$(MKDIR)
	$(CC) $(CFLAGS) -c -o $@ $<

# Clean up
clean:
	$(RM) $(BIN_DIR)

.PHONY: all clean
