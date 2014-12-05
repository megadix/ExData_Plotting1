source("setup.R")

# set locale: needed to display correct weekdays
Sys.setlocale("LC_TIME", "English")

# open graphics device
png(filename = "plot3.png")

# draw plot
with(exData_Plotting1,
     plot(rep(Datetime, 3),
          c(Sub_metering_1, Sub_metering_2, Sub_metering_3),
          type = "n",
          xlab = "",
          ylab = "Energy sub metering"
     )
)
with(exData_Plotting1,
     lines(Datetime, Sub_metering_1, col = "black")
)
with(exData_Plotting1,
     lines(Datetime, Sub_metering_2, col = "red")
)
with(exData_Plotting1,
     lines(Datetime, Sub_metering_3, col = "blue")
)
legend("topright",
       col = c("black", "red", "blue"),
       lty = 1,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_2"))

# shutdown device
dev.off()
