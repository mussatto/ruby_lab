class DataCreator

    def createRandomArray(size)
        array = Array.new(size)
        for i in 0..size-1
            array[i]=Random.rand(1000)
        end
        
        return array
        
    end
end

class InsertSort
    
    def sortArray(unsortedArray)
        newArray = Array.new(unsortedArray.length)
        
        for i in 0..unsortedArray.length-1
            newArray[i] = findLesser(unsortedArray)
            unsortedArray.delete(newArray[i])
        end
        
        return newArray
    end
    
    def findLesser(array)
        
        lesser=array[0]
        
        
        for i in 0..array.length-1
            if(array[i] < lesser)
                lesser = array[i]
            end
        end
        
        return lesser
    end
end

def printArray(array)
    index = 0
    for i in array
        puts "array[#{index}]=#{i}"
        index=index+1
    end
end

creator = DataCreator.new
sorter = InsertSort.new

array = creator.createRandomArray(10)
sortedArray = sorter.sortArray(array)

index = 0

printArray(array)


printArray(sortedArray)


puts "end"