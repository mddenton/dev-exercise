1.  Write a function that takes a string and outputs the most and least common
    characters along with their total counts. In the event of a tie, return the
    character with the lowest code point. For example:

    ```ruby
    f('supercalifragilisticexpialidocious')
    # 7 'i', 1 'd'
    f('technicolor dreamcoat')
    # 3 'c', 1 ' '
    ```

    Provide your solution in the language of your choice. Only use core
    libraries. List any assumptions you make about the problem.

    My solution is in Ruby and includes tests in RSpec. The function assumes a 
    string will be passed as its argument.

2.  Using the following snippet of HTML as a starting point, create a simple page
    with Javascript that allows a user to add another record to the table. The table
    should be sorted by name and the new record should be posted to `/members`.

    You are free to modify the table HTML or add any additional HTML as you see fit.
    Please list any Javascript libraries you use.

    ```html
    <table>
        <thead> <tr>
            <th>Name</th> <th>Status</th>
        </tr> </thead>
        <tbody> <tr>
            <td>Appleseed, Johnny</td> <td>Approved</td>
        </tr> </tbody>
    </table>
    ```

    My solution uses jQuery with an Underscore template.

3.  We have an application that we want to improve by allowing users to create
    events. Users should be able to create an event, invite people to it, and
    receive RSVPs from them. Provide an [entity-relationship model][1] showing
    the database tables and fields necessary to implement this feature. Then
    describe how your model handles recurring events, including the benefits
    and trade-offs of your approach.

[1]: http://en.wikipedia.org/wiki/Entity–relationship_model

Included is an ERM (using railroady gem) of an event application that I built in Rails. 
Attendees must sign in to RSVP for an event created by the event creator. A list of 
attendees is then shown in the event view. An Event belongs_to :event_series and an Event_series 
has_many :events.

An event creator is given the option to schedule the event as recurring, with an id 
assigned to this event series which allows for editing and cancelling. In addition to 
having a starttime and endtime, the recurring event has a type (daily, weekly, monthly, 
yearly, up to 5 years into the future). In addition to the type, the event series has a 
frequency column from 1 to 30 to specify repetition of the recurring event type. 
The occurences of a recurring event are calculated using date functions and saved in the database. 
This approach albeit with limitations, allows for the majority of use cases. 
A different approach would be to store each occurence of an event individually and generate the 
recurring events individually when needed in the view. However I do not have any experience 
implementing a caching system to do this.