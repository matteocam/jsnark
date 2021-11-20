#!/bin/sh
for i in 1 10 20 50; do java -cp bin examples.generators.SetMemGenerator $i; done 