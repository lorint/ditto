##Team Git Workflow

A simple workflow using branches and pull requests for a team project with Git. Thanks to Zach Johnson (https://github.com/johnnythecakes) and Blaise Thomas (https://github.com/blaisethomas) for the flow!

Create a new branch and checkout to it:

git checkout -b <branchname>

Make edits on the branch.

When ready to merge...

git add -A

git commit -m "message"

git push origin <branchname>

Navigate to repo on github.com.

Create a pull request.

Review the changes, have your team members (or yourself) merge the pull request.

Back in command line (if you're still on the branch)...

git checkout master

git pull

Now you have most current master locally.

If you want to delete the branch:

git branch -d <branchname>

If you want to continue with work on the branch, checkout back to it and continue working.

---------------------------------------------------------------------------------------------------------------------
---------------------------------------------------------------------------------------------------------------------

RSpec -

Arsamess-MacBook-Air:ditto arsamesqajar$ rspec --init
  create   .rspec
  create   spec/spec_helper.rb
Arsamess-MacBook-Air:ditto arsamesqajar$ rake db:test:prepare
Arsamess-MacBook-Air:ditto arsamesqajar$ rails g rspec:install
   identical  .rspec
       exist  spec
    conflict  spec/spec_helper.rb
Overwrite /Users/arsamesqajar/Desktop/ditto/spec/spec_helper.rb? enter "h" for help) [Ynaqdh] Y
       force  spec/spec_helper.rb
      create  spec/rails_helper.rb
Arsamess-MacBook-Air:ditto arsamesqajar$ bundle exec rspec


