for i in $(seq 0 37)
do
for j in $(seq 0 29)
do
bsub -n 4 -W 4:00 -R "rusage[mem=16000,ngpus_excl_p=1]" python MLModelParallelSelectionSklearn.py $i $j
done
done





