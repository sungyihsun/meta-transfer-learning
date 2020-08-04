export CUDA_VISIBLE_DEVICES=0
python test.py \
--test-manifest-list data/manifests/ner_v1tov10_test.csv \
--name LibriSpeech_NER \
--cuda \
--labels-path data/labels/LibriSpeech_ner_labels.json \
--lr 1e-4 \
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
--epochs 1000000 \
--sample-rate 16000 \
--continue-from models/LibriSpeech_NER/best_model.th