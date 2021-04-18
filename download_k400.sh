root=`pwd`

mkdir -p k400/train k400/val k400/test

cp download.sh k400/train/
cp download.sh k400/val/
cp download.sh k400/test/

cd ${root}/k400

wget https://s3.amazonaws.com/kinetics/400/train/k400_train_path.txt -P train/
wget https://s3.amazonaws.com/kinetics/400/val/k400_val_path.txt -P val/
wget https://s3.amazonaws.com/kinetics/400/test/k400_test_path.txt -P test/

cd ${root}/k400/train && bash download.sh k400_train_path.txt && bash extract.sh k400_train_path.txt
cd ${root}/k400/val && bash download.sh k400_val_path.txt && bash extract.sh k400_val_path.txt
cd ${root}/k400/test && bash download.sh k400_test_path.txt && bash extract.sh k400_test_path.txt


