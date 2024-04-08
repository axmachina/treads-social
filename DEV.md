# Install

## NVM

Use nvm to install the latest nodejs:

```
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
```

```
nvm install node
```

### NPM Swapfile

When running npm install on a shared host you can run into space issues (host killing process). 
To resolve, try to set up a dedicated swap file:

```
sudo fallocate -l 1G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon --show
sudo cp /etc/fstab /etc/fstab.bak
echo '/swapfile none swap sw 0 0' | sudo tee -a /etc/fstab
sudo sysctl vm.swappiness=10
echo 'vm.swappiness=10' | sudo tee -a /etc/sysctl.conf
sudo sysctl vm.vfs_cache_pressure=50
echo 'vm.vfs_cache_pressure=50' | sudo tee -a /etc/sysctl.conf
```

# GIT

Unstage (rollback) commit

```
git reset --mixed HEAD~1
```

# DB

Set dbUrl

```
mongodb+srv://vlad:<password>@cluster0.ftnnl.mongodb.net/?retryWrites=true&w=majority&appName=Cluster0
```

Obtain password:

TVpeMJfgD!M:V9P

https://cloud.mongodb.com/v2/62147f3e076e47035886e58c#/security/database/users

Make sure password is URL encoded before using it in the url!