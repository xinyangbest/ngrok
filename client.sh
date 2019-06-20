#/bin/bash

# 编译客户端
compile_client(){
	cd /usr/local/ngrok/
	GOOS=$1 GOARCH=$2 make release-client
}

# 生成客户端
client(){
	echo "1、Linux 32位"
	echo "2、Linux 64位"
	echo "3、Windows 32位"
	echo "4、Windows 64位"
	echo "5、Mac OS 32位"
	echo "6、Mac OS 64位"
	echo "7、Linux ARM"

	read num
	case "$num" in
		[1] )
			compile_client linux 386
		;;
		[2] )
			compile_client linux amd64
		;;
		[3] )
			compile_client windows 386
		;;
		[4] ) 
			compile_client windows amd64
		;;
		[5] ) 
			compile_client darwin 386
		;;
		[6] ) 
			compile_client darwin amd64
		;;
		[7] ) 
			compile_client linux arm
		;;
		*) echo "选择错误，退出";;
	esac

}
client;
