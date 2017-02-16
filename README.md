# matlab_stuff


One of the programs is intended to reveal the gambler's paradox (fallacy might make more sense though) by extracting
every element of a random distribution array (i.e. randn(1,1000000)) that follows two elements which are negative. A naive gambler is prone to believing that if he loses multiple rounds in a row of a game, then his chances of winning the next round increase. If the gambler's right, the distribution of the extracted data should display positive bias (skewed to the right of 0.5 in this case), but if the distribution (visualized using hist(y,1000)) looks like a standard normal/gaussian distribution, then the gambler was misguided.

I'm adding this here to prove that I have at least some experience with MATLAB (and C++ in another repository if I get around to adding some programs) and for any possible feedback on making my code more succint or for any possible feedback on how to addor improve to this.
