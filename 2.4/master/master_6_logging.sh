info "3.2 - Logging"

check_3_2_1="3.2.1  - Ensure that a minimal audit policy is created"
apf=$(docker inspect kube-apiserver | jq -e '.[0].Args[] | match("--audit-policy-file=.*").string')
if [ -z "$apf" ]; then
    warn "$check_3_2_1"
else
    pass "$check_3_2_1"
fi
