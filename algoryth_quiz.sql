-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 21, 2017 at 05:26 PM
-- Server version: 5.6.37
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `algoryth_quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `c`
--

CREATE TABLE `c` (
  `qid` int(11) NOT NULL,
  `question` varchar(60000) NOT NULL,
  `option_a` varchar(256) NOT NULL,
  `option_b` varchar(256) NOT NULL,
  `option_c` varchar(256) NOT NULL,
  `option_d` varchar(256) NOT NULL,
  `answer` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `c`
--

INSERT INTO `c` (`qid`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`) VALUES
(1, 'What will be output if you will execute following c code?\r\n\r\n#include<stdio.h>\r\nint main(){\r\n    int num,a=15;\r\n    num=- - - -a--;\r\n    printf(\"%d  %d\",num,a);\r\n    return 0;\r\n}', '15  14', '14  15', '14  14', '15  15', '15  14'),
(2, 'What will be output if you will execute following c code?\r\n\r\n#include<stdio.h>\r\nint main(){\r\n    printf(\"%d\",\"abcde\"-\"abcde\");\r\nreturn 0;\r\n}\r\n', '0', '-1', '1', 'Garbage', 'Garbage'),
(3, 'What will be output if you will execute following c code?\r\n\r\n#include<stdio.h>\r\nint main(){\r\n    int i;\r\n    for(i=0;i<5;i++){\r\n         int i=10;\r\n         printf(\" %d\",i);\r\n         i++;\r\n    }\r\n    return 0;\r\n}', '10 11 12 13 14', '10 10 10 10 10', '0 1 2 3 4', 'Compilation error', '10 10 10 10 10'),
(4, ' What is the output of the following program?\r\n\r\n#include<stdio.h>\r\n\r\nmain()\r\n{	\r\n    register int x = 5;\r\n\r\n    int *p;\r\n    p=&x;\r\n    x++;\r\n    printf(\"%d\",*p);\r\n}', ' Compiler Error', '5', '6', 'Garbage value', ' Compiler Error'),
(5, ' During preprocessing, the code â€œ#include<stdio.h>â€ gets replaced by the contents of the file stdio.h.\r\n', 'Yes', 'During linking the code â€œ#include<stdio.h>â€ replaces by stdio.h', ' During execution the code â€œ#include<stdio.h>â€ replaces by stdio.h', ' During editing the code â€œ#include<stdio.h>â€ replaces by stdio.h', 'Yes'),
(6, ' What is the output of the following program?\r\n\r\n#include<stdio.h>\r\n\r\nmain()\r\n{	\r\n   fprintf(stdout,\"Hello, World!\");\r\n}\r\n', 'Hello, World!', 'No output', 'Compile error', 'Runtime error', 'Hello, World!'),
(7, ' Which library functions help users to dynamically allocate memory?\r\n', 'memalloc()and alloc()', 'malloc() and memalloc()', 'malloc() and calloc()', ' memalloc() and calloc()', 'malloc() and calloc()'),
(8, 'The C language is-\r\n	', 'context free language', 'context sensitive language', 'regular language', 'Parsable fully only by a Turing machine', 'context free language'),
(9, 'Assume that the size of an integer is 4 bytes. Predict the output?\r\n#include <stdio.h>\r\nint fun()\r\n{\r\n    puts(\" Hello \");\r\n    return 10;\r\n}\r\n \r\nint main()\r\n{\r\n    printf(\"%d\", sizeof(fun()));\r\n    return 0;\r\n}\r\n', '4', 'Hello 4', '4 Hello', 'Compiler Error', '4'),
(10, 'What is the return type of malloc() or calloc()', 'void *', 'Pointer of allocated memory type', 'void **', 'int *', 'void *'),
(11, 'What is the problem with following code?\r\n#include<stdio.h>\r\nint main()\r\n{\r\n    int *p = (int *)malloc(sizeof(int));\r\n \r\n    p = NULL;\r\n \r\n    free(p);\r\n}', 'Compiler Error: free can\'t be applied on NULL pointer', 'Memory Leak', 'Dangling Pointer', 'The program may crash as free() is called for NULL pointer.', 'Memory Leak'),
(12, 'A program attempts to generate as many permutations as possible of the string,\r\n \'abcd\' by pushing the characters a, b, c, d in the same order onto a stack, \r\n but it may pop off the top character at any time. \r\n Which one of the following strings CANNOT be generated using this program?\r\n', 'abcd', 'dcba', 'cbad', 'cabd', 'cabd'),
(13, 'In the context of the following printf() in C, pick the best statement.\r\ni) printf(\"%d\",8);\r\nii) printf(\"%d\",090);\r\niii) printf(\"%d\",00200);\r\niv) printf(\"%d\",0007000);\r\n', 'Only i) would compile. And it will print 8.', 'Both i) and ii) would compile. i) will print 8 while ii) will print 90', 'All i), ii), iii) and iv) would compile successfully and they will print 8, 90, 200 & 7000 respectively.', 'Only i), iii) and iv) would compile successfully. They will  print 8,  	128 and 3584 respectively.', 'Only i), iii) and iv) would compile successfully. They will  print 8,  	128 and 3584 respectively.'),
(14, ' With respect to following â€œforâ€ loops in C, pick the best statement Assume that there is a prior declaration of \'i\' in all cases\r\nfor (i < 10; i = 0 ; i++) // (i)\r\nfor (i < 10; i++ ; i = 0) // (ii)\r\nfor (i = 0; i < 10 ; i++) // (iii)\r\nfor (i = 0; i++ ; i < 10) // (iv)\r\nfor (i++; i = 0 ; i < 10) // (v)\r\nfor (i++; i < 0 ; i = 10) // (vi)', ' All the above â€œforâ€ loops would compile successfully.', 'All the above â€œforâ€ loops would compile successfully.    Except (iii), the behaviour of all the other â€œforâ€ loops depend on    compiler implementation.', 'Only (iii) would compile successfully.', 'Only (iii) and (iv) would compile successfully.', ' All the above â€œforâ€ loops would compile successfully.'),
(15, 'Whatâ€™s going to happen when we compile and run the following C program?\r\n#include \"stdio.h\"\r\n \r\nint main()\r\n{\r\n  int i = 1, j;\r\n  for ( ; ; )\r\n  { \r\n    if (i)\r\n        j = --i;\r\n    if (j < 10)\r\n       printf(\"GeeksQuiz\", j++);\r\n    else\r\n       break;\r\n  }\r\n  return 0;\r\n}', 'Compile Error.', 'No compile error but it will run into infinite loop printing GeeksQuiz.', '.No compile error and itâ€™ll print GeeksQuiz 10 times.', 'No compile error but itâ€™ll print GeeksQuiz 9 times.', '.No compile error and itâ€™ll print GeeksQuiz 10 times.'),
(16, 'What would happen when we compile and run this program?\r\n#include \"stdio.h\"\r\nint main()\r\n{\r\n  int i; \r\n  goto LOOP;\r\n  for (i = 0 ; i < 10 ; i++)\r\n  {\r\n     printf(\"GeeksQuiz\\n\");\r\n     LOOP:\r\n      break;\r\n  }\r\n  return 0;\r\n}', 'No compile error and it will print GeeksQuiz 10 times because goto label LOOP wouldnâ€™t come in effect.', 'No compile error and itâ€™ll print GeeksQuiz only once because goto label LOOP would come in picture only after entering for loop.', 'Compile Error because any goto label isnâ€™t allowed in for loop in C.', 'No compile error and it will not print anything.', 'No compile error and it will not print anything.'),
(17, ' Suppose a C program has floating constant 1.414, what\'s the best way to convert this as \"float\" data type?\r\n', '(float)1.414', 'float(1.414)', '1.414f or 1.414F', '1.414 itself of \"float\" data type i.e. nothing else required.', '1.414f or 1.414F'),
(18, 'For a given integer, which of the following operators can be used to â€œsetâ€ and â€œresetâ€ a particular bit respectively?\r\n	', '| and &', '&& and ||', '& and |', '|| and &&', '| and &'),
(19, 'As per C language standard, which of the followings is/are not keyword(s)? Pick the best statement. auto make main sizeof elseif\r\n', 'None of the above is keywords in C.', 'make main elseif', 'make main', 'auto make', 'make main elseif'),
(20, 'Which of the following statement is correct for switch controlling expression?\r\n', 'Only int can be used in â€œswitchâ€ control expression.', 'Both int and char can be used in â€œswitchâ€ control expression.', 'All types i.e. int, char and float can be used in â€œswitchâ€ control expression.', 'â€œswitchâ€ control expression can be empty as well.', 'Both int and char can be used in â€œswitchâ€ control expression.'),
(21, 'Choose the best statement with respect to following three program snippets.\r\n/*Program Snippet 1 with for loop*/\r\nfor (i = 0; i < 10; i++)\r\n{\r\n   /*statement1*/\r\n   continue;\r\n   /*statement2*/\r\n}\r\n \r\n/*Program Snippet 2 with while loop*/\r\ni = 0;\r\nwhile (i < 10)\r\n{\r\n   /*statement1*/\r\n   continue;\r\n   /*statement2*/\r\n   i++;\r\n}\r\n \r\n/*Program Snippet 3 with do-while loop*/\r\ni = 0;\r\ndo\r\n{\r\n   /*statement1*/\r\n   continue;\r\n   /*statement2*/\r\n   i++;\r\n}while (i < 10);\r\n', 'All the loops are equivalent i.e. any of the three can be chosen and they all will perform exactly same.', 'continue can\'t be used with all the three loops in C.', 'After hitting the continue; statement in all the loops, the next expression to be executed would be controlling expression (i.e. i < 10) in all the 3 loops.', 'None of the above is correct.', 'None of the above is correct.'),
(22, ' Which of the following is correct with respect to â€œJump Statementsâ€ in C?\r\n', 'goto', 'continue', 'break', 'All of the above.', 'All of the above.'),
(23, ' In the context of C data types, which of the followings is correct?\r\n	', 'â€œunsigned long long intâ€ is a valid data type.', 'â€œlong long doubleâ€ is a valid data type.', 'â€œunsigned long doubleâ€ is a valid data type.', 'A), B) and C) all are valid data types.', 'â€œunsigned long long intâ€ is a valid data type.'),
(24, ' n the context of the below program snippet, pick the best answer.\r\n#include \"stdio.h\"\r\nint arr[10][10][10];\r\nint main()\r\n{\r\n arr[5][5][5] = 123;\r\n return 0;\r\n}\r\nWhich of the given printf statement(s) would be able to print arr[5][5][5]\r\n(i) printf(\"%d\",arr[5][5][5]);\r\n(ii) printf(\"%d\",*(*(*(arr+5)+5)+5));\r\n(iii) printf(\"%d\",(*(*(arr+5)+5))[5]);\r\n(iv) printf(\"%d\",*((*(arr+5))[5]+5));\r\n', 'only (i) would compile and print 123.', 'both (i) and (ii) would compile and both would print 123.', 'Only (i), (ii) and (iii) would compile but only (i) and (ii) would print 123.', 'all (i), (ii), (iii) and (iv) would compile and all would print 123', 'all (i), (ii), (iii) and (iv) would compile and all would print 123');

