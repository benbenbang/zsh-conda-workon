
workon(){
    case $1 in
        deactivate )
            if [[ $(which python) = $CONDA_PREFIX/bin/python ]]; then
                conda deactivate
            fi
            ;;
        *)  
            if [[ $VIRTUAL_ENV || $WORKON_HOME ]]; then
                workon $1
            else
                source activate $1
            fi
            ;;
    esac
}
