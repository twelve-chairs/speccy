# Download the latest Pasmo source code and unarchive it
curl http://pasmo.speccy.org/bin/pasmo-0.5.3.tgz > pasmo-0.5.3.tgz
tar xzvf pasmo-0.5.3.tgz
cd pasmo-0.5.3
    
# Compile and install Pasmo to $HOME/speccy/pasmo directory
./configure --prefix=$HOME/speccy/pasmo
make
make install
cd ..
    
# Set up environment variables, you need to do this for every
# shell session you start or include it in your configuration.
export PATH=$HOME/speccy/pasmo/bin:$PATH