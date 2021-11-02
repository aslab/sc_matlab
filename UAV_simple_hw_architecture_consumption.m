function UAV_simple_hw_architecture_2(instance,varargin)
% UAV_simple_hw_architecture_2 Example Analysis Function

if instance.isComponent()
    for child = instance.Components % iterate through components
        if child.hasValue("electronicBoard.expectedLife")
            if child.getValue("electronicBoard.expectedLife") < 12
                child.setValue("electronicBoard.expectedLife", 0) % not valid component
            end
        end

        if child.hasValue("otherComponent.expectedLife")
            if child.getValue("otherComponent.expectedLife") < 12
                child.setValue("otherComponent.expectedLife", 0) % not valid component
            end
        end

        if child.hasValue("sensor.expectedLife")
            if child.getValue("sensor.expectedLife") < 2
                child.setValue("sensor.expectedLife", 0) % not valid component
            end
        end
    end

 
end
end
