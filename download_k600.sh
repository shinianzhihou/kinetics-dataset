root=`pwd`

mkdir -p k600/train k600/val k600/test

cp download.sh k600/train/
cp download.sh k600/val/
cp download.sh k600/test/
cp extract.sh k600/train/
cp extract.sh k600/val/
cp extract.sh k600/test/

cd ${root}/k600

wget https://s3.amazonaws.com/kinetics/600/train/k600_train_path.txt -P train/
wget https://s3.amazonaws.com/kinetics/600/val/k600_val_path.txt -P val/
wget https://s3.amazonaws.com/kinetics/600/test/k600_test_path.txt -P test/

cd ${root}/k600/train && bash download.sh k600_train_path.txt && bash extract.sh k600_train_path.txt
cd ${root}/k600/val && bash download.sh k600_val_path.txt && bash extract.sh k600_val_path.txt
cd ${root}/k600/test && bash download.sh k600_test_path.txt && bash extract.sh k600_test_path.txt


