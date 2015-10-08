plot2 <- function(df) {

    # actual plot
    with(df, { plot(datetime, Global_active_power, type = 'n',
                    xlab = '', ylab = 'Global Active Power (kilowatts)');
               lines(datetime, Global_active_power) }
    )

}

## If you are looking for the code that plots png file:
# please look at the function `make_png_plots`: I chose
# to factor there the repetitive data loading and png plotting
