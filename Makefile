CC = gcc
CFLAGS = -Wall -pthread
TARGET = webserver
SOURCES = webserver.c
OBJECTS = $(SOURCES:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJECTS)
	@echo "Linking object files to create executable..."
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJECTS)
	@echo "Compilation complete, created executable: $(TARGET)"

%.o: %.c
	@echo "Compiling $<..."
	$(CC) $(CFLAGS) -c $< -o $@
	@echo "Compilation complete: $<"

clean:
	@echo "Cleaning up generated files..."
	rm -f $(OBJECTS) $(TARGET)
	@echo "Cleanup complete"

.PHONY: all clean

