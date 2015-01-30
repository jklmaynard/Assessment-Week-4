BANDS and VENUES

Here is a simple web application where users can input venue name/location, band name, edit or delete venue description and list out which venues a band will be going to.  Using an active record and psql database, this is a many-to-many relationship between Bands and Venues, so there is a table for Bands, a table for Venues, and a join table, Bands_Venues with corresponding ids.

There are a few bugs I want to work through in the coming week.  The most irritating is that while there is a validation method at work (and passing specs) to make sure a user doesn't leave a field blank, this is running into an error message in Sinatra. Apparently "done" is not an attribute.  After a few hours trying to work through this bug, I'm ready to concede and work with others in the future to figure out this problem and master it.

So the question of whether or not I used a validation or a callback rests on whether I managed to get it successfully running in Sinatra (I did not).  


Some notes (for myself):

1. I began w/ a many-to-many relationship, but when I needed to add venue.ids[] to the "/bands/:id" patch, I wasn't sure if the many-to-many relationship would appear.  How does it get from the table? This is a question I intend to explore next week.

2. Ran into "unknown attribute error" on app.rb 15 trying to create validation method.  Couldn't manage to discover the solution.

3. Writing a separate validation for :location in the Venue class, this basically made null any other methods (specifically, :titleize) I tried to do later.  It took a long time to realize that if I want to validate any attribute in the class, it can all be done with one validation, not many.  For future reference.

Liscense no.7894561234567894561231

Copyright James Maynard 2015
