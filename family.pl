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

% Rule 3: mother
mother(Mother,Child):-
    female(Mother),
    parent(Mother,Child).

% Rule 4: father
father(Father, Child) :-
    male(Father),
    parent(Father, Child).

% Rule 5: sibling
sibling(Sibling1,Sibling2,Parent):-
    parent(Parent,Sibling1),
    parent(Parent,Sibling2),
    Sibling1 \= Sibling2.

% Rule 6: brother
brother(Brother,Person):-
    male(Brother),
    sibling(Brother, Person, _).

% Rule 7: ancestor
ancestor(Predecessor, Successor) :-
    parent(Predecessor, Successor).

ancestor(Predecessor, Successor) :-
    parent(Predecessor, X),
    ancestor(X, Successor).

% Section 3: Extended Database for Student ID 22004845
% New children facts (last digit 5 is odd -> children of edward and sophie)

% Directives to suppress warnings about non-contiguous clauses
:- discontiguous male/1.
:- discontiguous female/1.
:- discontiguous parent/2.

% Gender facts for new children
male(x_22004845).
female(y_22004845).

% Parent facts for new children
parent(edward, x_22004845).
parent(edward, y_22004845).
parent(sophie, x_22004845).
parent(sophie, y_22004845).