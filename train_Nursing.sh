export CUDA_VISIBLE_DEVICES=0
python meta_transfer_train.py \
--train-manifest-list data/manifests/Nursing_train.csv \
--train-partition-list 1 1 1 \
--valid-manifest-list data/manifests/Nursing_val.csv \
--test-manifest-list data/manifests/Nursing_test.csv \
--name Nursing \
--cuda \
--k-train 2 \
--k-valid 2 \
--labels-path data/labels/LibriSpeech_ner_labels.json \
--lr 1e-4 \
--save-every 100 \
--feat_extractor vgg_cnn \
--dropout 0.1 \
--num-enc-layers 2 \
--num-dec-layers 4 \
--num-heads 8 \
--dim-model 512 \
--dim-key 64 \
--dim-value 64 \
--dim-input 5120 \
--dim-inner 512 \
--dim-emb 512 \
--early-stop cer,200 \
--src-max-len 5000 \
--tgt-max-len 2500 \
--evaluate-every 100 \
--epochs 1000000 \
--sample-rate 16000 \
--copy-grad \
--continue-from models/LibriSpeech_NER/best_model.th