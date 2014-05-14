package reminders

/**
 * Created by steve on 5/13/14.
 */
class Reminder {
    String id
    String name
    String description
    boolean done

    String toString() {
        "$id : $name : $done : $description"
    }
}
