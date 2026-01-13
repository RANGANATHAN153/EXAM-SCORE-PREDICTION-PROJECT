# EXAM-SCORE-PREDICTION-PROJECT
ANALYZED THE CSV AND BUILD VISUALS USING STUDENTS DATA PERFORMED PYTHON, SQL AND POWERBI.

Data Analysis Key Findings
The dataset consists of 20,000 entries and 13 columns, with no missing values.
Numerical features include student_id, age, study_hours, class_attendance, sleep_hours, and exam_score. Categorical features include gender, course, internet_access, sleep_quality, study_method, facility_rating, and exam_difficulty.
The average exam_score is 62.51, ranging from 19.599 to 100.
study_hours show a strong positive correlation of 0.72 with exam_score.
class_attendance shows a moderate positive correlation of 0.31 with exam_score.
sleep_hours show a weak positive correlation of 0.13 with exam_score. age and student_id have negligible correlation with exam_score.
The internet_access distribution is heavily skewed, with 16,988 entries having access compared to 3,012 without.
exam_difficulty is predominantly 'moderate' (9,878 entries), followed by 'easy' (6,141) and 'hard' (3,981).
The Linear Regression model achieved an R-squared of 0.73, a Mean Absolute Error (MAE) of 7.86, a Mean Squared Error (MSE) of 95.50, and a Root Mean Squared Error (RMSE) of 9.77.
Insights or Next Steps
Focus on Core Predictors: Given the strong positive correlations, students should be encouraged to increase study_hours and maintain high class_attendance as these are the most impactful factors identified for improving exam scores.
Explore Non-Linear Relationships and Other Models: While the current Linear Regression model explains 73% of the variance, exploring non-linear relationships or using more complex models (e.g., Random Forest, Gradient Boosting) could potentially capture additional variance and improve prediction accuracy further.
