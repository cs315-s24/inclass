PROG = even
OBJS = even.o even_c.o even_s.o

%.o: %.c
	gcc -c -g -o $@ $<

%.o: %.s
	as -g -o $@ $<

$(PROG): $(OBJS)
	gcc -g -o $@ $^

clean:
	rm -rf $(PROG) $(OBJS)
