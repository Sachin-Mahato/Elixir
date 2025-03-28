"use strict"

const finalValueAfterOperations = (operations) => {
    const result = operations.reduce((acc, operation) => 
        operation.includes("++") ? acc + 1 : acc - 1, 0
    );
    
    console.log(result);
};

finalValueAfterOperations(["--X","X++","X++"]);

