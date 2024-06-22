deps:
	pip install -r requirements.txt

data:
	python fineweb.py

train:
	torchrun --standalone --nproc_per_node=8 train_gpt2.py