-- --------------------------------------------------------

--
-- Table structure for table `cpp`
--

CREATE TABLE `cpp` (
  `qid` int(11) NOT NULL,
  `question` varchar(60000) NOT NULL,
  `option_a` varchar(256) NOT NULL,
  `option_b` varchar(256) NOT NULL,
  `option_c` varchar(256) NOT NULL,
  `option_d` varchar(256) NOT NULL,
  `answer` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cpp`
--

INSERT INTO `cpp` (`qid`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`) VALUES
(1, 'Who won the nobel prize for literature in 2017?', 'Kazuo Ishiguro', 'Bob Dylan', 'Patrick Modiano', 'Alice Munro', 'Kazuo Ishiguro'),
(2, 'Who is the youngest IAS officer?', 'Dr. Roman Saini', 'Tina Dabi', 'Ansar Ahmad Shaikh', 'Swati Meena Naik', 'Ansar Ahmad Shaikh'),
(3, 'Which is the highest dam in India?', 'Bhakra Dam', 'Hirakud Dam', 'Nagarjuna Sagar Dam', 'Tehri Dam', 'Tehri Dam'),
(4, 'Which is the most computer friendly language?', 'Maithili', 'English', 'Sanskrit', 'Devnagri', 'Sanskrit'),
(5, 'Who is the first women defense minister of India?', 'Indira Gandhi', 'irmala Sitharaman', 'Sonia Gandhi', 'Mira Kumari', 'Indira Gandhi'),
(6, 'Who won the first Dadasaheb Phalke Award?', 'B.N. Sircar', 'Devika Rani', 'Prithviraj Kapoor', 'Pankaj Mullick', 'Devika Rani'),
(7, 'Who is the first women to be appointed as judge of high court?', 'V.P. Seemandini', 'Leila Seth', 'Violet Alva', 'K. K. Usha', 'Leila Seth'),
(8, 'Which country is not the member of SAARC?', 'India', 'Pakistan', 'China', 'Bhutan', 'China'),
(9, 'Which country is going to host the next winter Olympics?', 'South Korea', ' Breece', 'Australia', 'Switzerland', 'South Korea'),
(10, 'Who is the current CEO of Uber?', 'Travis Kalanick', 'Garratt Camp', 'Dara Khosrowshahi', 'Thuan Pham', 'Dara Khosrowshahi'),
(11, 'When Project Tiger was launched?', '1975', '1973', '1972', '1971', '1973'),
(12, 'When is the International Workerâ€™s Day?', '1st  May', '10th May', '10th April', '15th April', '1st  May'),
(13, 'Which is the natural longest beach of India?', 'Marari Beach', 'Puri Beach', 'Cherai Beach', 'Marina Beach', 'Marina Beach'),
(14, 'Who is the First Indian woman to win Chess Grand Master title?', 'Humpy Koneru', 'Harika Dronavalli', 'S. Vijayalaxmi', 'Hou Yifan', 'S. Vijayalaxmi'),
(15, 'Under which chief justice, Supreme Court was digitalize?', 'Dipak Misra', ' G.S. Kher', 'H.J. Kania', ' T.S. Thakur', ' G.S. Kher'),
(16, 'In which temperature the density of water is maximum?', '40C', '2730C', '360C', '1000C', '40C'),
(17, 'Which of the following is a non metal that remains liquid at room temperature?', 'Chorine', 'Sodium', 'Potassium', 'Bromine', 'Bromine'),
(18, 'Who invented the Ballpoint pen?', 'Biro Brothers', 'Alfred Nobel', 'Antonio Meucci', 'John Logie Baird', 'Biro Brothers'),
(19, 'The Indian to beat the computers in mathematical wizardry is\r\n', 'Shakunthala Devi', 'Vijay P. Bhatkar', 'Rashid Afridi', ' Keshav Deva Malviya', 'Shakunthala Devi'),
(20, 'Who is the youngest nobel peace prize winner?', 'Kailash Satyarthi', ' Barack Obama', ' Malala Yousafzai', 'Al Gore', ' Malala Yousafzai'),
(21, 'Who was the first Indian member of International Olympic Committee? ', 'Raja  Randhir Singh', 'Mr. Daniel Gyurta', 'Ms. Tricia Smith', 'Mrs.  Nita Ambani', 'Mrs.  Nita Ambani'),
(22, 'Virat Kohli, is the co-owner of which football team?', 'I-League', 'FC Goa', 'Delhi Dynamos', 'ATK', 'FC Goa'),
(23, 'Which Indian movie was nominated for the Oscar awards in 2017?', 'Newton', 'Baahubali-The Begining', 'Dangal', 'Hindi Medium', 'Newton'),
(24, 'The study of cancer is called as', 'Chronicology', 'Hematology', 'Anatony', 'Oncology', 'Oncology'),
(25, 'Who is the current railway minister of India?', 'Arun Jaitely', 'Suresh Prabhu', 'Piyush Goyal', 'Nitin Gadkari', 'Piyush Goyal');

