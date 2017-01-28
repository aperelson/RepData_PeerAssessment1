# Reproducible Research: Peer Assessment 1



## Loading and preprocessing the data


```r
unzip("activity.zip")
walkdata <- read.csv("activity.csv")
```


## What is mean total number of steps taken per day?

```r
totalSteps <- aggregate(steps ~ date, data = walkdata, sum, na.rm = TRUE)
hist(totalSteps$steps)
```

![](PA1_template_files/figure-html/unnamed-chunk-2-1.png)<!-- -->

```r
meanSteps <- mean(totalSteps$steps)
medianSteps <- median(totalSteps$steps)
```

* The mean of the total number of steps taken per day is: 10766.2
* The median of the total number of steps taken per day is: 10765


## What is the average daily activity pattern?

```r
stepsToInterval <- aggregate(steps ~ interval, data = walkdata, mean, na.rm = TRUE)
plot(steps ~ interval, data = stepsToInterval, type = "l")
```

![](PA1_template_files/figure-html/unnamed-chunk-3-1.png)<!-- -->


```r
max5Minute <- stepsToInterval[which.max(stepsToInterval$steps), ]$interval
```

* The 5-minute interval which on average across all the days in the dataset, contains the maximum number of steps is: 835


## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?
