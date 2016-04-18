#retrieves block information: start & size
start=$(cat /sys/block/mmcblk0/mmcblk0p5/start)
size=$(cat /sys/block/mmcblk0/mmcblk0p5/size)
#dump emmc@android partition as system.img to sdcard
dd if=/dev/block/mmcblk0 bs=512 skip=${start} count=${size} of=/sdcard/system.img
#create the sentinel file
echo "FINISHED_DUMP" > /sdcard/finished_dump
