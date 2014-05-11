#Helper script for Jasper setup
#@author : Aabhas Sharma - aabhas.sharma@gmail.com
#NOTE : I do not own Jasper, and have nothing to do with the team
#that created it. Please visit http://jasperproject.github.io/ for more information

#!/bin/sh
# Download the required tars, untar them
wget http://downloads.sourceforge.net/project/cmusphinx/sphinxbase/0.8/sphinxbase-0.8.tar.gz && \
wget http://downloads.sourceforge.net/project/cmusphinx/pocketsphinx/0.8/pocketsphinx-0.8.tar.gz && \
tar -zxvf sphinxbase-0.8.tar.gz && \
tar -zxvf pocketsphinx-0.8.tar.gz && \
sudo apt-get install flex bison && \
cd ~/sphinxbase-0.8/ && \
# install sphinxbase && \
./configure --enable-fixed && \
make && sudo make install && \
# install pocketsphinx
cd ~/pocketsphinx-0.8/ && \
./configure && \
make && sudo make install && \
echo "All done!"
