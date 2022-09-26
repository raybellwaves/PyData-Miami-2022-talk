if [ "$1" == "remove" ]; then
    conda deactivate
    conda remove --name pydata-miami-2022-talk --all --y
fi
mamba env update -f env.yml
mkdir -p ${HOME}/miniconda3/envs/pydata-miami-2022-talk/share/jupyter/lab/settings
cp overrides.json ${HOME}/miniconda3/envs/pydata-miami-2022-talk/share/jupyter/lab/settings
if [ "$1" == "remove" ]; then
    conda activate pydata-miami-2022-talk
fi
jupyter lab
