# Ce script sert à vérifier que l'espérence du nombre de chiffre nécéssaire provenant d'une
# unif(0,1) somment plus grand que 1 est de e

#Autrement dit, on fait la somme de chiffres provenant d'une U(0,1), lorsque 
# la somme depasse 1, on compte le nombre de chiffre qu'on a pris.
# L'esperence de cette experience est de e soit 2,71..

numbers_summed<- function(){
  sum = 0
  number_counter = 0
  while(sum < 1){
    sum = sum + runif(1)
    number_counter = number_counter +  1
  }
  return(number_counter)
}

x = replicate(1000, numbers_summed())
print(mean(x))
