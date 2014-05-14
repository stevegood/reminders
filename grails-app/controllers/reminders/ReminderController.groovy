package reminders

class ReminderController {

    def grailsApplication

    def index() {
        def reminders = []
        withRest(uri: grailsApplication.config.firebase.url) {
            get(path: '/todo.json'){ resp, json ->
                json.each { k, v ->
                    reminders << new Reminder(id: k, name: v.name, description: v.description, done: v.done)
                }
            }
        }
        [reminders: reminders]
    }
}
