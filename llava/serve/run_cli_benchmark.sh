CUDA_VISIBLE_DEVICES=2 \
# nsys profile -w true -t cuda,nvtx,osrt,cudnn,cublas -s none -o llava_infer_report_batched_b24 --capture-range=cudaProfilerApi -f true -x true \
python3 ./llava/serve/cli_benchmark.py --model-path /data/llava-v1.5-13b --image-file "https://llava-vl.github.io/static/images/view.jpg" --load-4bit --conv-file /root/LLaVA/serving_testcases/conv_init.json