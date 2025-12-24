% Section 1: Database
% Facts 1: Gender (Male/ Female)

male(william).
male(harry).
male(charles).
male(george).
male(philip).
male(edward).
male(james).

female(diana).
female(camilla).
female(elizabeth).
female(sophie).
female(louise).

% Facts 2: Parent
% parent(parent, child)

% George VI is father of Elizabeth II
parent(george, elizabeth).

% Elizabeth II and Philip are parents of Charles and Edward
parent(elizabeth, charles).
parent(elizabeth, edward).
parent(philip, charles).
parent(philip, edward).

% Charles and Diana are parents of William and Harry
parent(charles, william).
parent(charles, harry).
parent(diana, william).
parent(diana, harry).

% Edward and Sophie are parents of Louise and James
parent(edward, louise).
parent(edward, james).
parent(sophie, louise).
parent(sophie, james).

% Facts 3: Wife
% wife(wife, husband)

wife(elizabeth, philip).
wife(diana, charles).
wife(camilla, charles).
wife(sophie, edward).

% Section 2: Rules
% Rule 1: husband
husband(Man, Woman) :- wife(Woman, Man).

% Rule 2: person (either a male or a female)
person(P) :- male(P).
person(P) :- female(P).