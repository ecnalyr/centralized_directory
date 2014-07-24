Ijf
=====

This application is under development by [Lost Tie LLC].

[Lost Tie LLC]: http://www.losttie.com

Ruby on Rails
-----

This application requires:

* Ruby version 2.0.0
* Rails version 4.1.4

Learn more about [Installing Rails].

[Installing Rails]: http://railsapps.github.io/installing-rails.html.

Database
-----

This application uses PostgreSQL with ActiveRecord.

There is an example config file here: [config/database.example.yml](../master/config/database.example.yml)

Development
-----

* Template Engine: Haml
* Testing Framework: RSpec and Factory Girl
* Front-end Framework: Zurb Foundation 5
* Form Builder: SimpleForm
* Authentication: Devise
* Authorization: CanCan

Email
-----

The application is configured to send email using a Gmail account.

Getting Started
-----

rake db:migrate
rake db:seed

Documentation and Support
-----

This is the only documentation.

Issues
-----

Use the [GitHub issue tracker].

[GitHub issue tracker]: https://github.com/ecnalyr/centralized_directory/issues

Contributing
-----

Please use [Trello](not set up because this is a demo project), as described below, and follow these guidelines when contributing: [Contributing to Lost Tie Projects]

[Trello]: #
[Contributing to Lost Tie Projects]: https://github.com/LostTie/handbook/tree/master/contributing_to_projects

Trello for IJF
-----

(Heavily inspired by [thoughtbot's playbook].)

[thoughtbot's playbook]: http://playbook.thoughtbot.com/

A [Trello] board is a software equivalent of a physical wall with columns of sticky notes. In Trello terminology, the wall is called a "board." The columns are called "lists." The sticky notes in columns are called "cards."

In any task management system, it's important to have a view into the product development process like this. The Next Up list is the single prioritized list to which the product team refers in order to know what to work on next. It represents one week of work.

A card represents a user story, bug fix, engineering task, or general todo.

Cards start out as a simple idea, 1-2 sentences long. As they are pulled through boards, detail is added, explaining why (from a business perspective) we're focusing on it, and maybe notes on suggested implementation (though designers and developers may take or leave it at their discretion; it's supposed to be helpful, not prescriptive).

We use the following lists to orgnaize IJF's [Trello] board:

* Next Up
* In Progress
* Code Review
* Testing on Staging
* Ready for Production
* Live (Week of [date])
* Non-Code Complete

Once the cards in the Next Up list have been prioritized and vetted, they are ready for design and development. A designer or developer "puts their face on it" by assigning it to themselves and pulling it into the In Progress list.

The cards in the In Progress list are actively being designed or developed. Etiquette is that you should never have your face on more than two cards at a time. Work is done in a feature branch (see [Contributing to Lost Tie Projects]).

When a designer or developer creates a pull request for their feature branch, they move the card to the Code Review list. Any reviewers "put their face on it" while reviewing.

There is no bottleneck for merging into master: everyone can do it.  Merging into master will automatically push the changes to staging (currently at http://www.losttiedemo.info )

The cards in the Testing on Staging list are deployed to staging. The card creator and a designer review it for accuracy and user experience.

The cards in the Ready for Production list include cards that have been accepted on staging and are ready to be deployed (but not necessarily rolled out).

Only Jason can release to production: please do not push to production unless your name is Jason.

The cards in the Live (Week of [date]) lists have been released. Each week has its own Live list so we can follow what got released when.

The cards in the Non-Code Complete list represent work completed that is associated with the project, but is not actually code.  This may include miscellaneous design drafting work or other stuff.  These cards move from In Progress to Code Review (they aren't code, but we still review them) to Non-Code Complete.

License
-----

Not available for distribution.
