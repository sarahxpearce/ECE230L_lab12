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
The main clock on the board is very fast, so we can’t directly see its changes on an LED or use it for slow actions. Clock dividers turn that fast clock into slower signals that are easier to work with.

### 2 - Why does the ring counter's output go to all 1s on the first clock cycle?
A modulo counter keeps track of a numeric count, compares it to a set value, and then resets and toggles an output when it hits that value. A ripple counter is simpler: each T flip-flop just divides the previous signal by 2, so chaining them divides by 4, 8, and so on. Modulo is more exact; ripple is lighter and “good enough” when we just need “slower.”

### 3 - What width of ring counter would you use to get to an output of ~1KHz?
The modulo-6 counter counts from 0 to 5. Each time it reaches 5, it flips its output and then wraps the count back to 0. That means it takes 6 input pulses to toggle the output once, and 12 input pulses for a full on/off cycle. That’s why it behaves like a divide-by-12.
