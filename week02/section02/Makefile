PROGS = add4 quadratic min
ADD4_OBJS = add4.o add4_c.o add4_s.o
# TODO: add as above for min and quadratic

OBJS = $(ADD4_OBJS) $(MIN_OBJS)

%.o: %.c
	gcc -c -g -o $@ $<

%.o: %.s
	as -g -o $@ $<

all: $(PROGS)

add4: $(ADD4_OBJS)
	gcc -g -o $@ $^

# TODO: add as above for min and quadratic

clean:
	rm -rf $(PROGS) $(OBJS)
