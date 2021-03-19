# Breaking Bad Name Generator
find chemical elements in names

Input: names separated by space
Output: names with `<b>`-Tag around found elements
  
## rules
- First element found must be taken
- two-digit elements before one-digit-elements

## Examples
`Käptn Blaubär => Kä<B>Pt</B>n B<B>La</B>ubär` --> Kä<B>Pt</B>n B<B>La</B>ubär

`Hein Blöd => <B>He</B>in <B>B</B>löd` --> <B>He</B>in <B>B</B>löd

