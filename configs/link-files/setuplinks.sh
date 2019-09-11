[[ ! -z "$BASHRCUSER" ]] && echo "already sourcing .bashrc.user" || echo "adding source .bashrc.user to .bashrc"
if [[ -z "$BASHRCUSER" ]];then
	echo 'source ~/.bashrc.user' >> ~/.bashrc
fi
if [ ! -d $HOME/.backups ];then
	echo "creating .backups folder"
	mkdir $HOME/.backups
fi

if [ -L $HOME/.Xresources ];then
	echo "moving .Xresources to .backups folder"
	mv $HOME/.Xresources $HOME/.backups/.Xresources
	ln -s $PWD/urxvt/Xresources $HOME/.Xresources;
else
	ln -s $PWD/urxvt/Xresources $HOME/.Xresources;
fi
if [ -L $HOME/.i3status.conf ];then
	echo "moving .i3status.conf to .backups folder"
	mv $HOME/.i3status.conf $HOME/.backups/.i3status.conf
	ln -s $PWD/i3status.conf $HOME/.i3status.conf;
else
	ln -s $PWD/i3status.conf $HOME/.i3status.conf;
fi
if [ -L $HOME/.i3 ];then
	echo "moving .i3 folder to .backups folder"
	mv $HOME/.i3 $HOME/.backups/.i3
	ln -s $PWD/i3 $HOME/.i3;
else
	ln -s $PWD/i3 $HOME/.i3;
fi
if [ ! -L $HOME/.vimlocal ];then
	echo "moving .vimlocal folder to .backups folder"
	mkdir -p $HOME/.vimlocal/plugged
fi
if [ -L $HOME/.vim ];then
	echo "moving .vim folder to .backups folder"
	mv $HOME/.vim $HOME/.backups/.vim
	ln -s $PWD/vim $HOME/.vim;
else
	ln -s $PWD/vim $HOME/.vim;
fi
if [ -L $HOME/.vimrc ];then
	echo "moving .vimrc to .backups folder"
	mv $HOME/.vimrc $HOME/.backups/.vimrc
	ln -s $PWD/vimrc $HOME/.vimrc;
else
	ln -s $PWD/vimrc $HOME/.vimrc;
fi
if [ -L $HOME/.pip ];then
	echo "moving .pip to .backups folder"
	mv $HOME/.pip $HOME/.backups/.pip
	ln -s $PWD/pip $HOME/.pip;
else
	ln -s $PWD/pip $HOME/.pip;
fi
if [ -L $HOME/.bashrc.user ];then
	echo "moving .bashrc.user to .backups folder"
	mv $HOME/.bashrc.user $HOME/.backups/.bashrc.user
	ln -s $PWD/bashrc.user $HOME/.bashrc.user;
else
	ln -s $PWD/bashrc.user $HOME/.bashrc.user;
fi
if [ -L $HOME/.wgetrc ];then
	echo "moving .wgetrc to .backups folder"
	mv $HOME/.wgetrc $HOME/.backups/.wgetrc
	ln -s $PWD/wgetrc $HOME/.wgetrc;
else
	ln -s $PWD/wgetrc $HOME/.wgetrc;
fi
if [ -L $HOME/.urxvt ];then
	echo "moving .urxvt to .backups folder"
	mv $HOME/.urxvt $HOME/.backups/.urxvt
	ln -s $PWD/urxvt $HOME/.urxvt;
else
	ln -s $PWD/urxvt $HOME/.urxvt;
fi
if [ -L $HOME/Todo ];then
	echo "moving Todo to .backups folder"
	mv $HOME/Todo $HOME/.backups/Todo
	ln -s $PWD/todo $HOME/Todo;
else
	ln -s $PWD/todo $HOME/Todo;
fi
if [ -L $HOME/.todo.sh ];then
	echo "moving .todo.sh to .backups folder"
	mv $HOME/.todo.sh $HOME/.backups/.todo.sh
	ln -s $PWD/todo.sh $HOME/.todo.sh;
else
	ln -s $PWD/todo.sh $HOME/.todo.sh;
fi
