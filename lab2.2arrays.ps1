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