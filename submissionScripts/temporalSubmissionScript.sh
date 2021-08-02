for i in $(seq 0 365)
do
bsub -n 1 -W 4:00 -R "rusage[mem=16000,ngpus_excl_p=1]" python TemporalTest2.py $i
done
