plot1 <- function(df) {

    # actual plot
    with(df,
        hist(Global_active_power, col = "red",
             main = "Global Active Power",
             xlab = "Global Active Power (kilowatts)")
    )

}

## If you are looking for the code that plots png file:
# please look at the function `make_png_plots`: I chose
# to factor there the repetitive data loading and png plotting
