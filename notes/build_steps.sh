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


# 5. install python packages
source activate merlin-py27
pip install --upgrade pip
pip install numpy
pip install scipy
pip install scikit-learn
pip install matplotlib
pip install bandmat==0.7
pip install theano==1.0.2
pip install keras==2.2.0
pip install h5py==2.7.0
pip install tensorflow==1.8.0


# 6. run example
cd egs/slt_arctic/s1/
source activate merlin-py27
# prepare data for training
./01_setup.sh slt_arctic_full
# prepare config files for training and testing
./02_prepare_conf_files.sh conf/global_settings.cfg
# train duration model
./03_train_duration_model.sh conf/duration_slt_arctic_full.conf 
# train acoustic model
./04_train_acoustic_model.sh conf/acoustic_slt_arctic_full.conf














