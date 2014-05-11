#Helper script for Jasper setup part 2
#@author : Aabhas Sharma - aabhas.sharma@gmail.com
#NOTE : I do not own Jasper, and have nothing to do with the team
#that created it. Please visit http://jasperproject.github.io/ for more information

#!/bin/sh

sudo apt-get install subversion autoconf libtool automake gfortran --yes && \
svn co https://svn.code.sf.net/p/cmusphinx/code/trunk/cmuclmtk/ && \
cd ~/cmuclmtk/
sudo ./autogen.sh && sudo make && sudo make install && \
cd ~/ && \
wget http://www.cs.nyu.edu/~allauzen/openfst/openfst-1.3.4.tar.gz && \
wget https://mitlm.googlecode.com/files/mitlm-0.4.1.tar.gz && \
wget https://m2m-aligner.googlecode.com/files/m2m-aligner-1.2.tar.gz && \
wget https://phonetisaurus.googlecode.com/files/phonetisaurus-0.7.8.tgz && \
wget http://phonetisaurus.googlecode.com/files/g014b2b.tgz && \
tar -xvf m2m-aligner-1.2.tar.gz && \
tar -xvf openfst-1.3.4.tar.gz && \
tar -xvf phonetisaurus-0.7.8.tgz && \
tar -xvf mitlm-0.4.1.tar.gz && \
tar -xvf g014b2b.tgz && \
cd ~/openfst-1.3.4/ && \
sudo ./configure --enable-compact-fsts --enable-const-fsts --enable-far --enable-lookahead-fsts --enable-pdt && \
sudo make install && \# come back after a really long time
cd ~/m2m-aligner-1.2/ && \
sudo make && \
cd ~/mitlm-0.4.1/ && \
sudo ./configure && \
sudo make install && \
cd ~/phonetisaurus-0.7.8/ && \
cd src && \
sudo make && \
sudo cp ~/m2m-aligner-1.2/m2m-aligner /usr/local/bin/m2m-aligner && \
sudo cp ~/phonetisaurus-0.7.8/phonetisaurus-g2p /usr/local/bin/phonetisaurus-g2p && \
cd ~/g014b2b/ && \
./compile-fst.sh && \
mv ~/g014b2b ~/phonetisaurus && \
echo "All Done Part 2!"
