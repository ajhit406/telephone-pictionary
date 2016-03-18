#!/bin/bash

rm -rf ~/code/example

sudo apt-get update
sudo apt-get clean

cd ~/code/telephone-pictionary

echo -e '\nPORT=3000\nIP=0.0.0.0' >> .env
sed -i 's|meteor|meteor -p $IP|g' Procfile

echo -e '#!/bin/bash\nbundle exec foreman start' >> start-app
chmod +x start-app
