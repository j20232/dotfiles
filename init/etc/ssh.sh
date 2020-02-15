echo "give me e-mail"
mkdir $HOME/.ssh
cd $HOME/.ssh
read EMAIL; ssh-keygen -f $HOME/.ssh/id_rsa -t rsa -b 4096 -C $EMAIL
chmod 600 $HOME/.ssh/id_rsa
