load_dataset <- function(filepath) {

    df <- read.csv(filepath,
                   sep=";", header = FALSE, na.strings = "?",
                   stringsAsFactors = TRUE,
                   col.names = c('Date',
                                 'Time',
                                 'Global_active_power',
                                 'Global_reactive_power',
                                 'Voltage',
                                 'Global_intensity',
                                 'Sub_metering_1',
                                 'Sub_metering_2',
                                 'Sub_metering_3')
                    )

    df$datetime <- as.POSIXct(paste(df$Date, df$Time),
                                format = "%d/%m/%Y %H:%M:%S")
    df$Date <- NULL
    df$Time <- NULL
    df
}
