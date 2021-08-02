for i in $(seq 11101 13100)
do
bsub -n 1 -W 4:00 -R "rusage[mem=16000,ngpus_excl_p=1]" python MLModelParallelTuned.py $i
done
