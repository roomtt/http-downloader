TARGET = http_download
CROSS_COMPILE :=
TARGET_CFLAGS +=  -Wall  -g -O2 -DLINUX -Wl,-gc-sections -pthread

OBJ := http_downloader.o

all: $(TARGET)

$(TARGET):$(OBJ)
	$(CROSS_COMPILE)gcc $(CFLAGS) $(OBJ) $(TARGET_CFLAGS) -o $(TARGET)
$(OBJ):%.o:%.c
	$(CROSS_COMPILE)gcc -I./include -c -o $@ $<

clean:
	rm -rf $(TARGET) $(OBJ)
