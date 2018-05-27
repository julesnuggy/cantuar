# Cantuar
**Learn Chinese with Professor Cactuar!**

## Introduction
This is a basic flash card app which is designed to help you learn Cantonese (or any other language I guess) by aiding your practice sessions. This is intended as a self-help app to use along side existing learning, as opposed to one which actually teaches you the language.

## How to Use
### Create Cards
Users are able to add phrases in their chosen language along with a translation to a flash card, which is then stored in a cloud database.

### Practice
Users will be presented with a flash card at random, which will display a phrase in the appropriate language. Users can then type in their translation and submit the response. The flash card will then display the correct answer (based upon what the user themselves input at creation stage).

## User Stories
### MVP
```
As a user,
So that I can practice Chinese,
I want to be able to create my own flash cards.
👍
```
```
As a user,
So that I can remember my Chinese lessons,
I want to be able to add a phrase and its translation to a flash card.
👍
```
```
As a user,
So that I can add helpful reminders,
I want to be able to add notes to a flash card.
👍
```
```
As a user,
So that I can practice my Chinese,
I want to be presented with a random flash card to translate.
```
```
As a user,
So that I can check my response,
I want to be presented with the correct translation.
```
```
As a user,
So that I can change my flash cards,
I want to be able to edit my flash cards.
👍
```
```
As a user,
So that I can remove old flash cards,
I want to be able to delete my flash cards.
👍
```
### Additional Features
```
As a user,
So that I can have a productive practice,
I don't want to be shown the same flashcard twice in a given practice session.
```
```
As a user,
So that I can practice conversation,
I want to be able to create a Question and Response flash card.
```
```
As a user,
So that I can practice conversation,
I want to be presented with a random Q&R question to respond to in the same language.
```
```
As a user,
So that I can enhance my practice experience,
I want to not be shown the answer until I get it right or give up.
```
```
As a user,
So that I have an enjoyable time learning,
I want to have a nice looking app
```

## Domain Model
```
+---------+        +----------+          +-------------------+
|Interface|        |Flash Card|          |Database Connection|
+---------+        +----------+          +-------------------+

 #Print                                   #Connect
   +
   v
 #Fetch+--------------------------------->#Query
   ^   ^---------------------------------+ ^
   +                                       |
 #CheckAnswer                              |
   +                                       |
   v                #Add+---------+        |
 #UserInput                       |        |
                                  |        |
                    #Delete+---------------+
                                  |
                                  |
                    #Edit+--------+

```
