clc
clear


% ************************************************
% *  Name:  Ashley Pratt   Date:  09/31/19       *
% *  Seat/Table:  00    File: Mastermind_game.m  *
% *  Instructor:  Krista Kecskemety 9:10         *                     
% ************************************************

fprintf('M * A * S * T * E * R * M * I * N * D\nCreated By Ashley Pratt\n')

wantToPlay = input('Would you like to play? Answer "yes" or "no" (case sensitive): ', 's');

i = 1;       % iteration counter

while (strcmp(wantToPlay,'yes'))   % compare strings; if they are equal, will evaluate to true and while loop will be executed
    
% solution values and array
key1 = randi([1,5]);
key2 = randi([1,5]);
key3 = randi([1,5]);
key4 = randi([1,5]);

solutionCode = [key1, key2, key3, key4];       % put values into array to simplify process of checking if userCode and solutionCode match

% get user values for each position and put into array
pos1 = getPosVal(1);
pos2 = getPosVal(2);
pos3 = getPosVal(3);
pos4 = getPosVal(4);


userCode = [pos1, pos2, pos3, pos4];  

while (~isequal(userCode, solutionCode) && i <= 9)  % isequal() operator compares two arrays and checks for equality; ~ in front indicates we are checking for their INequality
    
    % check pos1
   if (pos1 == key1)
       fprintf('Your guess for Position 1 is correct.\n')
   else
       fprintf('Your guess for Position 1 is incorrect.\n')
   end
   
   % check pos2
   if (pos2 == key2)
       fprintf('Your guess for Position 2 is correct.\n')
   else
       fprintf('Your guess for Position 2 is incorrect.\n')
   end
   
   % check pos3
   if (pos3 == key3)
       fprintf('Your guess for Position 3 is correct.\n')
   else
       fprintf('Your guess for Position 3 is incorrect.\n')
   end
  
   % check pos4
   if (pos4 == key4)
       fprintf('Your guess for Position 4 is correct.\n')
   else
       fprintf('Your guess for Position 4 is incorrect.\n')
   end
   
   % renew variables
   pos1 = getPosVal(1);
   pos2 = getPosVal(2);
   pos3 = getPosVal(3);
   pos4 = getPosVal(4);

   userCode = [pos1, pos2, pos3, pos4];
   
   i = i + 1;
   
end

% print ending messages

if (~isequal(userCode, solutionCode) && i >= 9)
    
    fprintf('Sorry, you lost.\n')
    
else
    
    fprintf('Congratulations, you won!\n')
end

wantToPlay = input('Want to play again? Answer "yes" or "no" (case sensitive): ', 's');

end


% function to get user values for each position; posX is return value;
% posVal is position number that we are getting input for

function posX = getPosVal(posVal)

fprintf('Enter a value for position %.d ', posVal)
posX = input('on the interval [1,5]: ');

while (posX < 1 || posX > 5)                % checking that posX is within interval
    fprintf('Invalid value entered. Try again.\n')
    fprintf('Enter a value for position %.d ', posVal)
    posX = input('on the interval [1,5]: ');

end

end

% % how I would write this in C++ (I'm lowkey skipping the function prototype step and combining it and the definition):
% % int getPosVal(int posVal) {
% %     int posX;
% %     cout << "Enter a value for position " >> posVal >> " on the interval [1,5]: ";
% %     cin >> posX;
% % 
% %     while (posX < 1 || posX > 5) {
% %         cout << "Invalid value entered. Try again." << endl;
% %         cout << "Enter a value for position " << posVal << " on the interval [1,5]: ";
% %         cin >> posX;
% %     }
% %
% %     return (posX);
% % }

