#!/bin/bash

QEMU_LOG=qemu.log
GDB_RESULT=result

#diff $(QEMU_LOG) $(GDB_RESULT)
diff qemu.log result
if [ $? == 0 ]; then
	echo "the result is correct!"
	exit 
else
	echo "Wrong result!"
fi
