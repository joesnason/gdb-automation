#!/bin/bash

QEMU_LOG=qemu.log
GDB_RESULT=result

# close qemu process
pkill -9 qemu-system-arm

#diff $(QEMU_LOG) $(GDB_RESULT)
diff qemu.log result
if [ $? == 0 ]; then
	echo "the result is correct!"
	exit 
else
	echo "Wrong result!"
fi
