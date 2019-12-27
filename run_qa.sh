BIOBERT_DIR=../biobert_v1.0_pubmed_pmc
BIOASQ_DIR=/Users/anirudhdahiya/transfer/trans/data/QA/BioASQ

python run_qa.py \
     --do_train=True \
     --do_predict=True \
     --vocab_file=$BIOBERT_DIR/vocab.txt \
     --bert_config_file=$BIOBERT_DIR/bert_config.json \
     --init_checkpoint=$BIOBERT_DIR/biobert_model.ckpt \
     --max_seq_length=384 \
     --train_batch_size=12 \
     --learning_rate=5e-6 \
     --doc_stride=128 \
     --num_train_epochs=5.0 \
     --do_lower_case=False \
     --train_file=$BIOASQ_DIR/BioASQ-train-4b.json \
     --predict_file=$BIOASQ_DIR/BioASQ-test-4b-1.json \
     --output_dir=/tmp/QA_output/
