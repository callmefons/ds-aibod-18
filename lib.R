#### Install Packages -  this function checks if a package is installed and if not installs it
packages <- function(x){
  x <- as.character(match.call()[[2]])
  if (!require(x,character.only=TRUE)){
    install.packages(pkgs=x,repos="http://cran.r-project.org")
    require(x,character.only=TRUE)
  }
}

####  Replace the postal code variable so that it can be read by the ggmap() function for plotting a map.
chaningPostalCode <- function(df){
  #1
  df$location[df$postal_code == '830-0039'] <- 'Hanabatake'
  df$lat[df$postal_code == '830-0039'] <- 33.747
  df$lon[df$postal_code == '830-0039'] <- 130.781
  
  #2
  df$location[df$postal_code == '830-0070'] <- 'Daizenjiminami'
  df$lat[df$postal_code == '830-0070'] <- 33.27
  df$lon[df$postal_code == '830-0070'] <- 130.477
  
  #3
  df$location[df$postal_code == '832-0823'] <- 'Mitsuhashimachi Imakoga'
  df$lat[df$postal_code == '832-0823'] <- 33.17
  df$lon[df$postal_code == '832-0823'] <- 130.428
  
  #4
  df$location[df$postal_code == '832-0827'] <- 'Mitsuhashimachi Kamafunatsu'
  df$lat[df$postal_code == '832-0827'] <-  33.1672312
  df$lon[df$postal_code == '832-0827'] <- 130.418267
  
  #5
  df$location[df$postal_code == '834-0115'] <- 'Niishiro'
  df$lat[df$postal_code == '834-0115'] <- 33.578
  df$lon[df$postal_code == '834-0115'] <- 130.776
  
  #6
  df$location[df$postal_code == '834-0121'] <- 'Hirokawa'
  df$lat[df$postal_code == '834-0121'] <- 33.642
  df$lon[df$postal_code == '834-0121'] <- 130.735
  
  #7
  df$location[df$postal_code == '835-0002'] <- 'Setakamachi Oda'
  df$lat[df$postal_code == '835-0002'] <- 33.153
  df$lon[df$postal_code == '835-0002'] <- 130.497
  
  #8
  df$location[df$postal_code == '835-0003'] <- 'Setakamachi Motoyoshi'
  df$lat[df$postal_code == '835-0003'] <- 33.1496466
  df$lon[df$postal_code == '835-0003'] <- 130.5082849
  
  #9
  df$location[df$postal_code == '835-0004'] <- 'Setakamachi Yamato'
  df$lat[df$postal_code == '835-0004'] <- 33.1515679
  df$lon[df$postal_code == '835-0004'] <- 130.4926236
  
  #10
  df$location[df$postal_code == '835-0005'] <- 'Setakamachi Okusa'
  df$lat[df$postal_code == '835-0005'] <- 33.1597333
  df$lon[df$postal_code == '835-0005'] <- 130.5053987
  
  #11
  df$location[df$postal_code == '835-0006'] <- 'Setakamachi Sakata'
  df$lat[df$postal_code == '835-0006'] <- 33.1633814
  df$lon[df$postal_code == '835-0006'] <- 130.4912656
  
  #12
  df$location[df$postal_code == '835-0007'] <- 'Setakamachi Nagata'
  df$lat[df$postal_code == '835-0007'] <- 33.1727922
  df$lon[df$postal_code == '835-0007'] <- 130.4998252
  
  #13
  df$location[df$postal_code == '835-0013'] <- 'Setakamachi Oga'
  df$lat[df$postal_code == '835-0013'] <- 33.1268474
  df$lon[df$postal_code == '835-0013'] <- 130.465623
  
  #14
  df$location[df$postal_code == '835-0016'] <- 'Setakamachi Hamada'
  df$lat[df$postal_code == '835-0016'] <- 33.1312732
  df$lon[df$postal_code == '835-0016'] <- 130.4560583
  
  #15
  df$location[df$postal_code == '835-0017'] <- 'Setakamachi Higashitsuru'
  df$lat[df$postal_code == '835-0017'] <- 33.1372773
  df$lon[df$postal_code == '835-0017'] <- 130.4501555
  
  #16
  df$location[df$postal_code == '835-0018'] <- 'Setakamachi Takayanagi'
  df$lat[df$postal_code == '835-0018'] <- 33.1465396
  df$lon[df$postal_code == '835-0018'] <- 130.4520103
  
  #17
  df$location[df$postal_code == '835-0019'] <- 'Setakamachi Oe'
  df$lat[df$postal_code == '835-0019'] <- 33.138
  df$lon[df$postal_code == '835-0019'] <- 130.472
  
  #18
  df$location[df$postal_code == '835-0021'] <- 'Setakamachi Hongo'
  df$lat[df$postal_code == '835-0021'] <- 33.176
  df$lon[df$postal_code == '835-0021'] <- 130.483
  
  #19
  df$location[df$postal_code == '835-0023'] <- 'Setakamachi Ogawa'
  df$lat[df$postal_code == '835-0023'] <- 33.169
  df$lon[df$postal_code == '835-0023'] <- 130.474
  
  #20
  df$location[df$postal_code == '835-0024'] <- 'Setakamachi Shimonosho'
  df$lat[df$postal_code == '835-0024'] <- 33.1530576
  df$lon[df$postal_code == '835-0024'] <- 130.4694748
  
  #21
  df$location[df$postal_code == '835-0025'] <- 'Setakamachi Kaminosho'
  df$lat[df$postal_code == '835-0025'] <- 33.162
  df$lon[df$postal_code == '835-0025'] <- 130.466
  
  #22
  df$location[df$postal_code == '835-0101'] <- 'Yamakawamachi Tachiyama'
  df$lat[df$postal_code == '835-0101'] <- 33.127
  df$lon[df$postal_code == '835-0101'] <- 130.49
  
  #23
  df$location[df$postal_code == '835-0102'] <- 'Yamakawamachi Ono'
  df$lat[df$postal_code == '835-0102'] <- 33.1291815
  df$lon[df$postal_code == '835-0102'] <- 130.5025437
  
  #24
  df$location[df$postal_code == '835-0103'] <- 'Yamakawamachi Shimizu'
  df$lat[df$postal_code == '835-0103'] <- 33.137801
  df$lon[df$postal_code == '835-0103'] <- 130.504015
  
  #25
  df$location[df$postal_code == '835-0104'] <- 'Yamakawamachi Kawaharauchi'
  df$lat[df$postal_code == '835-0104'] <- 33.1463738
  df$lon[df$postal_code == '835-0104'] <- 130.5211137
  
  #26
  df$location[df$postal_code == '835-0111'] <- 'Yamakawamachi Mayumi'
  df$lat[df$postal_code == '835-0111'] <- 33.094953
  df$lon[df$postal_code == '835-0111'] <- 130.5464426
  
  #27
  df$location[df$postal_code == '835-0114'] <- 'Yamakawamachi Koda'
  df$lat[df$postal_code == '835-0114'] <- 33.1230136
  df$lon[df$postal_code == '835-0114'] <- 130.5231146
  
  #28
  df$location[df$postal_code == '835-0115'] <- 'Yamakawamachi Haramachi'
  df$lat[df$postal_code == '835-0115'] <- 33.118683
  df$lon[df$postal_code == '835-0115'] <- 130.5223623
  
  #29
  df$location[df$postal_code == '835-0131'] <- 'Takatamachi Maizuru'
  df$lat[df$postal_code == '835-0131'] <- 33.1145997
  df$lon[df$postal_code == '835-0131'] <- 130.5154582
  
  #30
  df$location[df$postal_code == '835-0134'] <- 'Takatamachi Hae'
  df$lat[df$postal_code == '835-0134'] <- 33.1151319
  df$lon[df$postal_code == '835-0134'] <- 130.5026464
  
  #31
  df$location[df$postal_code == '835-0135'] <- 'Takatamachi Takei'
  df$lat[df$postal_code == '835-0135'] <- 33.126
  df$lon[df$postal_code == '835-0135'] <- 130.499
  
  #32 *************
  df$location[df$postal_code == '839-0024'] <- 'Setakamachi Shimonosho'
  df$lat[df$postal_code == '839-0024'] <- 33.169
  df$lon[df$postal_code == '839-0024'] <- 130.474
  
  #33
  df$location[df$postal_code == '839-0203'] <- 'Takatamachi Kurosakibiraki'
  df$lat[df$postal_code == '839-0203'] <- 33.091
  df$lon[df$postal_code == '839-0203'] <- 130.441
  
  #34
  df$location[df$postal_code == '839-0204'] <- 'Takatamachi Kitashingai'
  df$lat[df$postal_code == '839-0204'] <- 33.088
  df$lon[df$postal_code == '839-0204'] <- 130.433
  
  #35
  df$location[df$postal_code == '839-0205'] <- 'Takatamachi Minamishingai'
  df$lat[df$postal_code == '839-0205'] <- 33.0925915
  df$lon[df$postal_code == '839-0205'] <- 130.4464803
  
  #36
  df$location[df$postal_code == '839-0212'] <- 'Takatamachi Enoramachi'
  df$lat[df$postal_code == '839-0212'] <- 33.1134227
  df$lon[df$postal_code == '839-0212'] <- 130.4408211
  
  #37
  df$location[df$postal_code == '839-0213'] <- 'Takatamachi Enora'
  df$lat[df$postal_code == '839-0213'] <- 33.108
  df$lon[df$postal_code == '839-0213'] <- 130.451
  
  #38
  df$location[df$postal_code == '839-0214'] <- 'Takatamachi Imabuku'
  df$lat[df$postal_code == '839-0214'] <- 33.109
  df$lon[df$postal_code == '839-0214'] <- 130.459
  
  #39
  df$location[df$postal_code == '839-0215'] <- 'Takatamachi Nose'
  df$lat[df$postal_code == '839-0215'] <- 33.1005354
  df$lon[df$postal_code == '839-0215'] <- 130.4548089
  
  #40
  df$location[df$postal_code == '839-0221'] <- 'Takatamachi Shimokusuda'
  df$lat[df$postal_code == '839-0221'] <- 33.094
  df$lon[df$postal_code == '839-0221'] <- 130.467
  
  #41
  df$location[df$postal_code == '839-0222'] <- 'Takatamachi Haru'
  df$lat[df$postal_code == '839-0222'] <- 33.107
  df$lon[df$postal_code == '839-0222'] <- 130.477
  
  #42 
  df$location[df$postal_code == '839-0223'] <- 'Takatamachi Iwatsu'
  df$lat[df$postal_code == '839-0223'] <- 33.102
  df$lon[df$postal_code == '839-0223'] <- 130.478
  
  #43
  df$location[df$postal_code == '839-0224'] <- 'Takatamachi Tajiri'
  df$lat[df$postal_code == '839-0224'] <- 33.117
  df$lon[df$postal_code == '839-0224'] <- 130.485
  
  return(df)
}
