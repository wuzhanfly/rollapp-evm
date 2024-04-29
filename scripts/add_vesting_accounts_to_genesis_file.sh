#!/bin/bash

"$EXECUTABLE" keys add three-year-vester --keyring-backend test --keyring-dir $ROLLAPP_HOME_DIR
"$EXECUTABLE" add-genesis-account three-year-vester \
    10000000000000000000000"$BASE_DENOM" --keyring-backend test \
    --home $ROLLAPP_HOME_DIR \
    --vesting-amount 10000000000000000000000"$BASE_DENOM" \
    --vesting-end-time 1805902584

"$EXECUTABLE" keys add two-year-vester-after-1-week --keyring-backend test --keyring-dir $ROLLAPP_HOME_DIR
"$EXECUTABLE" add-genesis-account two-year-vester-after-1-week \
    10000000000000000000000"$BASE_DENOM" --keyring-backend test \
    --home $ROLLAPP_HOME_DIR \
    --vesting-amount 10000000000000000000000"$BASE_DENOM" \
    --vesting-end-time 1774366584 --vesting-start-time 1711985835
