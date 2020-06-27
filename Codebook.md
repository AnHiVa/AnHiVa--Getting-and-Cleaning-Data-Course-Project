Variables
=========

The tidy data set contains 180 obs and 68 variables, its saved in
[‘text’](https://github.com/AnHiVa/AnHiVa--Getting-and-Cleaning-Data-Course-Project/blob/master/TIDY_HumanActivity.txt)
and
[‘csv’](https://github.com/AnHiVa/AnHiVa--Getting-and-Cleaning-Data-Course-Project/blob/master/TIDY_HumanActivity.csv)
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

<table style="width:67%;">
<colgroup>
<col style="width: 66%" />
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
<td style="text-align: center;">TimeBodyAccelerometerMean()-X</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerMean()-Y</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerMean()-Z</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeGravityAccelerometerMean()-X</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeGravityAccelerometerMean()-Y</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeGravityAccelerometerMean()-Z</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerJerkMean()-X</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerJerkMean()-Y</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerJerkMean()-Z</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeMean()-X</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeMean()-Y</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeMean()-Z</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeJerkMean()-X</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeJerkMean()-Y</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeJerkMean()-Z</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerMagnitudeMean()</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeGravityAccelerometerMagnitudeMean()</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerJerkMagnitudeMean()</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeMagnitudeMean()</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeJerkMagnitudeMean()</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerMean()-X</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerMean()-Y</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerMean()-Z</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMean()-X</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMean()-Y</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMean()-Z</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeMean()-X</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeMean()-Y</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeMean()-Z</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerMagnitudeMean()</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMagnitudeMean()</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeMagnitudeMean()</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeJerkMagnitudeMean()</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerSTD()-X</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerSTD()-Y</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerSTD()-Z</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeGravityAccelerometerSTD()-X</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeGravityAccelerometerSTD()-Y</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeGravityAccelerometerSTD()-Z</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerJerkSTD()-X</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerJerkSTD()-Y</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyAccelerometerJerkSTD()-Z</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeSTD()-X</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeSTD()-Y</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeSTD()-Z</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeJerkSTD()-X</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeJerkSTD()-Y</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeJerkSTD()-Z</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerMagnitudeSTD()</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeGravityAccelerometerMagnitudeSTD()</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyAccelerometerJerkMagnitudeSTD()</td>
</tr>
<tr class="even">
<td style="text-align: center;">TimeBodyGyroscopeMagnitudeSTD()</td>
</tr>
<tr class="odd">
<td style="text-align: center;">TimeBodyGyroscopeJerkMagnitudeSTD()</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerSTD()-X</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerSTD()-Y</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerSTD()-Z</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkSTD()-X</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkSTD()-Y</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkSTD()-Z</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeSTD()-X</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeSTD()-Y</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeSTD()-Z</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyAccelerometerMagnitudeSTD()</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyAccelerometerJerkMagnitudeSTD()</td>
</tr>
<tr class="odd">
<td style="text-align: center;">FrequencyBodyGyroscopeMagnitudeSTD()</td>
</tr>
<tr class="even">
<td style="text-align: center;">FrequencyBodyGyroscopeJerkMagnitudeSTD()</td>
</tr>
</tbody>
</table>

Summaries calculated
====================

A 10 x 5 example is shown below

    ## # A tibble: 10 x 5
    ##    subject activity   `TimeBodyAccelerom~ `TimeBodyAccelerom~ `TimeBodyAccelero~
    ##      <dbl> <chr>                    <dbl>               <dbl>              <dbl>
    ##  1       1 WALKING                  0.277            -0.0174             -0.111 
    ##  2       1 WALKING_U~               0.255            -0.0240             -0.0973
    ##  3       1 WALKING_D~               0.289            -0.00992            -0.108 
    ##  4       1 SITTING                  0.261            -0.00131            -0.105 
    ##  5       1 STANDING                 0.279            -0.0161             -0.111 
    ##  6       1 LAYING                   0.222            -0.0405             -0.113 
    ##  7       2 WALKING                  0.276            -0.0186             -0.106 
    ##  8       2 WALKING_U~               0.247            -0.0214             -0.153 
    ##  9       2 WALKING_D~               0.278            -0.0227             -0.117 
    ## 10       2 SITTING                  0.277            -0.0157             -0.109
