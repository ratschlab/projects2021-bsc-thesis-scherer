for i in $(seq 9001 10052) 
do
a=$(sed -n $i'p' "erstimatorErrors.txt")
bsub -n 1 -W 4:00 -R "rusage[mem=16000,ngpus_excl_p=1]" python MLModelParallel.py  $a 
done
