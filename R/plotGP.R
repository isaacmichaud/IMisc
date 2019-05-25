plot_GP = function(model,limits,steps) {
  t = seq(limits[1],limits[2],steps)
  result = predict(model,matrix(t,ncol=1),type="SK")
  top = max(result$upper95)
  bottom = min(result$lower95)
  plot(t,result$mean,type='l',ylim=c(bottom - abs(top-bottom)*0.25,top + abs(top-bottom)*0.25))
  lines(t,result$upper95,lty=2,col='red')
  lines(t,result$lower95,lty=2,col='blue')
  return(result)
}

Dice_GP = function(doe,response) {
  return(km(formula=~1,design=doe,response=response,covtype='matern5_2',optim.method='Gen',nugget.estim=TRUE))
}
