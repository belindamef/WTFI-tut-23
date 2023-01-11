
# Modellformulierung
mu          = 0.4                                   # wahrer, aber unbekannter, Parameterwert
n_all       = c(20,100,200)                         # Stichprobengrößen n
ns          = 1e4                                   # Anzahl der Simulationen
mu_hat_ML   = matrix(rep(NaN, length(n_all)*ns),    # Maximum-Likelihood Schätzearray
                     nrow = length(n_all))

# Stichprobengroesseniterationen
for(i in seq_along(n_all)){
  
  # Simulationsiterationen
  for(s in 1:ns){
    y               = rbinom(n_all[i],1,mu)     # Stichprobenrealisation von y_1,...,y_n
    mu_hat_ML[i,s]  = mean(y)                   # Stichprobenmittel
  }
}
