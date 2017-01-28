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



## Imputing missing values



## Are there differences in activity patterns between weekdays and weekends?
