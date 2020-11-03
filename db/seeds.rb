tracker = Tracker.create(day: 'Tuesday', date: Date.today, totalcal: 0)

food = Food.create(tracker_id: 1, name: 'apple', calories: 50)

food_two = Food.create(tracker_id: 1, name: 'soup', calories: 250)

food_three = Food.create(tracker_id: 1, name: 'ice cream')
