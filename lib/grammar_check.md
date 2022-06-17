# Describe the Problem
> As a user
> So that I can improve my grammar
> I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.

# Design the Method Signature
```ruby
check = grammar_check(text)
```
* text is a string consisting of words
* check is a boolean which returns true if the text starts with a capital and ends with a sentence-ending punctuation mark. 


# Create Examples as Tests

```ruby
# 1 
grammar_check('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tecum optime, deinde etiam cum mediocri amico. Suo enim quisque studio maxime ducitur. Atque his de rebus et splendida est eorum et illustris oratio. Qua igitur re ab deo vincitur, si aeternitate non vincitur? Nunc omni virtuti vitium contrario nomine opponitur. Nummus in Croesi divitiis obscuratur, pars est tamen divitiarum. Duo Reges: constructio interrete. Dici enim nihil potest verius. In quibus doctissimi illi veteres inesse quiddam caeleste et divinum putaverunt. An eum discere ea mavis, quae cum plane perdidiceriti nihil sciat? Nam et complectitur verbis, quod vult, et dicit plane, quod intellegam; Quantum Aristoxeni ingenium consumptum videmus in musicis?')
# => true

# 2
grammar_check('Lorem ipsum dolor sit amet, consectetur adipiscing elit.') 
# => true

# 3
grammar_check('Lorem ipsum dolor sit amet, consectetur adipiscing elit. ') 
# => true

# 3
grammar_check('Lorem ipsum dolor sit amet, consectetur adipiscing elit!') 
# => true

# 4
grammar_check(' Lorem ipsum dolor sit amet, consectetur adipiscing elit.') 
# => true

# 5
grammar_check('ipsum dolor sit amet, consectetur adipiscing elit.') 
# => false

#6
grammar_check('Lorem ipsum dolor sit amet, consectetur adipiscing elit') 
# => false

