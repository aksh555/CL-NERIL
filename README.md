# CL-NERIL
Cross-Lingual Model for NER in Indian Languages

Supplemental analaysis file is provided: Supplementary.pdf.

Sample data files for 3 Indian languages are in /source/data/aligned. Full data (weakly labeled and gold standard) will be made public in future.

To train the teacher model, download CoNLL English data and save in /source/data/conll/en.
## To run
```
$ cd source
$ ./scripts/run_clneril.sh
```

The results and logs will be stored in the output directory specified.
