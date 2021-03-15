1.cmake_project  	#可执行文件的源代码
2.cmake_project_sdk  	#库文件的源代码
3.build.sh     		#Linux下可直接生成可执行文件的脚本
4.build_sdk.sh     	#Linux下可直接生成库文件的脚本
(需要先执行4生成库以后，再执行3生成可执行文件，脚本需要带上Debug或者Release参数)