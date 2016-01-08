function my_smsemoa (f, lower_bounds, upper_bounds, budget)
n = length(lower_bounds);
my_f = @(x)cocoEvaluateFunction(f, x);
opts = SMSEMOA;
opts.useOCD = false;
opts.useDE = false;
opts.maxEval = budget;
SMSEMOA(my_f, lower_bounds, upper_bounds, zeros(1,n), opts);