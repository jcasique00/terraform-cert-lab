# TF_DELTAS.md

## Purpose
This is the file I will use to log my progress after completing each lab. Each lab will be completed twice, first guided by the Pluralsight instructor, then on my own. At the end, I will log lessons learned, any shortcomings, or any additional learning needed to complete the lab successfully without the instructor's guidance.


## Lab 1
- This was a pretty simple lab, easy to complete when following the instructor.
- Once I started the solo version, it made me realize how much we rely on IDE's autocomplete.
- I struggled just getting started. To be honest, it took me a minute to realize I had to start the main.tf file with the terraform block, and the required providers in it. It all got better at that point, until I had to decide which values in the different blocks need quotes and which don't:
  - Basically, most of them do, specially when they key value is a string or a literal value. On the other hand, it appears that numeric ones (i.e. length = 16), booleans (special = false), and references to aliases or variables (provider = local.secondary) don't.

- This was a good starting lab to make me realize that once in a while it is a good practice to either disable the autocomplete feature of my IDE, or write some code in a plain text editor (Notepad ++ of course) to flex those memory muscles.