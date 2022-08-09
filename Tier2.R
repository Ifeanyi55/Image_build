library(reactable)

# read data
tier2 <- read.csv("companies.csv",encoding = "UTF-8",header = T)
tier2 |> View()

# rename columns
colnames(tier2)[c(1,2,4)] <- c("Organisation","Town/City","Type/Rating")

# convert to a reactable table
reactable(tier2,
          theme = reactableTheme(stripedColor = "lightblue",
                                 borderColor = "lightblue",
                                 borderWidth = 2),
          filterable = T,
          bordered = T,
          compact = T,
          highlight = T,
          defaultColDef = colDef(align = "center",
                                 headerStyle = list(background = "lightblue")))

tryout <- function(a){
  if(a > 10){
    add <- function(x,y){
      add <- x + y
      
      return(add)
    }
  } else {
    subtract <- function(x,y){
      subtract <- x - y
      return(subtract)
    }
  }
}

tin <- tryout(15)
tin(1,2)

nit <- tryout(9)
nit(2,1)
