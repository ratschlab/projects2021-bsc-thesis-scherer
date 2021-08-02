for i in $(seq 17901 20181)
do
bsub -n 1 -W 4:00 -R "rusage[mem=16000,ngpus_excl_p=1]" python MLModelParallelTuned.py $i
done
