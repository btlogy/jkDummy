# Make sure home bin directory is in PATH 
if ! [[ "${PATH}" =~ "${HOME}/bin" ]]; then
  export PATH="${HOME}/bin:${PATH}"
fi

# Activate all Software collections - if any
IFS=$'\n' SCLS=($(scl --list)) && test ${#SCLS[@]} -eq 0 || source scl_source enable "${SCLS[@]}"

unset BASH_ENV PROMPT_COMMAND ENV
