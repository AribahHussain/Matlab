disp('Welcome to the Bill Splitter Application!');
totalBill = input('Enter the total bill amount (in rupees): ');
numPeople = input('Enter the number of people sharing the bill: ');
tipPercentage = input('Enter the tip percentage (default is 0): ');
if isempty(tipPercentage)
    tipPercentage = 0;
end
totalWithTip = totalBill + (totalBill * tipPercentage / 100);
sharePerPerson = totalWithTip / numPeople;
fprintf('Total bill (including tip): %.2f rupees\n', totalWithTip);
fprintf('Each person needs to pay: %.2f rupees\n', sharePerPerson);
disp('---Optional Individual Payments---');
individualPayments = zeros(1, numPeople);
for i = 1:numPeople
    individualPayments(i) = input(sprintf('Enter the amount paid by person %d: ', i));
end
totalPaid = sum(individualPayments);
if totalPaid == totalWithTip
    disp('The bill is settled perfectly. Thank you!');
else
    fprintf('There is a mismatch. Total paid is: %.2f rupees\n', totalPaid);
    fprintf('Difference: %.2f rupees\n', totalWithTip - totalPaid);
end