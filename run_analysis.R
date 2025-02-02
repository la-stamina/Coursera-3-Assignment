## 1, Getting the data

# Download zipped file from the URL
URL <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(URL, destfile = ".\\Dataset.zip")

# Unpack downloaded file
unzip(".\\Dataset.zip")
dir()     # check it


# Load files with labels
activities <- read.table(".\\UCI HAR Dataset\\activity_labels.txt", 
                              col.names = c("activityLabel", "activityName"))
features <- read.table(".\\UCI HAR Dataset\\features.txt", 
                              col.names = c("id", "featureName"))


# Load and merge train dataset
subjects_train <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt", 
                            col.names = c("subjectId"))
x_train <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt", 
                     col.names = features$featureName)
y_train <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt", 
                     col.names = "activityLabel")
train <- cbind(subjects_train, y_train, x_train)



# Load and merge test dataset
subjects_test <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt", 
                             col.names = c("subjectId"))
x_test <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt", 
                     col.names = features$featureName)
y_test <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt", 
                     col.names = "activityLabel")
test <- cbind(subjects_test, y_test, x_test)


## STEP 1
# Combine train and test datasets
combined <- rbind(train, test)


## STEP 2
# Tidy dataset containing only Mean and SD values
Tidy <- select(combined, subjectId, activityLabel, 
               contains ("mean"), contains("std"))



## STEP 3
# Merge with activities names by its code
Tidy <- merge(Tidy, activities, by.x = "activityLabel", 
              by.y = "activityLabel", all.y = TRUE)

# Remove activity code column, reorder column order
Tidy <- select(Tidy, subjectId, activityName, 3:88)



## STEP 4
# Rename variables to achieve descriptive variable names
replacements <- c("Acc" = "Accelerometer", "Gyro" = "Gyroscope", "BodyBody" = "Body",
                  "Mag" = "Magnitude", "^t" = "Time", "^f" = "Frequency",
                  "tBody" = "TimeBody", "-mean\\(\\)" = "Mean", "-std\\(\\)" = "STD",
                  "-freq\\(\\)" = "Frequency", "angle" = "Angle", "gravity" = "Gravity")


names(Tidy) <- Reduce(function(x, pattern) 
  gsub(pattern, replacements[pattern], x, ignore.case = TRUE), 
                          names(replacements), init = names(Tidy))


## STEP 5 
Tidy_mean <- Tidy %>%
  group_by(subjectId, activityName) %>% 
  summarise_if(is.numeric, mean, na.rm = TRUE)


