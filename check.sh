git clone $GIT_URL app
cd app
meteor run --test
if $?;then
  curl $SUCCESS_CALLBACK_RUL
else
  curl $FAULD_CALLBACK_URL
