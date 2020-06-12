
# Split-apply-combine loop

mean.Titanic.loop <- NULL
    for (Sex in unique(Titanic$Sex))
    {
      Titanic_sub <- Titanic[Titanic$Sex== male,]
      column_means <- colMeans(Titanic_sub[,-5]) 
      mean.Titanic.loop <- rbind(mean.Titanic.loop, column_means) 
    }

rownames(mean.Titanic.loop) <- unique(Titanic$Sex)
