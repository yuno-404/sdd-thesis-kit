# Abstract Example (Good vs Weak)

## Weak version

This paper studies an important problem and proposes a useful method. The method works better than previous work and shows good results. We run experiments and show the effectiveness of our approach.

Why weak:

- no concrete context
- no measurable result
- no clear Why/What/How/So What mapping

## Better version

Large-scale data processing systems often suffer from unstable query latency under burst workloads, which limits practical deployment in time-sensitive applications. This paper proposes a hybrid indexing and filtering framework to reduce latency variance while preserving throughput. The method combines adaptive partitioning, lightweight candidate pruning, and cache-aware scheduling in a unified pipeline. We evaluate the framework on two real datasets and one synthetic benchmark with up to 10 million records. Results show a 28.4% reduction in p95 latency and a 17.1% reduction in memory footprint compared with strong baselines, while maintaining comparable throughput. These findings suggest the proposed framework is suitable for production scenarios that require stable tail latency and predictable resource usage.