-- --------------------------------------------------------

--
-- Table structure for table `java`
--

CREATE TABLE `java` (
  `qid` int(11) NOT NULL,
  `question` varchar(60000) NOT NULL,
  `option_a` varchar(256) NOT NULL,
  `option_b` varchar(256) NOT NULL,
  `option_c` varchar(256) NOT NULL,
  `option_d` varchar(256) NOT NULL,
  `answer` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `java`
--

INSERT INTO `java` (`qid`, `question`, `option_a`, `option_b`, `option_c`, `option_d`, `answer`) VALUES
(1, 'If it is possible to make only one meaningful word with the second, third, sixth and eighth letters of the word BASEMENT, which of the following will be the third letter of that word. If no such word can be made, give â€˜Xâ€™ as your answer and if more than one such word can be formed, give â€˜Yâ€™ as the answer.\r\n', 'X', 'Y', 'T', 'N', 'Y'),
(2, 'How many meaningful English words can be made with the letters ENAL using each letter only once in each word?\r\n', 'One', 'Two', 'Three', 'Four', 'Three'),
(3, 'In the following questions, select the related word/ letters/ number/ figure from the given alternatives.\r\n      KML : NPO :: CEO : ?\r\n', 'EGF', 'GHF', 'FHG ', 'HGF', 'FHG '),
(4, 'In the following question, three statements are given followed by four \r\n  conclusions I, II, III and IV. You have to consider the statements to be \r\n  true, even if they seem to be at variance from commonly known facts. \r\n  You have to decide which of the given conclusions, if any, follow from the \r\n  given statements.\r\nStatements\r\n1)	All bottles are boxes.\r\n2)	All boxes are bags.\r\n3)	Some bags are trays.\r\nConclusions\r\nI.	Some bottles are trays.\r\nII.	Some trays are boxes.\r\nIII.	All bottles are bags.\r\nIV.	Some trays are bags.', 'Only conclusion IV follows', 'Only conclusions III and IV follow ', 'Only conclusions I, III and IV follow', 'Only conclusions II and III follow', 'Only conclusions III and IV follow '),
(5, 'Gopal is older than Mohan but younger than Ram. Mohan is older than \r\n    Sohan but younger than Ram. Who is the oldest?', 'Gopal', 'Mohan', 'Sohan', 'Ram', 'Ram'),
(6, 'The sum of ages of 4 children born at intervals of 4 years each is 60.\r\n   What is the age of the youngest child?', '7', '9', '10', '12', '9'),
(7, 'In an examination candidates have appeared. Average of their marks is 47.\r\n   If the average marks of the qualified candidates is 74 and of the non \r\n   qualified candidates is 44, then find the percent of qualified candidates \r\n   in examination.', '9%', '10%', '12%', '15%', '10%'),
(8, 'How many different words can be formed with the letters of the word \r\n   â€˜BREAKINGâ€™ beginning with B and ending with G?', '820', '720', '560', '520', '720'),
(9, 'Which term does not fit in the given series?\r\n128, 384, 192, 576, 288, 884', '128', '384', '576', '884', '884'),
(10, 'In a row, Raj is twenty first from the left end and Shiv is fifteenth \r\n  from the right end. If they interchange their positions, \r\n  Shiv is twenty seventh from the right end. How many people are there in \r\n  the row?', '47', '45', '46', '48', '47');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `email` varchar(32) NOT NULL,
  `sem` int(1) NOT NULL,
  `branch` varchar(32) NOT NULL,
  `college` varchar(256) NOT NULL,
  `c` varchar(10) DEFAULT NULL,
  `cpp` varchar(10) DEFAULT NULL,
  `java` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_data`
--

INSERT INTO `user_data` (`email`, `sem`, `branch`, `college`, `c`, `cpp`, `java`) VALUES
('abhinavchauhan@gmail.com', 6, 'CSE', 'Govt.Engineering College,Bikaner', '', 'checked', 'checked'),
('akash1@gamil.com', 5, 'ECE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('akash@gamil.com', 5, 'EE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('amitesh@gmail.com', 3, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', '', ''),
('anjani@gmail.com', 1, 'CSE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('aryan@gmail.com', 5, 'EE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('ashfan@gmail.com', 3, 'CSE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('brijesh@gmail.com', 5, 'EE', 'Govt.Engineering College,Bikaner', '', '', 'checked'),
('chiranjeev@gmail.com', 1, 'CSE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('harshit@gmail.com', 1, 'CE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('harshita@gmail.com', 5, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', '', ''),
('ishan@gmail.com', 3, 'EE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('madhav@gmail.com', 3, 'CSE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('mahendra@gmail.com', 1, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', 'checked', 'checked'),
('manish@gmail.com', 3, 'ME', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('mohit1@gmail.com', 5, 'CSE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('mohit@gmail.com', 5, 'CSE', 'Govt.Engineering College,Bikaner', '', '', 'checked'),
('omprakash@gmail.com', 5, 'EE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('parshant@gamil.com', 3, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', '', ''),
('parshant@gmail.com', 3, 'CSE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('piyush@gmail.com', 3, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', 'checked', 'checked'),
('puran12@gmail.com', 5, 'CSE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('puran1@gmail.com', 1, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', 'checked', 'checked'),
('puran@gmail.com', 3, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', 'checked', 'checked'),
('rahul@gmail.com', 3, 'ME', 'Govt.Engineering College,Bikaner', 'checked', '', ''),
('ravi@gmail.com', 3, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', '', ''),
('rohit@gmail.com', 3, 'ECE', 'Govt.Engineering College,Bikaner', 'checked', '', ''),
('sourabh2@gmail.com', 3, 'EE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('sourabh@gmail.com', 1, 'EE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('tarun@cinstitute.org.in', 1, 'CSE', 'Govt.College of Engineering & Technology,Bikaner', 'checked', 'checked', 'checked'),
('vishal@gmail.com', 5, 'ECE', 'Govt.Engineering College,Bikaner', '', 'checked', ''),
('xyz@123', 1, 'CR', 'Govt.College of Engineering & Technology,Bikaner', 'checked', 'checked', 'checked'),
('yash1@gmail.com', 5, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', '', ''),
('yash@gmail.com', 1, 'CSE', 'Govt.Engineering College,Bikaner', 'checked', '', ''),
('yuvraj@gmail.com', 3, 'ME', 'Govt.Engineering College,Bikaner', '', 'checked', '');

-- --------------------------------------------------------

--
-- Table structure for table `user_signup`
--

CREATE TABLE `user_signup` (
  `id` int(11) NOT NULL,
  `email` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `passwd` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_signup`
--

INSERT INTO `user_signup` (`id`, `email`, `name`, `phone`, `passwd`) VALUES
(47, 'abhinavchauhan@gmail.com', 'Abhinav Chauhan ', 7000000004, '123'),
(72, 'akash1@gamil.com', 'akash1', 8440972531, 'algorythmic21'),
(49, 'akash@gamil.com', 'akash', 8440972537, 'algorythmic1'),
(56, 'amitesh@gmail.com', 'amitesh', 7240233819, 'algorythmic8'),
(52, 'anjani@gmail.com', 'anjani', 9828491881, 'algorythmic4'),
(71, 'aryan@gmail.com', 'aryan', 9982419387, 'algorythmic20'),
(69, 'ashfan@gmail.com', 'ashfan', 7414058628, 'algorythmic18'),
(59, 'brijesh@gmail.com', 'brijesh', 8078652100, 'algorythmic12'),
(55, 'chiranjeev@gmail.com', 'chiranjeev', 8411885029, 'algorythmic7'),
(50, 'harshit@gmail.com', 'harshit', 7062807266, 'algorythmic2'),
(57, 'harshita@gmail.com', 'harshita', 7821092718, 'algorythmic9'),
(76, 'ishan@gmail.com', 'ishan', 9521785658, 'algorythmic24'),
(81, 'madhav@gmail.com', 'madhav', 7611806183, 'algorythmic29'),
(58, 'mahendra@gmail.com', 'mahendra', 9694795031, 'algorythmic10'),
(53, 'manish@gmail.com', 'manish', 9782711601, 'algorythmic5'),
(75, 'mohit1@gmail.com', 'mohit1', 9636561318, 'algorythmic22'),
(60, 'mohit@gmail.com', 'mohit', 9461503445, 'algorythmic13'),
(64, 'omprakash@gmail.com', 'omprakash', 8003985297, 'algorythmic16'),
(80, 'parshant@gamil.com', 'parshant', 8769859159, 'algorythmic28'),
(84, 'parshant@gmail.com', 'parshant1', 8769859150, 'algorythmic30'),
(61, 'piyush@gmail.com', 'piyush', 7792982980, 'algorythmic14'),
(73, 'puran12@gmail.com', 'akash2', 7597268061, 'puran2'),
(67, 'puran1@gmail.com', 'a', 9636561319, 'puran1'),
(63, 'puran@gmail.com', 'puran', 9636561317, 'puran'),
(74, 'rahul@gmail.com', 'rahul', 7877274269, 'algorythmic23'),
(68, 'ravi@gmail.com', 'ravi', 7023007640, 'algorythmic17'),
(79, 'rohit@gmail.com', 'rohit', 9973708565, 'algorythmic27'),
(77, 'sourabh2@gmail.com', 'sourabh2', 7014895933, 'algorythmic25'),
(54, 'sourabh@gmail.com', 'sourabh', 8875504231, 'algorythmic6'),
(48, 'tarun@cinstitute.org.in', 'tarun verma', 7742817777, 'Tar@1509'),
(70, 'vishal@gmail.com', 'vishal', 8519047568, 'algorythmic19'),
(46, 'xyz@123', 'XYZ PQR', 7000000039, 'xyz'),
(78, 'yash1@gmail.com', 'yash1', 8696612432, 'algorythmic26'),
(51, 'yash@gmail.com', 'yash', 9024911200, 'algorythmic3'),
(62, 'yuvraj@gmail.com', 'yuvraj', 7014670932, 'algorythmic15');

-- --------------------------------------------------------

--
-- Table structure for table `_46_cpp_result`
--

CREATE TABLE `_46_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_46_cpp_result`
--

INSERT INTO `_46_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 1, 0, 0),
(2, 1, 0, 0),
(3, 1, 0, 0),
(4, 1, 0, 0),
(5, 1, 0, 0),
(6, 1, 0, 0),
(7, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_46_c_result`
--

CREATE TABLE `_46_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_46_c_result`
--

INSERT INTO `_46_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 1, 0, 0),
(4, 1, 0, 0),
(5, 1, 0, 0),
(6, 1, 0, 0),
(7, 1, 0, 0),
(8, 1, 0, 0),
(9, 1, 0, 0),
(10, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_46_java_result`
--

CREATE TABLE `_46_java_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL,
  `min` int(3) DEFAULT NULL,
  `sec` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_46_java_result`
--

INSERT INTO `_46_java_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`, `min`, `sec`) VALUES
(1, 1, 0, 0, 0, 6),
(2, 1, 0, 0, 0, 6),
(3, 1, 0, 0, 0, 6),
(4, 1, 0, 0, 0, 6),
(5, 1, 0, 0, 0, 6),
(6, 1, 0, 0, 0, 6),
(7, 1, 0, 0, 0, 6);

