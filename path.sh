export KALDI_ROOT=/lusr/opt/kaldi/kaldi-master
[ -f $KALDI_ROOT/tools/env.sh ] && . $KALDI_ROOT/tools/env.sh
export PATH=$PWD/utils/:$KALDI_ROOT/tools/openfst/bin:$PWD:$PATH
[ ! -f $KALDI_ROOT/tools/config/common_path.sh ] && echo >&2 "The standard file $KALDI_ROOT/tools/config/common_path.sh is not present -> Exit!" && exit 1
. $KALDI_ROOT/tools/config/common_path.sh
export LC_ALL=C
export LD_LIBRARY_PATH=/lusr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH

# For now, don't include any of the optional dependenices of the main
# librispeech recipe
