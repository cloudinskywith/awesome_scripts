sudo apt-get install software-properties-common
sudo add-apt-repository ppa:max-c-lv/shadowsocks-libev
sudo apt install shadowsocks-libev 

vim config1.json
###########
{
  "server":"43.225.47.31",
  "server_port":8389,
  "localo_port":1080,
  "password":"some pass word",
  "timeout":600,
  "method":"aes-256-cfb"
}
##########
ss-server -c config1.json -f pid1
