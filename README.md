Problem 1:
 The method character_min_max_occurrences returns the min and max character occurrences and their count. [[min, count],[max,count]]
This is case insensitive and blank spaces don't count. 

Problem 2: 
  I used angularjs and stored the name in the object list as first and last name. 
I added the value to the table then saved it to the db.

Problem 3: 
  The user table only has an id and name. The user table has can have and be invited, through guest, to many events
The event table belongs to the user by the owner_id and can have many guest and repeated occurrences.
The guestlist table belongs to user by the guest_id and also belongs to events.
The Reccurrences table belongs to the event.

They way I handle reccurrences is that user add an end_date and the number of times the event repeats. 
The advantage is that this will be able to handle events that occur weekly, bi-weekly, or once a month. 
The disadvantage is that it cannot handle events that happen on differents days of the week or if the 
schedule is irregular.