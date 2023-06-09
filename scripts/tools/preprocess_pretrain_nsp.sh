WOKRING_DIR=/home/guyuxian/PPT-origin/
INPUT_PATH=${WOKRING_DIR}/pretrain_data/raw/


OPTS=""
OPTS+=" --input ${INPUT_PATH}/openwebtext.txt"
OPTS+=" --input2 ${INPUT_PATH}/openwebtext_2.txt"
OPTS+=" --tokenizer_path ${WORKING_DIR}/vocab_en"
OPTS+=" --output_path ${WOKRING_DIR}/pretrain_data/preprocessed/"


shuf ${INPUT_PATH}/openwebtext.txt -o ${INPUT_PATH}/openwebtext_2.txt
python3 ${WOKRING_DIR}/tools/preprocess_pretrain_data_nsp.py ${OPTS}