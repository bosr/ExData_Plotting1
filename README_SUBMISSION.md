# Exploratory Data Analysis 033
## Split the data
In order to load only the appropriate dataset (dates from 2007-02-01 to 2007-02-02), I have done the following:

1. download the zipped dataset and give it a sensible name

        curl https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip -o household_power_consumption.zip

2. unzip and extract only the relevant dates (all at once). For this, I use `sed` to match the lines that match the pattern corresponding to lines beginning with 1/2/2007 or 2/2/2007

        unzip -p household_power_consumption.zip | sed -n '/^[12]\/2\/2007/p' > dataset.csv

3. the final file contains one line per minute, for two complete days, that is 60 x 24 x 2 = 2880 lines, which you can easily verify with:

        wc -l dataset.csv

4. finally, I delete the large unzipped file

        rm household_power_consumption.txt

## Detour - How to road the dataset with appropriate classes on the fly (not used)
Even if I won't finally use it, one can convert the dates and times on the fly (while loading).

In order to load the data and convert dates on the fly, I prepare a date converter class (`dateconv`) that will be passed to `read.csv`

    setClass('dateconv')
    setAs("character", "dateconv",
          function(from) as.Date(from, format="%d/%m/%Y"))

And I do the same for time:

    library(lubridate)
    setClass('timeconv')
    setAs("character", "timeconv",
          function(from) {t <- hms(from); minute(t) + 60 * hour(t)})

Then we can read the data using `read.csv`:

    data <- read.csv('data/dataset.txt',
                     sep=";", header = FALSE, na.strings = "?"
                     colClasses=c('dateconv',
                                  'timeconv',
                                  'numeric',
                                  'numeric',
                                  'numeric',
                                  'numeric',
                                  'numeric',
                                  'numeric',
                                  'numeric')
                    )


# Submission files (plots)
The files that are submitted are plot functions

- `plot1.R`
- `plot2.R`
- `plot3.R`
- `plot4.R`

Each of those files define a function (e.g. `plot1()`) and run it. I did this because it was a request from a peer reviewer in one of the previous courses.


## Note
I encourage you to look at the alternative submission (`alternative` directory) which I find much nicer because it is a more functional approach, with more code modularity and reuse.
