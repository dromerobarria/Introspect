#!/bin/sh

local_branch=$BRANCH_NAME

valid_branch_regex="^(feature|fix|hotfix|release)\/[a-z0-9._-]+$"

message="Branch name '$local_branch' doesn't adhere to this contract: $valid_branch_regex."

if [[ ! $local_branch =~ $valid_branch_regex ]]
then
    echo "$message"
    exit 1
fi

exit 0