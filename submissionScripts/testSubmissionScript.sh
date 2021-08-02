for i in $(seq 0 50)
do
bsub -n 4 -W 4:00 -R "rusage[mem=16000,ngpus_excl_p=1]" python MLModelTest.py $i
done
