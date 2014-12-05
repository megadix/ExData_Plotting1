source("setup.R")

# set locale: needed to display correct weekdays
Sys.setlocale("LC_TIME", "English")

# open graphics device
png(filename = "plot2.png")

# draw plot
with(exData_Plotting1,
     plot(Datetime, Global_active_power,
          type = "l",
          xlab = "",
          ylab = "Global Active Power (kilowatts)"
     )
)

# shutdown device
dev.off()