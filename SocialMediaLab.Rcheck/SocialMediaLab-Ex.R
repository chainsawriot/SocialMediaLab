pkgname <- "SocialMediaLab"
source(file.path(R.home("share"), "R", "examples-header.R"))
options(warn = 1)
base::assign(".ExTimings", "SocialMediaLab-Ex.timings", pos = 'CheckExEnv')
base::cat("name\tuser\tsystem\telapsed\n", file=base::get(".ExTimings", pos = 'CheckExEnv'))
base::assign(".format_ptime",
function(x) {
  if(!is.na(x[4L])) x[1L] <- x[1L] + x[4L]
  if(!is.na(x[5L])) x[2L] <- x[2L] + x[5L]
  options(OutDec = '.')
  format(x[1L:3L], digits = 7L)
},
pos = 'CheckExEnv')

### * </HEADER>
library('SocialMediaLab')

base::assign(".oldSearch", base::search(), pos = 'CheckExEnv')
cleanEx()
nameEx("AuthenticateWithFacebookAPI")
### * AuthenticateWithFacebookAPI

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: AuthenticateWithFacebookAPI
### Title: Facebook API Authentication
### Aliases: AuthenticateWithFacebookAPI
### Keywords: facebook social media SNA

### ** Examples

## Not run: 
##D   ## Use your own values for myAppID and myAppSecret
##D   myAppID <- "123456789098765"
##D   myAppSecret <- "abc123abc123abc123abc123abc123ab"
##D 
##D   # Authenticate with the Facebook API using `AuthenticateWithFacebookAPI`
##D   fb_oauth <- AuthenticateWithFacebookAPI(appID=myAppID, appSecret=myAppSecret,
##D     extended_permissions=FALSE, useCachedToken=TRUE)
##D   
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("AuthenticateWithFacebookAPI", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("AuthenticateWithInstagramAPI")
### * AuthenticateWithInstagramAPI

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: AuthenticateWithInstagramAPI
### Title: Instagram API Authentication
### Aliases: AuthenticateWithInstagramAPI
### Keywords: Instagram social media SNA

### ** Examples

## Not run: 
##D   ## Use your own values for myAppID and myAppSecret
##D   app_id <- "123456789098765"
##D   app_secret <- "abc123abc123abc123abc123abc123ab"
##D 
##D   # Authenticate with the Instagram API using `AuthenticateWithInstagramAPI`
##D   instagram_oauth_token <- AuthenticateWithInstagramAPI(appID=app_id,
##D     appSecret=app_secret, useCachedToken=FALSE)
##D   
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("AuthenticateWithInstagramAPI", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("AuthenticateWithTwitterAPI")
### * AuthenticateWithTwitterAPI

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: AuthenticateWithTwitterAPI
### Title: Twitter API Authentication
### Aliases: AuthenticateWithTwitterAPI
### Keywords: twitter social media SNA

### ** Examples

## Not run: 
##D   # Firstly specify your API credentials
##D   my_api_key <- "1234567890qwerty"
##D   my_api_secret <- "1234567890qwerty"
##D   my_access_token <- "1234567890qwerty"
##D   my_access_token_secret <- "1234567890qwerty"
##D 
##D   AuthenticateWithTwitterAPI(api_key=my_api_key, api_secret=my_api_secret,
##D     access_token=my_access_token, access_token_secret=my_access_token_secret)
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("AuthenticateWithTwitterAPI", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("AuthenticateWithYoutubeAPI")
### * AuthenticateWithYoutubeAPI

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: AuthenticateWithYoutubeAPI
### Title: YouTube API Authentication
### Aliases: AuthenticateWithYoutubeAPI
### Keywords: youtube social media SNA

### ** Examples

## Not run: 
##D   # Replace with your Google Developer API Key:
##D   my_apiKeyYoutube <- "314159265358979qwerty"
##D 
##D   apiKeyYoutube <- AuthenticateWithYoutubeAPI(my_apiKeyYoutube)
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("AuthenticateWithYoutubeAPI", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("CollectDataFacebook")
### * CollectDataFacebook

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: CollectDataFacebook
### Title: Collect data from Facebook pages for generating different types
###   of networks
### Aliases: CollectDataFacebook
### Keywords: facebook data mining SNA

### ** Examples

## Not run: 
##D   ## Use your own values for myAppID and myAppSecret
##D   myAppID <- "123456789098765"
##D   myAppSecret <- "abc123abc123abc123abc123abc123ab"
##D 
##D   # Authenticate with the Facebook API using `AuthenticateWithFacebookAPI`
##D   fb_oauth <- AuthenticateWithFacebookAPI(appID=myAppID, appSecret=myAppSecret,
##D     extended_permissions=FALSE, useCachedToken=TRUE)
##D 
##D   # Run the `CollectDataFacebook` function and store the results in variable `myFacebookData`
##D   myFacebookData <- CollectDataFacebook(pageName="StarWars", rangeFrom="2015-05-01",
##D   rangeTo="2015-06-03",writeToFile=FALSE,verbose=TRUE)
##D 
##D   # Create a 'bimodal' network using \code{CreateBimodalNetwork}
##D   g_bimodal_facebook <- CreateBimodalNetwork(myFacebookData)
##D 
##D   # View descriptive information about the bimodal network
##D   g_bimodal_facebook
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("CollectDataFacebook", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("CollectDataInstagram")
### * CollectDataInstagram

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: CollectDataInstagram
### Title: Collect data from Instagram for generating different types of
###   networks
### Aliases: CollectDataInstagram
### Keywords: instagram data mining SNA

### ** Examples

## Not run: 
##D ## Use your own values for myAppID and myAppSecret
##D myAppID <- "123456789098765"
##D myAppSecret <- "abc123abc123abc123abc123abc123ab"
##D 
##D # Authenticate with the Instagram API using `AuthenticateWithInstagramAPI`
##D instagram_oauth_token <- AuthenticateWithInstagramAPI(appID=app_id, appSecret=app_secret,
##D   useCachedToken=TRUE)
##D 
##D # EXAMPLE 1
##D 
##D # Run the `CollectDataInstagram` function and store the results in variable `myInstagramData`
##D # (searching by hashtag)
##D myInstagramData <- CollectDataInstagram(tag="obama", distance=5000, n=100, folder=NULL,
##D verbose=TRUE, waitForRateLimit=TRUE)
##D 
##D # Create a 'bimodal' network using \code{CreateBimodalNetwork}
##D g_bimodal_instagram_obama <- CreateBimodalNetwork(myInstagramData,writeToFile=F)
##D 
##D # View descriptive information about the bimodal network
##D g_bimodal_instagram_obama
##D 
##D # EXAMPLE 2
##D 
##D # Run the `CollectDataInstagram` function and store the results in variable `myInstagramData`
##D # (searching by coordinates in Brisbane (Australia) with a radius of 5km)
##D myInstagramData <- CollectDataInstagram(lat=-27.4701, lng=153.0220, distance=5000, n=100,
##D   folder=NULL, verbose=TRUE, waitForRateLimit=TRUE)
##D 
##D # Create a 'bimodal' network using \code{CreateBimodalNetwork}
##D g_bimodal_instagram_brisbane <- CreateBimodalNetwork(myInstagramData,writeToFile=F)
##D 
##D # View descriptive information about the bimodal network
##D g_bimodal_instagram_brisbane
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("CollectDataInstagram", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("CollectDataTwitter")
### * CollectDataTwitter

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: CollectDataTwitter
### Title: Collect data from Twitter for generating different types of
###   networks
### Aliases: CollectDataTwitter
### Keywords: twitter data mining SNA

### ** Examples

## Not run: 
##D   # Firstly specify your API credentials
##D   my_api_key <- "1234567890qwerty"
##D   my_api_secret <- "1234567890qwerty"
##D   my_access_token <- "1234567890qwerty"
##D   my_access_token_secret <- "1234567890qwerty"
##D 
##D   # Authenticate with the Twitter API using \code{AuthenticateWithTwitterAPI}
##D   AuthenticateWithTwitterAPI(api_key=my_api_key, api_secret=my_api_secret,
##D     access_token=my_access_token, access_token_secret=my_access_token_secret)
##D 
##D   # Collect tweets data using \code{myTwitterData}
##D   myTwitterData <- CollectDataTwitter(searchTerm="#auspol",
##D     numTweets=150,writeToFile=FALSE,verbose=FALSE)
##D 
##D   # Create an 'actor' network using \code{CreateActorNetwork}
##D   g_actor_twitter <- CreateActorNetwork(myTwitterData)
##D 
##D   # Create a 'bimodal' network using \code{CreateBimodalNetwork}
##D   g_bimodal_twitter <- CreateBimodalNetwork(myTwitterData)
##D 
##D   # Create a 'semantic' network using \code{CreateSemanticNetwork}
##D   g_semantic_twitter <- CreateSemanticNetwork(myTwitterData)
##D   
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("CollectDataTwitter", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("CollectDataYoutube")
### * CollectDataYoutube

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: CollectDataYoutube
### Title: Collect YouTube comments data for generating different types of
###   networks
### Aliases: CollectDataYoutube
### Keywords: youtube data mining SNA

### ** Examples

## Not run: 
##D   # Use your own Google Developer API Key here:
##D   myApiKey <- "1234567890"
##D 
##D   # Authenticate with the Google API
##D   apiKeyYoutube <- AuthenticateWithYoutubeAPI(apiKeyYoutube=myApiKey)
##D 
##D   # Generate a vector of YouTube video IDs to collect data from
##D   # (or use the function `GetYoutubeVideoIDs` to automatically
##D   # generate from a plain text file of video URLs)
##D   videoIDs <- c("W2GZFeYGU3s","mL27TAJGlWc")
##D 
##D   # Collect the data using function `CollectDataYoutube`
##D   myYoutubeData <- CollectDataYoutube(videoIDs,apiKeyYoutube,writeToFile=FALSE)
##D 
##D   # Create an 'actor' network using the function `CreateActorNetwork`
##D   g_actor_youtube <- CreateActorNetwork(myYoutubeData)
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("CollectDataYoutube", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("CreateActorNetwork")
### * CreateActorNetwork

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: CreateActorNetwork
### Title: Create 'actor' networks from social media data
### Aliases: CreateActorNetwork
### Keywords: SNA unimodal network igraph social media

### ** Examples

## Not run: 
##D   ## This example shows how to collect YouTube comments data and create an actor network
##D 
##D   # Use your own Google Developer API Key here:
##D   myApiKey <- "1234567890"
##D 
##D   # Authenticate with the Google API
##D   apiKeyYoutube <- AuthenticateWithYoutubeAPI(apiKeyYoutube=myApiKey)
##D 
##D   # Generate a vector of YouTube video IDs to collect data from
##D   # (or use the function `GetYoutubeVideoIDs` to automatically
##D   # generate from a plain text file of video URLs)
##D   videoIDs <- c("W2GZFeYGU3s","mL27TAJGlWc")
##D 
##D   # Collect the data using function `CollectDataYoutube`
##D   myYoutubeData <- CollectDataYoutube(videoIDs,apiKeyYoutube,writeToFile=FALSE)
##D 
##D   # Create an 'actor' network using the function `CreateActorNetwork`
##D   g_actor_youtube <- CreateActorNetwork(myYoutubeData)
##D 
##D   # Description of actor network
##D   g_actor_youtube
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("CreateActorNetwork", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("CreateBimodalNetwork")
### * CreateBimodalNetwork

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: CreateBimodalNetwork
### Title: Create bimodal networks from social media data
### Aliases: CreateBimodalNetwork
### Keywords: SNA bimodal network igraph social media

### ** Examples

## Not run: 
##D   ## This example shows how to collect Facebook page data and create a bimodal network
##D 
##D   # Use your own values for myAppID and myAppSecret
##D   myAppID <- "123456789098765"
##D   myAppSecret <- "abc123abc123abc123abc123abc123ab"
##D 
##D   # Authenticate with the Facebook API using `AuthenticateWithFacebookAPI`
##D   fb_oauth <- AuthenticateWithFacebookAPI(appID=myAppID, appSecret=myAppSecret,
##D     extended_permissions=FALSE, useCachedToken=TRUE)
##D 
##D   # Run the `CollectDataFacebook` function and store the results in variable `myFacebookData`
##D   myFacebookData <- CollectDataFacebook(pageName="StarWars", rangeFrom="2014-05-15",
##D   rangeTo="2014-06-03",writeToFile=FALSE,verbose=TRUE)
##D 
##D   # Create a 'bimodal' network using \code{CreateBimodalNetwork}
##D   g_bimodal_facebook <- CreateBimodalNetwork(myFacebookData)
##D 
##D   # View descriptive information about the bimodal network
##D   g_bimodal_facebook
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("CreateBimodalNetwork", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("CreateDynamicNetwork")
### * CreateDynamicNetwork

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: CreateDynamicNetwork
### Title: Create dynamic networks from social media data (networks that
###   vary over time)
### Aliases: CreateDynamicNetwork
### Keywords: SNA dynamic network igraph social media

### ** Examples

## Not run: 
##D   ## This example shows how to collect Facebook page data and create a bimodal network
##D 
##D   # Use your own values for myAppID and myAppSecret
##D   myAppID <- "123456789098765"
##D   myAppSecret <- "abc123abc123abc123abc123abc123ab"
##D 
##D   # Authenticate with the Facebook API using `AuthenticateWithFacebookAPI`
##D   fb_oauth <- AuthenticateWithFacebookAPI(appID=myAppID, appSecret=myAppSecret,
##D     extended_permissions=FALSE, useCachedToken=TRUE)
##D 
##D   # Run the `CollectTemporalDataFacebook` function and
##D   # store the results in variable `myTemporalFacebookData`
##D   myTemporalFacebookData <- CollectTemporalDataFacebook(pageName="StarWars",
##D     rangeFrom="2015-05-14",rangeTo="2015-06-04",verbose=FALSE,writeToFile=FALSE)
##D 
##D   # Create a dynamic 'bimodal' Facebook network using `CreateDynamicNetwork`
##D   g_bimodal_dynamic_facebook <- CreateDynamicNetwork(myTemporalFacebookData)
##D 
##D   # View descriptive information about the bimodal network
##D   g_bimodal_facebook
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("CreateDynamicNetwork", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("CreateSemanticNetwork")
### * CreateSemanticNetwork

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: CreateSemanticNetwork
### Title: Create semantic networks from social media data (semantic
###   relationships between concepts)
### Aliases: CreateSemanticNetwork
### Keywords: SNA semantic network igraph social media

### ** Examples

## Not run: 
##D   ## This example shows how to collect Twitter data and create a semantic network
##D 
##D   # Firstly specify your API credentials
##D   my_api_key <- "1234567890qwerty"
##D   my_api_secret <- "1234567890qwerty"
##D   my_access_token <- "1234567890qwerty"
##D   my_access_token_secret <- "1234567890qwerty"
##D 
##D   # Authenticate with the Twitter API using \code{AuthenticateWithTwitterAPI}
##D   AuthenticateWithTwitterAPI(api_key=my_api_key, api_secret=my_api_secret,
##D     access_token=my_access_token, access_token_secret=my_access_token_secret)
##D 
##D   # Collect tweets data using \code{myTwitterData}
##D   myTwitterData <- CollectDataTwitter(searchTerm="#auspol",
##D     numTweets=200,writeToFile=FALSE,verbose=FALSE)
##D 
##D   # Create a 'semantic' network using \code{CreateSemanticNetwork}
##D   g_semantic_twitter <- CreateSemanticNetwork(myTwitterData,writeToFile=FALSE,
##D     termFreq=20,hashtagFreq=80)
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("CreateSemanticNetwork", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
cleanEx()
nameEx("GetYoutubeVideoIDs")
### * GetYoutubeVideoIDs

flush(stderr()); flush(stdout())

base::assign(".ptime", proc.time(), pos = "CheckExEnv")
### Name: GetYoutubeVideoIDs
### Title: Extract/scrape the IDs from a set of YouTube video URLs
### Aliases: GetYoutubeVideoIDs
### Keywords: youtube scraping SocialMediaLab

### ** Examples

## Not run: 
##D   ## This example shows how to use `GetYoutubeVideoIDs` to extract video IDs from YouTube
##D   ## video URLs, and then collect data using the function `CollectDataYoutube`
##D 
##D   # Use your own Google Developer API Key here:
##D   myApiKey <- "1234567890"
##D 
##D   # Authenticate with the Google API
##D   apiKeyYoutube <- AuthenticateWithYoutubeAPI(apiKeyYoutube=myApiKey)
##D 
##D   # Use the function `GetYoutubeVideoIDs` to automatically generate vector of IDs from
##D   # a plain text file of video URLs
##D   videoIDs <- GetYoutubeVideoIDs(file="youtube_to_scrape.txt")
##D 
##D   # Collect the data using function `CollectDataYoutube`
##D   myYoutubeData <- CollectDataYoutube(videoIDs,apiKeyYoutube,writeToFile=FALSE)
## End(Not run)



base::assign(".dptime", (proc.time() - get(".ptime", pos = "CheckExEnv")), pos = "CheckExEnv")
base::cat("GetYoutubeVideoIDs", base::get(".format_ptime", pos = 'CheckExEnv')(get(".dptime", pos = "CheckExEnv")), "\n", file=base::get(".ExTimings", pos = 'CheckExEnv'), append=TRUE, sep="\t")
### * <FOOTER>
###
options(digits = 7L)
base::cat("Time elapsed: ", proc.time() - base::get("ptime", pos = 'CheckExEnv'),"\n")
grDevices::dev.off()
###
### Local variables: ***
### mode: outline-minor ***
### outline-regexp: "\\(> \\)?### [*]+" ***
### End: ***
quit('no')