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

3.  We have an application that we want to improve by allowing users to create
    events. Users should be able to create an event, invite people to it, and
    receive RSVPs from them. Provide an [entity-relationship model][1] showing
    the database tables and fields necessary to implement this feature. Then
    describe how your model handles recurring events, including the benefits
    and trade-offs of your approach.

[1]: http://en.wikipedia.org/wiki/Entity–relationship_model