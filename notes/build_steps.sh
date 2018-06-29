# 1. clone source code
git clone git@github.com:iloveat/merlin.git


# 2. create python environment
conda config --prepend channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/
conda create --name merlin-py27 python=2.7 numpy scipy h5py
source activate merlin-py27


# 3. install dependencies
sudo apt-get install csh
sudo apt-get install realpath
sudo apt-get install autotools-dev
sudo apt-get install automake
sudo apt-get install libncurses5 
sudo apt-get install libncurses5-dev 
sudo apt-get install libcurses-ocaml


# 4. build dependencies
cd tools
./compile_tools.sh
./compile_other_speech_tools.sh 







