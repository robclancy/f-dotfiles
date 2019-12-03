typeset -U path

path+=(`yarn global bin`)
path+=(`composer global config bin-dir --absolute -q`)

export PATH
