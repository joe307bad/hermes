## Hermes
### Dashboard of personal content and self-specific functionalty to increase my productivity and organize/analyze various data

### ToDos:
- [ ] Update flow to record prices of bills
- [ ] Update flow to average prices of bills and average of totals
- [ ] Split project into Client/API sections
- [ ] Experiment with creating Phoenix/GraphQL docker container API
- [ ] Implement [Swagger for Pheonix](https://github.com/xerions/phoenix_swagger)
- [ ] Implement routing for different sections (Finances, Home Automation, To Dos)
- [ ] Investigate using  elm-static-html-lib (which may make using phoenix impossible)

### Potential Functionality:
* Goals (Habitca clone)
  * This may be good to start out with because it is essentially a CRUD example
* Finances (bill records, averages)
* ToDos (task, dates, notifications, daily goals)
* Pingdom stats (days of uptime, % uptime, longest streak of uptime)
* Server stats (remaining space, running containers, current downloads, trigger downloads, complete notifications)
* Home Automation
* Xbox friend activity
* Locations tracker (consecutive days at the gym)
* Work travel times
* Track releases of github repos
* Download manager (something that consumes file URLs and downloads them to JBHS)

### Potential Native App Functionality:
* Base off of [this starter](https://github.com/ueno-llc/react-native-starter) and implement CI, tests, etc.
  * Maybe use ReasonML bindings for RN
* Location tracking
* Version for friends/family to notify of new plex additions and planned downtime
* Random stuff like untappd comparisons?
* Geofencing to do actions when close to the house, gym, HBG home, etc.

### Data Tier Features:
* [Time series database](https://github.com/influxdata/influxdb)
* [MemSQL](https://www.memsql.com/)

### Resources:
* Structure: http://blog.jenkster.com/2016/04/how-i-structure-elm-apps.html

#### Why Hermes?
The Bada household's very own digital, [beloved bureaucrat](https://en.wikipedia.org/wiki/Hermes_Conrad)
