plot4 <- function() {
    # as requested, here is the code that loads data
    # (source the function that loads the data frame)
    source('load_dataset.R')
    df <- load_dataset('data/dataset.csv')

    # prepare the output png file
    png(file = 'plot4.png', height = 480, width = 480)

    # actual plot
    with(df,
         { par(mfcol = c(2, 2));

           with(df, { plot(datetime, Global_active_power, type = 'n',
                           xlab = '', ylab = 'Global Active Power');
                      lines(datetime, Global_active_power) }
           )

           with(df,
                { plot(datetime, Sub_metering_1, type = 'n',
                       xlab = '', ylab = 'Energy sub metering');
                  lines(datetime, Sub_metering_1, col = 'black');
                  lines(datetime, Sub_metering_2, col = 'red');
                  lines(datetime, Sub_metering_3, col = 'blue');
                  legend("topright",
                         c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                         lty = 1, col = c('black', 'red', 'blue'), bty = 'n')
               }
           )

           plot(datetime, Voltage, type = 'n');
           lines(datetime, Voltage);

           plot(datetime, Global_reactive_power, type = 'n');
           lines(datetime, Global_reactive_power);
         }
    )

    dev.off()
    print("plot saved to plot4.png file")
}

plot4()
