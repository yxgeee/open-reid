CUDA_VISIBLE_DEVICES=0,1,2,3 \
python examples/softmax_loss_distributed.py --dataset market1501 \
	--num-instances 4 --lr 0.01 --epochs 50 --step-size 20 -b 64 -j 16 --features 256 \
	--logs-dir logs/softmax-loss/pt1.1-mp-w2 --dist-url 'tcp://10.1.72.207:23456' --world-size 2 --rank 0
