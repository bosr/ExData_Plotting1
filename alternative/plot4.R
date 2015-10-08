plot4 <- function(df) {
    # plot4 actually uses plot2 and plot3, let's source them
    source('plot2.R')
    source('plot3.R')

    # actual plot
    with(df,
         { par(mfcol = c(2, 2))
           plot2(df);
           plot3(df);
           plot(datetime, Voltage, type = 'n')
           lines(datetime, Voltage)
           plot(datetime, Global_reactive_power, type = 'n')
           lines(datetime, Global_reactive_power)
         }
    )

}

## If you are looking for the code that plots png file:
# please look at the function `make_png_plots`: I chose
# to factor there the repetitive data loading and png plotting
