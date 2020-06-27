Variables
=========

The tidy data set contains 180 obs and 68 variables, its saved in
[text](https://github.com/AnHiVa/AnHiVa--Getting-and-Cleaning-Data-Course-Project/blob/master/TIDY_HumanActivity.txt)
and
[csv](https://github.com/AnHiVa/AnHiVa--Getting-and-Cleaning-Data-Course-Project/blob/master/TIDY_HumanActivity.csv)
file formats.

### Variable list

-   subject: ID of the subject tested (1:30)
-   activity: Activity name (WALKING, SITTING, LAYING…)

The rest of the variables are a combination of features:

-   Domain: Time or Frequency
-   Instrument: Accelerometer or Gyroscope
-   Acceleration: Body or Gravity
-   Magnitude
-   Jerk
-   Axis: X, Y or Z direction
-   Statistical measurement: Mean or Standard Deviation (STD)

<table style="width:64%;">
<colgroup>
<col style="width: 63%" />
</colgroup>
<thead>
<tr class="header">
<th style="text-align: center;">Variables</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="text-align: center;">subject</td>
</tr>
<tr class="even">
<td style="text-align: center;">activity</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerMeanX</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerMeanY</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerMeanZ</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeGravityAccelerometerMeanX</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeGravityAccelerometerMeanY</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeGravityAccelerometerMeanZ</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerJerkMeanX</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerJerkMeanY</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerJerkMeanZ</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeMeanX</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeMeanY</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeMeanZ</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeJerkMeanX</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeJerkMeanY</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeJerkMeanZ</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerMagnitudeMean</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeGravityAccelerometerMagnitudeMean</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerJerkMagnitudeMean</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeMagnitudeMean</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeJerkMagnitudeMean</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerMeanX</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerMeanY</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerMeanZ</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMeanX</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMeanY</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMeanZ</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeMeanX</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeMeanY</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeMeanZ</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerMagnitudeMean</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMagnitudeMean</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeMagnitudeMean</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeJerkMagnitudeMean</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerStdX</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerStdY</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerStdZ</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeGravityAccelerometerStdX</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeGravityAccelerometerStdY</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeGravityAccelerometerStdZ</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerJerkStdX</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerJerkStdY</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerJerkStdZ</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeStdX</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeStdY</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeStdZ</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeJerkStdX</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeJerkStdY</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeJerkStdZ</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerMagnitudeStd</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeGravityAccelerometerMagnitudeStd</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerJerkMagnitudeStd</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeMagnitudeStd</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeJerkMagnitudeStd</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerStdX</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerStdY</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerStdZ</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkStdX</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkStdY</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkStdZ</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeStdX</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeStdY</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeStdZ</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerMagnitudeStd</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMagnitudeStd</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeMagnitudeStd</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeJerkMagnitudeStd</td>
</tr>
</tbody>
</table>

Summaries calculated
====================

Data is grouped and summarized by the average of each variable for each
activity and each subject

A 10 x 5 example is shown below

    ## # A tibble: 10 x 5
    ##    subject activity    TimeBodyAccelerome~ TimeBodyAccelerom~ TimeBodyAccelerom~
    ##      <dbl> <chr>                     <dbl>              <dbl>              <dbl>
    ##  1       1 WALKING                   0.277           -0.0174             -0.111 
    ##  2       1 WALKING_UP~               0.255           -0.0240             -0.0973
    ##  3       1 WALKING_DO~               0.289           -0.00992            -0.108 
    ##  4       1 SITTING                   0.261           -0.00131            -0.105 
    ##  5       1 STANDING                  0.279           -0.0161             -0.111 
    ##  6       1 LAYING                    0.222           -0.0405             -0.113 
    ##  7       2 WALKING                   0.276           -0.0186             -0.106 
    ##  8       2 WALKING_UP~               0.247           -0.0214             -0.153 
    ##  9       2 WALKING_DO~               0.278           -0.0227             -0.117 
    ## 10       2 SITTING                   0.277           -0.0157             -0.109
