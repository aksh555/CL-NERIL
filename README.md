# CL-NERIL: A Cross-Lingual Model for NER in Indian Languages
Code for the paper - https://arxiv.org/abs/2111.11815

## Setup
1. Setup a virtual environment
2. The implementation is based on Python 3.7. To install the dependencies used, run: ```pip install -r requirements.txt```
3. Run the code

## Steps to run
1. Add the aligned weakly labeled data for every target language to the corresponding [aligned data directory](source/data/aligned).
Sample data files for 3 Indian languages are provided.
2. Download CoNLL-2003 English [en] data and save it to the 'en' directory in source/data. This is used for training the Teacher model.
3. For training and evaluation, run as follows
```
$ cd source
$ ./scripts/run_clneril.sh
```
The results and logs will be stored in the output directory specified.

## Citation
If you find this repo helpful, please cite the following:
```
@misc{prabhakar2021clneril,
      title={CL-NERIL: A Cross-Lingual Model for NER in Indian Languages}, 
      author={Akshara Prabhakar and Gouri Sankar Majumder and Ashish Anand},
      year={2021},
      eprint={2111.11815},
      archivePrefix={arXiv},
      primaryClass={cs.CL}
}
```

## Credits
The code framework is adapted from [Teacher-Student](https://github.com/microsoft/vert-papers/tree/master/papers/SingleMulti-TS).