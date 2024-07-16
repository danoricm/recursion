⍝ recursion.apl
Factorial ← {⍵=0:1 ⋄ ⍵×∇ ⍵-1}

⍝ Input
'Enter an integer: '⎕ ← 1
Input ← ⎕

⍝ Result
Result ← Factorial Input
⎕ ← 'Factorial: ',⍕Result
