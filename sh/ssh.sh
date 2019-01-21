mkdir $HOME/.ssh
echo "give me e-mail"
read EMAIL
ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -b 4096 -C $EMAIL
chmod 600 $HOME/.ssh/id_rsa
