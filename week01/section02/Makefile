PROG = lab01
OBJS = lab01.o

%.o: %.c
	gcc -g -c -o $@ $<

$(PROG): $(OBJS)
	gcc -g -o $@ $^

clean:
	rm -rf $(PROG) $(OBJS)
