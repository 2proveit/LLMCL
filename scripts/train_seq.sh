cl_method="seq"
deepspeed main.py \
    --deepspeed deepspeed_zero2_no_offload.json \
    --model_name_or_path "meta-llama/Llama2-7b-hf" \
    --load_in_8bits true \
    --data_path "~/Downloads/TRACE-Benchmark/LLM-CL-Benchmark_5000" \
    --dataset_names "20Minuten,FOMC,MeetingBank,ScienceQA" \
    --max_length 1024 \
    --train_on_inputs false \
    --cl_method $cl_method \
    --output_dir "outputs/$cl_method" \
    --per_device_train_batch_size 1 \
    --per_device_eval_batch_size 1 \
    --gradient_accumulation_steps 1 \
    --num_train_epochs 3 \
    --warmup_steps 500 \
    --learning_rate 1e-5 \
    --lr_scheduler_type "constant_with_warmup" \
    --load_best_model_at_end true \
    --save_total_limit 3 \
    --evaluation_strategy "steps" \
    --save_strategy "steps" \
    --save_steps 500 \
    --eval_steps 500 \
    --logging_steps 500 \
    --report_to "wandb" \
    --run_name "llama2-7b-hf" \