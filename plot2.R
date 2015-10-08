plot2 <- function() {
    # as requested, here is the code that loads data
    # (source the function that loads the data frame)
    source('load_dataset.R')
    df <- load_dataset('data/dataset.csv')

    # prepare the output png file
    png(file = 'plot2.png', height = 480, width = 480)

    # actual plot
    with(df, { plot(datetime, Global_active_power, type = 'n',
                    xlab = '', ylab = 'Global Active Power (kilowatts)');
               lines(datetime, Global_active_power) }
    )

    dev.off()
    print("plot saved to plot2.png file")
}

plot2()
