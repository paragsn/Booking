# booking
-There are 2 separate modules for Backend(Booking-Backend) and Frontend(BookingUI)
-BookingUI is made up of AngularJS and TypeScript and it comminicates with backend via REST API
-REST is implemented in Booking-Backend via Jersey 

-Booking UI
There are 2 components
1. Booking Component - It takes input as Customer details
2. Table Component - It shows the current status of all the Drivers

-Booking Backend
Rest is implemented with Jersey
BookingService - All the Services are listed in here
BookingDao - All the dao methods are listed in here
Startup.java - Dependencies are injected from here
