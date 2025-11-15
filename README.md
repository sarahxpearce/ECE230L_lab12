# Lab 11 - Counters and Dividers

In this lab, we learned how to make clock dividers from two types of counters.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Questions
Lab summary: In this lab we used flip-flops to slow down a clock and make simple counters. We built a ripple counter using T flip-flops and a modulo counter using a small adder and D flip-flops. The ripple counter shows how chaining T flip-flops divides the clock by powers of two. The modulo counter counts to 6 and then wraps and flips its output, which divides the clock by 12. A reset button lets us put everything back to 0. This shows why clock dividers are useful when the base clock is too fast to see or use directly.

### 1 - Why does the Modulo Counter actually divide clocks by 2 * Count?
In the modulo counter, the output only toggles when the count reaches a certain value. One toggle is just going from 0 to 1 or 1 to 0. A full cycle is going high and then back low again. That means the counter has to hit the target value twice for one full cycle of the output. Because of that, it ends up dividing the clock by 2 times the count value.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
A ring counter expects a specific starting pattern, usually one bit set to 1 and the rest 0. If it doesn’t get a clean reset or a defined starting state, the flip-flops can all power up in the same state. When the first clock edge hits, the feedback can push it into an all 1's pattern. Basically, without a proper reset, the hardware doesn’t know which bit should be the only 1, so it can end up turning them all on.

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
A simple ring counter only divides the clock by the number of bits in the ring. Our board clock is 100 MHz, so to get down to about 1 kHz you’d need to divide by around 100,000. That would mean a ring counter that is about 100,000 bits wide.
