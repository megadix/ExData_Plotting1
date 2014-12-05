source("setup.R")

# set locale: needed to display correct weekdays
Sys.setlocale("LC_TIME", "English")

# open graphics device
png(filename = "plot4.png")

# set plot grid
par(mfrow = c(2, 2))

# -- draw plot n. 1 ---------------------

with(exData_Plotting1,
     plot(Datetime, Global_active_power,
          type = "l",
          xlab = "",
          ylab = "Global Active Power"
     )
)

# -- draw plot n. 2 ---------------------

with(exData_Plotting1,
     plot(Datetime, Voltage,
          type = "l",
          xlab = "datetime"
     )
)

# -- draw plot n. 3 ---------------------

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
       bty = "n",
       col = c("black", "red", "blue"),
       lty = 1,
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_2"))

# -- draw plot n. 4 ---------------------

with(exData_Plotting1,
     plot(Datetime, Global_reactive_power,
          type = "l",
          xlab = "datetime"
     )
)

# shutdown device
dev.off()
