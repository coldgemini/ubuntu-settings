#echo 'source ~/.bashrc.user' >> ~/.bashrc
if [ ! -e $HOME/.backups ];then
	mkdir $HOME/.backups
fi

if [ -e $HOME/.Xresources ];then
	mv $HOME/.Xresources $HOME/.backups/.Xresources
	ln -s $PWD/urxvt/Xresources.1 $HOME/.Xresources;
else
	ln -s $PWD/urxvt/Xresources.1 $HOME/.Xresources;
fi
if [ -e $HOME/.i3status.conf ];then
	mv $HOME/.i3status.conf $HOME/.backups/.i3status.conf
	ln -s $PWD/i3status.conf $HOME/.i3status.conf;
else
	ln -s $PWD/i3status.conf $HOME/.i3status.conf;
fi
if [ -e $HOME/.i3 ];then
	mv $HOME/.i3 $HOME/.backups/.i3
	ln -s $PWD/i3 $HOME/.i3;
else
	ln -s $PWD/i3 $HOME/.i3;
fi
if [ ! -e $HOME/.vimlocal ];then
	mkdir -p $HOME/.vimlocal/plugged
fi
if [ -e $HOME/.vim ];then
	mv $HOME/.vim $HOME/.backups/.vim
	ln -s $PWD/vim $HOME/.vim;
else
	ln -s $PWD/vim $HOME/.vim;
fi
if [ -e $HOME/.vimrc ];then
	mv $HOME/.vimrc $HOME/.backups/.vimrc
	ln -s $PWD/vimrc $HOME/.vimrc;
else
	ln -s $PWD/vimrc $HOME/.vimrc;
fi
if [ -e $HOME/.pip ];then
	mv $HOME/.pip $HOME/.backups/.pip
	ln -s $PWD/pip $HOME/.pip;
else
	ln -s $PWD/pip $HOME/.pip;
fi
if [ -e $HOME/.bashrc.user ];then
	mv $HOME/.bashrc.user $HOME/.backups/.bashrc.user
	ln -s $PWD/bashrc.user $HOME/.bashrc.user;
else
	ln -s $PWD/bashrc.user $HOME/.bashrc.user;
fi
if [ -e $HOME/.wgetrc ];then
	mv $HOME/.wgetrc $HOME/.backups/.wgetrc
	ln -s $PWD/wgetrc $HOME/.wgetrc;
else
	ln -s $PWD/wgetrc $HOME/.wgetrc;
fi
