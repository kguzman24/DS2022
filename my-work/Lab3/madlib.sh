#!/bin/bash

clear
echo "Let's build a mad-lib!"

read -p "1. Name a person: " NOUN1
read -p "2. Name a fruit: " NOUN2
read -p "3. Give an adjective: " ADJ1
read -p "4. Name a grocery store: " NOUN3
read -p "5. Name an instrument: " NOUN4
read -p "6. Give an adverb: " ADV1
read -p "7. Give a verb ending in -ing: " VERB1
read -p "8. Name a cartoon character: " NOUN5
read -p "9. Name a meal: " NOUN6

echo "On the morning of a bright summer day, $NOUN1 decided to plant a $NOUN2 tree in their backyard."
echo "They started digging the hole for their new prized possession, however, in the middle of digging, they realized their shovel was $ADJ1."
echo "Frustrated, they got in their car and  drive to the nearest $NOUN3."
echo "While walking around inside, they heard someone $ADV1 playing a $NOUN4."
echo "This inspired them. $NOUN1 was $VERB1 with joy. They were so distracted that they forgot what they came to $NOUN3  for."
echo "So they grabbed a cereal box with $NOUN5 on it and headed home. They cooked some $NOUN6 to eat with their cereal. What a relaxing day!"

