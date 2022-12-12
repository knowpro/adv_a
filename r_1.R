cars=read.csv("C:\\Users\\admin\\Desktop\\Cars93.csv")
tble_cars
tble_cars=as_tibble(cars)
arrange(tble_cars,desc(Manufacturer), Model)

filter(tble_cars,Manufacturer %in% c("Audi","Volvo") & Max.Price >25)

filter(tble_cars,Manufacturer %in% c("Audi","Volvo") | Max.Price >25)

select(filter(tble_cars,Manufacturer %in% c("Audi","Volvo") & Max.Price >25),
       Manufacturer, Max.Price)

select(filter(tble_cars,Manufacturer %in% c("Audi","Volvo") & Max.Price >25),
       Manufacturer: Price)

rename(tble_cars, mf=Manufacturer,md=Model,mp=Max.Price)
 q4