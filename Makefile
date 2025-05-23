EXTENSION = roaringbitmap
TESTS        = $(wildcard sql/*.sql)
REGRESS      = $(patsubst sql/%.sql,%,$(TESTS))

MODULE_big = roaringbitmap
OBJS = roaringbitmap.o

roaringbitmap.o: override CFLAGS += -std=c11 -Wno-error=maybe-uninitialized \
	-Wno-declaration-after-statement -Wno-missing-prototypes

PG_CONFIG = pg_config

DATA = $(wildcard *--*.sql)
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)
