OBJS=map.o smap.o

cmap.a:	$(OBJS)
	$(AR) -cr $@ $^

distclean: clean
	rm -f cmap.a

clean:
	rm -f $(OBJS)

.c.o:	$(PWD)/include
	$(CC) $(CFLAGS) -c -o $@ $^

