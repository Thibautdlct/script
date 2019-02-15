echo -n "Enter the username: "
read username

echo "create user "$username
useradd $username > /dev/null 2>&1

read -p "Should we create a ssh-keygen? ? (y/n)" -n 1 -r
echo #rep
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Creating a ssh-keygen"
    sudo -u $username ssh-keygen -t rsa -b 2048 -f /home/$username/.ssh/id_rsa -q -P "" > /dev/null 2>&1
fi

echo "the user has been added"
