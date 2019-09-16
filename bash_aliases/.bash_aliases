export TMPDIR=/dev/shm/
umask 027

# aliases
alias c='clear'
alias ls='ls --color=auto'
alias sl='ls --color=auto'
alias ll='ls -la'
alias l.='ls -d .* --color=auto'
alias lt='ls -alrt'
alias r='fc -e -'
alias cd..='cd ..'
alias dc='cd'
alias ..='cd ..'
alias grep='grep --color=auto'
alias mkdir='mkdir -pv'
alias diff='colordiff'
alias mount='mount |column -t'
alias wget='wget -c'
alias cpProgress='rsync --progress -ravz'
alias ppath='export PYTHONPATH=.'

bu() { cp $@ $@.backup-'date +%y%m%d'; }
csv() {
    cat $1 | column -t -s, | less -S
}

# local aliases

alias chl='cd /gpfs/data/geraslab/chledj01'

if [ "$HOSTNAME" = dlrlpdcdap001 ]; then
    printf '%s\n' "Welcome to dlr1.";
    . /gpfs/data/geraslab/anaconda3/etc/profile.d/conda.sh
    conda activate tf_cu92
elif [ "$HOSTNAME" = dlrlpdcdap002 ]; then
    printf '%s\n' "Welcome to dlr2";
    . /gpfs/data/geraslab/anaconda3/etc/profile.d/conda.sh
    conda activate tf_cu92
    export LC_ALL=C
    alias jupyter='jupyter notebook --no-browser --port=7890'
elif [ "$HOSTNAME" = dlrlpdcdap003 ]; then
    printf '%s\n' "Welcome to dlr3";
    . /gpfs/data/geraslab/anaconda3/etc/profile.d/conda.sh
    conda activate tf_cu92
elif [ "$HOSTNAME" = dlrlpdcdap004 ]; then
    printf '%s\n' "Welcome to dlr4";
    . /gpfs/data/geraslab/anaconda3/etc/profile.d/conda.sh
    conda activate tf_cu92
    export LC_ALL=C
    alias jupyter='jupyter notebook --no-browser --port=7890'
elif [ "$HOSTNAME" = skynet01 ]; then
    printf '%s\n' "Welcome to skynet";
    alias 3dchl='cd /gpfs/data/geraslab/chledj01/3D_mammography';
    alias 3denv='conda activate wmlce_env_1.6.1';
    alias 3dprep='export OMP_NUM_THREADS=1';
    alias 3dpath='export PATH=$PATH:/gpfs/data/geraslab/chledj01/3D_mammography';
    alias 3dppath='export PYTHONPATH=/gpfs/data/geraslab/chledj01/3D_mammography';
    alias hist='bhist -la -n 0 -u chledj01';
else
    printf '%s\n' "Welcome to bigpurple (probably)";
    . /gpfs/data/geraslab/anaconda3/etc/profile.d/conda.sh
    conda activate tf_cu92
    alias bspath='export PATH=$PATH:/gpfs/data/geraslab/chledj01/BreastScreening';
    alias bsppath='export PYTHONPATH=/gpfs/data/geraslab/chledj01/BreastScreening';
    alias jobs='squeue -u chledj01'
fi
3d() { 3denv; 3dprep; 3dpath; 3dppath; 3dchl; }
bs() { bspath; bsppath; chl; }
tb() { l=$1
       tensorboard --logdir=$l --port=7890; }
sub() { bsub -Is -n 20 -q gpu32 -gpu "num=1:mode=shared:j_exclusive=yes" python3 $1 $2 $3; }
