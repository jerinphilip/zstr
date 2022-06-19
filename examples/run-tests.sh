#!/bin/bash

CPPDIR=$1

diff -q $CPPDIR/ztxtpipe.cpp <(./ztxtpipe < $CPPDIR/ztxtpipe.cpp)
diff -q $CPPDIR/ztxtpipe.cpp <(gzip < $CPPDIR/ztxtpipe.cpp | ./ztxtpipe)
diff -q $CPPDIR/ztxtpipe.cpp <(gzip -9 < $CPPDIR/ztxtpipe.cpp | ./ztxtpipe)
diff -q <(cat $CPPDIR/ztxtpipe.cpp $CPPDIR/ztxtpipe.cpp) <(cat $CPPDIR/ztxtpipe.cpp $CPPDIR/ztxtpipe.cpp | gzip | ./ztxtpipe)
diff -q <(cat $CPPDIR/ztxtpipe.cpp $CPPDIR/ztxtpipe.cpp) <({
  gzip < $CPPDIR/ztxtpipe.cpp
  gzip < $CPPDIR/ztxtpipe.cpp
} | ./ztxtpipe)
diff -q $CPPDIR/zpipe.cpp <(./zpipe < $CPPDIR/zpipe.cpp)
diff -q $CPPDIR/zpipe.cpp <(gzip < $CPPDIR/zpipe.cpp | ./zpipe)
diff -q $CPPDIR/zpipe.cpp <(gzip -9 < $CPPDIR/zpipe.cpp | ./zpipe)
diff -q <(cat $CPPDIR/zpipe.cpp $CPPDIR/zpipe.cpp) <(cat $CPPDIR/zpipe.cpp $CPPDIR/zpipe.cpp | gzip | ./zpipe)
diff -q <(cat $CPPDIR/zpipe.cpp $CPPDIR/zpipe.cpp) <({
  gzip < $CPPDIR/zpipe.cpp
  gzip < $CPPDIR/zpipe.cpp
} | ./zpipe)
diff -q <(< $CPPDIR/zpipe.cpp | gzip) <(< $CPPDIR/zpipe.cpp | gzip | gzip | ./zpipe)
diff -q $CPPDIR/zc.cpp <(./zc < $CPPDIR/zc.cpp)
diff -q $CPPDIR/zc.cpp <(./zc - < $CPPDIR/zc.cpp)
diff -q $CPPDIR/zc.cpp <(./zc - - < $CPPDIR/zc.cpp)
diff -q $CPPDIR/zc.cpp <(./zc $CPPDIR/zc.cpp)
diff -q $CPPDIR/zc.cpp <(gzip < $CPPDIR/zc.cpp | ./zc)
diff -q $CPPDIR/zc.cpp <(gzip < $CPPDIR/zc.cpp | ./zc -)
diff -q $CPPDIR/zc.cpp <(gzip < $CPPDIR/zc.cpp | ./zc - -)
diff -q $CPPDIR/zc.cpp <(./zc <(gzip < $CPPDIR/zc.cpp))
diff -q $CPPDIR/zc.cpp <(./zc < $CPPDIR/zc.cpp -c | zcat)
diff -q $CPPDIR/zc.cpp <(./zc < $CPPDIR/zc.cpp -c - | zcat)
diff -q $CPPDIR/zc.cpp <(./zc < $CPPDIR/zc.cpp -c - - | zcat)
diff -q $CPPDIR/zc.cpp <(./zc -c $CPPDIR/zc.cpp | zcat)
diff -q <(cat $CPPDIR/zc.cpp $CPPDIR/zc.cpp) <(./zc -c $CPPDIR/zc.cpp - < $CPPDIR/zc.cpp | zcat)
diff -q <(cat $CPPDIR/zc.cpp $CPPDIR/zc.cpp) <(./zc -c - $CPPDIR/zc.cpp < $CPPDIR/zc.cpp | zcat)
diff -q <(cat $CPPDIR/zc.cpp $CPPDIR/zc.cpp) <(./zc -c $CPPDIR/zc.cpp $CPPDIR/zc.cpp | zcat)
diff -q <(cat $CPPDIR/zc.cpp $CPPDIR/zc.cpp) <({
  ./zc -c $CPPDIR/zc.cpp
  ./zc -c $CPPDIR/zc.cpp
} | zcat)
diff -q <(cat $CPPDIR/zc.cpp $CPPDIR/zc.cpp) <({
  gzip < $CPPDIR/zc.cpp
  ./zc -c $CPPDIR/zc.cpp
} | zcat)
diff -q <(cat $CPPDIR/zc.cpp $CPPDIR/zc.cpp) <({
  ./zc -c $CPPDIR/zc.cpp
  gzip < $CPPDIR/zc.cpp
} | zcat)
echo "all passed"
