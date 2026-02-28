# STEP 1 Create an array
@()


# STEP 2 Create objects in an array
$fruit = @('Apples', 'Oranges','Bananas')

#Array with each object on new line
$fruit

#Array with each object on same line line
write-host $fruit

# STEP 3 Creating an Array

#Array called data
$data = @()
#Array function output total objects in array
$data.Count
$data = @('Zero', 'One', 'Two', 'Three')
$data

# Step 3 Access the objects in an array
#Array object index single index
$data[0]
#Array object index multiple index
$data[0,2,3]
#Array object range index
$data[1..3]
#Output last object
$data[-1]

# STEP 4 Replacing items in an array
#Replace
$data[2]='Second'

# STEP 5 iterated actions
#REPITITION
$data | ForEach-Object {"Item: [$PSITEM]"}

# STEP 6 Creating an array of objects
$data = @(
[pscustomobject]@{FirstName='Kevin';LastName='Marquette'} 
[pscustomobject]@{FirstName='John'; LastName='Doe'}
)

# STEP 7 Accessing objects from arrays
$data[0]

# Access the properties of individual objects by specifiying what we would like
$data[0].FirstName

# STEP 8 Replacing object properties in arrays
$data[0].FirstName = 'Jay'

# STEP 9 Accessing every property in an array of objects
$data | forEach-Object {_.LastName}
$data.LastName

# STEP 10 -join
$data = @(1,2,3,4)
$data -join '_'

# STEP 11 -contains
$data = @('red','green','blue')
$data -contains 'green'

# STep 12 Equalities -ne -eq
#Display array only including refrence text
$data = @('red','green','blue')
$data -eq 'green'

#Display array only excluding refrence text
$data = @('red','green','blue')
$data -ne 'green'

# STEP 13 Array Additiion
$first = @(
    'Zero'
    'One'
)

$second = @(
    'Two'
    'Three'
)

#Added together using
$first+$second

# STEP 14. Plus Equals for Combining Arrays
$first += 'Two, Three'

# STEP 15. Strongly Typed Arrays
[int[]] $numbers = 1,2,3
[string[]] $numbers = 1,2,3

# STEP 16. ArrayList
#To create an ArrayList, and then add items to it, run the following:
myarray = [System.Collections.ArrayList]::new()
 [void]$myArray.Add('Value')
# Here, we can use the default .Net constructor to create a new ArrayList, and then using 
# the -Add operator to add items to it. The [void] operator is there because sometimes 
# these commands throw out strange outputs that can mess with the code.

# Advanced Array Functions
# Pre-Sized Arrays
$data = [Object[]]::new(4) 

# Multiplying Arrays
# This will create a new array with each value repeated three times. You 
# can also use this command as an alternative way to fill an array with zeros (or any other 
# default value) by making an array with your chosen value, and then multiplying it as 
# many times as you like
$data =@('red', 'green', 'blue')
$data * 3

# Nested Arrays
$data = @(@(1,2,3),@(4,5,6),@(7,8,9))
 $data2 = @(
        @(1,2,3)
        @(4,5,6)
        @(7,8,9)
 )

# The data structure you are making with this command is a classic matrix, and it can be 
# worked with like those in other programming languages. For instance, to access a 
# particular value from this array, you will need to specify two dimensions. 
# For instance, to access the value “3”, we would use this: 
PS>  $outside = 0 
PS>  $inside = 2 
PS>  $data[$outside][$inside]

<<<<<<< HEAD
# Completed
=======
# Completed
>>>>>>> ae42495 (Completed)
