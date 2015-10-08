plot1 <- function() {
    # as requested, here is the code that loads data
    # (source the function that loads the data frame)
    source('load_dataset.R')
    df <- load_dataset('data/dataset.csv')

    # prepare the output png file
    png(file = 'plot1.png', height = 480, width = 480)

    # actual plot
    with(df,
        hist(Global_active_power, col = "red",
             main = "Global Active Power",
             xlab = "Global Active Power (kilowatts)")
    )

    dev.off()
    print("plot saved to plot1.png file")
}

plot1()
