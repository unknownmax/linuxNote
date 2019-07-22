
set -e

rootfsPath=$1

function copyQemuToRootfs(){

	echo  $rootfsPath

	if [ -f "/usr/bin/qemu-aarch64-static" ]; then
		sudo cp /usr/bin/qemu-aarch64-static $rootfsPath/usr/bin/
	else
		echo "error: please insall qemu: "
		echo "==> sudo apt-get install qemu-user-static"
		exit 1;
	fi
}

function copyResolvConf(){
	sudo cp  /etc/resolv.conf $rootfsPath/etc/resolv.conf 
}


if [ -d "$rootfsPath/etc" ];
then
	echo $*
	echo  $rootfsPath
	echo "路径存在";
	copyQemuToRootfs
	copyResolvConf
	sudo cp ./ubunt_build.sh $rootfsPath/home
	

else
echo "路径不存在";
fi



