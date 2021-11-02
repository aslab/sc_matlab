
function UAV_simple_hw_architecture_sensor_price(instance,varargin)

if instance.isComponent()
     if instance.hasValue("sensor.price") % Check if price is defined
         price_per_instance = instance.getValue("sensor.price");
         for child = instance.Components % Iterate through all components
             if child.hasValue("sensor.price")
                 comp_price = child.getValue("sensor.price");
                 price_per_instance = price_per_instance + comp_price;
             end
         end
         instance.setValue("sensor.price",price_per_instance) % Set totals
     end
end
