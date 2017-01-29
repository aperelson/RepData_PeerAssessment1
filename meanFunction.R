setMissingData <- function(timeSlot) {
    newdata[which(walkdata$interval==timeSlot & is.na(walkdata$steps)), ]$steps <<- 
        mean(walkdata[which(walkdata$interval==timeSlot & !is.na(walkdata$steps)), ]$steps)
}