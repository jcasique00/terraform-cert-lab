# TF_DELTAS.md

## Purpose
This is the file I will use to log my progress after completing each lab. Each lab will be completed twice, first guided by the Pluralsight instructor, then on my own. At the end, I will log lessons learned, any shortcomings, or any additional learning needed to complete the lab successfully without the instructor's guidance.


## Lab 1
- This was a pretty simple lab, easy to complete when following the instructor.
- Once I started the solo version, it made me realize how much we rely on IDE's autocomplete.
- I struggled just getting started. To be honest, it took me a minute to realize I had to start the main.tf file with the terraform block, and the required providers in it. It all got better at that point, until I had to decide which values in the different blocks need quotes and which don't:
  - Basically, most of them do, specially when they key value is a string or a literal value. On the other hand, it appears that numeric ones (i.e. length = 16), booleans (special = false), and references to aliases or variables (provider = local.secondary) don't.

- This was a good starting lab to make me realize that once in a while it is a good practice to either disable the autocomplete feature of my IDE, or write some code in a plain text editor (Notepad ++ of course) to flex those memory muscles.

## Lab 4

## Lab 5
- 'Moved' block allows renaming modules and avoids destructive behavior. Without this block in the main.tf file a ```terraform plan``` would try to destroy the original resource and create a new one with the new name.
- One thing I need to try is removing the block from main.tf after the changes are applied. I am basically wondering if removeing the 'moved' blocks would affect the state of the infrastructure. In my mind, it should not...
- It was a good opportunity to solidify the understanding of a module. It makes a difference when one finally sees the difference between a large main.tf at the root of a project vs infra broken down into smaller, independent pieces... it is modular
