* GTOOLS_TEST - show speed improvement for gtools

* Create a test data set with 5 million observations
clear
sysuse census 
expand 100000

* We will use the timer commands to measure computing time.
timer clear

* egen
timer on 1
egen tmp = mean(pop), by(state)
timer off 1

* and now the same calculation with gegen
timer on 2
gegen gtmp = mean(pop), by(state)
timer off 2

* gegen is 10x faster
timer list
