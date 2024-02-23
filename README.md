<h1 align="center">
<span><i>LLMCL</i></span>
</h1>
<h3 align="center">
Parameter Efficient Continual Learning For Large language Models
</h3>

## Overview
LLMCL is a repository based on the Hugging Face Transformers library, designed to assess the continuous learning capability of large language models. Through this repository, users can easily customize datasets, specify models, and experiment with existing classical continuous learning methods.

## Key Features
- **Continual Learning Methods:** The repository includes several classical continuous learning methods for users to reference and use.
- **Model Customization:** You can easily customize the model you want to use, and the repository will automatically download the corresponding model.

## Quick Start
1.Clone the repository
```bash
git clone  https://github.com/which47/LLMCL.git
```

2.Install dependencies

```bash
pip install -r requirements.txt
```
3.Start Training

[//]: # (You can use our own scripts or modify it at your convenience.)
```bash
deepspeed main.py \
  --model_name_or_path 'meta-llama/Llama-2-7b-hf' \
  --output_dir "./outputs/models/seq" \
  --dataset_name "C-STANCE,FOMC,MeetingBank,ScienceQA,NumGLUE-cm,20Minuten,medmcqa,jecqa" \
  --per_device_train_batch_size 16 \
  --adapter lora
```

## Reproduce

1.Request the access to ```llama2``` model and download [TRACE Benchmark](https://drive.google.com/file/d/1S0SmU0WEw5okW_XvP2Ns0URflNzZq6sV/view?usp=drive_link) , [MedMCQA](https://medmcqa.github.io/),[JEC-QA](https://jecqa.thunlp.org/)

2.run scripts
customize your training scripts and run it.



<!-- ## Implemented methods
Currently, we supprot the following continual learninig methods: Llama-2-7b results:
| methods | C-STANCE | FOMC | MeetingBank| ScienceQA | NumGLUE-cm | 20Minuten | MedMCQA | JEC-QA |
| ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | 
| Seq-CL | 0.252 | 0.435 | 0.131 | 	0.333 | 0.144 | 0.382 | 0.246 | 0.242
| EWC    | 0.295 | 0.4	 | 0.117 |	0.255 | 0.123 | 0.382 | 0.237 | 0.231
| ER     | 0.386 | 0.572 | 0.184 |  0.368	| 0.147 | 0.385 | 0.249	| 0.244
| GEM    | 0.217 | 0.281 | 0.11  |  0.294	| 0.134 | 0.384 | 0.225	| 0.237
| AGEM   | 0.262 | 0.385 | 0.109 |	0.318	| 0.145 | 0.382 |	0.24  | 0.205
| L2P    | 0.175 | 0.31  | 0.132 |	0.265	| 0.147 | 0.336 |	0.196 | 0.208
| PP     | 0.263 | 0.337 | 0.098 |  0.225	| 0.091 | 0.381 | 0.196 | 0.201
|CLS |  | |  |  |  |  |  |  |
|MTL     | 0.384 | 0.506 | 0.252 |  0.586	| 0.284 | 0.416 | 0.248	| 0.244
|ONE     | 0.235 | 0.285 | 0.137 |  0.397	| 0.049 | 0.383 | 0.236	| 0.244 -->

<!-- ## Licence 
This project is licensed under the [MIT License]. -->

## Acknowledgement

This repo benefits from the following repos and papers:

```bibtex
@misc{wang2023trace,
      title={TRACE: A Comprehensive Benchmark for Continual Learning in Large Language Models}, 
      author={Xiao Wang and Yuansen Zhang and Tianze Chen and Songyang Gao and Senjie Jin and Xianjun Yang and Zhiheng Xi and Rui Zheng and Yicheng Zou and Tao Gui and Qi Zhang and Xuanjing Huang},
      year={2023},
      eprint={2310.06762},
      archivePrefix={arXiv},
      primaryClass={cs.CL}
}
```
