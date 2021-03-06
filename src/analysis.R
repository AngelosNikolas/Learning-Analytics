library("ProjectTemplate")
load.project()

########################Enrollments################################
# Construct a data frame containing the fully participated learners
Fully_Part=c(fully_participated1,fully_participated2,fully_participated3,fully_participated4,fully_participated5,fully_participated6,fully_participated7)
Participation_percent= data.frame(RunNumber,Fully_Part)
View(Participation_percent)

#Plot the enrollment counts 
EnrollCountPlot=ggplot(data=Enroldata, aes(x=reorder(RunNumber, -EnrolCount), y=EnrolCount)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=EnrolCount), vjust=1.6, color="white", size=3.5)+
  theme_minimal()

EnrollCountPlot

#Plot the participation percentages
bp1<- ggplot(Participation_percent, aes(x="", y=Fully_Part, fill=RunNumber))+
  geom_bar(width = 1, stat = "identity")
pie1 <- bp1 + coord_polar("y", start=0)
pie1

# Investigation on the learners that fully participated in the most successful run 
Gender = c('Male','Female','Unknown')
Gender_count = c(nrow(MaleLearners1),nrow(FemaleLearners1), nrow(UnknownGenderLearners1))
Run1Gender = data.frame(Gender,Gender_count)


#Plot education for run 1
Education_Plot=ggplot(data=Education_data, aes(x=reorder(Education_Levels,-Education_Count), y=Education_Count)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=Education_Count), vjust=1.6, color="white", size=3.5)+
  theme_minimal()
Education_Plot
View(Education_data)

#Plot employment status for run 1
Employment_Plot=ggplot(data=Employment_data, aes(x=reorder(Employment_Levels,-Employment_Count), y=Employment_Count)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=Employment_Count), vjust=1.6, color="white", size=3.5)+
  theme_minimal()
Employment_Plot

########################Question Response#################################

#Plot the question true percentages for the first run
QuestionsPlot1=ggplot(data=Question_Data, aes(x=Weeks, y=QuestionPercent)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=QuestionPercent), vjust=1.6, color="white", size=3.5)+
  theme_minimal()
QuestionsPlot1

#Plot the question true percentages for the second run
QuestionsPlot2=ggplot(data=Question_Data2, aes(x=Weeks, y=QuestionPercent2)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=QuestionPercent2), vjust=1.6, color="white", size=3.5)+
  theme_minimal()
QuestionsPlot2


#Plot the question true percentages for the third run
QuestionsPlot3=ggplot(data=Question_Data3, aes(x=Weeks, y=QuestionPercent3)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=QuestionPercent3), vjust=1.6, color="white", size=3.5)+
  theme_minimal()
QuestionsPlot3

###################Step Activity#############################################
#Run 1

#Plotting the the completion percentages for each weak
Step1Plot1=ggplot(data=Step_data1, aes(x=reorder(Step_Weeks,-Step_percentages1), y=Step_percentages1)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=Step_percentages1), vjust=1.6, color="white", size=3.5)+
  theme_minimal()
Step1Plot1

#Plotting the step completion for each step type
Step1Plot2=ggplot(data=Step_Types_data1, aes(x=Step_Types, y=Step_Completion1)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
Step1Plot2

#Run 2

#Plotting the the completion percentages for each weak
Step2Plot1=ggplot(data=Step_data2, aes(x=Step_Weeks, y=Step_percentages2)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=Step_percentages2), vjust=1.6, color="white", size=3.5)+
  theme_minimal()
Step2Plot1

#Plotting the step completion for each step type
Step2Plot2=ggplot(data=Step_Types_data2, aes(x=Step_Types, y=Step_Completion2)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
Step2Plot2

#Run 3

#Plotting the the completion percentages for each weak
Step3Plot1=ggplot(data=Step_data3, aes(x=Step_Weeks, y=Step_percentages3)) +
  geom_bar(stat="identity", fill="steelblue")+
  geom_text(aes(label=Step_percentages3), vjust=1.6, color="white", size=3.5)+
  theme_minimal()
Step3Plot1

#Plotting the step completion for each step type
Step3Plot2=ggplot(data=Step_Types_data3, aes(x=Step_Types, y=Step_Completion3)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme(axis.text.x = element_text(angle=65, vjust=0.6))
Step3Plot2

#Table containing the number of steps for each type
Table1 = matrix(c(12,32,3,8,4))
colnames(table1) = (c("Videos","Articles","Discussions","Quizes","Exercises")) 

table1= a<- data.frame(Types = c("Videos","Articles","Discussions","Quizes","Exercises"),
                       Count = c(12,32,3,8,4))


########################## Video stats ###########################################

#Calculating the mean of 95% watched
mean(video_views3$viewed_ninetyfive_percent)
#Calculating the mean of video duration
mean(cyber.security.3_video.stats$video_duration)

#Plotting the duration vs total views

VideoPlot1 = ggplot(data=video_views3, aes(x=video_duration, y=total_views)) +
  geom_point(size=3) + 
  geom_segment(aes(x=video_duration, 
                   xend=video_duration, 
                   y=0, 
                   yend=total_views))  
VideoPlot1

#Plotting the devices percentages
VideoPlot2=ggplot(data=Device_data, aes(x=reorder(deviceCat, -deviceMeans), y=deviceMeans)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()
VideoPlot2

#Plotting the location percentages
VideoPlot3=ggplot(data=Location_data, aes(x=reorder(LocationCat, -LocationsMeans), y=LocationsMeans)) +
  geom_bar(stat="identity", fill="steelblue")+
  theme_minimal()
VideoPlot3
