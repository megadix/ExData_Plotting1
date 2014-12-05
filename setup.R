## function to read project data
readData <- function(filename = "../household_power_consumption.txt",
                     startDt = "2007-02-01",
                     endDt = "2007-02-03") {
  # Read data
  data <- read.table(
    file = filename,
    sep = ";",
    header = TRUE,
    na.strings = "?",
    stringsAsFactors = FALSE)
  
  # join dates in Datetime column
  data <- data.frame(
    Datetime = as.POSIXct(paste(data$Date, data$Time), format = "%d/%m/%Y %H:%M:%S"),
    data[,3:9])
  
  # Subset data
  data <- subset(data, Datetime >= startDt & Datetime < endDt)
  
  data
}

# optimization: load data only once
if (! exists("exData_Plotting1")) {
  message("Loading data...")
  exData_Plotting1 <- readData()
  message(paste("...done,", nrow(exData_Plotting1), "rows found (filtered)"))
}
