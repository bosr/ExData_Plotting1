plot3 <- function() {
    # as requested, here is the code that loads data
    # (source the function that loads the data frame)
    source('load_dataset.R')
    df <- load_dataset('data/dataset.csv')

    # prepare the output png file
    png(file = 'plot3.png', height = 480, width = 480)

    # actual plot
    with(df,
         { plot(datetime, Sub_metering_1, type = 'n',
                xlab = '', ylab = 'Energy sub metering');
           lines(datetime, Sub_metering_1, col = 'black');
           lines(datetime, Sub_metering_2, col = 'red');
           lines(datetime, Sub_metering_3, col = 'blue');
           legend("topright",
                  c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
                  lty = 1, col = c('black', 'red', 'blue'))
        }
    )

    dev.off()
    print("plot saved to plot3.png file")
}

plot3()
