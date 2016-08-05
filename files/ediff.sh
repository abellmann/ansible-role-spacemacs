export ALTERNATE_EDITOR=""
alias e='emacsclient'


function ediff() {
    if [ "X${2}" = "X" ]; then
	echo "USAGE: ediff <FILE 1> <FILE 2>"
    else
	# The --eval flag takes lisp code and evaluates it with EMACS
	emacs --eval "(ediff-files \"$1\" \"$2\")"
    fi
}
