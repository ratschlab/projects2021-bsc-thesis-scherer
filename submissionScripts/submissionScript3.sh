for i in $(seq 13101 14100)
do
bsub -n 1 -W 4:00 -R "rusage[mem=16000,ngpus_excl_p=1]" python MLModelParallelTuned.py $i
done
