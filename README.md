# Recipes Redone and Extended with Storyboards #

A storyboard can be thought of as a collection of view controllers and their nib files. The neat thing about storyboards is the ease of editing the _flow_ of the application. The entire flow of our application can be specified in one storyboard and the storyboards take care of all the controllers and their relationships.

**Note:** Before I could edit the prototype cell attributes I had to change the number of prototype cells from 0 to 1 in table view attributes.  Nice the way the cell content is displayed.  Showed title, subtitle and image.

## Container Controllers ##

+ **Tab Bar** (Example: Music App)
+ **Navigation Bar** (Example: Mail App)
+ **Split View** (iPad only)

**Container controllers** define the interaction model of the content controllers they manage.  In this book they do not cover creating custom container controllers.  

The segue that has a container controller is really a *container* seque.  So it is important to name segues and be sure you have the correct one by checking name.  When adding the Navigation Controller make sure the **Resize View From NIB** box is checked so the view is properly sized.

After adding the navigation controller we want to make transitions move *sideways* so change from **modal** to **push**.  Also we now have a navigation bar at the top of the details view and a **back** button so we do not need the **Done** button and we can move the recipe title to the bar.

## Idioms ##

### Deleting Code ###

**It is better to delete code than comment it out.** Why?  Well, if you have version control then it is not really deleted but the maintainers are looking at the existing code. If you comment unused code out it just makes more work for maintainers, even if you put in good comments. 

## Git Lesson ##

Well, we all make mistakes.  I misspelled a word in a commit statement.  If I catch it right away I can change the last commit message with just one line using `--amend`:

	git commit --amend -m "The corrected message."

This is from [stack**overflow**][1]



## Resources ##

[MultiMarkdown Composer] [2] is a great tool for editing this `README.md` file.  Add [**Marked**][3] for rending (it has a GitHub style) and its unbeatable.  They do both **markdown** and **multimarkedown** but all that is needed for github is **markdown**. 

[1]: http://stackoverflow.com/questions/179123/how-do-i-edit-an-incorrect-commit-message-in-git
[2]: http://multimarkdown.com/
[3]: http://markedapp.com/