-- --------------------------------------------------------

--
-- Table structure for table `_47_cpp_result`
--

CREATE TABLE `_47_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_47_java_result`
--

CREATE TABLE `_47_java_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL,
  `min` int(3) DEFAULT NULL,
  `sec` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_47_java_result`
--

INSERT INTO `_47_java_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`, `min`, `sec`) VALUES
(1, 1, 0, 0, 0, 4),
(2, 1, 0, 0, 0, 4),
(3, 1, 0, 0, 0, 4),
(4, 1, 0, 0, 0, 4),
(5, 1, 0, 0, 0, 4),
(6, 1, 0, 0, 0, 4),
(7, 0, 1, 0, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `_48_cpp_result`
--

CREATE TABLE `_48_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_48_c_result`
--

CREATE TABLE `_48_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_48_java_result`
--

CREATE TABLE `_48_java_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL,
  `min` int(3) DEFAULT NULL,
  `sec` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_49_cpp_result`
--

CREATE TABLE `_49_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_50_cpp_result`
--

CREATE TABLE `_50_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_50_cpp_result`
--

INSERT INTO `_50_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 1, 0),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 0, 1),
(12, 0, 1, 0),
(13, 0, 0, 1),
(14, 0, 1, 0),
(15, 0, 0, 1),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 0, 1),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_51_c_result`
--

CREATE TABLE `_51_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_51_c_result`
--

INSERT INTO `_51_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 1, 0, 0),
(2, 0, 1, 0),
(3, 0, 0, 1),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 1, 0, 0),
(13, 1, 0, 0),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 1, 0),
(21, 0, 0, 1),
(22, 0, 1, 0),
(23, 0, 0, 1),
(24, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_52_cpp_result`
--

CREATE TABLE `_52_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_52_cpp_result`
--

INSERT INTO `_52_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 0, 1, 0),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 1, 0, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 1, 0),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 0, 1),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 1, 0, 0),
(22, 0, 1, 0),
(23, 1, 0, 0),
(24, 0, 1, 0),
(25, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_53_cpp_result`
--

CREATE TABLE `_53_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_53_cpp_result`
--

INSERT INTO `_53_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 1, 0),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 1, 0),
(18, 0, 1, 0),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 0, 1),
(24, 0, 1, 0),
(25, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_54_cpp_result`
--

CREATE TABLE `_54_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_54_cpp_result`
--

INSERT INTO `_54_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 1, 0),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 1, 0),
(9, 1, 0, 0),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 1, 0),
(13, 0, 0, 1),
(14, 0, 1, 0),
(15, 0, 0, 1),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 0, 1),
(19, 1, 0, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 1, 0),
(24, 0, 1, 0),
(25, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_55_cpp_result`
--

CREATE TABLE `_55_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_55_cpp_result`
--

INSERT INTO `_55_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 1, 0),
(11, 0, 0, 1),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 0, 1),
(15, 0, 1, 0),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 1, 0),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_56_c_result`
--

CREATE TABLE `_56_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_56_c_result`
--

INSERT INTO `_56_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 1, 0),
(5, 0, 1, 0),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 1, 0),
(12, 1, 0, 0),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 1, 0, 0),
(19, 0, 1, 0),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 1, 0),
(23, 0, 0, 1),
(24, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_57_c_result`
--

CREATE TABLE `_57_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_57_c_result`
--

INSERT INTO `_57_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 1, 0, 0),
(2, 0, 1, 0),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 1, 0),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 1, 0, 0),
(15, 0, 0, 1),
(16, 1, 0, 0),
(17, 0, 0, 1),
(18, 1, 0, 0),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 1, 0),
(24, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_58_cpp_result`
--

CREATE TABLE `_58_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_58_cpp_result`
--

INSERT INTO `_58_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 1, 0),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 1, 0),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 1, 0),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 1, 0),
(24, 0, 0, 1),
(25, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_58_c_result`
--

CREATE TABLE `_58_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_58_c_result`
--

INSERT INTO `_58_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 1, 0),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 1, 0),
(16, 0, 0, 1),
(17, 0, 1, 0),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_58_java_result`
--

CREATE TABLE `_58_java_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL,
  `min` int(3) DEFAULT NULL,
  `sec` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_58_java_result`
--

INSERT INTO `_58_java_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`, `min`, `sec`) VALUES
(1, 0, 1, 0, 0, 21),
(2, 0, 1, 0, 0, 21),
(3, 0, 1, 0, 0, 21),
(4, 0, 0, 1, 0, 21),
(5, 0, 0, 1, 0, 21),
(6, 0, 0, 1, 0, 21),
(7, 0, 1, 0, 0, 21),
(8, 0, 0, 1, 0, 21),
(9, 0, 0, 1, 0, 21),
(10, 0, 1, 0, 0, 21);

