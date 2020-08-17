Expertly: the Expert Opinion social media platform

Models:

Users:
	Username
	Password
	Has_many: Credentials
	Has_many: Posts
	Class: Expert/Plebian

Questions:
	Belongs_to: Users
	TextyStuff: 
	Field:
	Upvotes: 
	
Answers: 
	Belong_to: Posts
	TextyStuff:
	Belongs_to_Users through Posts:
	UpVotes:
	
Credentials
	Belongs_to Users
	Years in Field:
	Degree:
	Field:

MVP:

Users can log in
Users can create credentials
Users can view other user's posts and credentials
Users can upvote other posts IF their credentials match the field. 
Users do not have to log in to view posts
Users can ask questions without being logged in


Stretch:
API to verify credentials for major fields that require licenses
Plebians can upvote posts