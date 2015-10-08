make_png_plot <- function(idx) {
  # as requested, here is the code that loads data
  # (source the function that loads the data frame)
  source('load_dataset.R')
  df <- load_dataset('data/dataset.csv')

  # source the appropriate plot code. This:
  # - creates a function object 'plot1', or 'plot2', etc.
  # - each function object contains the code that loads data and plots the figure
  source(paste0('plot', i, '.R'))

  # give another name to this sourced function object
  # so that executing 'plot_fun()' calls the actual 'plot1()' or 'plot2()', or function that was sourced
  plot_fun <- eval(parse(text=paste0('plot', i)))

  # prepare the output png file
  png_filepath <- paste0('plot', i, '.png')
  png(file = png_filepath, height = 480, width = 480)

  # actual plot
  plot_fun(df)

  dev.off()
  print(paste("plot saved to", png_filepath, "file"))
}



## make all four plots
for (i in 1:4) {
  make_png_plot(i)
}

