
# Create the dataset
salary_data <- data.frame(
  Years_Exp = c(1.1, 1.3, 1.5, 2.0, 2.2, 2.9, 3.0, 3.2, 3.2, 3.7),
  Salary = c(39343.00, 46205.00, 37731.00, 43525.00, 39891.00,
             56642.00, 60150.00, 54445.00, 64445.00, 57189.00)
)

# Split the dataset into a training set (80%) and a test set (20%)
set.seed(123)

# Applying split
split <- sample.split(salary_data$Salary, SplitRatio = 0.8)
trainingset <- subset(salary_data, split == TRUE)
testset <- subset(salary_data, split == FALSE)

# Fitting Simple Linear Regression to the Training set
lm.r <- lm(formula = Salary ~ Years_Exp, data = trainingset)

# Summary of the linear model
summary(lm.r)

# Install necessary library
install.packages('caTools')
library(caTools)
