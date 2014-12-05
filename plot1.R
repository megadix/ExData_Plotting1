source("setup.R")

# open graphics device
png(filename = "plot1.png")

# draw plot
with(exData_Plotting1,
     hist(Global_active_power,
          col = "red",
          xlab = "Global Active Power (kilowatts)",
          main = "Global Active Power"
     )
)

# shutdown device
dev.off()