## Metrics characterisation and testing

### Metric conformity

Differences between two datasets should be reflected in certain changes in the metrics. This can be formalised in a set of rules, for example:

* If the position of some cells are different than in the gold standard, the score should decrease.
* If the topology of the network is different than that in the gold standard, the score should not be perfect.
* The more cells are filtered from the trajectory, the more the score should decrease.

Here, we assess whether metrics conforms these rules by perturbing some datasets in several ways, and assessing how the scores are affected.

If not one metric satisfies all the rules, we try to find a combination which conforms to all rules.

### Metric examples