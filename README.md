# Codeception Example to Demonstrate Bug

There is a bug that prevents scenarios within feature files from being run if those scenarios are placed in a group file. This repository demonstrates the issue for verification.


## How to see the issue

A quick way to see the issue is to run `vendor/bin/codecept run -g wip`. This should run the test `tests/acceptance/refund.feature:Jeff returns a faulty microwave` but instead it finds no tests to run. The `wip` group is defined in [tests/_groups/wip](tests/_groups/wip).