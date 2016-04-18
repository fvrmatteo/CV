#retrieves block information: start & size
start=$(cat /sys/block/mmcblk0/mmcblk0p5/start)
size=$(cat /sys/block/mmcblk0/mmcblk0p5/size)
#dump emmc@android partition as system.img to sdcard
dd if=/sdcard/rooted.img bs=512 skip=${start} count=${size} of=/dev/block/mmcblk0
#create the sentinel file
echo "FINISHED_WRITE" > /sdcard/finished_write
