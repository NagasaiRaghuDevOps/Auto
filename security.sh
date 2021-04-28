#execute it from rooot user
echo "Choose on of the following"
echo "1.Password change for a user
2.give sudo access to  user
3.change Password authentication to no
4.change Password authentication to yes"
read num
case $num in
	1)echo "enter the user whom password you want to changed"
		read user
		passwd $user
		echo "password changed"
		;;
	2)echo " enter user whom you want to give sudo access"
		read name
		echo "$name    ALL=(ALL)       ALL" >>/etc/sudoers
		echo "gave sudo access to $name";;
	3)
		sed -i '63s/yes/no/g' /etc/ssh/sshd_config
		echo "PasswordAuthentication changed to no" ;;
	4)
		sed -i '63s/no/yes/g' /etc/ssh/sshd_config
		echo "PasswordAuthentication changed to yes"
		;;
	*)echo "invalid input"
esac