-- --------------------------------------------------------

--
-- Table structure for table `_59_java_result`
--

CREATE TABLE `_59_java_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL,
  `min` int(3) DEFAULT NULL,
  `sec` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_59_java_result`
--

INSERT INTO `_59_java_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`, `min`, `sec`) VALUES
(1, 0, 1, 0, 23, 28),
(2, 0, 0, 1, 23, 28),
(3, 0, 1, 0, 23, 28),
(4, 0, 1, 0, 23, 28),
(5, 0, 1, 0, 23, 28),
(6, 0, 1, 0, 23, 28),
(7, 0, 0, 1, 23, 28),
(8, 0, 1, 0, 23, 28),
(9, 0, 0, 1, 23, 28),
(10, 0, 1, 0, 23, 28);

-- --------------------------------------------------------

--
-- Table structure for table `_60_java_result`
--

CREATE TABLE `_60_java_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL,
  `min` int(3) DEFAULT NULL,
  `sec` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_60_java_result`
--

INSERT INTO `_60_java_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`, `min`, `sec`) VALUES
(1, 0, 1, 0, 21, 51),
(2, 0, 1, 0, 21, 51),
(3, 0, 1, 0, 21, 51),
(4, 0, 0, 1, 21, 51),
(5, 0, 0, 1, 21, 51),
(6, 0, 1, 0, 21, 51),
(7, 0, 0, 1, 21, 51),
(8, 0, 1, 0, 21, 51),
(9, 0, 1, 0, 21, 51),
(10, 0, 0, 1, 21, 51);

