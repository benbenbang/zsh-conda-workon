workon(){
    case $1 in
        deactivate )
            if [[ $CONDA_PYTHON_EXE =~ $HOME/conda/bin/python ]]; then
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