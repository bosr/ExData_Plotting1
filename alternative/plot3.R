plot3 <- function(df) {

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

}

## If you are looking for the code that plots png file:
# please look at the function `make_png_plots`: I chose
# to factor there the repetitive data loading and png plotting
