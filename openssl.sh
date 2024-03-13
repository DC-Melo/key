openssl enc -e -a -aes-128-cbc -p -iv ${OPENSSL_KEY} -K ${OPENSSL_KEY} -in ${tf::=dc.gpg.private.key} -out $tf.openssl
openssl enc -d -a -aes-128-cbc -p -iv ${OPENSSL_KEY} -K ${OPENSSL_KEY} -in ${tf::=dc.gpg.private.key.openssl} -out "${tf%.*}"
