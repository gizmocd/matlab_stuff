# matlab_stuff
I have some code that is intended to reveal the gambler's paradox (fallacy might make more sense though) by extracting
every element of a random distribution array (i.e. randn(1,1000000)) that follows two elements which are negative. If the 
gambler's right, the distribution of the extracted data should display positive bias, but if the distribution (visualized
using hist(y,1000)) looks like a standard normal/gaussian distribution, then the gambler was misguided.

I'm adding this here for any possible feedback on making my code more succint or for any possible feedback on how to add
or improve to this.