-- --------------------------------------------------------

--
-- Table structure for table `_61_cpp_result`
--

CREATE TABLE `_61_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_61_cpp_result`
--

INSERT INTO `_61_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 1, 0, 0),
(6, 0, 1, 0),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 0, 1),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 1, 0, 0),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_61_c_result`
--

CREATE TABLE `_61_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_61_c_result`
--

INSERT INTO `_61_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 1, 0, 0),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 1, 0, 0),
(10, 0, 0, 1),
(11, 0, 1, 0),
(12, 0, 0, 1),
(13, 1, 0, 0),
(14, 1, 0, 0),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 1, 0),
(18, 0, 0, 1),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 1, 0, 0),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_61_java_result`
--

CREATE TABLE `_61_java_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL,
  `min` int(3) DEFAULT NULL,
  `sec` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_61_java_result`
--

INSERT INTO `_61_java_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`, `min`, `sec`) VALUES
(1, 0, 1, 0, 25, 0),
(2, 0, 1, 0, 25, 0),
(3, 0, 1, 0, 25, 0),
(4, 1, 0, 0, 25, 0),
(5, 0, 1, 0, 25, 0),
(6, 0, 1, 0, 25, 0),
(7, 1, 0, 0, 25, 0),
(8, 0, 1, 0, 25, 0),
(9, 1, 0, 0, 25, 0),
(10, 0, 1, 0, 25, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_62_cpp_result`
--

CREATE TABLE `_62_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_62_cpp_result`
--

INSERT INTO `_62_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 1, 0),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 0, 1, 0),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 1, 0),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 1, 0),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 1, 0),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 0, 1),
(24, 0, 1, 0),
(25, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_63_cpp_result`
--

CREATE TABLE `_63_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_63_cpp_result`
--

INSERT INTO `_63_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_63_c_result`
--

CREATE TABLE `_63_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_63_c_result`
--

INSERT INTO `_63_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 0, 1),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 1, 0),
(13, 0, 0, 1),
(14, 0, 1, 0),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 1, 0),
(23, 0, 0, 1),
(24, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_63_java_result`
--

CREATE TABLE `_63_java_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL,
  `min` int(3) DEFAULT NULL,
  `sec` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_64_cpp_result`
--

CREATE TABLE `_64_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_64_cpp_result`
--

INSERT INTO `_64_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 0, 1),
(8, 0, 1, 0),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 1, 0),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 0, 1),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 1, 0),
(24, 0, 1, 0),
(25, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_67_cpp_result`
--

CREATE TABLE `_67_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_67_c_result`
--

CREATE TABLE `_67_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_67_c_result`
--

INSERT INTO `_67_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_67_java_result`
--

CREATE TABLE `_67_java_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL,
  `min` int(3) DEFAULT NULL,
  `sec` int(2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_68_c_result`
--

CREATE TABLE `_68_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_68_c_result`
--

INSERT INTO `_68_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 1, 0),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 1, 0, 0),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 1, 0),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 1, 0),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_69_cpp_result`
--

CREATE TABLE `_69_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_69_cpp_result`
--

INSERT INTO `_69_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 1, 0),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 0, 1),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 1, 0),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 1, 0),
(24, 0, 0, 1),
(25, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_70_cpp_result`
--

CREATE TABLE `_70_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_71_cpp_result`
--

CREATE TABLE `_71_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_71_cpp_result`
--

INSERT INTO `_71_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 1, 0, 0),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 1, 0, 0),
(18, 0, 0, 1),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 1, 0),
(24, 0, 1, 0),
(25, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_72_cpp_result`
--

CREATE TABLE `_72_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `_73_cpp_result`
--

CREATE TABLE `_73_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_73_cpp_result`
--

INSERT INTO `_73_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 0, 1),
(5, 0, 1, 0),
(6, 0, 0, 1),
(7, 0, 1, 0),
(8, 0, 1, 0),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 0, 1),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 1, 0),
(24, 0, 1, 0),
(25, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_74_c_result`
--

CREATE TABLE `_74_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_74_c_result`
--

INSERT INTO `_74_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 1, 0),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 1, 0),
(17, 0, 0, 1),
(18, 0, 1, 0),
(19, 0, 0, 1),
(20, 0, 1, 0),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_75_cpp_result`
--

CREATE TABLE `_75_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_75_cpp_result`
--

INSERT INTO `_75_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 1, 0, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 0, 1),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 1, 0),
(16, 0, 1, 0),
(17, 0, 0, 1),
(18, 0, 1, 0),
(19, 0, 0, 1),
(20, 0, 0, 1),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 1, 0),
(24, 0, 0, 1),
(25, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_76_cpp_result`
--

CREATE TABLE `_76_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_76_cpp_result`
--

INSERT INTO `_76_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 1, 0),
(9, 1, 0, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 0, 1),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 1, 0),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 0, 1),
(24, 0, 0, 1),
(25, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_77_cpp_result`
--

CREATE TABLE `_77_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_77_cpp_result`
--

INSERT INTO `_77_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 0, 1, 0),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 1, 0),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 1, 0),
(16, 0, 1, 0),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 1, 0),
(24, 0, 1, 0),
(25, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_78_c_result`
--

CREATE TABLE `_78_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_78_c_result`
--

INSERT INTO `_78_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 1, 0),
(3, 0, 0, 1),
(4, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_79_c_result`
--

CREATE TABLE `_79_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_79_c_result`
--

INSERT INTO `_79_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 1, 0),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 0, 1),
(6, 1, 0, 0),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 1, 0),
(18, 0, 1, 0),
(19, 1, 0, 0),
(20, 0, 1, 0),
(21, 0, 0, 1),
(22, 0, 0, 1),
(23, 0, 0, 1),
(24, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_80_c_result`
--

CREATE TABLE `_80_c_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_80_c_result`
--

INSERT INTO `_80_c_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 0, 1),
(2, 0, 0, 1),
(3, 0, 0, 1),
(4, 0, 0, 1),
(5, 0, 1, 0),
(6, 0, 0, 1),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 0, 1),
(10, 0, 1, 0),
(11, 0, 0, 1),
(12, 0, 0, 1),
(13, 0, 0, 1),
(14, 0, 0, 1),
(15, 0, 0, 1),
(16, 0, 0, 1),
(17, 0, 0, 1),
(18, 0, 0, 1),
(19, 0, 0, 1),
(20, 0, 1, 0),
(21, 1, 0, 0),
(22, 0, 1, 0),
(23, 0, 0, 1),
(24, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `_81_cpp_result`
--

CREATE TABLE `_81_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_81_cpp_result`
--

INSERT INTO `_81_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 0, 1),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 1, 0),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 1, 0),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 1, 0),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 1, 0),
(24, 0, 1, 0),
(25, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `_84_cpp_result`
--

CREATE TABLE `_84_cpp_result` (
  `qid` int(11) NOT NULL,
  `not_attempt` int(1) DEFAULT NULL,
  `is_right` int(1) DEFAULT NULL,
  `is_wrong` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `_84_cpp_result`
--

INSERT INTO `_84_cpp_result` (`qid`, `not_attempt`, `is_right`, `is_wrong`) VALUES
(1, 0, 1, 0),
(2, 0, 0, 1),
(3, 0, 1, 0),
(4, 0, 1, 0),
(5, 0, 0, 1),
(6, 0, 1, 0),
(7, 0, 1, 0),
(8, 0, 1, 0),
(9, 0, 1, 0),
(10, 0, 1, 0),
(11, 0, 0, 1),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 0, 1, 0),
(15, 0, 1, 0),
(16, 0, 1, 0),
(17, 0, 1, 0),
(18, 0, 1, 0),
(19, 0, 1, 0),
(20, 0, 1, 0),
(21, 0, 1, 0),
(22, 0, 1, 0),
(23, 0, 1, 0),
(24, 0, 1, 0),
(25, 0, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `c`
--
ALTER TABLE `c`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `cpp`
--
ALTER TABLE `cpp`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `java`
--
ALTER TABLE `java`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_signup`
--
ALTER TABLE `user_signup`
  ADD PRIMARY KEY (`email`),
  ADD UNIQUE KEY `id` (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `_46_cpp_result`
--
ALTER TABLE `_46_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_46_c_result`
--
ALTER TABLE `_46_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_46_java_result`
--
ALTER TABLE `_46_java_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_47_cpp_result`
--
ALTER TABLE `_47_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_47_java_result`
--
ALTER TABLE `_47_java_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_48_cpp_result`
--
ALTER TABLE `_48_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_48_c_result`
--
ALTER TABLE `_48_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_48_java_result`
--
ALTER TABLE `_48_java_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_49_cpp_result`
--
ALTER TABLE `_49_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_50_cpp_result`
--
ALTER TABLE `_50_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_51_c_result`
--
ALTER TABLE `_51_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_52_cpp_result`
--
ALTER TABLE `_52_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_53_cpp_result`
--
ALTER TABLE `_53_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_54_cpp_result`
--
ALTER TABLE `_54_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_55_cpp_result`
--
ALTER TABLE `_55_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_56_c_result`
--
ALTER TABLE `_56_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_57_c_result`
--
ALTER TABLE `_57_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_58_cpp_result`
--
ALTER TABLE `_58_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_58_c_result`
--
ALTER TABLE `_58_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_58_java_result`
--
ALTER TABLE `_58_java_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_59_java_result`
--
ALTER TABLE `_59_java_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_60_java_result`
--
ALTER TABLE `_60_java_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_61_cpp_result`
--
ALTER TABLE `_61_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_61_c_result`
--
ALTER TABLE `_61_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_61_java_result`
--
ALTER TABLE `_61_java_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_62_cpp_result`
--
ALTER TABLE `_62_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_63_cpp_result`
--
ALTER TABLE `_63_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_63_c_result`
--
ALTER TABLE `_63_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_63_java_result`
--
ALTER TABLE `_63_java_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_64_cpp_result`
--
ALTER TABLE `_64_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_67_cpp_result`
--
ALTER TABLE `_67_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_67_c_result`
--
ALTER TABLE `_67_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_67_java_result`
--
ALTER TABLE `_67_java_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_68_c_result`
--
ALTER TABLE `_68_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_69_cpp_result`
--
ALTER TABLE `_69_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_70_cpp_result`
--
ALTER TABLE `_70_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_71_cpp_result`
--
ALTER TABLE `_71_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_72_cpp_result`
--
ALTER TABLE `_72_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_73_cpp_result`
--
ALTER TABLE `_73_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_74_c_result`
--
ALTER TABLE `_74_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_75_cpp_result`
--
ALTER TABLE `_75_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_76_cpp_result`
--
ALTER TABLE `_76_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_77_cpp_result`
--
ALTER TABLE `_77_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_78_c_result`
--
ALTER TABLE `_78_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_79_c_result`
--
ALTER TABLE `_79_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_80_c_result`
--
ALTER TABLE `_80_c_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_81_cpp_result`
--
ALTER TABLE `_81_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `_84_cpp_result`
--
ALTER TABLE `_84_cpp_result`
  ADD PRIMARY KEY (`qid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `c`
--
ALTER TABLE `c`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `cpp`
--
ALTER TABLE `cpp`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `java`
--
ALTER TABLE `java`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `user_signup`
--
ALTER TABLE `user_signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `user_data`
--
ALTER TABLE `user_data`
  ADD CONSTRAINT `user_data_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user_signup` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
