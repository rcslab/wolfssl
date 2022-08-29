#!/bin/sh

CFLAGS_NEW="-DDEBUG_WOLFSSL"
export CFLAGS="${CFLAGS} ${CFLAGS_NEW}"
echo ${CFLAGS}

gmake -f sgx_t_static.mk HAVE_WOLFSSL_BENCHMARK=0 HAVE_WOLFSSL_TEST=0 HAVE_WOLFSSL_SP=0 CC=gcc48 CFLAGS="-DDEBUG_WOLFSSL -DKEEP_PEER_CERT -DUSER_TIME -DWOLFSSL_SGX_ATTESTATION -DWOLFSSL_KEY_GEN -DWOLFSSL_CERT_GEN -DWOLFSSL_CERT_EXT -DFP_MAX_BITS=8192"
