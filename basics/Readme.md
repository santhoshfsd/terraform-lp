## variables
```
variable "<name>" {
    type = <string,number, bool>
    default
}
```

### Complex type
- Map  map(string)  { key = value, key value}
    - loopkup to get values from map
- List list(string)  ["",""]
    - element (list, index)
    - slice (list, start, end)
    - ordered 
- set
    - unordered - unique values 
- object - is like a map - each element can have   different value type
- tuple
    - like a list - but each element can have different value


## refer values / constants
- vars.tf - declare variables
- .tfvars


## loops
- support of for and for each loops  - from verion 0.12



```
# Issues 
 A reference to a resource type must be followed by at least one attribute access, specifying the resource name.
 
 ```