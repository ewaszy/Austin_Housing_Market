# Final_Project

## What went wrong
Due to predicting prices the decision tree model had an extremely low accuracy score, and was not able to complete a confusion matrix

## Next steps to solve the problems
One option that we believe will help raise the accuracy score is to create price ranges from the 'latest_saleprice' column and have the decision tree model predict in which range the house will fall in as opposed to predicting the price itself.

Another step we would need to continue to do is to see the impact that each feature has on the accuracy score and determine if there is a feature that isn't needed or if we include more features to help push the accuracy score up

Aside from trying to raise the accuracy score by lowering the prediction possibilities and deleting/adding features, we could also try using other machine learning models to determine which is the best at determining prices.


### Revamped Decision Tree
To increase accuracy we had it predict whether it would be classified as expensive or inexpensive. We did this instead of predicting exact pricing in order to receive
a better accuracy score. What we would do next is instead of creating two huge classes we will break it down into smaller classes that would represent budget jumps to 
show buyers homes in their price range. 
