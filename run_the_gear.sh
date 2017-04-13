#### bold commands
ROOTDIR=/Users/jenniferschommer/test-data/lda-insp_lowres

docker run -it -v $ROOTDIR/inspiration:/flywheel/v0/input/inspiration \
    -v $ROOTDIR/output:/flywheel/v0/output flywheel/lda-insp
