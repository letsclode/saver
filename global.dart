
import 'dart:convert';
String currentCat = "";
double score = 0.0;
List savedPlayers = [];
List<String> savedScoores = [];
List savedScores = [{"name":"null","score": 0},{"name":"null","score": 0},{"name":"null","score": 0},{"name":"null","score": 0},{"name":"null","score": 0}];
List players = [];
JsonEncoder jsonEconders;
List questionArray = [
  {
    "category_name":"English",
    "category_img":"assets/images/english.png",
    "grade":[
      {
        "difficulty_name":"Grade 1",
        "grade_desc" : "The first grade is the first school year in Elementary school after Kindergarten. Children who are usually 6 to 7 years old are enrolled for this grade. ... Additionally, first graders are taught basic reading skills with the focus on reading and writing simple statements.",
        "diff-avatar": "assets/images/grade1.png",
        "content":{
           "easy":[
           		// Q1
          {
            "q_img": "assets/images/english/eng.jpg",
            "question":".Which letters BEST complete the word below? \n spar__________",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"kle"
              },
              {
                "choice_id":"2",
                "choice_content":"klee"
              },
              {
                "choice_id":"3",
                "choice_content":"kele"
              },
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which letters BEST complete the word below? \n han___________",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dle"
              },
              {
                "choice_id":"2",
                "choice_content":"dlee"
              },
              {
                "choice_id":"3",
                "choice_content":"ple"
              },
              
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which letters BEST completes the word below? \n gig__________",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lle"
              },
              {
                "choice_id":"2",
                "choice_content":"gle"
              },
              {
                "choice_id":"3",
                "choice_content":"mle"
              },
           
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"We are  __________ how to fly a kite.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"laughing"
              },
              {
                "choice_id":"2",
                "choice_content":"learning"
              },
               {
                "choice_id":"3",
                "choice_content":"jumping"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Phil is six __________ old.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"yarn"
              },
              {
                "choice_id":"2",
                "choice_content":"years"
              },
               {
                "choice_id":"3",
                "choice_content":"year"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The _________ chick needs its parents.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"your"
              },
              {
                "choice_id":"2",
                "choice_content":"young"
              },
              {
                "choice_id":"3",
                "choice_content":"yawn"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"You have to wait ________ supper is over to play games..",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"until"
              },
              {
                "choice_id":"2",
                "choice_content":"upper"
              },
               {
                "choice_id":"3",
                "choice_content":"lower"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Sonny and Baek  ___  eating ice cream.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Are"
              },
              {
                "choice_id":"2",
                "choice_content":"Is"
              },
               {
                "choice_id":"3",
                "choice_content":"Am"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The moon comes out at __________.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"next"
              },
              {
                "choice_id":"2",
                "choice_content":"night"
              },
               {
                "choice_id":"3",
                "choice_content":"previous"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
               {
                "choice_id":"3",
                "choice_content":"running"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which might make you \"giggle\"?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Baking cookies with your mom"
              },
              {
                "choice_id":"2",
                "choice_content":"Getting tickled by a feather"
              },
               {
                "choice_id":"3",
                "choice_content":"Walking with friends"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"looking"
              },
              {
                "choice_id":"3",
                "choice_content":"redalert"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What does the word \"replay\" mean in the sentence below?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"not play"
              },
              {
                "choice_id":"2",
                "choice_content":"play again"
              },
                {
                "choice_id":"3",
                "choice_content":"play"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A pencil is:?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"smooth"
              },
              {
                "choice_id":"2",
                "choice_content":"pointed"
              },
               {
                "choice_id":"3",
                "choice_content":"heavy"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What a wonderful feast this is! \nWhat does feast mean?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to become less hard"
              },
              {
                "choice_id":"2",
                "choice_content":"a large meal"
              },
              {
                "choice_id":"3",
                "choice_content":"a small meal"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"When you "pause" you",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"continue doing something"
              },
              {
                "choice_id":"2",
                "choice_content":"stop completely."
              },
              {
                "choice_id":"3",
                "choice_content":"play something."
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
               {
                "choice_id":"3",
                "choice_content":"running"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"The middle of the earth is called the ________",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"core"
              },
              {
                "choice_id":"2",
                "choice_content":"plates"
              },
               {
                "choice_id":"3",
                "choice_content":"soil"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I ________ Tim singing a song",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"heard"
              },
              {
                "choice_id":"2",
                "choice_content":"because"
              },
               {
                "choice_id":"3",
                "choice_content":"eat"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
              {
                "choice_id":"3",
                "choice_content":"walking"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Brush your teeth _________ you go to bed.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"been"
              },
              {
                "choice_id":"2",
                "choice_content":"before"
              },
               {
                "choice_id":"3",
                "choice_content":"now"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I had to go to bed _________ I was sleepy.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"when"
              },
              {
                "choice_id":"2",
                "choice_content":"be"
              },
              {
                "choice_id":"3",
                "choice_content":"are"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"We learn in a _________",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"restaurant"
              },
              {
                "choice_id":"2",
                "choice_content":"classroom"
              },
              {
                "choice_id":"3",
                "choice_content":"restroom"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Lemons, butter and the sun are _________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"green"
              },
              {
                "choice_id":"2",
                "choice_content":"blue"
              },
               {
                "choice_id":"3",
                "choice_content":"yellow"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A _________ is someone you do not know",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"family member"
              },
              {
                "choice_id":"2",
                "choice_content":"classmate"
              },
               {
                "choice_id":"3",
                "choice_content":"stranger"
              },
            ],
          },
           ],
           "medium":[
           // Q1
          {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Adam shivered from the cold January wind. What does shiver mean?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to make up a story"
              },
              {
                "choice_id":"2",
                "choice_content":"to shake or tremble"
              },
              {
                "choice_id":"3",
                "choice_content":"to dance around"
              },
              {
                "choice_id":"3",
                "choice_content":"to cry around"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Zachary will assist the teacher in class today. What does assist mean?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"ignore"
              },
              {
                "choice_id":"2",
                "choice_content":"push"
              },
              {
                "choice_id":"3",
                "choice_content":"copy"
              },
              {
                "choice_id":"4",
                "choice_content":"help"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"My new reading teacher is a __________",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"rat"
              },
              {
                "choice_id":"2",
                "choice_content":"bat"
              },
              {
                "choice_id":"3",
                "choice_content":"bat"
              },
              {
                "choice_id":"4",
                "choice_content":"man"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My ___________ kite went up in the sky.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lie"
              },
              {
                "choice_id":"2",
                "choice_content":"pie"
              },
               {
                "choice_id":"3",
                "choice_content":"high"
              },
               {
                "choice_id":"4",
                "choice_content":"my"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"You have to ________ your mom's hand to cross the street.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"high"
              },
               {
                "choice_id":"3",
                "choice_content":"better"
              },
              {
                "choice_id":"4",
                "choice_content":"he"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you lose your paper, you must ________ it.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"return"
              },
              {
                "choice_id":"2",
                "choice_content":"rewrite"
              },
              {
                "choice_id":"3",
                "choice_content":"replay"
              },
              {
                "choice_id":"4",
                "choice_content":"destroy"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To breathe, eat, and grow means",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"live"
              },
              {
                "choice_id":"2",
                "choice_content":"plant"
              },
              {
                "choice_id":"3",
                "choice_content":"die"
              },
              {
                "choice_id":"4",
                "choice_content":"walk"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Bad things always happen to Matt. He is",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"unsafe"
              },
              {
                "choice_id":"2",
                "choice_content":"unlucky"
              },
                {
                "choice_id":"3",
                "choice_content":"unusual"
              },
              {
                "choice_id":"4",
                "choice_content":"lucky"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of loud?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"noisy"
              },
              {
                "choice_id":"2",
                "choice_content":"quiet"
              },
               {
                "choice_id":"3",
                "choice_content":"louder"
              },
              {
                "choice_id":"4",
                "choice_content":"quit"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She looks very nice in that dress. She is pretty. \n PRETTY means:",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"looks good"
              },
              {
                "choice_id":"2",
                "choice_content":"looks bad"
              },
              {
                "choice_id":"3",
                "choice_content":"looks happy"
              },
              {
                "choice_id":"4",
                "choice_content":"looks sad"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"incorrect means?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"good"
              },
              {
                "choice_id":"2",
                "choice_content":"ugly"
              },
              {
                "choice_id":"3",
                "choice_content":"wrong"
              },
              {
                "choice_id":"4",
                "choice_content":"handsome"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I drank all of my juice. Please _________ my cup.",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"redo"
              },
              {
                "choice_id":"2",
                "choice_content":"refill"
              },
              {
                "choice_id":"3",
                "choice_content":"remake"
              },
              {
                "choice_id":"4",
                "choice_content":"return"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The ________ was in the cave",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bat"
              },
              {
                "choice_id":"2",
                "choice_content":"van"
              },
              {
                "choice_id":"3",
                "choice_content":"dog"
              },
              {
                "choice_id":"4",
                "choice_content":"cat"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you treat everyone in the same way, you are:",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bad"
              },
              {
                "choice_id":"2",
                "choice_content":"fair"
              },
              {
                "choice_id":"3",
                "choice_content":"free"
              },
              {
                "choice_id":"4",
                "choice_content":"crazy"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I like to ride on a ________.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"boat"
              },
              {
                "choice_id":"2",
                "choice_content":"belt"
              },
              {
                "choice_id":"3",
                "choice_content":"boot"
              },
              {
                "choice_id":"4",
                "choice_content":"bat"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She is going ________ me to the beach.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"with"
              },
              {
                "choice_id":"2",
                "choice_content":"what"
              },
              {
                "choice_id":"3",
                "choice_content":"where"
              },
              {
                "choice_id":"4",
                "choice_content":"when"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word DOES NOT belong with the others?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"computer"
              },
              {
                "choice_id":"2",
                "choice_content":"keyboard"
              },
              {
                "choice_id":"3",
                "choice_content":"mouse"
              },
              {
                "choice_id":"4",
                "choice_content":"television"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"My best friend _______ Sam.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"is"
              },
              {
                "choice_id":"2",
                "choice_content":"on"
              },
              {
                "choice_id":"3",
                "choice_content":"if"
              },
              {
                "choice_id":"4",
                "choice_content":"in"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n orange, red, green, purple, blue",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shape"
              },
              {
                "choice_id":"2",
                "choice_content":"color"
              },
              {
                "choice_id":"3",
                "choice_content":"foods"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n chicken, pork, hotdog,",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"colors"
              },
              {
                "choice_id":"2",
                "choice_content":"pet"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"shape"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n triangle,circle,square",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"color"
              },
              {
                "choice_id":"2",
                "choice_content":"shape"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n five, three, two, seven, nine",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"food"
              },
              {
                "choice_id":"3",
                "choice_content":"number"
              },
              {
                "choice_id":"4",
                "choice_content":"color"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n a,b,c,d",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"letters"
              },
              {
                "choice_id":"3",
                "choice_content":"numbers"
              },
              {
                "choice_id":"4",
                "choice_content":"colors"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of big?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"large"
              },
              {
                "choice_id":"2",
                "choice_content":"thin"
              },
              {
                "choice_id":"3",
                "choice_content":"small"
              },
              {
                "choice_id":"4",
                "choice_content":"cold"
              },
            ],
          },
           ],
           "hard":[
           //Q1
           {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Which season is hot?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Spring"
              },
              {
                "choice_id":"3",
                "choice_content":"Fall"
              },
              {
                "choice_id":"4",
                "choice_content":"Winter"
              },
              {
                "choice_id":"5",
                "choice_content":"None"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Fall"
              },
              {
                "choice_id":"3",
                "choice_content":"Winter"
              },
              {
                "choice_id":"4",
                "choice_content":"October"
              }
              {
                "choice_id":"5",
                "choice_content":"Spring"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The coat I wore last year is ________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"tie"
              },
              {
                "choice_id":"2",
                "choice_content":"tire"
              },
              {
                "choice_id":"3",
                "choice_content":"tight"
              },
              {
                "choice_id":"4",
                "choice_content":"tired"
              }
              {
                "choice_id":"5",
                "choice_content":"type"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Ear"
              },
              {
                "choice_id":"2",
                "choice_content":"Sock"
              },
               {
                "choice_id":"3",
                "choice_content":"Nose"
              },
               {
                "choice_id":"4",
                "choice_content":"Eye"
              },
               {
                "choice_id":"5",
                "choice_content":"Ear"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A synonym for discover is _______.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lose"
              },
              {
                "choice_id":"2",
                "choice_content":"carry"
              },
               {
                "choice_id":"3",
                "choice_content":"find"
              },
              {
                "choice_id":"4",
                "choice_content":"follow"
              },
               {
                "choice_id":"5",
                "choice_content":"Read"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"He wore a ________ crown on his head.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crowded"
              },
              {
                "choice_id":"2",
                "choice_content":"golden"
              },
              {
                "choice_id":"3",
                "choice_content":"banana"
              },
              {
                "choice_id":"4",
                "choice_content":"chicken"
              },
               {
                "choice_id":"5",
                "choice_content":"egg"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word belongs in the category below? \n PETS",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crocodile"
              },
              {
                "choice_id":"2",
                "choice_content":"elephant"
              },
               {
                "choice_id":"3",
                "choice_content":"hamster"
              },
              {
                "choice_id":"4",
                "choice_content":"whale"
              },
               {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A person who hires or supervises workers \n manager",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dog"
              },
              {
                "choice_id":"2",
                "choice_content":"mouse"
              },
                {
                "choice_id":"3",
                "choice_content":"dad"
              },
              {
                "choice_id":"4",
                "choice_content":"boss"
              },
               {
                "choice_id":"5",
                "choice_content":"cat"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My mom gave _______ of us a big hug.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"both"
              },
               {
                "choice_id":"3",
                "choice_content":"Us"
              },
               {
                "choice_id":"4",
                "choice_content":"We"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A member of a community",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"citizen"
              },
              {
                "choice_id":"2",
                "choice_content":"family"
              },
              {
                "choice_id":"3",
                "choice_content":"friend"
              },
              {
                "choice_id":"4",
                "choice_content":"mother"
              },
               {
                "choice_id":"5",
                "choice_content":"father"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I want ________ one!",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"a"
              },
              {
                "choice_id":"2",
                "choice_content":"the"
              },
              {
                "choice_id":"3",
                "choice_content":"that"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"are"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"tebu"
              },
              {
                "choice_id":"2",
                "choice_content":"tube"
              },
              {
                "choice_id":"3",
                "choice_content":"tbue"
              },
              {
                "choice_id":"4",
                "choice_content":"ubet"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Sam ______ the bag.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"wished"
              },
              {
                "choice_id":"2",
                "choice_content":"tucked"
              },
              {
                "choice_id":"3",
                "choice_content":"packed"
              },
              {
                "choice_id":"4",
                "choice_content":"baked"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A device for securing a door, gate, lid, or drawer in position when closed",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"microphone"
              },
              {
                "choice_id":"2",
                "choice_content":"lock"
              },
              {
                "choice_id":"3",
                "choice_content":"doorbell"
              },
              {
                "choice_id":"4",
                "choice_content":"bell"
              },
               {
                "choice_id":"5",
                "choice_content":"door"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The art or act of singing; vocal music",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"song"
              },
              {
                "choice_id":"2",
                "choice_content":"light"
              },
              {
                "choice_id":"3",
                "choice_content":"homework"
              },
              {
                "choice_id":"4",
                "choice_content":"plastic"
              },
               {
                "choice_id":"5",
                "choice_content":"work"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"How are _______ doing?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"he"
              },
              {
                "choice_id":"2",
                "choice_content":"is"
              },
              {
                "choice_id":"3",
                "choice_content":"the"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"am"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"eetr"
              },
              {
                "choice_id":"2",
                "choice_content":"treee"
              },
              {
                "choice_id":"3",
                "choice_content":"tree"
              },
              {
                "choice_id":"4",
                "choice_content":"tere"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"A small child",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Minnie Mouse"
              },
              {
                "choice_id":"2",
                "choice_content":"tot"
              },
              {
                "choice_id":"3",
                "choice_content":"Mom"
              },
              {
                "choice_id":"4",
                "choice_content":"cookie"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for steaming is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"cold"
              },
              {
                "choice_id":"2",
                "choice_content":"freezing"
              },
              {
                "choice_id":"3",
                "choice_content":"hot"
              },
              {
                "choice_id":"4",
                "choice_content":"dry"
              },
              {
                "choice_id":"5",
                "choice_content":"froze"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the word that is spelled correctly.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"plant"
              },
              {
                "choice_id":"2",
                "choice_content":"platn"
              },
              {
                "choice_id":"3",
                "choice_content":"platn"
              },
              {
                "choice_id":"4",
                "choice_content":"plante"
              },
              {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for note is",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"letter"
              },
              {
                "choice_id":"2",
                "choice_content":"memo"
              },
              {
                "choice_id":"3",
                "choice_content":"message"
              },
              {
                "choice_id":"4",
                "choice_content":"communication"
              },
              {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for moist is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dry"
              },
              {
                "choice_id":"2",
                "choice_content":"crisp"
              },
              {
                "choice_id":"3",
                "choice_content":"damp"
              },
              {
                "choice_id":"4",
                "choice_content":"solid"
              },
               {
                "choice_id":"5",
                "choice_content":"hot"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Walk"
              },
              {
                "choice_id":"2",
                "choice_content":"Football"
              },
              {
                "choice_id":"3",
                "choice_content":"Baseball"
              },
              {
                "choice_id":"4",
                "choice_content":"Volleyball"
              },
               {
                "choice_id":"5",
                "choice_content":"Basketball"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
               {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To have a low temperature means",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"hot"
              },
              {
                "choice_id":"2",
                "choice_content":"cold"
              },
              {
                "choice_id":"3",
                "choice_content":"weather"
              },
              {
                "choice_id":"4",
                "choice_content":"sunny"
              },
               {
                "choice_id":"5",
                "choice_content":"dry"
              },
            ],
          },
           ]
        }
      },

      // GRADE2
       {
        "difficulty_name":"Grade 2",
        "grade_desc" : "In the second grade, children are usually 7 to 8 years old. Students are taught subjects such as Math, Science, Geography and Social Studies. In Math, they are introduced to larger numbers (building up on what was taught to them in the first grade) and fundamental operations such as addition and subtraction.",
        "diff-avatar": "assets/images/grade2.png",
        "content":
        //g2q1
        {
           "easy":[
           		// Q1
          {
            "q_img": "assets/images/english/eng.jpg",
            "question":".I ________ with my fingers.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"touch"
              },
              {
                "choice_id":"2",
                "choice_content":"taste"
              },
              {
                "choice_id":"3",
                "choice_content":"hear"
              },
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I _________ with my brain.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"smell"
              },
              {
                "choice_id":"2",
                "choice_content":"think"
              },
              {
                "choice_id":"3",
                "choice_content":"see"
              },
              
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A tree has the _______ stem of all the plants.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hard"
              },
              {
                "choice_id":"2",
                "choice_content":"harder"
              },
              {
                "choice_id":"3",
                "choice_content":"hardest"
              },
           
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"January is  _______ than May.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"cold"
              },
              {
                "choice_id":"2",
                "choice_content":"colder"
              },
               {
                "choice_id":"3",
                "choice_content":"coldest"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"PThe red ball is  _______ than the green ball.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"small"
              },
              {
                "choice_id":"2",
                "choice_content":"smaller"
              },
               {
                "choice_id":"3",
                "choice_content":"smallest"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Mindy saw _______ ant crawling on the ground.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"an"
              },
              {
                "choice_id":"2",
                "choice_content":"a"
              },
              {
                "choice_id":"3",
                "choice_content":"the"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"We picked _______ apples from a tree.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"a"
              },
              {
                "choice_id":"2",
                "choice_content":"an"
              },
               {
                "choice_id":"3",
                "choice_content":"the"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the common noun in this sentence below. \nThe class studied English today.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"class"
              },
              {
                "choice_id":"2",
                "choice_content":"studied"
              },
               {
                "choice_id":"3",
                "choice_content":"English"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"When I add the suffix -ing it means it is happening right now.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"True"
              },
              {
                "choice_id":"2",
                "choice_content":"False"
              },
              
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the word that should start with a capital letter.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"flag"
              },
              {
                "choice_id":"2",
                "choice_content":"america"
              },
               {
                "choice_id":"3",
                "choice_content":"country"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Elijah and Jude ________ five grasshoppers.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"catched"
              },
              {
                "choice_id":"2",
                "choice_content":"caught"
              },
               {
                "choice_id":"3",
                "choice_content":"catches"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I enjoy _______ photographs of my friends.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"take"
              },
              {
                "choice_id":"2",
                "choice_content":"took"
              },
              {
                "choice_id":"3",
                "choice_content":"taking"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the past tense for drink?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"drinks"
              },
              {
                "choice_id":"2",
                "choice_content":"drinked"
              },
                {
                "choice_id":"3",
                "choice_content":"drinking"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the sentence that has correct capitalization.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"My aunt Julie always makes me tasty treats."
              },
              {
                "choice_id":"2",
                "choice_content":"In the winter, sharon wears a big fur coat."
              },
               {
                "choice_id":"3",
                "choice_content":"there are seven days in a week."
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the correct place for the apostrophe in the following sentence from the choices below.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"The dog ate its bone but wont eat its biscuits."
              },
              {
                "choice_id":"2",
                "choice_content":"The dog ate it's bone but wont eat its biscuits."
              },
              {
                "choice_id":"3",
                "choice_content":"The dog ate it's bone but wont eat it's biscuits."
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If your teacher tells you to rewrite something, you",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"write it again."
              },
              {
                "choice_id":"2",
                "choice_content":"write it for the first time."
              },
              {
                "choice_id":"3",
                "choice_content":"erase it."
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Kai'leah and Tatyana _______ all day.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"sleeped"
              },
              {
                "choice_id":"2",
                "choice_content":"sleeps"
              },
               {
                "choice_id":"3",
                "choice_content":"slept"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"Mr. Joe _______ our classroom.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"sweeped"
              },
              {
                "choice_id":"2",
                "choice_content":"sweep"
              },
               {
                "choice_id":"3",
                "choice_content":"sweep"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which sentence is written correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"grandma is coming for passover"
              },
              {
                "choice_id":"2",
                "choice_content":"Grandma is coming for Passover."
              },
               {
                "choice_id":"3",
                "choice_content":"Grandma is coming for passover."
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
              {
                "choice_id":"3",
                "choice_content":"walking"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the past tense for want?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"wanted"
              },
              {
                "choice_id":"2",
                "choice_content":"waiting"
              },
               {
                "choice_id":"3",
                "choice_content":"waited"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which phrase suggests it is in the future tense?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"I am"
              },
              {
                "choice_id":"2",
                "choice_content":"I will"
              },
              {
                "choice_id":"3",
                "choice_content":"I have"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which phrase suggests it is in the future tense?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"I am going to"
              },
              {
                "choice_id":"2",
                "choice_content":"I already have"
              },
              {
                "choice_id":"3",
                "choice_content":"I am doing it"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is not a time stamp?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"later"
              },
              {
                "choice_id":"2",
                "choice_content":"tomorrow"
              },
               {
                "choice_id":"3",
                "choice_content":"shoes"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A _________ is someone you do not know",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"family member"
              },
              {
                "choice_id":"2",
                "choice_content":"classmate"
              },
               {
                "choice_id":"3",
                "choice_content":"stranger"
              },
            ],
          },
           ],
           "medium":[
           // Q1
          {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Someone who is joyful is",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"without joy."
              },
              {
                "choice_id":"2",
                "choice_content":"full of joy."
              },
              {
                "choice_id":"3",
                "choice_content":"joyless"
              },
              {
                "choice_id":"3",
                "choice_content":"a little happy"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the greeting that is written incorrectly",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Dear Grandma,"
              },
              {
                "choice_id":"2",
                "choice_content":"Dear, Bob,"
              },
              {
                "choice_id":"3",
                "choice_content":"Dear Mr. Crosby,"
              },
              {
                "choice_id":"4",
                "choice_content":"Dear Molly,"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which sentence is written correctly? ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Susan's basket was full."
              },
              {
                "choice_id":"2",
                "choice_content":"Susans' basket was full."
              },
              {
                "choice_id":"3",
                "choice_content":"Susans basket was full."
              },
              {
                "choice_id":"4",
                "choice_content":"Susan's basket was full"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A sentence that makes a statement, is called a _______. ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"declarative sentence"
              },
              {
                "choice_id":"2",
                "choice_content":"interrogative sentence"
              },
               {
                "choice_id":"3",
                "choice_content":"exclamatory sentence"
              },
               {
                "choice_id":"4",
                "choice_content":"independent sentence"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"When you are upset about something, you are...",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"happy"
              },
              {
                "choice_id":"2",
                "choice_content":"unhappy"
              },
               {
                "choice_id":"3",
                "choice_content":"happiest"
              },
              {
                "choice_id":"4",
                "choice_content":"unangry"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"When you want to watch something again you _______ it.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"unwatch"
              },
              {
                "choice_id":"2",
                "choice_content":"watchless"
              },
              {
                "choice_id":"3",
                "choice_content":"rewatch"
              },
              {
                "choice_id":"4",
                "choice_content":"watched"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the verb in the following sentence? \n Sadie raced down the stairs.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"raced"
              },
              {
                "choice_id":"2",
                "choice_content":"down"
              },
              {
                "choice_id":"3",
                "choice_content":"Sadie"
              },
              {
                "choice_id":"4",
                "choice_content":"The"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word in this sentence is the ADJECTIVE? \n He threw the hard rock into the river.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"threw"
              },
              {
                "choice_id":"2",
                "choice_content":"rock"
              },
                {
                "choice_id":"3",
                "choice_content":"hard"
              },
              {
                "choice_id":"4",
                "choice_content":"hard"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which is the opposite of zip?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"rezip"
              },
              {
                "choice_id":"2",
                "choice_content":"unzip"
              },
               {
                "choice_id":"3",
                "choice_content":"zipper"
              },
              {
                "choice_id":"4",
                "choice_content":"prezip"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which of these words is a NOUN? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"cat"
              },
              {
                "choice_id":"2",
                "choice_content":"hit"
              },
              {
                "choice_id":"3",
                "choice_content":"red"
              },
              {
                "choice_id":"4",
                "choice_content":"sing"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Ken filled his cup with too much milk and it ______",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"overflowed"
              },
              {
                "choice_id":"2",
                "choice_content":"reflowed"
              },
              {
                "choice_id":"3",
                "choice_content":"underflowed"
              },
              {
                "choice_id":"4",
                "choice_content":"preflowed"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word in this sentence is the ADJECTIVE?",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"boy"
              },
              {
                "choice_id":"2",
                "choice_content":"wore"
              },
              {
                "choice_id":"3",
                "choice_content":"blue"
              },
              {
                "choice_id":"4",
                "choice_content":"shirt"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the sentence that is written correctly.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Mrs. Smith has a puppy named Spot."
              },
              {
                "choice_id":"2",
                "choice_content":"Mrs. Smith has a puppy named spot."
              },
              {
                "choice_id":"3",
                "choice_content":"mrs. smith has a puppy named Spot."
              },
              {
                "choice_id":"4",
                "choice_content":"mrs. smith has a puppy named spot."
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Select the past tense of the verb to drive ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"driven"
              },
              {
                "choice_id":"2",
                "choice_content":"drived"
              },
              {
                "choice_id":"3",
                "choice_content":"drove"
              },
              {
                "choice_id":"4",
                "choice_content":"has, have, or had driven"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Select the past tense of the verb to play.",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"player"
              },
              {
                "choice_id":"2",
                "choice_content":"playing"
              },
              {
                "choice_id":"3",
                "choice_content":"played"
              },
              {
                "choice_id":"4",
                "choice_content":"plays"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"______ is my umbrella ? it is behind the door",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"where"
              },
              {
                "choice_id":"2",
                "choice_content":"what"
              },
              {
                "choice_id":"3",
                "choice_content":"when"
              },
              {
                "choice_id":"4",
                "choice_content":"it"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"________ it is the necklace ? It is one hundred and ten dollars. ",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"How "
              },
              {
                "choice_id":"2",
                "choice_content":"how much"
              },
              {
                "choice_id":"3",
                "choice_content":"What"
              },
              {
                "choice_id":"4",
                "choice_content":"Where"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"Hang the __________ clothes outside!",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"wet"
              },
              {
                "choice_id":"2",
                "choice_content":"dry"
              },
              {
                "choice_id":"3",
                "choice_content":"clean"
              },
              {
                "choice_id":"4",
                "choice_content":"small"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"that hat is too__________ for you, girl You should get a bigger one. ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"beautiful"
              },
              {
                "choice_id":"2",
                "choice_content":"small"
              },
              {
                "choice_id":"3",
                "choice_content":"cheap"
              },
              {
                "choice_id":"4",
                "choice_content":"bad"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Please ask your________ children to keep quit in the library. ",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"lazy"
              },
              {
                "choice_id":"2",
                "choice_content":"bad"
              },
              {
                "choice_id":"3",
                "choice_content":"noisy"
              },
              {
                "choice_id":"4",
                "choice_content":"good"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word best fits in the blank? \n The school bell rang ______.",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"loud"
              },
              {
                "choice_id":"2",
                "choice_content":"loudly"
              },
              {
                "choice_id":"3",
                "choice_content":"love"
              },
              {
                "choice_id":"4",
                "choice_content":"lovely"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the correct closing. ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Sincerely yours"
              },
              {
                "choice_id":"2",
                "choice_content":"Sincerely yours,"
              },
              {
                "choice_id":"3",
                "choice_content":"sincerely yours"
              },
              {
                "choice_id":"4",
                "choice_content":"sincerely, yours"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word means to be more sad than someone else?",
            "answer": "c",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"sad"
              },
              {
                "choice_id":"2",
                "choice_content":"sadder"
              },
              {
                "choice_id":"3",
                "choice_content":"saddest"
              },
              {
                "choice_id":"4",
                "choice_content":"unsad"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the word that should start with a capital letter in the following sentence: \n The new girl at our school used to live in canada.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"girl"
              },
              {
                "choice_id":"2",
                "choice_content":"school"
              },
              {
                "choice_id":"3",
                "choice_content":"canada"
              },
              {
                "choice_id":"4",
                "choice_content":"used"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the greeting that is written correctly. ",
            "answer": "d",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"Dear Grandma"
              },
              {
                "choice_id":"2",
                "choice_content":"Dear, Grandma"
              },
              {
                "choice_id":"3",
                "choice_content":"Dear, Grandma,"
              },
              {
                "choice_id":"4",
                "choice_content":"Dear Grandma,"
              },
            ],
          },
           ],
           "hard":[
           //Q1
           {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Which season is hot?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"has a home."
              },
              {
                "choice_id":"2",
                "choice_content":"has a lot of homes."
              },
              {
                "choice_id":"3",
                "choice_content":"does not have a home."
              },
              {
                "choice_id":"4",
                "choice_content":"moves a lot."
              },
              {
                "choice_id":"5",
                "choice_content":"many house and lo"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the prepostion that completes the sentence. \n I go home ______ bus.",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"until"
              },
              {
                "choice_id":"2",
                "choice_content":"up"
              },
              {
                "choice_id":"3",
                "choice_content":"Winter"
              },
              {
                "choice_id":"4",
                "choice_content":"October"
              }
              {
                "choice_id":"5",
                "choice_content":"Spring"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Tom ran home after school.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"home"
              },
              {
                "choice_id":"2",
                "choice_content":"Tom"
              },
              {
                "choice_id":"3",
                "choice_content":"ran"
              },
              {
                "choice_id":"4",
                "choice_content":"after"
              }
              {
                "choice_id":"5",
                "choice_content":"is"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Anthony is throwing the football. \n Which word above is the verb?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Anthony"
              },
              {
                "choice_id":"2",
                "choice_content":"Throwing"
              },
               {
                "choice_id":"3",
                "choice_content":"Football"
              },
               {
                "choice_id":"4",
                "choice_content":"The"
              },
               {
                "choice_id":"5",
                "choice_content":"is"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"He thought about his stupid mistake in the test.\nWhich word above is the verb?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Thought"
              },
              {
                "choice_id":"2",
                "choice_content":"About"
              },
               {
                "choice_id":"3",
                "choice_content":"Mistake"
              },
              {
                "choice_id":"4",
                "choice_content":"Test"
              },
               {
                "choice_id":"5",
                "choice_content":"About"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The dog ran across the yard.\n Which word above is the verb?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Dog"
              },
              {
                "choice_id":"2",
                "choice_content":"across"
              },
              {
                "choice_id":"3",
                "choice_content":"Ran"
              },
              {
                "choice_id":"4",
                "choice_content":"Yard"
              },
               {
                "choice_id":"5",
                "choice_content":"The"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The boys ______ in the car. ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"am"
              },
              {
                "choice_id":"2",
                "choice_content":"was"
              },
               {
                "choice_id":"3",
                "choice_content":"were"
              },
              {
                "choice_id":"4",
                "choice_content":"they"
              },
               {
                "choice_id":"5",
                "choice_content":"them"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word represents playing something again?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"unplay"
              },
              {
                "choice_id":"2",
                "choice_content":"player"
              },
                {
                "choice_id":"3",
                "choice_content":"replay"
              },
              {
                "choice_id":"4",
                "choice_content":"played"
              },
               {
                "choice_id":"5",
                "choice_content":"pused"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the verb in the sentence.\n The prince climbed the tower.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"prince"
              },
              {
                "choice_id":"2",
                "choice_content":"tower"
              },
               {
                "choice_id":"3",
                "choice_content":"climbed"
              },
               {
                "choice_id":"4",
                "choice_content":"The"
              },
               {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which one of these nouns is a PLURAL NOUN?",
            "answer": "5",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Foot"
              },
              {
                "choice_id":"2",
                "choice_content":"Sheep"
              },
              {
                "choice_id":"3",
                "choice_content":"Dog"
              },
              {
                "choice_id":"4",
                "choice_content":"Water"
              },
               {
                "choice_id":"5",
                "choice_content":"Boys"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the word that should start with a capital letter in the following sentence: \n
            Emma was excited when she got a postcard from her friend in florida. ",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"excited"
              },
              {
                "choice_id":"2",
                "choice_content":"postcard"
              },
              {
                "choice_id":"3",
                "choice_content":"florida"
              },
              {
                "choice_id":"4",
                "choice_content":"was"
              },
               {
                "choice_id":"5",
                "choice_content":"postcard"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which of the following sentences is written correctly? ",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"I want to go to the louisville zoo."
              },
              {
                "choice_id":"2",
                "choice_content":"I want to go to the Louisville Zoo"
              },
              {
                "choice_id":"3",
                "choice_content":"I want to go to the Louisville zoo."
              },
              {
                "choice_id":"4",
                "choice_content":"I want to go to the Louisville Zoo."
              },
               {
                "choice_id":"5",
                "choice_content":"I want to go to the LouisVille Zoo."
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word below needs a capital letter? ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"stone"
              },
              {
                "choice_id":"2",
                "choice_content":"snake"
              },
              {
                "choice_id":"3",
                "choice_content":"new york"
              },
              {
                "choice_id":"4",
                "choice_content":"attraction"
              },
               {
                "choice_id":"5",
                "choice_content":"mad"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"He is a teacher. ______ name is Mr. Phillips.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"His"
              },
              {
                "choice_id":"2",
                "choice_content":"Its"
              },
              {
                "choice_id":"3",
                "choice_content":"Her"
              },
              {
                "choice_id":"4",
                "choice_content":"Your"
              },
               {
                "choice_id":"5",
                "choice_content":"You"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the word that should start with a capital letter in the following sentence: \n Joel's birthday is in april and he is having a party.",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"birthday"
              },
              {
                "choice_id":"2",
                "choice_content":"april"
              },
              {
                "choice_id":"3",
                "choice_content":"party"
              },
              {
                "choice_id":"4",
                "choice_content":"in"
              },
               {
                "choice_id":"5",
                "choice_content":"having"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the word that should start with a capital letter. ",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"mountain"
              },
              {
                "choice_id":"2",
                "choice_content":"texas"
              },
              {
                "choice_id":"3",
                "choice_content":"country"
              },
              {
                "choice_id":"4",
                "choice_content":"man"
              },
               {
                "choice_id":"5",
                "choice_content":"men"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the verb in the sentence below? \nThe boys play in the backyard after school.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"play"
              },
              {
                "choice_id":"2",
                "choice_content":"boys"
              },
              {
                "choice_id":"3",
                "choice_content":"school"
              },
              {
                "choice_id":"4",
                "choice_content":"in"
              },
               {
                "choice_id":"5",
                "choice_content":"backyard"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"Choose the verb that matches the phrase. \n ________ a horse",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"tell"
              },
              {
                "choice_id":"2",
                "choice_content":"turn on"
              },
              {
                "choice_id":"3",
                "choice_content":"ride"
              },
              {
                "choice_id":"4",
                "choice_content":"play"
              },
               {
                "choice_id":"5",
                "choice_content":"buy"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the verb in the sentence below? \n The weather is hot",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"a.weather"
              },
              {
                "choice_id":"2",
                "choice_content":"is"
              },
              {
                "choice_id":"3",
                "choice_content":"the"
              },
              {
                "choice_id":"4",
                "choice_content":"hot"
              },
              {
                "choice_id":"5",
                "choice_content":"the weather"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the verb in the sentence below? \n The diamond is expensive",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"expensive"
              },
              {
                "choice_id":"2",
                "choice_content":"diamond"
              },
              {
                "choice_id":"3",
                "choice_content":"is"
              },
              {
                "choice_id":"4",
                "choice_content":"the diamond"
              },
              {
                "choice_id":"5",
                "choice_content":"the weather"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the opposite of  underline adjective below. \n The orange is sour",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"sweet"
              },
              {
                "choice_id":"2",
                "choice_content":"cold"
              },
              {
                "choice_id":"3",
                "choice_content":"hot"
              },
              {
                "choice_id":"4",
                "choice_content":"gross"
              },
              {
                "choice_id":"5",
                "choice_content":"chill"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the opposite of  underline adjective below. \n The clothes are wet",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dry"
              },
              {
                "choice_id":"2",
                "choice_content":"sweet"
              },
              {
                "choice_id":"3",
                "choice_content":"gross"
              },
              {
                "choice_id":"4",
                "choice_content":"chill"
              },
               {
                "choice_id":"5",
                "choice_content":"hot"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the opposite of  underline adjective below. \n The building is short",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"long"
              },
              {
                "choice_id":"2",
                "choice_content":"big"
              },
              {
                "choice_id":"3",
                "choice_content":"small"
              },
              {
                "choice_id":"4",
                "choice_content":"hard"
              },
               {
                "choice_id":"5",
                "choice_content":"tiny"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the opposite of  underline adjective below. \nYour face is clean",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"long"
              },
              {
                "choice_id":"2",
                "choice_content":"dirty"
              },
              {
                "choice_id":"3",
                "choice_content":"hard"
              },
              {
                "choice_id":"4",
                "choice_content":"tiny"
              },
               {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Identify the opposite of  underline adjective below. \n The windows are open.",
            "answer": "5",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"hot"
              },
              {
                "choice_id":"2",
                "choice_content":"cold"
              },
              {
                "choice_id":"3",
                "choice_content":"weather"
              },
              {
                "choice_id":"4",
                "choice_content":"sunny"
              },
               {
                "choice_id":"5",
                "choice_content":"close"
              },
            ],
          },
           ]
        }
      },
      
// GRADE3
      {
        "difficulty_name":"Grade 3",
        "grade_desc" : "Third grade is a year of primary education in many countries. It is the third school year of primary school. Students are usually 8–9 years old, depending on when their birthday occurs. ",
        "diff-avatar": "assets/images/grade3.png",
        "content":{
          "easy":[
        // Q1
          {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Knowing the meaning of the prefix pre- helps you know that prepay means:",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to pay again"
              },
              {
                "choice_id":"2",
                "choice_content":"to pay before"
              },
              {
                "choice_id":"3",
                "choice_content":"to pay now"
              },
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the sentence that uses commas incorrectly.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"We went to Nashville, Tennessee last year."
              },
              {
                "choice_id":"2",
                "choice_content":"The couple's wedding day was March 1, 1995."
              },
              {
                "choice_id":"3",
                "choice_content":"I ate ice cream chips, and pizza at the party."  
              },
              
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Knowing the meaning of the prefix un- helps the reader know that unclean means:",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to clean before"
              },
              {
                "choice_id":"2",
                "choice_content":"to clean again"
              },
              {
                "choice_id":"3",
                "choice_content":"not clean"
              },
           
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What does the prefix BI- mean in BICYCLE?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"two"
              },
              {
                "choice_id":"2",
                "choice_content":"one"
              },
               {
                "choice_id":"3",
                "choice_content":"round"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Knowing the meaning of the prefix re- helps the reader know that reuse means:",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to use the most"
              },
              {
                "choice_id":"2",
                "choice_content":"to use the most"
              },
               {
                "choice_id":"3",
                "choice_content":"to use before"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the sentence that is written correctly.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"He was born on May 15 1998."
              },
              {
                "choice_id":"2",
                "choice_content":"He was born on , May, 15 1998."
              },
              {
                "choice_id":"3",
                "choice_content":"He was born on May 15, 1998."
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the sentence that is written correctly.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"We spent two weeks in Orlando Florida."
              },
              {
                "choice_id":"2",
                "choice_content":"We spent two weeks in Orlando, Florida."
              },
               {
                "choice_id":"3",
                "choice_content":"We spent two weeks in, Orlando, Florida."
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the correct verb tense of the following sentence. \n I sailed the boat",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"present tense"
              },
              {
                "choice_id":"2",
                "choice_content":"past tense"
              },
               {
                "choice_id":"3",
                "choice_content":"future tense"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the plural form a knife",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"knife"
              },
              {
                "choice_id":"2",
                "choice_content":"knives"
              },
               {
                "choice_id":"3",
                "choice_content":"nife"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the verb in the following sentence. \n I set the glass on the table.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Set"
              },
              {
                "choice_id":"2",
                "choice_content":"table"
              },
               {
                "choice_id":"3",
                "choice_content":"glass"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Whatis the verb? \n I ran out of the room. \n Sidney has helped stray cats before.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"ha"
              },
              {
                "choice_id":"2",
                "choice_content":"helped"
              },
               {
                "choice_id":"3",
                "choice_content":"stray"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"	I ______ tennis every Sunday morning.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"play"
              },
              {
                "choice_id":"2",
                "choice_content":"playing"
              },
              {
                "choice_id":"3",
                "choice_content":"am playing"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Don't make so much noise. Noriko ______ to study for her ESL test!",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"try"
              },
              {
                "choice_id":"2",
                "choice_content":"tries"
              },
                {
                "choice_id":"3",
                "choice_content":"is trying"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Sorry, she can't come to the phone. She ______ a bath!",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"is having"
              },
              {
                "choice_id":"2",
                "choice_content":"having"
              },
               {
                "choice_id":"3",
                "choice_content":"have"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"______ many times every winter in Frankfurt.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to become less hard"
              },
              {
                "choice_id":"2",
                "choice_content":"a large meal"
              },
              {
                "choice_id":"3",
                "choice_content":"a small meal"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"When you \"pause\" you",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"continue doing something"
              },
              {
                "choice_id":"2",
                "choice_content":"stop completely."
              },
              {
                "choice_id":"3",
                "choice_content":"play something."
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
               {
                "choice_id":"3",
                "choice_content":"running"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"The middle of the earth is called the ________",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"core"
              },
              {
                "choice_id":"2",
                "choice_content":"plates"
              },
               {
                "choice_id":"3",
                "choice_content":"soil"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I ________ Tim singing a song",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"heard"
              },
              {
                "choice_id":"2",
                "choice_content":"because"
              },
               {
                "choice_id":"3",
                "choice_content":"eat"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
              {
                "choice_id":"3",
                "choice_content":"walking"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Brush your teeth _________ you go to bed.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"been"
              },
              {
                "choice_id":"2",
                "choice_content":"before"
              },
               {
                "choice_id":"3",
                "choice_content":"now"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I had to go to bed _________ I was sleepy.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"when"
              },
              {
                "choice_id":"2",
                "choice_content":"be"
              },
              {
                "choice_id":"3",
                "choice_content":"are"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"We learn in a _________",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"restaurant"
              },
              {
                "choice_id":"2",
                "choice_content":"classroom"
              },
              {
                "choice_id":"3",
                "choice_content":"restroom"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Lemons, butter and the sun are _________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"green"
              },
              {
                "choice_id":"2",
                "choice_content":"blue"
              },
               {
                "choice_id":"3",
                "choice_content":"yellow"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A _________ is someone you do not know",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"family member"
              },
              {
                "choice_id":"2",
                "choice_content":"classmate"
              },
               {
                "choice_id":"3",
                "choice_content":"stranger"
              },
            ],
          },
           ],
           "medium":[
           // Q1
          {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Adam shivered from the cold January wind. What does shiver mean?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to make up a story"
              },
              {
                "choice_id":"2",
                "choice_content":"to shake or tremble"
              },
              {
                "choice_id":"3",
                "choice_content":"to dance around"
              },
              {
                "choice_id":"3",
                "choice_content":"to cry around"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Zachary will assist the teacher in class today. What does assist mean?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"ignore"
              },
              {
                "choice_id":"2",
                "choice_content":"push"
              },
              {
                "choice_id":"3",
                "choice_content":"copy"
              },
              {
                "choice_id":"4",
                "choice_content":"help"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"My new reading teacher is a __________",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"rat"
              },
              {
                "choice_id":"2",
                "choice_content":"bat"
              },
              {
                "choice_id":"3",
                "choice_content":"bat"
              },
              {
                "choice_id":"4",
                "choice_content":"man"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My ___________ kite went up in the sky.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lie"
              },
              {
                "choice_id":"2",
                "choice_content":"pie"
              },
               {
                "choice_id":"3",
                "choice_content":"high"
              },
               {
                "choice_id":"4",
                "choice_content":"my"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"You have to ________ your mom's hand to cross the street.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"high"
              },
               {
                "choice_id":"3",
                "choice_content":"better"
              },
              {
                "choice_id":"4",
                "choice_content":"he"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you lose your paper, you must ________ it.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"return"
              },
              {
                "choice_id":"2",
                "choice_content":"rewrite"
              },
              {
                "choice_id":"3",
                "choice_content":"replay"
              },
              {
                "choice_id":"4",
                "choice_content":"destroy"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To breathe, eat, and grow means",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"live"
              },
              {
                "choice_id":"2",
                "choice_content":"plant"
              },
              {
                "choice_id":"3",
                "choice_content":"die"
              },
              {
                "choice_id":"4",
                "choice_content":"walk"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Bad things always happen to Matt. He is",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"unsafe"
              },
              {
                "choice_id":"2",
                "choice_content":"unlucky"
              },
                {
                "choice_id":"3",
                "choice_content":"unusual"
              },
              {
                "choice_id":"4",
                "choice_content":"lucky"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of loud?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"noisy"
              },
              {
                "choice_id":"2",
                "choice_content":"quiet"
              },
               {
                "choice_id":"3",
                "choice_content":"louder"
              },
              {
                "choice_id":"4",
                "choice_content":"quit"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She looks very nice in that dress. She is pretty. \n PRETTY means:",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"looks good"
              },
              {
                "choice_id":"2",
                "choice_content":"looks bad"
              },
              {
                "choice_id":"3",
                "choice_content":"looks happy"
              },
              {
                "choice_id":"4",
                "choice_content":"looks sad"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"incorrect means?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"good"
              },
              {
                "choice_id":"2",
                "choice_content":"ugly"
              },
              {
                "choice_id":"3",
                "choice_content":"wrong"
              },
              {
                "choice_id":"4",
                "choice_content":"handsome"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I drank all of my juice. Please _________ my cup.",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"redo"
              },
              {
                "choice_id":"2",
                "choice_content":"refill"
              },
              {
                "choice_id":"3",
                "choice_content":"remake"
              },
              {
                "choice_id":"4",
                "choice_content":"return"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The ________ was in the cave",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bat"
              },
              {
                "choice_id":"2",
                "choice_content":"van"
              },
              {
                "choice_id":"3",
                "choice_content":"dog"
              },
              {
                "choice_id":"4",
                "choice_content":"cat"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you treat everyone in the same way, you are:",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bad"
              },
              {
                "choice_id":"2",
                "choice_content":"fair"
              },
              {
                "choice_id":"3",
                "choice_content":"free"
              },
              {
                "choice_id":"4",
                "choice_content":"crazy"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I like to ride on a ________.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"boat"
              },
              {
                "choice_id":"2",
                "choice_content":"belt"
              },
              {
                "choice_id":"3",
                "choice_content":"boot"
              },
              {
                "choice_id":"4",
                "choice_content":"bat"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She is going ________ me to the beach.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"with"
              },
              {
                "choice_id":"2",
                "choice_content":"what"
              },
              {
                "choice_id":"3",
                "choice_content":"where"
              },
              {
                "choice_id":"4",
                "choice_content":"when"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word DOES NOT belong with the others?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"computer"
              },
              {
                "choice_id":"2",
                "choice_content":"keyboard"
              },
              {
                "choice_id":"3",
                "choice_content":"mouse"
              },
              {
                "choice_id":"4",
                "choice_content":"television"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"My best friend _______ Sam.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"is"
              },
              {
                "choice_id":"2",
                "choice_content":"on"
              },
              {
                "choice_id":"3",
                "choice_content":"if"
              },
              {
                "choice_id":"4",
                "choice_content":"in"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n orange, red, green, purple, blue",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shape"
              },
              {
                "choice_id":"2",
                "choice_content":"color"
              },
              {
                "choice_id":"3",
                "choice_content":"foods"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n chicken, pork, hotdog,",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"colors"
              },
              {
                "choice_id":"2",
                "choice_content":"pet"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"shape"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n triangle,circle,square",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"color"
              },
              {
                "choice_id":"2",
                "choice_content":"shape"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n five, three, two, seven, nine",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"food"
              },
              {
                "choice_id":"3",
                "choice_content":"number"
              },
              {
                "choice_id":"4",
                "choice_content":"color"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n a,b,c,d",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"letters"
              },
              {
                "choice_id":"3",
                "choice_content":"numbers"
              },
              {
                "choice_id":"4",
                "choice_content":"colors"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of big?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"large"
              },
              {
                "choice_id":"2",
                "choice_content":"thin"
              },
              {
                "choice_id":"3",
                "choice_content":"small"
              },
              {
                "choice_id":"4",
                "choice_content":"cold"
              },
            ],
          },
           ],
           "hard":[
           //Q1
           {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Which season is hot?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Spring"
              },
              {
                "choice_id":"3",
                "choice_content":"Fall"
              },
              {
                "choice_id":"4",
                "choice_content":"Winter"
              },
              {
                "choice_id":"5",
                "choice_content":"None"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Fall"
              },
              {
                "choice_id":"3",
                "choice_content":"Winter"
              },
              {
                "choice_id":"4",
                "choice_content":"October"
              }
              {
                "choice_id":"5",
                "choice_content":"Spring"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The coat I wore last year is ________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"tie"
              },
              {
                "choice_id":"2",
                "choice_content":"tire"
              },
              {
                "choice_id":"3",
                "choice_content":"tight"
              },
              {
                "choice_id":"4",
                "choice_content":"tired"
              }
              {
                "choice_id":"5",
                "choice_content":"type"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Ear"
              },
              {
                "choice_id":"2",
                "choice_content":"Sock"
              },
               {
                "choice_id":"3",
                "choice_content":"Nose"
              },
               {
                "choice_id":"4",
                "choice_content":"Eye"
              },
               {
                "choice_id":"5",
                "choice_content":"Ear"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A synonym for discover is _______.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lose"
              },
              {
                "choice_id":"2",
                "choice_content":"carry"
              },
               {
                "choice_id":"3",
                "choice_content":"find"
              },
              {
                "choice_id":"4",
                "choice_content":"follow"
              },
               {
                "choice_id":"5",
                "choice_content":"Read"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"He wore a ________ crown on his head.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crowded"
              },
              {
                "choice_id":"2",
                "choice_content":"golden"
              },
              {
                "choice_id":"3",
                "choice_content":"banana"
              },
              {
                "choice_id":"4",
                "choice_content":"chicken"
              },
               {
                "choice_id":"5",
                "choice_content":"egg"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word belongs in the category below? \n PETS",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crocodile"
              },
              {
                "choice_id":"2",
                "choice_content":"elephant"
              },
               {
                "choice_id":"3",
                "choice_content":"hamster"
              },
              {
                "choice_id":"4",
                "choice_content":"whale"
              },
               {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A person who hires or supervises workers \n manager",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dog"
              },
              {
                "choice_id":"2",
                "choice_content":"mouse"
              },
                {
                "choice_id":"3",
                "choice_content":"dad"
              },
              {
                "choice_id":"4",
                "choice_content":"boss"
              },
               {
                "choice_id":"5",
                "choice_content":"cat"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My mom gave _______ of us a big hug.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"both"
              },
               {
                "choice_id":"3",
                "choice_content":"Us"
              },
               {
                "choice_id":"4",
                "choice_content":"We"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A member of a community",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"citizen"
              },
              {
                "choice_id":"2",
                "choice_content":"family"
              },
              {
                "choice_id":"3",
                "choice_content":"friend"
              },
              {
                "choice_id":"4",
                "choice_content":"mother"
              },
               {
                "choice_id":"5",
                "choice_content":"father"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I want ________ one!",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"a"
              },
              {
                "choice_id":"2",
                "choice_content":"the"
              },
              {
                "choice_id":"3",
                "choice_content":"that"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"are"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"tebu"
              },
              {
                "choice_id":"2",
                "choice_content":"tube"
              },
              {
                "choice_id":"3",
                "choice_content":"tbue"
              },
              {
                "choice_id":"4",
                "choice_content":"ubet"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Sam ______ the bag.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"wished"
              },
              {
                "choice_id":"2",
                "choice_content":"tucked"
              },
              {
                "choice_id":"3",
                "choice_content":"packed"
              },
              {
                "choice_id":"4",
                "choice_content":"baked"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A device for securing a door, gate, lid, or drawer in position when closed",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"microphone"
              },
              {
                "choice_id":"2",
                "choice_content":"lock"
              },
              {
                "choice_id":"3",
                "choice_content":"doorbell"
              },
              {
                "choice_id":"4",
                "choice_content":"bell"
              },
               {
                "choice_id":"5",
                "choice_content":"door"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The art or act of singing; vocal music",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"song"
              },
              {
                "choice_id":"2",
                "choice_content":"light"
              },
              {
                "choice_id":"3",
                "choice_content":"homework"
              },
              {
                "choice_id":"4",
                "choice_content":"plastic"
              },
               {
                "choice_id":"5",
                "choice_content":"work"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"How are _______ doing?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"he"
              },
              {
                "choice_id":"2",
                "choice_content":"is"
              },
              {
                "choice_id":"3",
                "choice_content":"the"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"am"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"eetr"
              },
              {
                "choice_id":"2",
                "choice_content":"treee"
              },
              {
                "choice_id":"3",
                "choice_content":"tree"
              },
              {
                "choice_id":"4",
                "choice_content":"tere"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"A small child",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Minnie Mouse"
              },
              {
                "choice_id":"2",
                "choice_content":"tot"
              },
              {
                "choice_id":"3",
                "choice_content":"Mom"
              },
              {
                "choice_id":"4",
                "choice_content":"cookie"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for steaming is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"cold"
              },
              {
                "choice_id":"2",
                "choice_content":"freezing"
              },
              {
                "choice_id":"3",
                "choice_content":"hot"
              },
              {
                "choice_id":"4",
                "choice_content":"dry"
              },
              {
                "choice_id":"5",
                "choice_content":"froze"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the word that is spelled correctly.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"plant"
              },
              {
                "choice_id":"2",
                "choice_content":"platn"
              },
              {
                "choice_id":"3",
                "choice_content":"platn"
              },
              {
                "choice_id":"4",
                "choice_content":"plante"
              },
              {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for note is",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"letter"
              },
              {
                "choice_id":"2",
                "choice_content":"memo"
              },
              {
                "choice_id":"3",
                "choice_content":"message"
              },
              {
                "choice_id":"4",
                "choice_content":"communication"
              },
              {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for moist is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dry"
              },
              {
                "choice_id":"2",
                "choice_content":"crisp"
              },
              {
                "choice_id":"3",
                "choice_content":"damp"
              },
              {
                "choice_id":"4",
                "choice_content":"solid"
              },
               {
                "choice_id":"5",
                "choice_content":"hot"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Walk"
              },
              {
                "choice_id":"2",
                "choice_content":"Football"
              },
              {
                "choice_id":"3",
                "choice_content":"Baseball"
              },
              {
                "choice_id":"4",
                "choice_content":"Volleyball"
              },
               {
                "choice_id":"5",
                "choice_content":"Basketball"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
               {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To have a low temperature means",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"hot"
              },
              {
                "choice_id":"2",
                "choice_content":"cold"
              },
              {
                "choice_id":"3",
                "choice_content":"weather"
              },
              {
                "choice_id":"4",
                "choice_content":"sunny"
              },
               {
                "choice_id":"5",
                "choice_content":"dry"
              },
            ],
          },
           ]
        }
      },
      // GRADE4
      {
        "difficulty_name":"Grade 4",
        "grade_desc" : "The fourth grade forms the fourth year of Elementary school and children enrolled are typically 9 to 10 years old. Subjects taught include Math, Science, Reading, Writing and Social Studies.",
        "diff-avatar": "assets/images/grade4.png",
        "content":{
          "easy":[
           		   // Q1
          {
            "q_img": "assets/images/english/Image 26.png",
            "question":"Which one is not a synonym for happy?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Delighted"
              },
              {
                "choice_id":"2",
                "choice_content":"Joyful"
              },
              {
                "choice_id":"3",
                "choice_content":"Haughty"
              },
             
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/english.png",
            "question":"What is the past tense of put? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Put"
              },
              {
                "choice_id":"2",
                "choice_content":"Putted"
              },
              {
                "choice_id":"3",
                "choice_content":"Puted"
              },
              
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/Image 36.png",
            "question":"I eat ... apple every morning.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"A"
              },
              {
                "choice_id":"2",
                "choice_content":"An"
              },
              {
                "choice_id":"3",
                "choice_content":"The"
              },
              
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/Image 37.png",
            "question":"Its my first time playing football. Which word is incorrect?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Its"
              },
              {
                "choice_id":"2",
                "choice_content":"My"
              },
              {
                "choice_id":"1",
                "choice_content":"Time"
              },
              
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/Image 38.png",
            "question":"Which one is NOT a type of sentence? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Exclamatory sentence"
              },
              {
                "choice_id":"2",
                "choice_content":"Derogatory sentence"
              },
              {
                "choice_id":"3",
                "choice_content":"None of the above"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/Image 39.png",
            "question":"Pick the correct spelling..",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Patkol"
              },
              {
                "choice_id":"2",
                "choice_content":"Patyol"
              },
              
              {
                "choice_id":"3",
                "choice_content":"Patrol"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/Image 40.png",
            "question":"Unscramble \"ulipp\"",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Pipul"
              },
              {
                "choice_id":"2",
                "choice_content":"Pupil"
              },
              {
                "choice_id":"3",
                "choice_content":"lupip"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/Image 41.png",
            "question":"What is faint?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Barely perceptible"
              },
              {
                "choice_id":"2",
                "choice_content":"Having the form of a curve"
              },
              {
                "choice_id":"3",
                "choice_content":"Having the form of a square"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/Image 41.png",
            "question":"Pick the correct spelling.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Selffish"
              },
              {
                "choice_id":"2",
                "choice_content":"Selfish"
              },
               {
                "choice_id":"3",
                "choice_content":"sellfish"
              },
            ],
          },
          //Q10
          {
            
            "q_img": "assets/images/english/Image 42.png",
            "question":"Make (someone) a little angry",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Annoy"
              },
              {
                "choice_id":"2",
                "choice_content":"Anger"
              },
               {
                "choice_id":"3",
                "choice_content":"Slant"
              },
             
            ],
          },
          --
        
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which might make you \"giggle\"?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Baking cookies with your mom"
              },
              {
                "choice_id":"2",
                "choice_content":"Getting tickled by a feather"
              },
               {
                "choice_id":"3",
                "choice_content":"Walking with friends"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"looking"
              },
              {
                "choice_id":"3",
                "choice_content":"redalert"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What does the word \"replay\" mean in the sentence below?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"not play"
              },
              {
                "choice_id":"2",
                "choice_content":"play again"
              },
                {
                "choice_id":"3",
                "choice_content":"play"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A pencil is:?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"smooth"
              },
              {
                "choice_id":"2",
                "choice_content":"pointed"
              },
               {
                "choice_id":"3",
                "choice_content":"heavy"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What a wonderful feast this is! \nWhat does feast mean?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to become less hard"
              },
              {
                "choice_id":"2",
                "choice_content":"a large meal"
              },
              {
                "choice_id":"3",
                "choice_content":"a small meal"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"When you "pause" you",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"continue doing something"
              },
              {
                "choice_id":"2",
                "choice_content":"stop completely."
              },
              {
                "choice_id":"3",
                "choice_content":"play something."
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
               {
                "choice_id":"3",
                "choice_content":"running"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"The middle of the earth is called the ________",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"core"
              },
              {
                "choice_id":"2",
                "choice_content":"plates"
              },
               {
                "choice_id":"3",
                "choice_content":"soil"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I ________ Tim singing a song",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"heard"
              },
              {
                "choice_id":"2",
                "choice_content":"because"
              },
               {
                "choice_id":"3",
                "choice_content":"eat"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
              {
                "choice_id":"3",
                "choice_content":"walking"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Brush your teeth _________ you go to bed.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"been"
              },
              {
                "choice_id":"2",
                "choice_content":"before"
              },
               {
                "choice_id":"3",
                "choice_content":"now"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I had to go to bed _________ I was sleepy.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"when"
              },
              {
                "choice_id":"2",
                "choice_content":"be"
              },
              {
                "choice_id":"3",
                "choice_content":"are"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"We learn in a _________",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"restaurant"
              },
              {
                "choice_id":"2",
                "choice_content":"classroom"
              },
              {
                "choice_id":"3",
                "choice_content":"restroom"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Lemons, butter and the sun are _________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"green"
              },
              {
                "choice_id":"2",
                "choice_content":"blue"
              },
               {
                "choice_id":"3",
                "choice_content":"yellow"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A _________ is someone you do not know",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"family member"
              },
              {
                "choice_id":"2",
                "choice_content":"classmate"
              },
               {
                "choice_id":"3",
                "choice_content":"stranger"
              },
            ],
          },
           ],
           "medium":[
           // Q1
          {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Adam shivered from the cold January wind. What does shiver mean?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to make up a story"
              },
              {
                "choice_id":"2",
                "choice_content":"to shake or tremble"
              },
              {
                "choice_id":"3",
                "choice_content":"to dance around"
              },
              {
                "choice_id":"3",
                "choice_content":"to cry around"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Zachary will assist the teacher in class today. What does assist mean?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"ignore"
              },
              {
                "choice_id":"2",
                "choice_content":"push"
              },
              {
                "choice_id":"3",
                "choice_content":"copy"
              },
              {
                "choice_id":"4",
                "choice_content":"help"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"My new reading teacher is a __________",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"rat"
              },
              {
                "choice_id":"2",
                "choice_content":"bat"
              },
              {
                "choice_id":"3",
                "choice_content":"bat"
              },
              {
                "choice_id":"4",
                "choice_content":"man"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My ___________ kite went up in the sky.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lie"
              },
              {
                "choice_id":"2",
                "choice_content":"pie"
              },
               {
                "choice_id":"3",
                "choice_content":"high"
              },
               {
                "choice_id":"4",
                "choice_content":"my"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"You have to ________ your mom's hand to cross the street.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"high"
              },
               {
                "choice_id":"3",
                "choice_content":"better"
              },
              {
                "choice_id":"4",
                "choice_content":"he"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you lose your paper, you must ________ it.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"return"
              },
              {
                "choice_id":"2",
                "choice_content":"rewrite"
              },
              {
                "choice_id":"3",
                "choice_content":"replay"
              },
              {
                "choice_id":"4",
                "choice_content":"destroy"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To breathe, eat, and grow means",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"live"
              },
              {
                "choice_id":"2",
                "choice_content":"plant"
              },
              {
                "choice_id":"3",
                "choice_content":"die"
              },
              {
                "choice_id":"4",
                "choice_content":"walk"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Bad things always happen to Matt. He is",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"unsafe"
              },
              {
                "choice_id":"2",
                "choice_content":"unlucky"
              },
                {
                "choice_id":"3",
                "choice_content":"unusual"
              },
              {
                "choice_id":"4",
                "choice_content":"lucky"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of loud?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"noisy"
              },
              {
                "choice_id":"2",
                "choice_content":"quiet"
              },
               {
                "choice_id":"3",
                "choice_content":"louder"
              },
              {
                "choice_id":"4",
                "choice_content":"quit"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She looks very nice in that dress. She is pretty. \n PRETTY means:",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"looks good"
              },
              {
                "choice_id":"2",
                "choice_content":"looks bad"
              },
              {
                "choice_id":"3",
                "choice_content":"looks happy"
              },
              {
                "choice_id":"4",
                "choice_content":"looks sad"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"incorrect means?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"good"
              },
              {
                "choice_id":"2",
                "choice_content":"ugly"
              },
              {
                "choice_id":"3",
                "choice_content":"wrong"
              },
              {
                "choice_id":"4",
                "choice_content":"handsome"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I drank all of my juice. Please _________ my cup.",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"redo"
              },
              {
                "choice_id":"2",
                "choice_content":"refill"
              },
              {
                "choice_id":"3",
                "choice_content":"remake"
              },
              {
                "choice_id":"4",
                "choice_content":"return"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The ________ was in the cave",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bat"
              },
              {
                "choice_id":"2",
                "choice_content":"van"
              },
              {
                "choice_id":"3",
                "choice_content":"dog"
              },
              {
                "choice_id":"4",
                "choice_content":"cat"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you treat everyone in the same way, you are:",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bad"
              },
              {
                "choice_id":"2",
                "choice_content":"fair"
              },
              {
                "choice_id":"3",
                "choice_content":"free"
              },
              {
                "choice_id":"4",
                "choice_content":"crazy"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I like to ride on a ________.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"boat"
              },
              {
                "choice_id":"2",
                "choice_content":"belt"
              },
              {
                "choice_id":"3",
                "choice_content":"boot"
              },
              {
                "choice_id":"4",
                "choice_content":"bat"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She is going ________ me to the beach.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"with"
              },
              {
                "choice_id":"2",
                "choice_content":"what"
              },
              {
                "choice_id":"3",
                "choice_content":"where"
              },
              {
                "choice_id":"4",
                "choice_content":"when"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word DOES NOT belong with the others?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"computer"
              },
              {
                "choice_id":"2",
                "choice_content":"keyboard"
              },
              {
                "choice_id":"3",
                "choice_content":"mouse"
              },
              {
                "choice_id":"4",
                "choice_content":"television"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"My best friend _______ Sam.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"is"
              },
              {
                "choice_id":"2",
                "choice_content":"on"
              },
              {
                "choice_id":"3",
                "choice_content":"if"
              },
              {
                "choice_id":"4",
                "choice_content":"in"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n orange, red, green, purple, blue",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shape"
              },
              {
                "choice_id":"2",
                "choice_content":"color"
              },
              {
                "choice_id":"3",
                "choice_content":"foods"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n chicken, pork, hotdog,",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"colors"
              },
              {
                "choice_id":"2",
                "choice_content":"pet"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"shape"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n triangle,circle,square",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"color"
              },
              {
                "choice_id":"2",
                "choice_content":"shape"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n five, three, two, seven, nine",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"food"
              },
              {
                "choice_id":"3",
                "choice_content":"number"
              },
              {
                "choice_id":"4",
                "choice_content":"color"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n a,b,c,d",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"letters"
              },
              {
                "choice_id":"3",
                "choice_content":"numbers"
              },
              {
                "choice_id":"4",
                "choice_content":"colors"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of big?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"large"
              },
              {
                "choice_id":"2",
                "choice_content":"thin"
              },
              {
                "choice_id":"3",
                "choice_content":"small"
              },
              {
                "choice_id":"4",
                "choice_content":"cold"
              },
            ],
          },
           ],
           "hard":[
           //Q1
           {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Which season is hot?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Spring"
              },
              {
                "choice_id":"3",
                "choice_content":"Fall"
              },
              {
                "choice_id":"4",
                "choice_content":"Winter"
              },
              {
                "choice_id":"5",
                "choice_content":"None"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Fall"
              },
              {
                "choice_id":"3",
                "choice_content":"Winter"
              },
              {
                "choice_id":"4",
                "choice_content":"October"
              }
              {
                "choice_id":"5",
                "choice_content":"Spring"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The coat I wore last year is ________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"tie"
              },
              {
                "choice_id":"2",
                "choice_content":"tire"
              },
              {
                "choice_id":"3",
                "choice_content":"tight"
              },
              {
                "choice_id":"4",
                "choice_content":"tired"
              }
              {
                "choice_id":"5",
                "choice_content":"type"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Ear"
              },
              {
                "choice_id":"2",
                "choice_content":"Sock"
              },
               {
                "choice_id":"3",
                "choice_content":"Nose"
              },
               {
                "choice_id":"4",
                "choice_content":"Eye"
              },
               {
                "choice_id":"5",
                "choice_content":"Ear"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A synonym for discover is _______.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lose"
              },
              {
                "choice_id":"2",
                "choice_content":"carry"
              },
               {
                "choice_id":"3",
                "choice_content":"find"
              },
              {
                "choice_id":"4",
                "choice_content":"follow"
              },
               {
                "choice_id":"5",
                "choice_content":"Read"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"He wore a ________ crown on his head.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crowded"
              },
              {
                "choice_id":"2",
                "choice_content":"golden"
              },
              {
                "choice_id":"3",
                "choice_content":"banana"
              },
              {
                "choice_id":"4",
                "choice_content":"chicken"
              },
               {
                "choice_id":"5",
                "choice_content":"egg"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word belongs in the category below? \n PETS",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crocodile"
              },
              {
                "choice_id":"2",
                "choice_content":"elephant"
              },
               {
                "choice_id":"3",
                "choice_content":"hamster"
              },
              {
                "choice_id":"4",
                "choice_content":"whale"
              },
               {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A person who hires or supervises workers \n manager",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dog"
              },
              {
                "choice_id":"2",
                "choice_content":"mouse"
              },
                {
                "choice_id":"3",
                "choice_content":"dad"
              },
              {
                "choice_id":"4",
                "choice_content":"boss"
              },
               {
                "choice_id":"5",
                "choice_content":"cat"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My mom gave _______ of us a big hug.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"both"
              },
               {
                "choice_id":"3",
                "choice_content":"Us"
              },
               {
                "choice_id":"4",
                "choice_content":"We"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A member of a community",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"citizen"
              },
              {
                "choice_id":"2",
                "choice_content":"family"
              },
              {
                "choice_id":"3",
                "choice_content":"friend"
              },
              {
                "choice_id":"4",
                "choice_content":"mother"
              },
               {
                "choice_id":"5",
                "choice_content":"father"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I want ________ one!",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"a"
              },
              {
                "choice_id":"2",
                "choice_content":"the"
              },
              {
                "choice_id":"3",
                "choice_content":"that"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"are"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"tebu"
              },
              {
                "choice_id":"2",
                "choice_content":"tube"
              },
              {
                "choice_id":"3",
                "choice_content":"tbue"
              },
              {
                "choice_id":"4",
                "choice_content":"ubet"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Sam ______ the bag.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"wished"
              },
              {
                "choice_id":"2",
                "choice_content":"tucked"
              },
              {
                "choice_id":"3",
                "choice_content":"packed"
              },
              {
                "choice_id":"4",
                "choice_content":"baked"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A device for securing a door, gate, lid, or drawer in position when closed",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"microphone"
              },
              {
                "choice_id":"2",
                "choice_content":"lock"
              },
              {
                "choice_id":"3",
                "choice_content":"doorbell"
              },
              {
                "choice_id":"4",
                "choice_content":"bell"
              },
               {
                "choice_id":"5",
                "choice_content":"door"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The art or act of singing; vocal music",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"song"
              },
              {
                "choice_id":"2",
                "choice_content":"light"
              },
              {
                "choice_id":"3",
                "choice_content":"homework"
              },
              {
                "choice_id":"4",
                "choice_content":"plastic"
              },
               {
                "choice_id":"5",
                "choice_content":"work"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"How are _______ doing?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"he"
              },
              {
                "choice_id":"2",
                "choice_content":"is"
              },
              {
                "choice_id":"3",
                "choice_content":"the"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"am"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"eetr"
              },
              {
                "choice_id":"2",
                "choice_content":"treee"
              },
              {
                "choice_id":"3",
                "choice_content":"tree"
              },
              {
                "choice_id":"4",
                "choice_content":"tere"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"A small child",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Minnie Mouse"
              },
              {
                "choice_id":"2",
                "choice_content":"tot"
              },
              {
                "choice_id":"3",
                "choice_content":"Mom"
              },
              {
                "choice_id":"4",
                "choice_content":"cookie"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for steaming is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"cold"
              },
              {
                "choice_id":"2",
                "choice_content":"freezing"
              },
              {
                "choice_id":"3",
                "choice_content":"hot"
              },
              {
                "choice_id":"4",
                "choice_content":"dry"
              },
              {
                "choice_id":"5",
                "choice_content":"froze"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the word that is spelled correctly.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"plant"
              },
              {
                "choice_id":"2",
                "choice_content":"platn"
              },
              {
                "choice_id":"3",
                "choice_content":"platn"
              },
              {
                "choice_id":"4",
                "choice_content":"plante"
              },
              {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for note is",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"letter"
              },
              {
                "choice_id":"2",
                "choice_content":"memo"
              },
              {
                "choice_id":"3",
                "choice_content":"message"
              },
              {
                "choice_id":"4",
                "choice_content":"communication"
              },
              {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for moist is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dry"
              },
              {
                "choice_id":"2",
                "choice_content":"crisp"
              },
              {
                "choice_id":"3",
                "choice_content":"damp"
              },
              {
                "choice_id":"4",
                "choice_content":"solid"
              },
               {
                "choice_id":"5",
                "choice_content":"hot"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Walk"
              },
              {
                "choice_id":"2",
                "choice_content":"Football"
              },
              {
                "choice_id":"3",
                "choice_content":"Baseball"
              },
              {
                "choice_id":"4",
                "choice_content":"Volleyball"
              },
               {
                "choice_id":"5",
                "choice_content":"Basketball"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
               {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To have a low temperature means",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"hot"
              },
              {
                "choice_id":"2",
                "choice_content":"cold"
              },
              {
                "choice_id":"3",
                "choice_content":"weather"
              },
              {
                "choice_id":"4",
                "choice_content":"sunny"
              },
               {
                "choice_id":"5",
                "choice_content":"dry"
              },
            ],
          },
           ]
        }
       
      },
      // GRADE5
      {
        "difficulty_name":"Grade 5",
        "grade_desc" : "The fifth grade is the fifth and last school year of elementary school in most schools. ... Key English Language Arts Common Core standards for 5th grade students include: Ability to determine the theme of a book, story, or poem from details in the text.",
        "diff-avatar": "assets/images/grade5.png",
        "content":{
          "easy":[
           		  // Q1
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Find TWO words from the following group of five words that are the CLOSEST in meaning.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"long, thin, narrow, wide, width"
              },
              {
                "choice_id":"2",
                "choice_content":"long, width"
              },
              {
                "choice_id":"3",
                "choice_content":"thin, narrow"
              },
              
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/5.2.png",
            "question":"What does the word mean?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"A billion of something"
              },
              {
                "choice_id":"2",
                "choice_content":"The act of growing old"
              },
              {
                "choice_id":"3",
                "choice_content":"Agriculture based on the soil"
              },
             
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/5.3.png",
            "question":"Read each sentence and decide where the commas belong.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Mum asked me to remember the butter the cheese and the bread."
              },
              {
                "choice_id":"2",
                "choice_content":"Mom asked me to remember the butter, the cheese and the bread."
              },
              {
                "choice_id":"3",
                "choice_content":"Mom aske'd me to remember the butter, the cheese and the bread."
              },
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/5.4.png",
            "question":"We can list the things we like, separating each item with a comma. Which sentence is correct?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"I like apples bananas and oranges."
              },
              {
                "choice_id":"2",
                "choice_content":"I like apples, bananas and oranges."
              },
              {
                "choice_id":"3",
                "choice_content":"I like apples, bananas, and oranges."
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/5.5.png",
            "question":"What is the meaning of the capitalized word in the sentence below? \n \"The counter is GRIZI,\" my southern cousin said as she went to get a rag to wipe it off.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Soapy"
              },
              {
                "choice_id":"2",
                "choice_content":"Oily and dirty"
              },
              {
                "choice_id":"3",
                "choice_content":"Oily and clean"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/5.6.png",
            "question":"What is the meaning of the following science word?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"The speed and direction of something"
              },
              {
                "choice_id":"2",
                "choice_content":"The weight that something gains"
              },
              {
                "choice_id":"3",
                "choice_content":"The slow that something gains"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the best correlative conjunctions to fill the gaps. \n He is ___ honest ___ loyal.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"although-yet"
              },
              {
                "choice_id":"2",
                "choice_content":"neither-nor"
              },
              {
                "choice_id":"3",
                "choice_content":"although-nor"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/5.8.png",
            "question":"What is the meaning of the CAPITALIZED word in the sentence below? \n Since we had not had chocolate in days, we CRAVED it now.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Yearn for something"
              },
              {
                "choice_id":"2",
                "choice_content":"Disgusted by something"
              },
               {
                "choice_id":"3",
                "choice_content":"Disgusted by nothing"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/5.9.png",
            "question":"What does the capitalized simile mean in the sentence below? \n After getting sick, my face was AS PALE AS A GHOST due to throwing up so much.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Dressed up as a ghost"
              },
              {
                "choice_id":"2",
                "choice_content":"Very white"
              },

               {
                "choice_id":"3",
                "choice_content":"Very sad"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/5.10.png",
            "question":"'Please put this in the mail.' Which word is a homophone?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"this"
              },
              {
                "choice_id":"2",
                "choice_content":"mail"
              },
              {
                "choice_id":"2",
                "choice_content":"put"
              },
            ],
          },
          --
        
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which might make you \"giggle\"?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Baking cookies with your mom"
              },
              {
                "choice_id":"2",
                "choice_content":"Getting tickled by a feather"
              },
               {
                "choice_id":"3",
                "choice_content":"Walking with friends"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"looking"
              },
              {
                "choice_id":"3",
                "choice_content":"redalert"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What does the word \"replay\" mean in the sentence below?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"not play"
              },
              {
                "choice_id":"2",
                "choice_content":"play again"
              },
                {
                "choice_id":"3",
                "choice_content":"play"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A pencil is:?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"smooth"
              },
              {
                "choice_id":"2",
                "choice_content":"pointed"
              },
               {
                "choice_id":"3",
                "choice_content":"heavy"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What a wonderful feast this is! \nWhat does feast mean?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to become less hard"
              },
              {
                "choice_id":"2",
                "choice_content":"a large meal"
              },
              {
                "choice_id":"3",
                "choice_content":"a small meal"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"When you "pause" you",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"continue doing something"
              },
              {
                "choice_id":"2",
                "choice_content":"stop completely."
              },
              {
                "choice_id":"3",
                "choice_content":"play something."
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
               {
                "choice_id":"3",
                "choice_content":"running"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"The middle of the earth is called the ________",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"core"
              },
              {
                "choice_id":"2",
                "choice_content":"plates"
              },
               {
                "choice_id":"3",
                "choice_content":"soil"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I ________ Tim singing a song",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"heard"
              },
              {
                "choice_id":"2",
                "choice_content":"because"
              },
               {
                "choice_id":"3",
                "choice_content":"eat"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
              {
                "choice_id":"3",
                "choice_content":"walking"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Brush your teeth _________ you go to bed.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"been"
              },
              {
                "choice_id":"2",
                "choice_content":"before"
              },
               {
                "choice_id":"3",
                "choice_content":"now"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I had to go to bed _________ I was sleepy.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"when"
              },
              {
                "choice_id":"2",
                "choice_content":"be"
              },
              {
                "choice_id":"3",
                "choice_content":"are"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"We learn in a _________",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"restaurant"
              },
              {
                "choice_id":"2",
                "choice_content":"classroom"
              },
              {
                "choice_id":"3",
                "choice_content":"restroom"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Lemons, butter and the sun are _________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"green"
              },
              {
                "choice_id":"2",
                "choice_content":"blue"
              },
               {
                "choice_id":"3",
                "choice_content":"yellow"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A _________ is someone you do not know",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"family member"
              },
              {
                "choice_id":"2",
                "choice_content":"classmate"
              },
               {
                "choice_id":"3",
                "choice_content":"stranger"
              },
            ],
          },
           ],
           "medium":[
           // Q1
          {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Adam shivered from the cold January wind. What does shiver mean?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to make up a story"
              },
              {
                "choice_id":"2",
                "choice_content":"to shake or tremble"
              },
              {
                "choice_id":"3",
                "choice_content":"to dance around"
              },
              {
                "choice_id":"3",
                "choice_content":"to cry around"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Zachary will assist the teacher in class today. What does assist mean?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"ignore"
              },
              {
                "choice_id":"2",
                "choice_content":"push"
              },
              {
                "choice_id":"3",
                "choice_content":"copy"
              },
              {
                "choice_id":"4",
                "choice_content":"help"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"My new reading teacher is a __________",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"rat"
              },
              {
                "choice_id":"2",
                "choice_content":"bat"
              },
              {
                "choice_id":"3",
                "choice_content":"bat"
              },
              {
                "choice_id":"4",
                "choice_content":"man"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My ___________ kite went up in the sky.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lie"
              },
              {
                "choice_id":"2",
                "choice_content":"pie"
              },
               {
                "choice_id":"3",
                "choice_content":"high"
              },
               {
                "choice_id":"4",
                "choice_content":"my"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"You have to ________ your mom's hand to cross the street.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"high"
              },
               {
                "choice_id":"3",
                "choice_content":"better"
              },
              {
                "choice_id":"4",
                "choice_content":"he"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you lose your paper, you must ________ it.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"return"
              },
              {
                "choice_id":"2",
                "choice_content":"rewrite"
              },
              {
                "choice_id":"3",
                "choice_content":"replay"
              },
              {
                "choice_id":"4",
                "choice_content":"destroy"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To breathe, eat, and grow means",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"live"
              },
              {
                "choice_id":"2",
                "choice_content":"plant"
              },
              {
                "choice_id":"3",
                "choice_content":"die"
              },
              {
                "choice_id":"4",
                "choice_content":"walk"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Bad things always happen to Matt. He is",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"unsafe"
              },
              {
                "choice_id":"2",
                "choice_content":"unlucky"
              },
                {
                "choice_id":"3",
                "choice_content":"unusual"
              },
              {
                "choice_id":"4",
                "choice_content":"lucky"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of loud?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"noisy"
              },
              {
                "choice_id":"2",
                "choice_content":"quiet"
              },
               {
                "choice_id":"3",
                "choice_content":"louder"
              },
              {
                "choice_id":"4",
                "choice_content":"quit"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She looks very nice in that dress. She is pretty. \n PRETTY means:",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"looks good"
              },
              {
                "choice_id":"2",
                "choice_content":"looks bad"
              },
              {
                "choice_id":"3",
                "choice_content":"looks happy"
              },
              {
                "choice_id":"4",
                "choice_content":"looks sad"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"incorrect means?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"good"
              },
              {
                "choice_id":"2",
                "choice_content":"ugly"
              },
              {
                "choice_id":"3",
                "choice_content":"wrong"
              },
              {
                "choice_id":"4",
                "choice_content":"handsome"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I drank all of my juice. Please _________ my cup.",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"redo"
              },
              {
                "choice_id":"2",
                "choice_content":"refill"
              },
              {
                "choice_id":"3",
                "choice_content":"remake"
              },
              {
                "choice_id":"4",
                "choice_content":"return"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The ________ was in the cave",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bat"
              },
              {
                "choice_id":"2",
                "choice_content":"van"
              },
              {
                "choice_id":"3",
                "choice_content":"dog"
              },
              {
                "choice_id":"4",
                "choice_content":"cat"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you treat everyone in the same way, you are:",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bad"
              },
              {
                "choice_id":"2",
                "choice_content":"fair"
              },
              {
                "choice_id":"3",
                "choice_content":"free"
              },
              {
                "choice_id":"4",
                "choice_content":"crazy"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I like to ride on a ________.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"boat"
              },
              {
                "choice_id":"2",
                "choice_content":"belt"
              },
              {
                "choice_id":"3",
                "choice_content":"boot"
              },
              {
                "choice_id":"4",
                "choice_content":"bat"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She is going ________ me to the beach.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"with"
              },
              {
                "choice_id":"2",
                "choice_content":"what"
              },
              {
                "choice_id":"3",
                "choice_content":"where"
              },
              {
                "choice_id":"4",
                "choice_content":"when"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word DOES NOT belong with the others?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"computer"
              },
              {
                "choice_id":"2",
                "choice_content":"keyboard"
              },
              {
                "choice_id":"3",
                "choice_content":"mouse"
              },
              {
                "choice_id":"4",
                "choice_content":"television"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"My best friend _______ Sam.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"is"
              },
              {
                "choice_id":"2",
                "choice_content":"on"
              },
              {
                "choice_id":"3",
                "choice_content":"if"
              },
              {
                "choice_id":"4",
                "choice_content":"in"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n orange, red, green, purple, blue",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shape"
              },
              {
                "choice_id":"2",
                "choice_content":"color"
              },
              {
                "choice_id":"3",
                "choice_content":"foods"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n chicken, pork, hotdog,",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"colors"
              },
              {
                "choice_id":"2",
                "choice_content":"pet"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"shape"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n triangle,circle,square",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"color"
              },
              {
                "choice_id":"2",
                "choice_content":"shape"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n five, three, two, seven, nine",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"food"
              },
              {
                "choice_id":"3",
                "choice_content":"number"
              },
              {
                "choice_id":"4",
                "choice_content":"color"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n a,b,c,d",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"letters"
              },
              {
                "choice_id":"3",
                "choice_content":"numbers"
              },
              {
                "choice_id":"4",
                "choice_content":"colors"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of big?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"large"
              },
              {
                "choice_id":"2",
                "choice_content":"thin"
              },
              {
                "choice_id":"3",
                "choice_content":"small"
              },
              {
                "choice_id":"4",
                "choice_content":"cold"
              },
            ],
          },
           ],
           "hard":[
           //Q1
           {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Which season is hot?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Spring"
              },
              {
                "choice_id":"3",
                "choice_content":"Fall"
              },
              {
                "choice_id":"4",
                "choice_content":"Winter"
              },
              {
                "choice_id":"5",
                "choice_content":"None"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Fall"
              },
              {
                "choice_id":"3",
                "choice_content":"Winter"
              },
              {
                "choice_id":"4",
                "choice_content":"October"
              }
              {
                "choice_id":"5",
                "choice_content":"Spring"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The coat I wore last year is ________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"tie"
              },
              {
                "choice_id":"2",
                "choice_content":"tire"
              },
              {
                "choice_id":"3",
                "choice_content":"tight"
              },
              {
                "choice_id":"4",
                "choice_content":"tired"
              }
              {
                "choice_id":"5",
                "choice_content":"type"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Ear"
              },
              {
                "choice_id":"2",
                "choice_content":"Sock"
              },
               {
                "choice_id":"3",
                "choice_content":"Nose"
              },
               {
                "choice_id":"4",
                "choice_content":"Eye"
              },
               {
                "choice_id":"5",
                "choice_content":"Ear"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A synonym for discover is _______.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lose"
              },
              {
                "choice_id":"2",
                "choice_content":"carry"
              },
               {
                "choice_id":"3",
                "choice_content":"find"
              },
              {
                "choice_id":"4",
                "choice_content":"follow"
              },
               {
                "choice_id":"5",
                "choice_content":"Read"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"He wore a ________ crown on his head.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crowded"
              },
              {
                "choice_id":"2",
                "choice_content":"golden"
              },
              {
                "choice_id":"3",
                "choice_content":"banana"
              },
              {
                "choice_id":"4",
                "choice_content":"chicken"
              },
               {
                "choice_id":"5",
                "choice_content":"egg"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word belongs in the category below? \n PETS",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crocodile"
              },
              {
                "choice_id":"2",
                "choice_content":"elephant"
              },
               {
                "choice_id":"3",
                "choice_content":"hamster"
              },
              {
                "choice_id":"4",
                "choice_content":"whale"
              },
               {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A person who hires or supervises workers \n manager",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dog"
              },
              {
                "choice_id":"2",
                "choice_content":"mouse"
              },
                {
                "choice_id":"3",
                "choice_content":"dad"
              },
              {
                "choice_id":"4",
                "choice_content":"boss"
              },
               {
                "choice_id":"5",
                "choice_content":"cat"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My mom gave _______ of us a big hug.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"both"
              },
               {
                "choice_id":"3",
                "choice_content":"Us"
              },
               {
                "choice_id":"4",
                "choice_content":"We"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A member of a community",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"citizen"
              },
              {
                "choice_id":"2",
                "choice_content":"family"
              },
              {
                "choice_id":"3",
                "choice_content":"friend"
              },
              {
                "choice_id":"4",
                "choice_content":"mother"
              },
               {
                "choice_id":"5",
                "choice_content":"father"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I want ________ one!",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"a"
              },
              {
                "choice_id":"2",
                "choice_content":"the"
              },
              {
                "choice_id":"3",
                "choice_content":"that"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"are"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"tebu"
              },
              {
                "choice_id":"2",
                "choice_content":"tube"
              },
              {
                "choice_id":"3",
                "choice_content":"tbue"
              },
              {
                "choice_id":"4",
                "choice_content":"ubet"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Sam ______ the bag.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"wished"
              },
              {
                "choice_id":"2",
                "choice_content":"tucked"
              },
              {
                "choice_id":"3",
                "choice_content":"packed"
              },
              {
                "choice_id":"4",
                "choice_content":"baked"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A device for securing a door, gate, lid, or drawer in position when closed",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"microphone"
              },
              {
                "choice_id":"2",
                "choice_content":"lock"
              },
              {
                "choice_id":"3",
                "choice_content":"doorbell"
              },
              {
                "choice_id":"4",
                "choice_content":"bell"
              },
               {
                "choice_id":"5",
                "choice_content":"door"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The art or act of singing; vocal music",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"song"
              },
              {
                "choice_id":"2",
                "choice_content":"light"
              },
              {
                "choice_id":"3",
                "choice_content":"homework"
              },
              {
                "choice_id":"4",
                "choice_content":"plastic"
              },
               {
                "choice_id":"5",
                "choice_content":"work"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"How are _______ doing?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"he"
              },
              {
                "choice_id":"2",
                "choice_content":"is"
              },
              {
                "choice_id":"3",
                "choice_content":"the"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"am"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"eetr"
              },
              {
                "choice_id":"2",
                "choice_content":"treee"
              },
              {
                "choice_id":"3",
                "choice_content":"tree"
              },
              {
                "choice_id":"4",
                "choice_content":"tere"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"A small child",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Minnie Mouse"
              },
              {
                "choice_id":"2",
                "choice_content":"tot"
              },
              {
                "choice_id":"3",
                "choice_content":"Mom"
              },
              {
                "choice_id":"4",
                "choice_content":"cookie"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for steaming is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"cold"
              },
              {
                "choice_id":"2",
                "choice_content":"freezing"
              },
              {
                "choice_id":"3",
                "choice_content":"hot"
              },
              {
                "choice_id":"4",
                "choice_content":"dry"
              },
              {
                "choice_id":"5",
                "choice_content":"froze"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the word that is spelled correctly.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"plant"
              },
              {
                "choice_id":"2",
                "choice_content":"platn"
              },
              {
                "choice_id":"3",
                "choice_content":"platn"
              },
              {
                "choice_id":"4",
                "choice_content":"plante"
              },
              {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for note is",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"letter"
              },
              {
                "choice_id":"2",
                "choice_content":"memo"
              },
              {
                "choice_id":"3",
                "choice_content":"message"
              },
              {
                "choice_id":"4",
                "choice_content":"communication"
              },
              {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for moist is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dry"
              },
              {
                "choice_id":"2",
                "choice_content":"crisp"
              },
              {
                "choice_id":"3",
                "choice_content":"damp"
              },
              {
                "choice_id":"4",
                "choice_content":"solid"
              },
               {
                "choice_id":"5",
                "choice_content":"hot"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Walk"
              },
              {
                "choice_id":"2",
                "choice_content":"Football"
              },
              {
                "choice_id":"3",
                "choice_content":"Baseball"
              },
              {
                "choice_id":"4",
                "choice_content":"Volleyball"
              },
               {
                "choice_id":"5",
                "choice_content":"Basketball"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
               {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To have a low temperature means",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"hot"
              },
              {
                "choice_id":"2",
                "choice_content":"cold"
              },
              {
                "choice_id":"3",
                "choice_content":"weather"
              },
              {
                "choice_id":"4",
                "choice_content":"sunny"
              },
               {
                "choice_id":"5",
                "choice_content":"dry"
              },
            ],
          },
           ]
        }
        
      },

      // GRADE6
      {
        "difficulty_name":"Grade 6",
        "grade_desc" : "Sixth grade is a year of education for students ages 11–12. In many nations, it is the first year of middle school or the last year of elementary school. ",
        "diff-avatar": "assets/images/grade6.png",
        "content":{
          "easy":[
           	// Q1
          {
            "q_img": "assets/images/english/eng.png",
            "question":"For the sentence below, determine which answer shows the correct abbreviation for the underlined word.\n He was looking for John Peters Senior rather than his son.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Sr."
              },
              {
                "choice_id":"2",
                "choice_content":"S."
              },
              {
                "choice_id":"3",
                "choice_content":"Sn."
              },
             
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"For the sentence below, find the correct coordinate adjectives that would best describe the noun.\n My father loves to drive on _____________ roads in the mountains.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"slippery, terrain"
              },
              {
                "choice_id":"2",
                "choice_content":"winter, crooked"
              },
            
              {
                "choice_id":"3",
                "choice_content":"narrow, windy"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Select the adjectives in the following sentence. \n The road comprised large houses and a tiny shop.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"comprised, and"
              },
              {
                "choice_id":"2",
                "choice_content":"houses, shop"
              },
              {
                "choice_id":"3",
                "choice_content":"large, tiny"
              },
             
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"He ran quickly in last year's race.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"last year's"
              },
              {
                "choice_id":"2",
                "choice_content":"race"
              },
               {
                "choice_id":"3",
                "choice_content":"quickly"
              },
              
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/6.5.png",
            "question":"The ....... ....... are in the middle aisle next to the vegetables.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"boxed fish"
              },
              {
                "choice_id":"2",
                "choice_content":"frozen fish"
              },

               {
                "choice_id":"3",
                "choice_content":"large fish"
              },
              
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/6.6.png",
            "question":"Which of the following lists is not in alphabetical order?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Differ, different, differentiate"
              },
              {
                "choice_id":"2",
                "choice_content":"Eat, eaten, eats"
              },
             
              {
                "choice_id":"3",
                "choice_content":"Understood, understand, understanding"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/6.7.png",
            "question":"Empty",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Drained"
              },
              {
                "choice_id":"2",
                "choice_content":"Vacant"
              },
            
              {
                "choice_id":"3",
                "choice_content":"Full"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/6.8.png",
            "question":"The correct order of words on dictionary is ___________ . ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Who is."
              },
              {
                "choice_id":"2",
                "choice_content":"Whois"
              },
                {
                "choice_id":"3",
                "choice_content":"Who's"
              },
                
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/6.9.png",
            "question":"Ryland High School has the best teachers in the county.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Begins the sentence"
              },
              {
                "choice_id":"2",
                "choice_content":"Is in the middle of the sentence"
              },
              {
                "choice_id":"3",
                "choice_content":"Contains a simple adjective"
              },
            ],
          },
          //Q10
          {
            
            "q_img": "assets/images/english/eng.png",
            "question":"She was brave _ a lion. What's the missing word?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"before"
              },
              {
                "choice_id":"2",
                "choice_content":"because"
              },
              {
                "choice_id":"3",
                "choice_content":"as"
              },
              
            ],
          },
       
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which might make you \"giggle\"?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Baking cookies with your mom"
              },
              {
                "choice_id":"2",
                "choice_content":"Getting tickled by a feather"
              },
               {
                "choice_id":"3",
                "choice_content":"Walking with friends"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"looking"
              },
              {
                "choice_id":"3",
                "choice_content":"redalert"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What does the word \"replay\" mean in the sentence below?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"not play"
              },
              {
                "choice_id":"2",
                "choice_content":"play again"
              },
                {
                "choice_id":"3",
                "choice_content":"play"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A pencil is:?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"smooth"
              },
              {
                "choice_id":"2",
                "choice_content":"pointed"
              },
               {
                "choice_id":"3",
                "choice_content":"heavy"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What a wonderful feast this is! \nWhat does feast mean?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to become less hard"
              },
              {
                "choice_id":"2",
                "choice_content":"a large meal"
              },
              {
                "choice_id":"3",
                "choice_content":"a small meal"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"When you "pause" you",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"continue doing something"
              },
              {
                "choice_id":"2",
                "choice_content":"stop completely."
              },
              {
                "choice_id":"3",
                "choice_content":"play something."
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
               {
                "choice_id":"3",
                "choice_content":"running"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"The middle of the earth is called the ________",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"core"
              },
              {
                "choice_id":"2",
                "choice_content":"plates"
              },
               {
                "choice_id":"3",
                "choice_content":"soil"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I ________ Tim singing a song",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"heard"
              },
              {
                "choice_id":"2",
                "choice_content":"because"
              },
               {
                "choice_id":"3",
                "choice_content":"eat"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is made of two smaller words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"jumping"
              },
              {
                "choice_id":"2",
                "choice_content":"outside"
              },
              {
                "choice_id":"3",
                "choice_content":"walking"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Brush your teeth _________ you go to bed.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"been"
              },
              {
                "choice_id":"2",
                "choice_content":"before"
              },
               {
                "choice_id":"3",
                "choice_content":"now"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I had to go to bed _________ I was sleepy.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"when"
              },
              {
                "choice_id":"2",
                "choice_content":"be"
              },
              {
                "choice_id":"3",
                "choice_content":"are"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"We learn in a _________",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"restaurant"
              },
              {
                "choice_id":"2",
                "choice_content":"classroom"
              },
              {
                "choice_id":"3",
                "choice_content":"restroom"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Lemons, butter and the sun are _________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"green"
              },
              {
                "choice_id":"2",
                "choice_content":"blue"
              },
               {
                "choice_id":"3",
                "choice_content":"yellow"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A _________ is someone you do not know",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"family member"
              },
              {
                "choice_id":"2",
                "choice_content":"classmate"
              },
               {
                "choice_id":"3",
                "choice_content":"stranger"
              },
            ],
          },
           ],
           "medium":[
           // Q1
          {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Adam shivered from the cold January wind. What does shiver mean?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"to make up a story"
              },
              {
                "choice_id":"2",
                "choice_content":"to shake or tremble"
              },
              {
                "choice_id":"3",
                "choice_content":"to dance around"
              },
              {
                "choice_id":"3",
                "choice_content":"to cry around"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Zachary will assist the teacher in class today. What does assist mean?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"ignore"
              },
              {
                "choice_id":"2",
                "choice_content":"push"
              },
              {
                "choice_id":"3",
                "choice_content":"copy"
              },
              {
                "choice_id":"4",
                "choice_content":"help"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"My new reading teacher is a __________",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"rat"
              },
              {
                "choice_id":"2",
                "choice_content":"bat"
              },
              {
                "choice_id":"3",
                "choice_content":"bat"
              },
              {
                "choice_id":"4",
                "choice_content":"man"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My ___________ kite went up in the sky.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lie"
              },
              {
                "choice_id":"2",
                "choice_content":"pie"
              },
               {
                "choice_id":"3",
                "choice_content":"high"
              },
               {
                "choice_id":"4",
                "choice_content":"my"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":"You have to ________ your mom's hand to cross the street.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"high"
              },
               {
                "choice_id":"3",
                "choice_content":"better"
              },
              {
                "choice_id":"4",
                "choice_content":"he"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you lose your paper, you must ________ it.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"return"
              },
              {
                "choice_id":"2",
                "choice_content":"rewrite"
              },
              {
                "choice_id":"3",
                "choice_content":"replay"
              },
              {
                "choice_id":"4",
                "choice_content":"destroy"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To breathe, eat, and grow means",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"live"
              },
              {
                "choice_id":"2",
                "choice_content":"plant"
              },
              {
                "choice_id":"3",
                "choice_content":"die"
              },
              {
                "choice_id":"4",
                "choice_content":"walk"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Bad things always happen to Matt. He is",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"unsafe"
              },
              {
                "choice_id":"2",
                "choice_content":"unlucky"
              },
                {
                "choice_id":"3",
                "choice_content":"unusual"
              },
              {
                "choice_id":"4",
                "choice_content":"lucky"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of loud?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"noisy"
              },
              {
                "choice_id":"2",
                "choice_content":"quiet"
              },
               {
                "choice_id":"3",
                "choice_content":"louder"
              },
              {
                "choice_id":"4",
                "choice_content":"quit"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She looks very nice in that dress. She is pretty. \n PRETTY means:",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"looks good"
              },
              {
                "choice_id":"2",
                "choice_content":"looks bad"
              },
              {
                "choice_id":"3",
                "choice_content":"looks happy"
              },
              {
                "choice_id":"4",
                "choice_content":"looks sad"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"incorrect means?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"good"
              },
              {
                "choice_id":"2",
                "choice_content":"ugly"
              },
              {
                "choice_id":"3",
                "choice_content":"wrong"
              },
              {
                "choice_id":"4",
                "choice_content":"handsome"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I drank all of my juice. Please _________ my cup.",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"redo"
              },
              {
                "choice_id":"2",
                "choice_content":"refill"
              },
              {
                "choice_id":"3",
                "choice_content":"remake"
              },
              {
                "choice_id":"4",
                "choice_content":"return"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The ________ was in the cave",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bat"
              },
              {
                "choice_id":"2",
                "choice_content":"van"
              },
              {
                "choice_id":"3",
                "choice_content":"dog"
              },
              {
                "choice_id":"4",
                "choice_content":"cat"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"If you treat everyone in the same way, you are:",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bad"
              },
              {
                "choice_id":"2",
                "choice_content":"fair"
              },
              {
                "choice_id":"3",
                "choice_content":"free"
              },
              {
                "choice_id":"4",
                "choice_content":"crazy"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I like to ride on a ________.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"boat"
              },
              {
                "choice_id":"2",
                "choice_content":"belt"
              },
              {
                "choice_id":"3",
                "choice_content":"boot"
              },
              {
                "choice_id":"4",
                "choice_content":"bat"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"She is going ________ me to the beach.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"with"
              },
              {
                "choice_id":"2",
                "choice_content":"what"
              },
              {
                "choice_id":"3",
                "choice_content":"where"
              },
              {
                "choice_id":"4",
                "choice_content":"when"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word DOES NOT belong with the others?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"computer"
              },
              {
                "choice_id":"2",
                "choice_content":"keyboard"
              },
              {
                "choice_id":"3",
                "choice_content":"mouse"
              },
              {
                "choice_id":"4",
                "choice_content":"television"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"My best friend _______ Sam.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"is"
              },
              {
                "choice_id":"2",
                "choice_content":"on"
              },
              {
                "choice_id":"3",
                "choice_content":"if"
              },
              {
                "choice_id":"4",
                "choice_content":"in"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n orange, red, green, purple, blue",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shape"
              },
              {
                "choice_id":"2",
                "choice_content":"color"
              },
              {
                "choice_id":"3",
                "choice_content":"foods"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n chicken, pork, hotdog,",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"colors"
              },
              {
                "choice_id":"2",
                "choice_content":"pet"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"shape"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n triangle,circle,square",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"color"
              },
              {
                "choice_id":"2",
                "choice_content":"shape"
              },
              {
                "choice_id":"3",
                "choice_content":"food"
              },
              {
                "choice_id":"4",
                "choice_content":"pet"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n five, three, two, seven, nine",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"food"
              },
              {
                "choice_id":"3",
                "choice_content":"number"
              },
              {
                "choice_id":"4",
                "choice_content":"color"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What category do the following words belong to? \n a,b,c,d",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes"
              },
              {
                "choice_id":"2",
                "choice_content":"letters"
              },
              {
                "choice_id":"3",
                "choice_content":"numbers"
              },
              {
                "choice_id":"4",
                "choice_content":"colors"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"What is the opposite of big?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"large"
              },
              {
                "choice_id":"2",
                "choice_content":"thin"
              },
              {
                "choice_id":"3",
                "choice_content":"small"
              },
              {
                "choice_id":"4",
                "choice_content":"cold"
              },
            ],
          },
           ],
           "hard":[
           //Q1
           {
            "q_img": "assets/images/english/eng.jpg",
            "question":"Which season is hot?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Spring"
              },
              {
                "choice_id":"3",
                "choice_content":"Fall"
              },
              {
                "choice_id":"4",
                "choice_content":"Winter"
              },
              {
                "choice_id":"5",
                "choice_content":"None"
              },
            
            ],
          },
          // Q2
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Summer"
              },
              {
                "choice_id":"2",
                "choice_content":"Fall"
              },
              {
                "choice_id":"3",
                "choice_content":"Winter"
              },
              {
                "choice_id":"4",
                "choice_content":"October"
              }
              {
                "choice_id":"5",
                "choice_content":"Spring"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The coat I wore last year is ________.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"tie"
              },
              {
                "choice_id":"2",
                "choice_content":"tire"
              },
              {
                "choice_id":"3",
                "choice_content":"tight"
              },
              {
                "choice_id":"4",
                "choice_content":"tired"
              }
              {
                "choice_id":"5",
                "choice_content":"type"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Ear"
              },
              {
                "choice_id":"2",
                "choice_content":"Sock"
              },
               {
                "choice_id":"3",
                "choice_content":"Nose"
              },
               {
                "choice_id":"4",
                "choice_content":"Eye"
              },
               {
                "choice_id":"5",
                "choice_content":"Ear"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/english/eng.png",
            "question":". A synonym for discover is _______.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lose"
              },
              {
                "choice_id":"2",
                "choice_content":"carry"
              },
               {
                "choice_id":"3",
                "choice_content":"find"
              },
              {
                "choice_id":"4",
                "choice_content":"follow"
              },
               {
                "choice_id":"5",
                "choice_content":"Read"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/english/eng.png",
            "question":"He wore a ________ crown on his head.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crowded"
              },
              {
                "choice_id":"2",
                "choice_content":"golden"
              },
              {
                "choice_id":"3",
                "choice_content":"banana"
              },
              {
                "choice_id":"4",
                "choice_content":"chicken"
              },
               {
                "choice_id":"5",
                "choice_content":"egg"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word belongs in the category below? \n PETS",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"crocodile"
              },
              {
                "choice_id":"2",
                "choice_content":"elephant"
              },
               {
                "choice_id":"3",
                "choice_content":"hamster"
              },
              {
                "choice_id":"4",
                "choice_content":"whale"
              },
               {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A person who hires or supervises workers \n manager",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dog"
              },
              {
                "choice_id":"2",
                "choice_content":"mouse"
              },
                {
                "choice_id":"3",
                "choice_content":"dad"
              },
              {
                "choice_id":"4",
                "choice_content":"boss"
              },
               {
                "choice_id":"5",
                "choice_content":"cat"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/english/eng.png",
            "question":". My mom gave _______ of us a big hug.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hold"
              },
              {
                "choice_id":"2",
                "choice_content":"both"
              },
               {
                "choice_id":"3",
                "choice_content":"Us"
              },
               {
                "choice_id":"4",
                "choice_content":"We"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A member of a community",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"citizen"
              },
              {
                "choice_id":"2",
                "choice_content":"family"
              },
              {
                "choice_id":"3",
                "choice_content":"friend"
              },
              {
                "choice_id":"4",
                "choice_content":"mother"
              },
               {
                "choice_id":"5",
                "choice_content":"father"
              },
            ],
          },
           //Q11-------------------
          {
            "q_img": "assets/images/english/eng.png",
            "question":"I want ________ one!",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"a"
              },
              {
                "choice_id":"2",
                "choice_content":"the"
              },
              {
                "choice_id":"3",
                "choice_content":"that"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"are"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"tebu"
              },
              {
                "choice_id":"2",
                "choice_content":"tube"
              },
              {
                "choice_id":"3",
                "choice_content":"tbue"
              },
              {
                "choice_id":"4",
                "choice_content":"ubet"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Sam ______ the bag.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"wished"
              },
              {
                "choice_id":"2",
                "choice_content":"tucked"
              },
              {
                "choice_id":"3",
                "choice_content":"packed"
              },
              {
                "choice_id":"4",
                "choice_content":"baked"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A device for securing a door, gate, lid, or drawer in position when closed",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"microphone"
              },
              {
                "choice_id":"2",
                "choice_content":"lock"
              },
              {
                "choice_id":"3",
                "choice_content":"doorbell"
              },
              {
                "choice_id":"4",
                "choice_content":"bell"
              },
               {
                "choice_id":"5",
                "choice_content":"door"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/english/eng.png",
            "question":"The art or act of singing; vocal music",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"song"
              },
              {
                "choice_id":"2",
                "choice_content":"light"
              },
              {
                "choice_id":"3",
                "choice_content":"homework"
              },
              {
                "choice_id":"4",
                "choice_content":"plastic"
              },
               {
                "choice_id":"5",
                "choice_content":"work"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/english/eng.png",
            "question":"How are _______ doing?",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"he"
              },
              {
                "choice_id":"2",
                "choice_content":"is"
              },
              {
                "choice_id":"3",
                "choice_content":"the"
              },
              {
                "choice_id":"4",
                "choice_content":"you"
              },
               {
                "choice_id":"5",
                "choice_content":"am"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "3",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"eetr"
              },
              {
                "choice_id":"2",
                "choice_content":"treee"
              },
              {
                "choice_id":"3",
                "choice_content":"tree"
              },
              {
                "choice_id":"4",
                "choice_content":"tere"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/english/balls.png",
            "question":"A small child",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Minnie Mouse"
              },
              {
                "choice_id":"2",
                "choice_content":"tot"
              },
              {
                "choice_id":"3",
                "choice_content":"Mom"
              },
              {
                "choice_id":"4",
                "choice_content":"cookie"
              },
               {
                "choice_id":"5",
                "choice_content":"None"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for steaming is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"cold"
              },
              {
                "choice_id":"2",
                "choice_content":"freezing"
              },
              {
                "choice_id":"3",
                "choice_content":"hot"
              },
              {
                "choice_id":"4",
                "choice_content":"dry"
              },
              {
                "choice_id":"5",
                "choice_content":"froze"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Choose the word that is spelled correctly.",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"plant"
              },
              {
                "choice_id":"2",
                "choice_content":"platn"
              },
              {
                "choice_id":"3",
                "choice_content":"platn"
              },
              {
                "choice_id":"4",
                "choice_content":"plante"
              },
              {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for note is",
            "answer": "4",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"letter"
              },
              {
                "choice_id":"2",
                "choice_content":"memo"
              },
              {
                "choice_id":"3",
                "choice_content":"message"
              },
              {
                "choice_id":"4",
                "choice_content":"communication"
              },
              {
                "choice_id":"5",
                "choice_content":"All of the above"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/english/eng.png",
            "question":"A synonym for moist is",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dry"
              },
              {
                "choice_id":"2",
                "choice_content":"crisp"
              },
              {
                "choice_id":"3",
                "choice_content":"damp"
              },
              {
                "choice_id":"4",
                "choice_content":"solid"
              },
               {
                "choice_id":"5",
                "choice_content":"hot"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word does not belong in a group with the other words?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Walk"
              },
              {
                "choice_id":"2",
                "choice_content":"Football"
              },
              {
                "choice_id":"3",
                "choice_content":"Baseball"
              },
              {
                "choice_id":"4",
                "choice_content":"Volleyball"
              },
               {
                "choice_id":"5",
                "choice_content":"Basketball"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/english/eng.png",
            "question":"Which word is spelled correctly?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"backpak"
              },
              {
                "choice_id":"2",
                "choice_content":"backpack"
              },
              {
                "choice_id":"3",
                "choice_content":"bakpack"
              },
              {
                "choice_id":"4",
                "choice_content":"bacpack"
              },
               {
                "choice_id":"5",
                "choice_content":"None of the above"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/english/eng.png",
            "question":"To have a low temperature means",
            "answer": "2",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"hot"
              },
              {
                "choice_id":"2",
                "choice_content":"cold"
              },
              {
                "choice_id":"3",
                "choice_content":"weather"
              },
              {
                "choice_id":"4",
                "choice_content":"sunny"
              },
               {
                "choice_id":"5",
                "choice_content":"dry"
              },
            ],
          },
           ]
        }
          
      },
    ]
  },

//Mathematics
  {
    "category_name":"Math",
    "category_img":"assets/images/cmath.png",
    "difficulty":[
      {
        "difficulty_name":"Grade 1",
        "grade_desc" : "The first grade is the first school year in Elementary school after Kindergarten. Children who are usually 6 to 7 years old are enrolled for this grade. ... Additionally, first graders are taught basic reading skills with the focus on reading and writing simple statements.",
        "diff-avatar": "assets/images/grade1.png",
        "content":{
          "easy":[
            // Q1 g1
          {
            "q_img": "assets/images/math/1.1.png",
            "question":"What shape is around these snooker balls?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"A circle"
              },
              {
                "choice_id":"2",
                "choice_content":"A square"
              },
              {
                "choice_id":"3",
                "choice_content":"A triangle"
              },
              {
                "choice_id":"4",
                "choice_content":"An oblong"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/math/math.png",
            "question":"What is 5 + 32?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"73"
              },
              {
                "choice_id":"2",
                "choice_content":"32"
              },
              {
                "choice_id":"3",
                "choice_content":"325"
              },
              {
                "choice_id":"4",
                "choice_content":"37"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which of the following is to do with addition?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"sharing"
              },
              {
                "choice_id":"2",
                "choice_content":"put together"
              },
              {
                "choice_id":"3",
                "choice_content":"take away"
              },
              {
                "choice_id":"4",
                "choice_content":"multiply"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/math/math.png",
            "question":"A table has 4 legs. How many legs do 4 tables have?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"16"
              },
              {
                "choice_id":"2",
                "choice_content":"44"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/math/math.png",
            "question":"What is the total of 2, 15 and 3?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"19"
              },
              {
                "choice_id":"2",
                "choice_content":"20"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/math/math.png",
            "question":"10 - 9",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"1"
              },
              {
                "choice_id":"2",
                "choice_content":"2"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which number should come at the end of this sequence: 5, 10, 15, 20, __?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"50"
              },
              {
                "choice_id":"2",
                "choice_content":"25"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/math/1.8.png",
            "question":"Sonny and Baek  ___  eating ice cream.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"16"
              },
              {
                "choice_id":"2",
                "choice_content":"10"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which number isn't even?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"27"
              },
              {
                "choice_id":"2",
                "choice_content":"36"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which number is odd",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"13"
              },
              {
                "choice_id":"2",
                "choice_content":"10"
              },
            ],
          },
          // Q1
          {
            "q_img": "assets/images/math/2.1.png",
            "question":"All these containers can hold the same amount of liquid even though they are different ___ .",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"shapes and sizes"
              },
              {
                "choice_id":"2",
                "choice_content":"colours"
              },
              {
                "choice_id":"3",
                "choice_content":"liquids"
              },
              {
                "choice_id":"4",
                "choice_content":"materials"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/math/2.2.png",
            "question":"This glass is ____ .",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"empty"
              },
              {
                "choice_id":"2",
                "choice_content":"half full"
              },
              {
                "choice_id":"3",
                "choice_content":"full"
              },
              {
                "choice_id":"4",
                "choice_content":"broken"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/math/2.3.png",
            "question":"What does this symbol mean",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Multiplication"
              },
              {
                "choice_id":"2",
                "choice_content":"Addition or adding"
              },
              {
                "choice_id":"3",
                "choice_content":"Subtracting or subtraction"
              },
              {
                "choice_id":"4",
                "choice_content":"Division"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which symbol is missing from this calculation: 3 ? 6 = 9",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"="
              },
              {
                "choice_id":"2",
                "choice_content":"-"
              },
               {
                "choice_id":"3",
                "choice_content":"+"
              },
              {
                "choice_id":"4",
                "choice_content":"x"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/math/2.5.png",
            "question":"Cars have to drive ______ a roundabout.",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Around"
              },
              {
                "choice_id":"2",
                "choice_content":"Over"
              },

               {
                "choice_id":"3",
                "choice_content":"Under"
              },
               {
                "choice_id":"4",
                "choice_content":"Through"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/math/2.6.png",
            "question":"What should you do to set the timer for 30 minutes?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Turn it a quarter of the way round clockwise"
              },
              {
                "choice_id":"2",
                "choice_content":"Turn it clockwise halfway round"
              },
              {
                "choice_id":"3",
                "choice_content":"Turn it all the way round counterclockwis"
              },
              {
                "choice_id":"4",
                "choice_content":"Turn it quarter of the way round counterclockwise"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/math/2.7.png",
            "question":"It is half past 5. What time will it be in half an hour?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"6 o'clock"
              },
              {
                "choice_id":"2",
                "choice_content":"5 o'clock"
              },
              {
                "choice_id":"3",
                "choice_content":"Half past 6"
              },
              {
                "choice_id":"4",
                "choice_content":"Half past 4"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/math/2.8.png",
            "question":"What time will it be in 15 minutes?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Quarter past 5"
              },
              {
                "choice_id":"2",
                "choice_content":"Quarter to 2"
              },
                {
                "choice_id":"3",
                "choice_content":"Quarter past 6"
              },
                {
                "choice_id":"4",
                "choice_content":"Half past 6"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/math/math.png",
            "question":"What is the next number in this sequence: 15, 20, 25, 30",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"53"
              },
              {
                "choice_id":"2",
                "choice_content":"54"
              },
              {
                "choice_id":"3",
                "choice_content":"35"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/math/math.png",
            "question":"What is the missing number: 12 + ? = 20",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"18"
              },
              {
                "choice_id":"2",
                "choice_content":"5"
              },
              {
                "choice_id":"3",
                "choice_content":"8"
              },
              {
                "choice_id":"4",
                "choice_content":"22"
              },
            ],
          },
          // --
        ],
        "medium":[],
          "hard":[]
      },

      // GRADE2
       {
        "difficulty_name":"Grade 2",
        "grade_desc" : "In the second grade, children are usually 7 to 8 years old. Students are taught subjects such as Math, Science, Geography and Social Studies. In Math, they are introduced to larger numbers (building up on what was taught to them in the first grade) and fundamental operations such as addition and subtraction.",
        "diff-avatar": "assets/images/grade2.png",
        "content":
        "easy":[
           // Q1 g3
          {
            "q_img": "assets/images/math/math.png",
            "question":"______ comes just before 413.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"412"
              },
              {
                "choice_id":"2",
                "choice_content":"414"
              },
              {
                "choice_id":"3",
                "choice_content":"402"
              },
              
            ],
          },
          // Q2
          {
            "q_img": "assets/images/math/math.png",
            "question":"How many months are there in a decade?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"tens"
              },
              {
                "choice_id":"2",
                "choice_content":"thousand"
              },
              {
                "choice_id":"3",
                "choice_content":"hundred"
              },
             
            ],
          },
          // Q3
          {
            "q_img": "assets/images/math/math.png",
            "question":"In Western civilization, what is the name given to the dates recorded before the birth of Christ?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Pre-Christ (PC)"
              },
              {
                "choice_id":"2",
                "choice_content":"Before Christ (BC)"
              },
              {
                "choice_id":"3",
                "choice_content":"Ante-Christ (AC)"
              },
              
            ],
          },
          //Q4
          {
            "q_img": "assets/images/math/math.png",
            "question":"Three hundred and one can be written as ______.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"331"
              },
              {
                "choice_id":"2",
                "choice_content":"31"
              },
              {
                "choice_id":"3",
                "choice_content":"3031"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/math/math.png",
            "question":"In 479, the place value of 9 is____________.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hundred"
              },
              {
                "choice_id":"2",
                "choice_content":"ones"
              },
              {
                "choice_id":"3",
                "choice_content":"tens"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/math/math.png",
            "question":"______ comes just before 505 ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"503"
              },
              {
                "choice_id":"2",
                "choice_content":"504"
              },
              {
                "choice_id":"3",
                "choice_content":"515"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/math/math.png",
            "question":"FIVE HUNDRED AND THREE CAN BE WRITTEN AS ____.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"503"
              },
              {
                "choice_id":"2",
                "choice_content":"5035"
              },
              {
                "choice_id":"3",
                "choice_content":"535"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/math/math.png",
            "question":"232, 242, ____ , 262. The missing number in the pattern is ____. ",
            "answer": "2",  
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"111"
              },
              {
                "choice_id":"2",
                "choice_content":"252"
              },
              {
                "choice_id":"3",
                "choice_content":"292"
              },
            ],
          },
          //09
          {
            "q_img": "assets/images/math/math.png",
            "question":"432, 442, ____ , 462. The missing number in the pattern is ____. ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"213"
              },
              {
                "choice_id":"2",
                "choice_content":"452"
              },
              {
                "choice_id":"3",
                "choice_content":"454"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/math/math.png",
            "question":"______ comes just before 209",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"200"
              },
              {
                "choice_id":"2",
                "choice_content":"208"
              },
              {
                "choice_id":"3",
                "choice_content":"210"
              },
            ],
          },
          //Q11
          {
            "q_img": "assets/images/math/math.png",
            "question":"10+43+34 =",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"87"
              },
              {
                "choice_id":"2",
                "choice_content":"77"
              },
              {
                "choice_id":"3",
                "choice_content":"97"
              },
            ],
          },
          //Q12
          {
            "q_img": "assets/images/math/math.png",
            "question":"24+43+18 =",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"87"
              },
              {
                "choice_id":"2",
                "choice_content":"77"
              },
              {
                "choice_id":"3",
                "choice_content":"85"
              },
            ],
          },
          //Q13
          {
            "q_img": "assets/images/math/math.png",
            "question":"20+49-10 =",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"59"
              },
              {
                "choice_id":"2",
                "choice_content":"77"
              },
              {
                "choice_id":"3",
                "choice_content":"97"
              },
            ],
          },
          //Q14
          {
            "q_img": "assets/images/math/math.png",
            "question":"There are 3 sweets in one packet. How many sweets will be there in 9 packets? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"37"
              },
              {
                "choice_id":"2",
                "choice_content":"27"
              },
              {
                "choice_id":"3",
                "choice_content":"97"
              },
            ],
          },
          //Q15
          {
            "q_img": "assets/images/math/math.png",
            "question":"____ is 200 more than 546.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"223"
              },
              {
                "choice_id":"2",
                "choice_content":"444"
              },
              {
                "choice_id":"3",
                "choice_content":"678"
              },
            ],
          },
          //Q16
          {
            "q_img": "assets/images/math/math.png",
            "question":"A NUMBER HAS NINE ONES, SIX TENS, AND EIGHT HUNDREDS. WHAT IS THE NUMBER?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"968"
              },
              {
                "choice_id":"2",
                "choice_content":"986"
              },
              {
                "choice_id":"3",
                "choice_content":"978"
              },
            ],
          },
          //Q17
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHAT IS THE VALUE OF THE FIVE IN FIVE HUNDRED TWENTY-SIX?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"5"
              },
              {
                "choice_id":"2",
                "choice_content":"50"
              },
              {
                "choice_id":"3",
                "choice_content":"500"
              },
            ],
          },
          //Q18
          {
            "q_img": "assets/images/math/math.png",
            "question":"LOOK AT THE NUMBER. WHICH DIGIT IS IN THE TENS PLACE? \n 962",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"87"
              },
              {
                "choice_id":"2",
                "choice_content":"77"
              },
              {
                "choice_id":"3",
                "choice_content":"97"
              },
            ],
          },
          //Q19
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHAT IS ANOTHER NAME FOR FOUR HUNDRED PLUS FORTY PLUS EIGHT?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"87"
              },
              {
                "choice_id":"2",
                "choice_content":"4408"
              },
              {
                "choice_id":"3",
                "choice_content":"448"
              },
            ],
          },
          //Q20
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHAT IS ANOTHER WAY TO WRITE NINE HUNDRED EIGHTY-SEVEN?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"900 + 80 + 7 "
              },
              {
                "choice_id":"2",
                "choice_content":"700 + 80 + 9"
              },
              {
                "choice_id":"3",
                "choice_content":"980 + 70 + 0 "
              },
            ],
          },
          //Q21
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHICH NUMBER SENTENCE IS TRUE?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"359 < 375"
              },
              {
                "choice_id":"2",
                "choice_content":"359 > 375"
              },
              {
                "choice_id":"3",
                "choice_content":"359 < 359"
              },
            ],
          },
          //Q20
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHICH NUMBER GOES IN THE BOX? \n 386 < [] < 521",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"297"
              },
              {
                "choice_id":"2",
                "choice_content":"410"
              },
              {
                "choice_id":"3",
                "choice_content":"522"
              },
            ],
          },
          //Q22
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHICH SIGN MAKES THE NUMBER SENTENCE TRUE? \n 22 + 10 [] 32",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"+"
              },
              {
                "choice_id":"2",
                "choice_content":"="
              },
              {
                "choice_id":"3",
                "choice_content":"-"
              },
            ],
          },
          //Q23
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHICH NUMBER GOES IN THE BOX? \n 91> [] ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"90"
              },
              {
                "choice_id":"2",
                "choice_content":"92"
              },
              {
                "choice_id":"3",
                "choice_content":"91"
              },
            ],
          },
          //Q24
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHICH OF THESE CAN BE USED TO CHECK THE ANSWER TO THE PROBLEM IN THE BOX? \n 4 + 3 = 7",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"7 - 4 = 3 "
              },
              {
                "choice_id":"2",
                "choice_content":"3 - 4 = 1"
              },
              {
                "choice_id":"3",
                "choice_content":"3 + 7 = 10"
              },
            ],
          },
          //Q25
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHAT IS THE SOLUTION TO THIS PROBLEM? \n 419 - 12 = ?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"407"
              },
              {
                "choice_id":"2",
                "choice_content":"400"
              },
              {
                "choice_id":"3",
                "choice_content":"412"
              },
              
            ],
          },
          ],
          "medium":[
            //1
            {
            "q_img": "assets/images/math/math.png",
            "question":"There are 4 apples in each basket. How many apples will be there in 5 baskets? ",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"30"
              },
              {
                "choice_id":"2",
                "choice_content":"40"
              },
              {
                "choice_id":"3",
                "choice_content":"90"
              },
              {
                "choice_id":"4",
                "choice_content":"20"
              },
              
            ],
          },
          //2
          {
            "q_img": "assets/images/math/math.png",
            "question":"There are 6  orange in each basket. How many orange will be there in 5 baskets?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"30"
              },
              {
                "choice_id":"2",
                "choice_content":"40"
              },
              {
                "choice_id":"3",
                "choice_content":"90"
              },
              {
                "choice_id":"4",
                "choice_content":"20"
              },
              
            ],
          },
          //3
          {
            "q_img": "assets/images/math/math.png",
            "question":"There are 9  orange in each basket. How many orange will be there in 8 baskets?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"72"
              },
              {
                "choice_id":"2",
                "choice_content":"40"
              },
              {
                "choice_id":"3",
                "choice_content":"90"
              },
              {
                "choice_id":"4",
                "choice_content":"20"
              },
              
            ],
          },
          //4
          {
            "q_img": "assets/images/math/math.png",
            "question":"Jane bought 60 cherries. She put 6 cherries in each packet. How many packets did she use? ",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"3"
              },
              {
                "choice_id":"2",
                "choice_content":"4"
              },
              {
                "choice_id":"3",
                "choice_content":"7"
              },
              {
                "choice_id":"4",
                "choice_content":"10"
              },
              
            ],
          },
          //5
          {
            "q_img": "assets/images/math/math.png",
            "question":"There are 9  MANGO in each basket. How many mangowill be there in 10 baskets?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"90"
              },
              {
                "choice_id":"2",
                "choice_content":"99"
              },
              {
                "choice_id":"3",
                "choice_content":"69"
              },
              {
                "choice_id":"4",
                "choice_content":"68"
              },
              
            ],
          },
          //6
          {
            "q_img": "assets/images/math/math.png",
            "question":"There are 10  chocolate in each basket. How many chocolate will be there in 12 baskets? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"120"
              },
              {
                "choice_id":"2",
                "choice_content":"410"
              },
              {
                "choice_id":"3",
                "choice_content":"190"
              },
              {
                "choice_id":"4",
                "choice_content":"130"
              },
              
            ],
          },
          //7
          {
            "q_img": "assets/images/math/math.png",
            "question":"Noah bought 80 cherries. She put 6 cherries in each packet. How many packets did she use?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"30"
              },
              {
                "choice_id":"2",
                "choice_content":"14"
              },
              {
                "choice_id":"3",
                "choice_content":"12"
              },
              {
                "choice_id":"4",
                "choice_content":"13"
              },
              
            ],
          },
          //8
          {
            "q_img": "assets/images/math/math.png",
            "question":"____ is more than 946.",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"400"
              },
              {
                "choice_id":"2",
                "choice_content":"546"
              },
              {
                "choice_id":"3",
                "choice_content":"178"
              },
              {
                "choice_id":"4",
                "choice_content":"1230"
              },
              
            ],
          },
          //9
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHICH of the following is correct? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"9+9=23"
              },
              {
                "choice_id":"2",
                "choice_content":"9+9=18"
              },
              {
                "choice_id":"3",
                "choice_content":"9+9=16"
              },
              {
                "choice_id":"4",
                "choice_content":"9+9=12"
              },
              
            ],
          },
          //10
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHICH of the following is correct? ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"12+12=41"
              },
              {
                "choice_id":"2",
                "choice_content":"12+12=31"
              },
              {
                "choice_id":"3",
                "choice_content":"12+12=24"
              },
              {
                "choice_id":"4",
                "choice_content":"22"
              },
            ],
          },
          //11
          {
            "q_img": "assets/images/math/math.png",
            "question":"WHICH of the following is correct? ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"38+12=40"
              },
              {
                "choice_id":"2",
                "choice_content":"38+12=49"
              },
              {
                "choice_id":"3",
                "choice_content":"38+12=50"
              },
              {
                "choice_id":"4",
                "choice_content":"38+12=80"
              },
            ],
          },
          //12
          {
            "q_img": "assets/images/math/math.png",
            "question":"Katie has 22 plums. Jessica has 7 plums. How many plums do Katie and Jessica have in all?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"29"
              },
              {
                "choice_id":"2",
                "choice_content":"26"
              },
              {
                "choice_id":"3",
                "choice_content":"30"
              },
              {
                "choice_id":"4",
                "choice_content":"28"
              },
              
            ],
          },
          //13
          {
            "q_img": "assets/images/math/math.png",
            "question":"Steph has 40 plums. Ana has 7 plums. How many plums do Stephand  Ana have in all?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"47"
              },
              {
                "choice_id":"2",
                "choice_content":"48"
              },
              {
                "choice_id":"3",
                "choice_content":"90"
              },
              {
                "choice_id":"4",
                "choice_content":"23"
              },
              
            ],
          },
          //14
          {
            "q_img": "assets/images/math/math.png",
            "question":"140+98+31= ? ",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"329"
              },
              {
                "choice_id":"2",
                "choice_content":"129"
              },
              {
                "choice_id":"3",
                "choice_content":"333"
              },
              {
                "choice_id":"4",
                "choice_content":"269"
              },
              
            ],
          },
          //15
          {
            "q_img": "assets/images/math/math.png",
            "question":"155+98-32= ?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"122"
              },
              {
                "choice_id":"2",
                "choice_content":"221"
              },
              {
                "choice_id":"3",
                "choice_content":"231"
              },
              {
                "choice_id":"4",
                "choice_content":"249"
              },
              
            ],
          },
          //16
          {
            "q_img": "assets/images/math/math.png",
            "question":"HOW MANY INCHES IN 1 FEET? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"12"
              },
              {
                "choice_id":"2",
                "choice_content":"23"
              },
              {
                "choice_id":"3",
                "choice_content":"24"
              },
              {
                "choice_id":"4",
                "choice_content":"29"
              },
              
            ],
          },
          //17
          {
            "q_img": "assets/images/math/math.png",
            "question":"HOW MANY INCHES IN 2 FEET? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"24"
              },
              {
                "choice_id":"2",
                "choice_content":"23"
              },
              {
                "choice_id":"3",
                "choice_content":"90"
              },
              {
                "choice_id":"4",
                "choice_content":"20"
              },
              
            ],
          },
          //18
          {
            "q_img": "assets/images/math/math.png",
            "question":"HOW MANY INCHES IN 3 FEET? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"36"
              },
              {
                "choice_id":"2",
                "choice_content":"23"
              },
              {
                "choice_id":"3",
                "choice_content":"24"
              },
              {
                "choice_id":"4",
                "choice_content":"29"
              },
              
            ],
          },
          //19
          {
            "q_img": "assets/images/math/math.png",
            "question":"HOW MANY INCHES IN 4 FEET? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"48"
              },
              {
                "choice_id":"2",
                "choice_content":"38"
              },
              {
                "choice_id":"3",
                "choice_content":"24"
              },
              {
                "choice_id":"4",
                "choice_content":"42"
              },
              
            ],
          },
          //20
          {
            "q_img": "assets/images/math/math.png",
            "question":"HOW MANY INCHES IN 5 FEET? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"12"
              },
              {
                "choice_id":"2",
                "choice_content":"60"
              },
              {
                "choice_id":"3",
                "choice_content":"42"
              },
              {
                "choice_id":"4",
                "choice_content":"95"
              },
              
            ],
          },
          //21
          {
            "q_img": "assets/images/math/math.png",
            "question":"ESTIMATE: 73 + 42 = ?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"115"
              },
              {
                "choice_id":"2",
                "choice_content":"125"
              },
              {
                "choice_id":"3",
                "choice_content":"90"
              },
              {
                "choice_id":"4",
                "choice_content":"145"
              },
              
            ],
          },
          //22
          {
            "q_img": "assets/images/math/math.png",
            "question":"Fred has 17 toy cars. If Bob borrows 8 toy cars, how many toy cars will Fred have left?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"9"
              },
              {
                "choice_id":"2",
                "choice_content":"20"
              },
              {
                "choice_id":"3",
                "choice_content":"33"
              },
              {
                "choice_id":"4",
                "choice_content":"8"
              },
              
            ],
          },
          //23
          {
            "q_img": "assets/images/math/math.png",
            "question":"ESTIMATE: 175 + 177",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"354"
              },
              {
                "choice_id":"2",
                "choice_content":"352"
              },
              {
                "choice_id":"3",
                "choice_content":"157"
              },
              {
                "choice_id":"4",
                "choice_content":"332"
              },
              
            ],
          },
          //24
          {
            "q_img": "assets/images/math/math.png",
            "question":" ESTIMATE: 16 + 23 = ?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"42"
              },
              {
                "choice_id":"2",
                "choice_content":"40"
              },
              {
                "choice_id":"3",
                "choice_content":"32"
              },
              {
                "choice_id":"4",
                "choice_content":"99"
              },
              
            ],
          },
          //25
          {
            "q_img": "assets/images/math/math.png",
            "question":"Connor has 7 pieces of gum. Marko takes 4 pieces of gum. How many pieces of gum does Connor have now?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"6"
              },
              {
                "choice_id":"2",
                "choice_content":"4"
              },
              {
                "choice_id":"3",
                "choice_content":"2"
              },
              {
                "choice_id":"4",
                "choice_content":"3"
              },
              
            ],
          },
          ],
          "hard":[
            //1
            {
            "q_img": "assets/images/math/math.png",
            "question":"What is the sum of 7 and 6?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"13"
              },
              {
                "choice_id":"2",
                "choice_content":"14"
              },
              {
                "choice_id":"3",
                "choice_content":"15"
              },
              {
                "choice_id":"4",
                "choice_content":"16"
              },
              {
                "choice_id":"5",
                "choice_content":"22"
              },
              
            ],
          },
          //2
           {
            "q_img": "assets/images/math/math.png",
            "question":"What is the sum of 27 and 6?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"33"
              },
              {
                "choice_id":"2",
                "choice_content":"34"
              },
              {
                "choice_id":"3",
                "choice_content":"35"
              },
              {
                "choice_id":"4",
                "choice_content":"58"
              },
              {
                "choice_id":"5",
                "choice_content":"62"
              },
              
            ],
          },
          //3
           {
            "q_img": "assets/images/math/math.png",
            "question":"What is the sum of 37 and 26?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"73"
              },
              {
                "choice_id":"2",
                "choice_content":"74"
              },
              {
                "choice_id":"3",
                "choice_content":"63"
              },
              {
                "choice_id":"4",
                "choice_content":"54"
              },
              {
                "choice_id":"5",
                "choice_content":"55"
              },
              
            ],
          },
          //4
           {
            "q_img": "assets/images/math/math.png",
            "question":"What is the sum of 97 and 46?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"143"
              },
              {
                "choice_id":"2",
                "choice_content":"123"
              },
              {
                "choice_id":"3",
                "choice_content":"133"
              },
              {
                "choice_id":"4",
                "choice_content":"145"
              },
              {
                "choice_id":"5",
                "choice_content":"155"
              },
              
            ],
          },
          //5
        
           {
            "q_img": "assets/images/math/math.png",
            "question":"What is the sum of 9and 4?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"13"
              },
              {
                "choice_id":"2",
                "choice_content":"14"
              },
              {
                "choice_id":"3",
                "choice_content":"22"
              },
              {
                "choice_id":"4",
                "choice_content":"29"
              },
              {
                "choice_id":"5",
                "choice_content":"33"
              },
              
            ],
          },
          //6
    
           {
            "q_img": "assets/images/math/math.png",
            "question":"Which pair of equal numbers add to 16?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"7,7"
              },
              {
                "choice_id":"2",
                "choice_content":"8,8"
              },
              {
                "choice_id":"3",
                "choice_content":"9,9"
              },
              {
                "choice_id":"4",
                "choice_content":"10,10"
              },
              {
                "choice_id":"5",
                "choice_content":"3,3"
              },
              
            ],
          },
          //7
      
           {
            "q_img": "assets/images/math/math.png",
            "question":"Which pair of equal numbers add to 20?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"7,7"
              },
              {
                "choice_id":"2",
                "choice_content":"8,8"
              },
              {
                "choice_id":"3",
                "choice_content":"9,9"
              },
              {
                "choice_id":"4",
                "choice_content":"10,10"
              },
              {
                "choice_id":"5",
                "choice_content":"4,4"
              },
              
            ],
          },
          //8
          
           {
            "q_img": "assets/images/math/math.png",
            "question":"Which pair of equal numbers add to 12?",
            "answer": "4",
            "choices":[
             {
                "choice_id":"1",
                "choice_content":"7,7"
              },
              {
                "choice_id":"2",
                "choice_content":"8,8"
              },
              {
                "choice_id":"3",
                "choice_content":"9,9"
              },
              {
                "choice_id":"4",
                "choice_content":"10,10"
              },
              {
                "choice_id":"5",
                "choice_content":"4,4"
              },
            ],
          },
          //9

           {
            "q_img": "assets/images/math/math.png",
            "question":"Which pair of equal numbers add to 14? ",
            "answer": "1",
            "choices":[
               {
                "choice_id":"1",
                "choice_content":"7,7"
              },
              {
                "choice_id":"2",
                "choice_content":"8,8"
              },
              {
                "choice_id":"3",
                "choice_content":"9,9"
              },
              {
                "choice_id":"4",
                "choice_content":"10,10"
              },
              {
                "choice_id":"5",
                "choice_content":"4,4"
              },
              
            ],
          },
          //10
           
           {
            "q_img": "assets/images/math/math.png",
            "question":"Which pair of equal numbers add to 18? ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"7,7"
              },
              {
                "choice_id":"2",
                "choice_content":"8,8"
              },
              {
                "choice_id":"3",
                "choice_content":"9,9"
              },
              {
                "choice_id":"4",
                "choice_content":"10,10"
              },
              {
                "choice_id":"5",
                "choice_content":"4,4"
              },
              
            ],
          },
          //11
           {
            "q_img": "assets/images/math/math.png",
            "question":" 8 hundreds, 5 tens, and 3 ones is equivalent to which number?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"853"
              },
              {
                "choice_id":"2",
                "choice_content":"823"
              },
              {
                "choice_id":"3",
                "choice_content":"733"
              },
              {
                "choice_id":"4",
                "choice_content":"145"
              },
              {
                "choice_id":"5",
                "choice_content":"155"
              },
              
            ],
          },
          //12
           {
            "q_img": "assets/images/math/math.png",
            "question":"9 hundreds, 5 tens, and 1 ones is equivalent to which number?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"951"
              },
              {
                "choice_id":"2",
                "choice_content":"923"
              },
              {
                "choice_id":"3",
                "choice_content":"898"
              },
              {
                "choice_id":"4",
                "choice_content":"923"
              },
              {
                "choice_id":"5",
                "choice_content":"925"
              },
              
            ],
          },
          //13
           {
            "q_img": "assets/images/math/math.png",
            "question":"9 hundreds, 2 tens, and 5 ones is equivalent to which number? ",
            "answer": "5",
            "choices":[
             {
                "choice_id":"1",
                "choice_content":"951"
              },
              {
                "choice_id":"2",
                "choice_content":"923"
              },
              {
                "choice_id":"3",
                "choice_content":"898"
              },
              {
                "choice_id":"4",
                "choice_content":"923"
              },
              {
                "choice_id":"5",
                "choice_content":"925"
              },
              
            ],
          },
          //14
           {
            "q_img": "assets/images/math/math.png",
            "question":"2 hundreds, 3 tens, and 4 ones is equivalent to which number? ",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"951"
              },
              {
                "choice_id":"2",
                "choice_content":"923"
              },
              {
                "choice_id":"3",
                "choice_content":"898"
              },
              {
                "choice_id":"4",
                "choice_content":"923"
              },
              {
                "choice_id":"5",
                "choice_content":"925"
              },
              
            ],
          },

          //15
           {
            "q_img": "assets/images/math/math.png",
            "question":"8 hundreds, 9 tens, and 8 ones is equivalent to which number? ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"951"
              },
              {
                "choice_id":"2",
                "choice_content":"923"
              },
              {
                "choice_id":"3",
                "choice_content":"898"
              },
              {
                "choice_id":"4",
                "choice_content":"923"
              },
              {
                "choice_id":"5",
                "choice_content":"925"
              },
            ],
          },
          //16
           {
            "q_img": "assets/images/math/math.png",
            "question":"TEN TENS IS THE SAME AS WHICH NUMBER?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"1"
              },
              {
                "choice_id":"2",
                "choice_content":"10"
              },
              {
                "choice_id":"3",
                "choice_content":"20"
              },
              {
                "choice_id":"4",
                "choice_content":"120"
              },
              {
                "choice_id":"5",
                "choice_content":"120"
              },
              
            ],
          },
          //17
           {
            "q_img": "assets/images/math/math.png",
            "question":"ONE TENS IS THE SAME AS WHICH NUMBER?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"1"
              },
              {
                "choice_id":"2",
                "choice_content":"10"
              },
              {
                "choice_id":"3",
                "choice_content":"20"
              },
              {
                "choice_id":"4",
                "choice_content":"100"
              },
              {
                "choice_id":"5",
                "choice_content":"120"
              },
              
            ],
          },
          //18
           {
            "q_img": "assets/images/math/math.png",
            "question":"TWENTY TENS IS THE SAME AS WHICH NUMBER?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"1"
              },
              {
                "choice_id":"2",
                "choice_content":"10"
              },
              {
                "choice_id":"3",
                "choice_content":"20"
              },
              {
                "choice_id":"4",
                "choice_content":"100"
              },
              {
                "choice_id":"5",
                "choice_content":"120"
              },
            ],
          },
          //19
           {
            "q_img": "assets/images/math/math.png",
            "question":"THIRTY TENS IS THE SAME AS WHICH NUMBER?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"1"
              },
              {
                "choice_id":"2",
                "choice_content":"10"
              },
              {
                "choice_id":"3",
                "choice_content":"20"
              },
              {
                "choice_id":"4",
                "choice_content":"300"
              },
              {
                "choice_id":"5",
                "choice_content":"120"
              },
            ],
          },

          //20
           {
            "q_img": "assets/images/math/math.png",
            "question":"FOUR TENS IS THE SAME AS WHICH NUMBER?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"143"
              },
              {
                "choice_id":"2",
                "choice_content":"40"
              },
              {
                "choice_id":"3",
                "choice_content":"133"
              },
              {
                "choice_id":"4",
                "choice_content":"145"
              },
              {
                "choice_id":"5",
                "choice_content":"155"
              },
              
            ],
          },
          //21
           {
            "q_img": "assets/images/math/math.png",
            "question":"How is the number 645 read in expanded form?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"SIX HUNDRED FORTY-FIVE"
              },
              {
                "choice_id":"2",
                "choice_content":"SIX HUNDRED FORTY-FOUR"
              },
              {
                "choice_id":"3",
                "choice_content":"SIX HUNDRED FORTY-TWO"
              },
              {
                "choice_id":"4",
                "choice_content":"SIX HUNDRED FORTY-ONE"
              },
              {
                "choice_id":"5",
                "choice_content":"SIX HUNDRED FOUR HUNDRED FIFTY"
              },
            ],
          },
          //22
           {
            "q_img": "assets/images/math/math.png",
            "question":"Sarah had 80 cupcakes to sell at a bake sale. She sold 70 cupcakes. Then Sarah's mom brought 20 more cupcakes for Sarah to sell at the bake sale. Which expression can be used to find out how many cupcakes, c, Sarah now has?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"80-70+20"
              },
              {
                "choice_id":"2",
                "choice_content":"70-20-80"
              },
              {
                "choice_id":"3",
                "choice_content":"80+70+20"
              },
              {
                "choice_id":"4",
                "choice_content":"80+70+20"
              },
              {
                "choice_id":"5",
                "choice_content":"120+80-7055"
              },
              
            ],
          },
          //23
           {
            "q_img": "assets/images/math/math.png",
            "question":"Last week, Lucas had 55 marbles. He lost some marbles when he dropped his marble bag outside. Now Lucas has 32 marbles. Which equation can be used to show the amount of marbles, m, that Lucas lost?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"55-M=32"
              },
              {
                "choice_id":"2",
                "choice_content":"M-55=32"
              },
              {
                "choice_id":"3",
                "choice_content":"32-M=55"
              },
              {
                "choice_id":"4",
                "choice_content":"M-32=55"
              },
              {
                "choice_id":"5",
                "choice_content":"M+32=55"
              },
              
            ],
          },
          //24
           {
            "q_img": "assets/images/math/math.png",
            "question":"What is 16 divided by 2?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"8"
              },
              {
                "choice_id":"2",
                "choice_content":"6"
              },
              {
                "choice_id":"3",
                "choice_content":"7"
              },
              {
                "choice_id":"4",
                "choice_content":"9"
              },
              {
                "choice_id":"5",
                "choice_content":"3"
              },
              
            ],
          },
          //25
           {
            "q_img": "assets/images/math/math.png",
            "question":"What is 18 divided by 2? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"9"
              },
              {
                "choice_id":"2",
                "choice_content":"8"
              },
              {
                "choice_id":"3",
                "choice_content":"10"
              },
              {
                "choice_id":"4",
                "choice_content":"7"
              },
              {
                "choice_id":"5",
                "choice_content":"6"
              },
            ],
          },
          ]
        }
      },
      
// GRADE3
      {
        "difficulty_name":"Grade 3",
        "grade_desc" : "Third grade is a year of primary education in many countries. It is the third school year of primary school. Students are usually 8–9 years old, depending on when their birthday occurs. ",
        "diff-avatar": "assets/images/grade3.png",
        "content":{
          "easy":[
          {
            "q_img": "assets/images/math/math.png",
            "question":"Find the number that will complete the sum below correctly. \n 35 - ? = 4 x 4",
            "answer": "3",
            "choices":[
              //1
              {
                "choice_id":"1",
                "choice_content":"18"
              },
              {
                "choice_id":"2",
                "choice_content":"17"
              },
              {
                "choice_id":"3",
                "choice_content":"19"
              },
            ],
          },
          // Q2
          {
            "q_img": "assets/images/math/math.png",
            "question":"How many months are there in a decade?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"1,200 months"
              },
              {
                "choice_id":"2",
                "choice_content":"100 months"
              },

              {
                "choice_id":"3",
                "choice_content":"120 months"
              }
         
            ],
          },
          // Q3
          {
            "q_img": "assets/images/math/math.png",
            "question":"In Western civilization, what is the name given to the dates recorded before the birth of Christ?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Pre-Christ (PC)"
              },
              {
                "choice_id":"2",
                "choice_content":"Before Christ (BC)"
              },
              {
                "choice_id":"3",
                "choice_content":"Ante-Christ (AC)"
              },
             
            ],
          },
          //Q4
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which one of the following is the same as 7 days?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"A decade"
              },
              {
                "choice_id":"2",
                "choice_content":"A week"
              },
               {
                "choice_id":"3",
                "choice_content":"A year"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which unit of time would you use to measure how long it takes for an acorn to grow into a large tree?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Hours"
              },
              {
                "choice_id":"2",
                "choice_content":"Months"
              },
               {
                "choice_id":"3",
                "choice_content":"second"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/math/math.png",
            "question":"Find the number that will complete the sum below correctly. \n 14 ÷ 2 = 63 ÷ ?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"9"
              },
              {
                "choice_id":"2",
                "choice_content":"5"
              },
               {
                "choice_id":"3",
                "choice_content":"2"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/math/math.png",
            "question":"How many days in a year?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"200 days"
              },
              {
                "choice_id":"2",
                "choice_content":"365 days"
              },
               {
                "choice_id":"3",
                "choice_content":"375 days"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/math/math.png",
            "question":"What is 3,335 rounded to the nearest 100?",
            "answer": "2",  
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"3,400"
              },
              {
                "choice_id":"2",
                "choice_content":"3,300"
              },
               {
                "choice_id":"3",
                "choice_content":"300"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/math/math.png",
            "question":"How many digits are there in our number system?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"11"
              },
              {
                "choice_id":"2",
                "choice_content":"10"
              },
              {
                "choice_id":"3",
                "choice_content":"12"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which of these is the largest number?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"-4"
              },
              {
                "choice_id":"2",
                "choice_content":"-1"
              },
              {
                "choice_id":"3",
                "choice_content":"0"
              },
            ],
          },
          //11
          {
            "q_img": "assets/images/math/math.png",
            "question":"Based on the pattern, which number is missing? \n ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"55"
              },
              {
                "choice_id":"2",
                "choice_content":"44"
              },
              {
                "choice_id":"3",
                "choice_content":"77"
              },
            ],
          },
          //13
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which is the BEST unit to measure the distance between Nebraska and Maine?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"foot"
              },
              {
                "choice_id":"2",
                "choice_content":"inch"
              },
              {
                "choice_id":"3",
                "choice_content":"mile"
              },
            ],
          },
          //14
          {
            "q_img": "assets/images/math/math.png",
            "question":"What is the missing number in 93 - ?  = 68?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"25"
              },
              {
                "choice_id":"2",
                "choice_content":"35"
              },
              {
                "choice_id":"3",
                "choice_content":"151"
              },
            ],
          },
          //15
          {
            "q_img": "assets/images/math/math.png",
            "question":" Which shape has five sides?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"pentagon"
              },
              {
                "choice_id":"2",
                "choice_content":"hexagon"
              },
              {
                "choice_id":"3",
                "choice_content":"nonagon"
              },
            ],
          },
          //16
          {
            "q_img": "assets/images/math/math.png",
            "question":"What is the missing addend in 8 + ? = 14?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"6"
              },
              {
                "choice_id":"2",
                "choice_content":"3"
              },
              {
                "choice_id":"3",
                "choice_content":"8"
              },
            ],
          },
          //17
          {
            "q_img": "assets/images/math/math.png",
            "question":"There are fifteen apples on a tree. Six apples are on the ground. Which number sentence shows how
to find the total number of apples?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"6 + 21 = 27"
              },
              {
                "choice_id":"2",
                "choice_content":"15 + 6 = 21"
              },
              {
                "choice_id":"3",
                "choice_content":"15 + 8 = 21"
              },
            ],
          },
          //18
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which number is greater than 7,350?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"7,206"
              },
              {
                "choice_id":"2",
                "choice_content":"-7,306"
              },
              {
                "choice_id":"3",
                "choice_content":"8,206"
              },
            ],
          },
          //19
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which shape has the fewest sides?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"triangle"
              },
              {
                "choice_id":"2",
                "choice_content":"pentagon"
              },
              {
                "choice_id":"3",
                "choice_content":"rectangle"
              },
            ],
          },
          //20
          {
            "q_img": "assets/images/math/math.png",
            "question":"Which of the following is the same as 6 X 8?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"6+6+6+66+6+6"
              },
              {
                "choice_id":"2",
                "choice_content":"8+88+88+88+888"
              },
              {
                "choice_id":"3",
                "choice_content":"8+8+8+8+8+8"
              },
            ],
          },

          //21
          {
            "q_img": "assets/images/math/math.png",
            "question":"What is the place value of 7 in the following number: 7,345",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Ones"
              },
              {
                "choice_id":"2",
                "choice_content":"Hundreds"
              },
              {
                "choice_id":"3",
                "choice_content":"Thousand"
              },
            ],
          },
          //22
          {
            "q_img": "assets/images/math/math.png",
            "question":"Hundreds",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"54"
              },
              {
                "choice_id":"2",
                "choice_content":"69"
              },
              {
                "choice_id":"3",
                "choice_content":"59"
              },
            ],
          },
          //23
          {
            "q_img": "assets/images/math/math.png",
            "question":"What is the place value of the 0 in 2046?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"ones"
              },
              {
                "choice_id":"2",
                "choice_content":"tens"
              },
              {
                "choice_id":"3",
                "choice_content":"hundreds"
              },
            ],
          },
          //24
          {
            "q_img": "assets/images/math/math.png",
            "question":"What number is smallest",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"717"
              },
              {
                "choice_id":"2",
                "choice_content":"527"
              },
              {
                "choice_id":"3",
                "choice_content":"998"
              },
            ],
          },
          //25
          {
            "q_img": "assets/images/math/math.png",
            "question":"10 x 6 = ?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"30"
              },
              {
                "choice_id":"2",
                "choice_content":"600"
              },
              {
                "choice_id":"3",
                "choice_content":"60"
              },
            ],
          },
          ],
          "medium":[],
          "hard":[]
        }
      },
      // GRADE4
      {
        "difficulty_name":"Grade 4",
        "grade_desc" : "The fourth grade forms the fourth year of Elementary school and children enrolled are typically 9 to 10 years old. Subjects taught include Math, Science, Reading, Writing and Social Studies.",
        "diff-avatar": "assets/images/grade4.png",
        "content":
        {
          "easy":[
// Q1
          {
            "q_img": "assets/images/math/4.1.png",
            "question":"The roman numeral for 18 is ______.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"XXVIII"
              },
              {
                "choice_id":"2",
                "choice_content":"XVIII"
              },
              {
                "choice_id":"3",
                "choice_content":"IVIII"
              },
              {
                "choice_id":"4",
                "choice_content":"VVVIII"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/math/4.2.png",
            "question":"The smallest 4-digit number formed by using the digits 0, 3, 5, 6 is _____.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"3056"
              },
              {
                "choice_id":"2",
                "choice_content":"6035"
              },
              {
                "choice_id":"3",
                "choice_content":"6530"
              },
              {
                "choice_id":"4",
                "choice_content":"0356"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/math/4.3.png",
            "question":"The predecessor of the smallest 5-digit number is ____.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"9999"
              },
              {
                "choice_id":"2",
                "choice_content":"99999"
              },
              {
                "choice_id":"3",
                "choice_content":"10001"
              },
              {
                "choice_id":"4",
                "choice_content":"100001"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/math/4.4.png",
            "question":"The smallest single digit composite number is ____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"9"
              },
              {
                "choice_id":"2",
                "choice_content":"4"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/math/4.5.png",
            "question":"The improper fraction among the following is ____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"4/7"
              },
              {
                "choice_id":"2",
                "choice_content":"3/3"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/math/4.6.jpng_____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"2 and 3"
              },
              {
                "choice_id":"2",
                "choice_content":"3 and 4"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/math/4.7.png",
            "question":"How many one-sixths make 2?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"3"
              },
              {
                "choice_id":"2",
                "choice_content":"12"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/math/4.8.png",
            "question":"3 hundredths can be written as ____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"0.003"
              },
              {
                "choice_id":"2",
                "choice_content":"0.03"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/math/4.9.png",
            "question":"0.07 = ____",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"7/10"
              },
              {
                "choice_id":"2",
                "choice_content":"7/100"
              },
            ],
          },
          //Q10
          {
            
            "q_img": "assets/images/math/4.10.png",
            "question":"3 hrs 40 mins equals ____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"120 mins"
              },
              {
                "choice_id":"2",
                "choice_content":"220 mins"
              },
            ],
          },
          ],
          "medium":[],
          "hard":[]
        }
          
      },
      // GRADE5
      {
        "difficulty_name":"Grade 5",
        "grade_desc" : "The fifth grade is the fifth and last school year of elementary school in most schools. ... Key English Language Arts Common Core standards for 5th grade students include: Ability to determine the theme of a book, story, or poem from details in the text.",
        "diff-avatar": "assets/images/grade5.png",
        "content":
         {
          "easy":[
            //g5
// Q1
          {
            "q_img": "assets/images/math/5.1.png",
            "question":"Use the slash in writing fractions such as 3/11 for three-elevenths.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"15/15"
              },
              {
                "choice_id":"2",
                "choice_content":"13/15"
              },
              {
                "choice_id":"3",
                "choice_content":"13/20"
              },
              {
                "choice_id":"4",
                "choice_content":"20/20"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/math/5.2.png",
            "question":"What is  of 72?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"27"
              },
              {
                "choice_id":"2",
                "choice_content":"28"
              },
              {
                "choice_id":"3",
                "choice_content":"72"
              },
              {
                "choice_id":"4",
                "choice_content":"14"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/math/5.3.png",
            "question":"What fraction of the figure is shaded?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"1/3"
              },
              {
                "choice_id":"2",
                "choice_content":"1/2"
              },
              {
                "choice_id":"3",
                "choice_content":"2/3"
              },
              {
                "choice_id":"4",
                "choice_content":"1"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/math/math.png",
            "question":"9 x 9",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"84"
              },
              {
                "choice_id":"2",
                "choice_content":"81"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/math/math.png",
            "question":"11 x 11",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"111"
              },
              {
                "choice_id":"2",
                "choice_content":"121"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/math/math.png",
            "question":"(5 + 6) x 7",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"77"
              },
              {
                "choice_id":"2",
                "choice_content":"66"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/math/math.png",
            "question":"5 + (6 x 7)",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"112"
              },
              {
                "choice_id":"2",
                "choice_content":"115"
              },
                {
                "choice_id":"3",
                "choice_content":"117"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/math/math.png",
            "question":"10 - x = 5",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"10"
              },
              {
                "choice_id":"2",
                "choice_content":"5"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/math/math.png",
            "question":"5x - 10 = 100",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"33"
              },
              {
                "choice_id":"2",
                "choice_content":"22"
              },
               {
                "choice_id":"3",
                "choice_content":"44"
              },
               {
                "choice_id":"4",
                "choice_content":"11"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/math/math.png",
            "question":"10x + 3x = 169",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"14"
              },
              {
                "choice_id":"2",
                "choice_content":"13"
              },
            ],
          },
          ],
          "medium":[],
          "hard":[]
        }

      },
      // GRADE6
      {
        "difficulty_name":"Grade 6",
        "grade_desc" : "Sixth grade is a year of education for students ages 11–12. In many nations, it is the first year of middle school or the last year of elementary school. ",
        "diff-avatar": "assets/images/grade6.png",
        "content":
         {
          "easy":[
            //g6
// Q1
          {
            "q_img": "assets/images/math/6.1.png",
            "question":"158=___ + 106. What number will come in the blank to make the number sentence correct?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"43"
              },
              {
                "choice_id":"2",
                "choice_content":"54"
              },
              {
                "choice_id":"3",
                "choice_content":"52"
              },
              {
                "choice_id":"4",
                "choice_content":"50"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/math/6.2.png",
            "question":"Shown below is a part of a triangle with one of its angles missing. The measure of the missing angle is:",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Less than 90"
              },
              {
                "choice_id":"2",
                "choice_content":"Equal 90"
              },
              {
                "choice_id":"3",
                "choice_content":"More than 90"
              },
              {
                "choice_id":"4",
                "choice_content":"More than 80"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/math/6.3.png",
            "question":"Faizal has 918 marbles. He wants to make packets of marbles, with nine marbles in each pack. How many packs will he be able to make?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"12"
              },
              {
                "choice_id":"2",
                "choice_content":"102"
              },
              {
                "choice_id":"3",
                "choice_content":"120"
              },
              {
                "choice_id":"4",
                "choice_content":"1062"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/math/6.4.png",
            "question":"Which of these lies between 6.3 and 6.6?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"6.2"
              },
              {
                "choice_id":"2",
                "choice_content":"6.9"
              },
               {
                "choice_id":"3",
                "choice_content":"6.41"
              },
              {
                "choice_id":"4",
                "choice_content":"6.05"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/math/6.5.png",
            "question":"A teacher brought some toffees to her class. After giving three toffees each to 15 students who had completed their assignments, she has 60 toffees left with her. How many toffees did she bring to the class?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"15"
              },
              {
                "choice_id":"2",
                "choice_content":"45"
              },

               {
                "choice_id":"3",
                "choice_content":"78"
              },
               {
                "choice_id":"4",
                "choice_content":"105"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/math/6.6.png",
            "question":"Which of these numbers have only two factors, 1 and the number itself?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"37X1"
              },
              {
                "choice_id":"2",
                "choice_content":"37+1"
              },
              {
                "choice_id":"3",
                "choice_content":"37+37"
              },
              {
                "choice_id":"4",
                "choice_content":"37X37"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/math/6.7.png",
            "question":"Meena divides a number by 2. She then divides the answer by 2. This is the same as dividing the original number by:",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"1"
              },
              {
                "choice_id":"2",
                "choice_content":"2"
              },
              {
                "choice_id":"3",
                "choice_content":"3"
              },
              {
                "choice_id":"4",
                "choice_content":"4"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/math/6.8.png",
            "question":"John has stamps from different countries. 1/3rd of them are India stamps. if he has 36 Indian stamps, how many stamps does he have in total?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"12"
              },
              {
                "choice_id":"2",
                "choice_content":"36"
              },
                {
                "choice_id":"3",
                "choice_content":"108"
              },
                {
                "choice_id":"4",
                "choice_content":"48"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/math/6.9.png",
            "question":"1024+1025+___=1025+1025+1025 What number will come in the blank to make the number sentence correct?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"1024"
              },
              {
                "choice_id":"2",
                "choice_content":"1025"
              },
              {
                "choice_id":"3",
                "choice_content":"1026"
              },
               {
                "choice_id":"3",
                "choice_content":"1036"
              },
            ],
          },
          //Q10
          {
            
            "q_img": "assets/images/math/math.png",
            "question":"Meena has bought six pens. The cost of each pen was between Rs.25 and Rs. 30. Which of these could be the total cost of the pens?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Rs.55"
              },
              {
                "choice_id":"2",
                "choice_content":"Rs.126"
              },
              {
                "choice_id":"3",
                "choice_content":"Rs.173"
              },
              {
                "choice_id":"4",
                "choice_content":"Rs.330"
              },
            ],
          },
          ],
          "medium":[],
          "hard":[]
        }
      },
    ]
  },

// Science
  {
    "category_name":"Science",
    "category_img":"assets/images/science.png",
    "difficulty":[
      {
        "difficulty_name":"Grade 1",
        "grade_desc" : "The first grade is the first school year in Elementary school after Kindergarten. Children who are usually 6 to 7 years old are enrolled for this grade. ... Additionally, first graders are taught basic reading skills with the focus on reading and writing simple statements.",
        "diff-avatar": "assets/images/grade1.png",
        "content":{
          "easy":[
            // Q1
          {
            "q_img": "assets/images/science/1.1.png",
            "question":"Which animal lays eggs?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Dog"
              },
              {
                "choice_id":"2",
                "choice_content":"Cat"
              },
              {
                "choice_id":"3",
                "choice_content":"Duck"
              },
              
            ],
          },
          // Q2
          {
            "q_img": "assets/images/science/1.2.png",
            "question":"A male cow is called?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Ox"
              },
              {
                "choice_id":"2",
                "choice_content":"Dog"
              },
              {
                "choice_id":"3",
                "choice_content":"Sheep"
              },
              
            ],
          },
          // Q3
          {
            "q_img": "assets/images/science/1.3.png",
            "question":"All animals need food, air, and ____ to survive.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"House"
              },
              {
                "choice_id":"2",
                "choice_content":"Water"
              },
              {
                "choice_id":"3",
                "choice_content":"Chocolate"
              },
              
            ],
          },
          //Q4
          {
            "q_img": "assets/images/science/1.4.png",
            "question":"Which one is a fur-bearing animal?.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Hen"
              },
              {
                "choice_id":"2",
                "choice_content":"Cat"
              },
              {
                "choice_id":"3",
                "choice_content":"Bird"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/science/1.5.png",
            "question":"What is Earth’s only natural satellite?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Sun"
              },
              {
                "choice_id":"2",
                "choice_content":"Moon"
              },
              {
                "choice_id":"3",
                "choice_content":"Sky"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/science/1.6.png",
            "question":"The tree has a branch filled with green _____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hair"
              },
              {
                "choice_id":"2",
                "choice_content":"Leaves"
              },
              {
                "choice_id":"3",
                "choice_content":"root"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/science/1.7.png",
            "question":"What part of the body helps you move?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Eyes"
              },
              {
                "choice_id":"2",
                "choice_content":"Muscles"
              },
              {
                "choice_id":"3",
                "choice_content":"Nose"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/science/1.8.png",
            "question":"The two holes of the nose are called?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Nostrils"
              },
              {
                "choice_id":"2",
                "choice_content":"Nais"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/science/1.9.png",
            "question":"What star shines in the day and provides light?.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Moon"
              },
              {
                "choice_id":"2",
                "choice_content":"Sun"
              },
              {
                "choice_id":"3",
                "choice_content":"Star"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/science/1.10.png",
            "question":"Legs have feet and arms have ___.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hands"
              },
              {
                "choice_id":"2",
                "choice_content":"Ankles"
              },
              {
                "choice_id":"3",
                "choice_content":"Eyes"
              },
            ],
          },
           //Q11
          {
            "q_img": "assets/images/science/science.png",
            "question":"You use a hand lens to observe a snail. What question could you
answer?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"How much does a snail weigh?"
              },
              {
                "choice_id":"2",
                "choice_content":"What are the parts of a snail?"
              },
              {
                "choice_id":"3",
                "choice_content":"Is this a snail"
              },
            ],
          },
           //Q11
          {
            "q_img": "assets/images/science/sq11.png",
            "question":"Look at the weather in this picture. What might this weather be?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"sunny and warm"
              },
              {
                "choice_id":"2",
                "choice_content":"cloudy and cold"
              },
              {
                "choice_id":"3",
                "choice_content":"dry and cold"
              },
              
            ],
          },
           //Q12
          {
            "q_img": "assets/images/science/science.png",
            "question":"Mei Lee’s aunt is a scientist. She studies the Moon. \nWhat should
she do to learn more about the Moon? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Observe the Moon once a week"
              },
              {
                "choice_id":"2",
                "choice_content":"Observe the Moon often and compare it to other objects in the sky."
              },
                {
                "choice_id":"3",
                "choice_content":"Do nothing"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/science/sq13.png",
            "question":"What is the water in the puddle?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"a solid"
              },
              {
                "choice_id":"2",
                "choice_content":"a liquid"
              },
                {
                "choice_id":"3",
                "choice_content":"a grass"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/science/sq14.png",
            "question":"What is one way that puppies are the same as their parents?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"same size"
              },
              {
                "choice_id":"2",
                "choice_content":"same body shape "
              },
                {
                "choice_id":"3",
                "choice_content":"same color"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/science/science.png",
            "question":"Lakes, ponds, and puddles are alike because they are",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"liquid"
              },
              {
                "choice_id":"2",
                "choice_content":"solid"
              },
                {
                "choice_id":"3",
                "choice_content":"cold"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/science/sq16.png",
            "question":"Deserts have very little water. How can plants live in deserts? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"They store water"
              },
              {
                "choice_id":"2",
                "choice_content":"They do not need water"
              },
                {
                "choice_id":"3",
                "choice_content":"They dry"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/science/science.png",
            "question":"What happens when sand is added to a cup of water? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"The sand melts. "
              },
              {
                "choice_id":"2",
                "choice_content":"The sand sinks to the bottom of the cup."
              },
                {
                "choice_id":"3",
                "choice_content":"the sand freeze"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/science/science.png",
            "question":"Which is something people get from Earth’s surface? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"cars"
              },
              {
                "choice_id":"2",
                "choice_content":"soil"
              },
                {
                "choice_id":"3",
                "choice_content":"roots"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/science/science.png",
            "question":"Which two things can you see in the sky at night?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Sun and Moon "
              },
              {
                "choice_id":"2",
                "choice_content":"Moon and stars "
              },
                {
                "choice_id":"3",
                "choice_content":"Sun and stars"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/science/science.png",
            "question":"What are fossils? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"types of plants"
              },
              {
                "choice_id":"2",
                "choice_content":"remains of living things from long ago "
              },
                {
                "choice_id":"3",
                "choice_content":"types of animals"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/science/science.png",
            "question":"How might the sky look?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"sunny and warm"
              },
              {
                "choice_id":"2",
                "choice_content":"cloudy or sunny"
              },
                {
                "choice_id":"3",
                "choice_content":"cold and dark"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/science/sq22.png",
            "question":"What can seeds do?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"They can grow into new plants."
              },
              {
                "choice_id":"2",
                "choice_content":"They can make plants warm."
              },
                {
                "choice_id":"3",
                "choice_content":"They can eat insects"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/science/science.png",
            "question":"What is true about soil? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"It is all the same."
              },
              {
                "choice_id":"2",
                "choice_content":"It is made up of tiny pieces of rocks."
              },
                {
                "choice_id":"3",
                "choice_content":"It is made of wood"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/science/science.png",
            "question":"How are frogs born? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"from seeds"
              },
              {
                "choice_id":"2",
                "choice_content":"from eggs"
              },
                {
                "choice_id":"3",
                "choice_content":"from lake"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/science/sq25.png",
            "question":"What will happen to this snowman on a warm day? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"It will freeze."
              },
              {
                "choice_id":"2",
                "choice_content":"It will melt."
              },
                {
                "choice_id":"3",
                "choice_content":"It will froze"
              },
            ],
          },
          ],
          "medium":[
            // Q1
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which organ covers the entire body and protects it?.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Liver"
              },
              {
                "choice_id":"2",
                "choice_content":"Heart"
              },
              {
                "choice_id":"3",
                "choice_content":"Skin"
              },
              {
                "choice_id":"4",
                "choice_content":"Brain"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which shape is a round?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Rectangle"
              },
              {
                "choice_id":"2",
                "choice_content":"Square"
              },
              {
                "choice_id":"3",
                "choice_content":"Circle"
              },
              {
                "choice_id":"4",
                "choice_content":"Triangle"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Who invented the first functional telephone?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Albert Einstein"
              },
              {
                "choice_id":"2",
                "choice_content":"Nikola Tesla"
              },
              {
                "choice_id":"3",
                "choice_content":"Thomas Alva Edison"
              },
              {
                "choice_id":"4",
                "choice_content":"Alexander Graham Bell"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/science/sci.png",
            "question":"What is the young one of a cow called?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Puppy"
              },
              {
                "choice_id":"2",
                "choice_content":"Kitten"
              },
               {
                "choice_id":"3",
                "choice_content":"Calf"
              },
              {
                "choice_id":"4",
                "choice_content":"Baby"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Dark rain clouds can give out lightning and ____.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Thunder"
              },
              {
                "choice_id":"2",
                "choice_content":"Snow"
              },

               {
                "choice_id":"3",
                "choice_content":"Sunlight"
              },
               {
                "choice_id":"4",
                "choice_content":"Wind"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Your hands have four fingers and a ____.",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Knee"
              },
              {
                "choice_id":"2",
                "choice_content":"Ankle"
              },
              {
                "choice_id":"3",
                "choice_content":"Elbow"
              },
              {
                "choice_id":"4",
                "choice_content":"Thumb"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which part of the bird lets it fly high in the sky?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Beak"
              },
              {
                "choice_id":"2",
                "choice_content":"Feet"
              },
              {
                "choice_id":"3",
                "choice_content":"Wings"
              },
              {
                "choice_id":"4",
                "choice_content":"Claws"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Animals that suckle their young one are called ____.",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Reptiles"
              },
              {
                "choice_id":"2",
                "choice_content":"Birds"
              },
                {
                "choice_id":"3",
                "choice_content":"Amphibians"
              },
                {
                "choice_id":"4",
                "choice_content":"Mammals"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/science/sci.png",
            "question":"What part of the plant conducts photosynthesis?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Branch"
              },
              {
                "choice_id":"2",
                "choice_content":"Leaf"
              },
              {
                "choice_id":"3",
                "choice_content":"Root"
              },
              {
                "choice_id":"4",
                "choice_content":"Trunk"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/science/sci.png",
            "question":"What is the boiling point of water?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"25°C"
              },
              {
                "choice_id":"2",
                "choice_content":"50°C"
              },
              {
                "choice_id":"3",
                "choice_content":"75°C"
              },
              {
                "choice_id":"4",
                "choice_content":"100°C"
              },
            ],
          },
          ],
          "hard":[]
        }
      },

      // GRADE2
       {
        "difficulty_name":"Grade 2",
        "grade_desc" : "In the second grade, children are usually 7 to 8 years old. Students are taught subjects such as Math, Science, Geography and Social Studies. In Math, they are introduced to larger numbers (building up on what was taught to them in the first grade) and fundamental operations such as addition and subtraction.",
        "diff-avatar": "assets/images/grade2.png",
        "content":{
          "easy":[
            // Q1
          {
            "q_img": "assets/images/science/1.1.png",
            "question":"Animals that suckle their young one are called ____. ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Reptiles"
              },
              {
                "choice_id":"2",
                "choice_content":"Birds"
              },
              {
                "choice_id":"3",
                "choice_content":"mammals"
              },
              
            ],
          },
          // Q2
          {
            "q_img": "assets/images/science/1.2.png",
            "question":"There are two of these on my nose. I breath and smell through them.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Eyelashes"
              },
              {
                "choice_id":"2",
                "choice_content":"Nostrils"
              },
              {
                "choice_id":"3",
                "choice_content":"Lips"
              },
              
            ],
          },
          // Q3
          {
            "q_img": "assets/images/science/1.3.png",
            "question":"igments gives hair its.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"feel"
              },
              {
                "choice_id":"2",
                "choice_content":"Color"
              },
              {
                "choice_id":"3",
                "choice_content":"length"
              },
              
            ],
          },
          //Q4
          {
            "q_img": "assets/images/science/1.4.png",
            "question":"When heated will a candle melt?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Yes"
              },
              {
                "choice_id":"2",
                "choice_content":"No"
              },
              {
                "choice_id":"3",
                "choice_content":"None of the above"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/science/1.5.png",
            "question":"What state of matter is the cover of the balls? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"solid"
              },
              {
                "choice_id":"2",
                "choice_content":"liquid"
              },
              {
                "choice_id":"3",
                "choice_content":"gas"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/science/1.6.png",
            "question":"Which of the following words is an example of a physical property?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"bumpy"
              },
              {
                "choice_id":"2",
                "choice_content":"rusting"
              },
              {
                "choice_id":"3",
                "choice_content":"burning"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/science/1.7.png",
            "question":"When heated, will chocolate candy melt?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Yes"
              },
              {
                "choice_id":"2",
                "choice_content":"No"
              },
              {
                "choice_id":"3",
                "choice_content":"None of the above"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/science/1.8.png",
            "question":"What science tool would you use to find out the temperature outside?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"hand lens "
              },
              {
                "choice_id":"2",
                "choice_content":"thermometer"
              },
                {
                "choice_id":"2",
                "choice_content":"ruler"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/science/1.9.png",
            "question":"If you were wanting to build a bridge, what would you use?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"straw"
              },
              {
                "choice_id":"2",
                "choice_content":"ice cube "
              },
              {
                "choice_id":"3",
                "choice_content":"metal beam"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/science/1.10.png",
            "question":"When heated, will popcorn melt? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"yes"
              },
              {
                "choice_id":"2",
                "choice_content":"no"
              },
              {
                "choice_id":"3",
                "choice_content":"none of the above"
              },
            ],
          },
           //Q11
          {
            "q_img": "assets/images/science/science.png",
            "question":"If you were measuring the worms, what should you do right  after your investigation?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"put on gloves"
              },
              {
                "choice_id":"2",
                "choice_content":"wash your hands"
              },
              {
                "choice_id":"3",
                "choice_content":"put on your goggles"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/science/science.png",
            "question":"What are theof this is part three state of elements",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Solid"
              },
              {
                "choice_id":"2",
                "choice_content":"Liquid"
              },
                {
                "choice_id":"3",
                "choice_content":"All of the above"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/science/sq13.png",
            "question":"Which group of animals have scales? ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Mammals"
              },
              {
                "choice_id":"2",
                "choice_content":"Amphibians"
              },
                {
                "choice_id":"3",
                "choice_content":"Reptiles"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/science/sq14.png",
            "question":"If one boils water it will convert into ____. ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"mist"
              },
              {
                "choice_id":"2",
                "choice_content":"steam "
              },
                {
                "choice_id":"3",
                "choice_content":"clouds"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/science/science.png",
            "question":"What helps butterflies to fly?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"arms"
              },
              {
                "choice_id":"2",
                "choice_content":"legs"
              },
                {
                "choice_id":"3",
                "choice_content":"wings"
              },
            ],
          },
//Q16 NOT EDITED UP TO 25
          {
            "q_img": "assets/images/science/sq16.png",
            "question":"Deserts have very little water. How can plants live in deserts? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"They store water"
              },
              {
                "choice_id":"2",
                "choice_content":"They do not need water"
              },
                {
                "choice_id":"3",
                "choice_content":"They dry"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/science/science.png",
            "question":"What happens when sand is added to a cup of water? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"The sand melts. "
              },
              {
                "choice_id":"2",
                "choice_content":"The sand sinks to the bottom of the cup."
              },
                {
                "choice_id":"3",
                "choice_content":"the sand freeze"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/science/science.png",
            "question":"Which is something people get from Earth’s surface? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"cars"
              },
              {
                "choice_id":"2",
                "choice_content":"soil"
              },
                {
                "choice_id":"3",
                "choice_content":"roots"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/science/science.png",
            "question":"Which two things can you see in the sky at night?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Sun and Moon "
              },
              {
                "choice_id":"2",
                "choice_content":"Moon and stars "
              },
                {
                "choice_id":"3",
                "choice_content":"Sun and stars"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/science/science.png",
            "question":"What are fossils? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"types of plants"
              },
              {
                "choice_id":"2",
                "choice_content":"remains of living things from long ago "
              },
                {
                "choice_id":"3",
                "choice_content":"types of animals"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/science/science.png",
            "question":"How might the sky look?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"sunny and warm"
              },
              {
                "choice_id":"2",
                "choice_content":"cloudy or sunny"
              },
                {
                "choice_id":"3",
                "choice_content":"cold and dark"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/science/sq22.png",
            "question":"What can seeds do?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"They can grow into new plants."
              },
              {
                "choice_id":"2",
                "choice_content":"They can make plants warm."
              },
                {
                "choice_id":"3",
                "choice_content":"They can eat insects"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/science/science.png",
            "question":"What is true about soil? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"It is all the same."
              },
              {
                "choice_id":"2",
                "choice_content":"It is made up of tiny pieces of rocks."
              },
                {
                "choice_id":"3",
                "choice_content":"It is made of wood"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/science/science.png",
            "question":"How are frogs born? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"from seeds"
              },
              {
                "choice_id":"2",
                "choice_content":"from eggs"
              },
                {
                "choice_id":"3",
                "choice_content":"from lake"
              },
            ],
          },
          ],
          "medium":[// Q1
          {
            "q_img": "assets/images/science/1.1.png",
            "question":"Where do butterflies lay their eggs?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"On a leaf"
              },
              {
                "choice_id":"2",
                "choice_content":"in a pond"
              },
              {
                "choice_id":"3",
                "choice_content":"on the ground"
              },
               {
                "choice_id":"4",
                "choice_content":"in a nest"
              },
              
            ],
          },
          // Q2
          {
            "q_img": "assets/images/science/1.2.png",
            "question":"What hatches from butterfly eggs?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Centipedes"
              },
              {
                "choice_id":"2",
                "choice_content":"Caterpillars"
              },
              {
                "choice_id":"3",
                "choice_content":"Worms"
              },
              {
                "choice_id":"4",
                "choice_content":"Tadpoles"
              },
              
            ],
          },
          // Q3
          {
            "q_img": "assets/images/science/1.3.png",
            "question":"The caterpillar grows. It grows by eating?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"leaves"
              },
              {
                "choice_id":"2",
                "choice_content":"flowers"
              },
              {
                "choice_id":"3",
                "choice_content":"roots"
              },
              {
                "choice_id":"4",
                "choice_content":"worms"
              },
              
            ],
          },
          //Q4 
          {
            "q_img": "assets/images/science/1.4.png",
            "question":"The caterpillar turns into a____. ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Spider"
              },
              {
                "choice_id":"2",
                "choice_content":"Pupa"
              },
              {
                "choice_id":"3",
                "choice_content":"Worm"
              },
               {
                "choice_id":"4",
                "choice_content":"Egg"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/science/1.5.png",
            "question":"Inside the pupa the caterpillar changes into a____. ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Fly"
              },
              {
                "choice_id":"2",
                "choice_content":"Butterfly"
              },
              {
                "choice_id":"3",
                "choice_content":"Bee"
              },
              {
                "choice_id":"4",
                "choice_content":"Beetle"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/science/1.6.png",
            "question":"Which one is adult? ",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Egg"
              },
              {
                "choice_id":"2",
                "choice_content":"Pupa"
              },
              {
                "choice_id":"3",
                "choice_content":"Chrysalis"
              },
              {
                "choice_id":"4",
                "choice_content":"Butterfly"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/science/1.7.png",
            "question":"Which one of these can fly?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Caterpillar"
              },
              {
                "choice_id":"2",
                "choice_content":"Pupa"
              },
              {
                "choice_id":"3",
                "choice_content":"Butterfly"
              },
              {
                "choice_id":"4",
                "choice_content":"Chrysalis"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/science/1.8.png",
            "question":"Where do adult butterflies get their food? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"By eating leaves"
              },
              {
                "choice_id":"2",
                "choice_content":"from flowers"
              },
              {
                "choice_id":"3",
                "choice_content":"from roots"
              },
               {
                "choice_id":"4",
                "choice_content":"by eating grass"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/science/1.9.png",
            "question":"Lions are big cats. But their babies are called _____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Kittens"
              },
              {
                "choice_id":"2",
                "choice_content":"Cubs"
              },
              {
                "choice_id":"3",
                "choice_content":"Leopards"
              },
              {
                "choice_id":"4",
                "choice_content":"Calves"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/science/1.10.png",
            "question":"If the mother is a cow, what do we call the baby?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"piglet"
              },
              {
                "choice_id":"2",
                "choice_content":"cub"
              },
              {
                "choice_id":"3",
                "choice_content":"Calf"
              },
              {
                "choice_id":"4",
                "choice_content":"Foal"
              },
            ],
          },
           //Q11
          {
            "q_img": "assets/images/science/science.png",
            "question":"What is a baby sheep called?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Puppy?"
              },
              {
                "choice_id":"2",
                "choice_content":"calf?"
              },
              {
                "choice_id":"3",
                "choice_content":"chick"
              },
              {
                "choice_id":"4",
                "choice_content":"lamb"
              },
            ],
          },
           //Q12
          {
            "q_img": "assets/images/science/sq11.png",
            "question":"What are baby pigs called? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Piglets"
              },
              {
                "choice_id":"2",
                "choice_content":"puppies"
              },
              {
                "choice_id":"3",
                "choice_content":"poppies"
              },
              {
                "choice_id":"3",
                "choice_content":"pansies"
              },
              
            ],
          },
           //Q13
          {
            "q_img": "assets/images/science/science.png",
            "question":"if the mother is a horse, what do we call the baby?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"calf"
              },
              {
                "choice_id":"2",
                "choice_content":"cub"
              },
                {
                "choice_id":"3",
                "choice_content":"faul"
              },
              {
                "choice_id":"4",
                "choice_content":"kid"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/science/sq13.png",
            "question":"Baby giraffes are called calves. They are like their mothers, but smaller. They are born with long _____ and _____. ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"arms and legs"
              },
              {
                "choice_id":"2",
                "choice_content":"ears and arms"
              },
                {
                "choice_id":"3",
                "choice_content":"legs and necks"
              },
              {
                "choice_id":"4",
                "choice_content":"necks and arms"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/science/sq14.png",
            "question":"WMany animals have more than one baby at the same time. The mom and dad of these two babies are very proud. \nThey have named the babies Alex and Freddy. Alex and Freddy are _____.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"twins"
              },
              {
                "choice_id":"2",
                "choice_content":"triplets"
              },
                {
                "choice_id":"3",
                "choice_content":"cousins"
              },
              {
                "choice_id":"4",
                "choice_content":"cubs"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/science/science.png",
            "question":"Animals in the sea also have babies. A mother _____ is swimming with her calf.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Dolphin"
              },
              {
                "choice_id":"2",
                "choice_content":"Seal"
              },
                {
                "choice_id":"3",
                "choice_content":"sea lion"
              },
              {
                "choice_id":"4",
                "choice_content":"octopus"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/science/sq16.png",
            "question":"Puppies are young_____.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"dog"
              },
              {
                "choice_id":"2",
                "choice_content":"cats"
              },
                {
                "choice_id":"3",
                "choice_content":"rabbits"
              },
              {
                "choice_id":"4",
                "choice_content":"goat"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/science/science.png",
            "question":"Where are you most likely to find a frog?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"pond"
              },
              {
                "choice_id":"2",
                "choice_content":"on a lawn"
              },
                {
                "choice_id":"3",
                "choice_content":"in a tree"
              },
              {
                "choice_id":"4",
                "choice_content":"in a field"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/science/science.png",
            "question":"Frogs lay their eggs in ponds. What do we call of their egg? ",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Frogspawn"
              },
              {
                "choice_id":"2",
                "choice_content":"Hen`s eggs"
              },
                {
                "choice_id":"3",
                "choice_content":"Duck eggs"
              },
              {
                "choice_id":"4",
                "choice_content":"Tadpoles"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/science/science.png",
            "question":"What hatch from the eggs of frogspawn and swin in the ponds?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"tadoples "
              },
              {
                "choice_id":"2",
                "choice_content":"fish "
              },
                {
                "choice_id":"3",
                "choice_content":"hens"
              },
              {
                "choice_id":"4",
                "choice_content":"frogs"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/science/science.png",
            "question":"What do frogs eat?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Flies"
              },
              {
                "choice_id":"2",
                "choice_content":"leaves "
              },
                {
                "choice_id":"3",
                "choice_content":"seeds"
              },
              {
                "choice_id":"4",
                "choice_content":"fruit"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/science/science.png",
            "question":"Which one of these is an adult? ",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Frogspawn"
              },
              {
                "choice_id":"2",
                "choice_content":"Tadpole"
              },
                {
                "choice_id":"3",
                "choice_content":"Froglet"
              },
              {
                "choice_id":"4",
                "choice_content":"rog"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/science/sq22.png",
            "question":"how do frogs catch their food? ",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"With their legs"
              },
              {
                "choice_id":"2",
                "choice_content":"With a stick"
              },
                {
                "choice_id":"3",
                "choice_content":"With their tounge"
              },
              {
                "choice_id":"4",
                "choice_content":"With their feet"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/science/science.png",
            "question":"Most animals have four legs, like this horse. \nWhich one of these animals has more than four legs? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"elephant."
              },
              {
                "choice_id":"2",
                "choice_content":"Chimpanzee."
              },
                {
                "choice_id":"3",
                "choice_content":"agle"
              },
              {
                "choice_id":"4",
                "choice_content":"centipede"
              },
            ],
          },
           //Q25
          {
            "q_img": "assets/images/science/science.png",
            "question":"What are the special front legs of crab?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"claws"
              },
              {
                "choice_id":"2",
                "choice_content":"needles"
              },
                {
                "choice_id":"3",
                "choice_content":"jaws"
              },
              {
                "choice_id":"4",
                "choice_content":"Scissors"
              },
            ],
          },
          
          ],
          "hard":[
            // Q1
          {
            "q_img": "assets/images/science/1.1.png",
            "question":"What moves your bones?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Your heart"
              },
              {
                "choice_id":"2",
                "choice_content":"Your lungs"
              },
              {
                "choice_id":"3",
                "choice_content":"your muscles"
              },
               {
                "choice_id":"4",
                "choice_content":"your blood"
              },
                {
                "choice_id":"5",
                "choice_content":"your stomach"
              },
              
            ],
          },
          // Q2
          {
            "q_img": "assets/images/science/1.2.png",
            "question":"What is the tube to your stomach called?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"brain"
              },
              {
                "choice_id":"2",
                "choice_content":"muscle"
              },
              {
                "choice_id":"3",
                "choice_content":"esophagus"
              },
               {
                "choice_id":"4",
                "choice_content":"blood"
              },
              {
                "choice_id":"5",
                "choice_content":"bone"
              },
              
            ],
          },
          // Q3
          {
            "q_img": "assets/images/science/1.3.png",
            "question":"What do lungs do? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"take in air and move oxygen through your body"
              },
              {
                "choice_id":"2",
                "choice_content":"digest your food"
              },
              {
                "choice_id":"3",
                "choice_content":"create an optical illusions"
              },
               {
                "choice_id":"4",
                "choice_content":"moves the bones"
              },
              {
                "choice_id":"5",
                "choice_content":"eat your body"
              },
              
            ],
          },
          //Q4
          {
            "q_img": "assets/images/science/1.4.png",
            "question":"What does the saliva in your mouth do for digestion? ",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"moves the bones"
              },
              {
                "choice_id":"2",
                "choice_content":"breaks down the food"
              },
              {
                "choice_id":"3",
                "choice_content":"keep the food soft"
              },
               {
                "choice_id":"4",
                "choice_content":"pumps blood in your body"
              },
              {
                "choice_id":"5",
                "choice_content":"allows your mouth to move"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/science/1.5.png",
            "question":"What do bones who fit together make??",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"lungs"
              },
              {
                "choice_id":"2",
                "choice_content":"muscles"
              },
              {
                "choice_id":"3",
                "choice_content":"skeleton"
              },
               {
                "choice_id":"4",
                "choice_content":"bone"
              },
              {
                "choice_id":"5",
                "choice_content":"heart"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/science/1.6.png",
            "question":"Bones that protecy your body parts.",
            "answer": "5",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"skin"
              },
              {
                "choice_id":"2",
                "choice_content":"heart"
              },
              {
                "choice_id":"3",
                "choice_content":"lungs"
              },
               {
                "choice_id":"4",
                "choice_content":"brain"
              },
              {
                "choice_id":"5",
                "choice_content":"b and c and d"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/science/1.7.png",
            "question":"How do you keep your bones and muscles healthy?",
            "answer": "5",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Eating bad food"
              },
              {
                "choice_id":"2",
                "choice_content":"exercising"
              },
              {
                "choice_id":"3",
                "choice_content":"oxygen"
              },
               {
                "choice_id":"4",
                "choice_content":"eating healthy"
              },
              {
                "choice_id":"5",
                "choice_content":"b and d"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/science/1.8.png",
            "question":"Your heart and lungs keep you alive by working together.",
            "answer": "1",
            "choices":[
             {
                "choice_id":"1",
                "choice_content":"true"
              },
              {
                "choice_id":"2",
                "choice_content":"false"
              },
              {
                "choice_id":"3",
                "choice_content":"all of the above"
              },
               {
                "choice_id":"4",
                "choice_content":"none of the above"
              },
              {
                "choice_id":"5",
                "choice_content":"a and b"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/science/1.9.png",
            "question":"Mark all the things your stomach does?",
            "answer": "5",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"take in air"
              },
              {
                "choice_id":"2",
                "choice_content":"help squeeze food"
              },
              {
                "choice_id":"3",
                "choice_content":"keep you alive"
              },
               {
                "choice_id":"4",
                "choice_content":"mix food with special juices"
              },
              {
                "choice_id":"5",
                "choice_content":"b and d"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/science/1.10.png",
            "question":"Blood without oxygen is blue, blood with oxygen is....",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"white"
              },
              {
                "choice_id":"2",
                "choice_content":"blue"
              },
              {
                "choice_id":"3",
                "choice_content":"red"
              },
               {
                "choice_id":"4",
                "choice_content":"orange"
              },
              {
                "choice_id":"5",
                "choice_content":"green"
              },
            ],
          },
           //Q11
          {
            "q_img": "assets/images/science/science.png",
            "question":"Why does your body digest food?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"for energy"
              },
              {
                "choice_id":"2",
                "choice_content":"for sleep"
              },
              {
                "choice_id":"3",
                "choice_content":"for watching tv"
              },
               {
                "choice_id":"4",
                "choice_content":"for hair "
              },
              {
                "choice_id":"5",
                "choice_content":"none of the above"
              },
            ],
          },
           //Q11
          {
            "q_img": "assets/images/science/sq11.png",
            "question":"Fossils tell us about the past.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"true"
              },
              {
                "choice_id":"2",
                "choice_content":"false"
              },
              {
                "choice_id":"3",
                "choice_content":"all of the above"
              },
               {
                "choice_id":"4",
                "choice_content":"a and b"
              },
              {
                "choice_id":"5",
                "choice_content":"none of the above"
              },
              
            ],
          },
           //Q12
          {
            "q_img": "assets/images/science/science.png",
            "question":"A herbivore is an organism that eats only meat. ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"true"
              },
              {
                "choice_id":"2",
                "choice_content":"false"
              },
              {
                "choice_id":"3",
                "choice_content":"all of the above"
              },
               {
                "choice_id":"4",
                "choice_content":"none of the above"
              },
              {
                "choice_id":"5",
                "choice_content":"a and b"
              },
            ],
          },
           //Q13
          {
            "q_img": "assets/images/science/sq13.png",
            "question":"This is the only mammal that flies.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Robin"
              },
              {
                "choice_id":"2",
                "choice_content":"Dolphin"
              },
              {
                "choice_id":"3",
                "choice_content":"bat"
              },
               {
                "choice_id":"4",
                "choice_content":"lion"
              },
              {
                "choice_id":"5",
                "choice_content":"squirrel"
              },
            ],
          },
           //Q14
          {
            "q_img": "assets/images/science/sq14.png",
            "question":" A footprint is what type of fossil?",
            "answer": "4",
            "choices":[
             {
                "choice_id":"1",
                "choice_content":"marking"
              },
              {
                "choice_id":"2",
                "choice_content":"trail"
              },
              {
                "choice_id":"3",
                "choice_content":"rock"
              },
               {
                "choice_id":"4",
                "choice_content":"imprint"
              },
              {
                "choice_id":"5",
                "choice_content":"water"
              },
            ],
          },
           //Q15
          {
            "q_img": "assets/images/science/science.png",
            "question":"Which mammal lives in the water?",
            "answer": "1",
            "choices":[
             {
                "choice_id":"1",
                "choice_content":"whale"
              },
              {
                "choice_id":"2",
                "choice_content":"turtle"
              },
              {
                "choice_id":"3",
                "choice_content":"shark"
              },
               {
                "choice_id":"4",
                "choice_content":"frog"
              },
              {
                "choice_id":"5",
                "choice_content":"fish"
              },
            ],
          },
           //Q16
          {
            "q_img": "assets/images/science/sq16.png",
            "question":"Which do mammals have?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"gills"
              },
              {
                "choice_id":"2",
                "choice_content":"hair"
              },
              {
                "choice_id":"3",
                "choice_content":"scales"
              },
               {
                "choice_id":"4",
                "choice_content":"antena"
              },
              {
                "choice_id":"5",
                "choice_content":"leg"
              },
            ],
          },
           //Q17
          {
            "q_img": "assets/images/science/science.png",
            "question":"Which are mammals?",
            "answer": "3",
            "choices":[
             {
                "choice_id":"1",
                "choice_content":"frog"
              },
              {
                "choice_id":"2",
                "choice_content":"ants"
              },
              {
                "choice_id":"3",
                "choice_content":"human"
              },
               {
                "choice_id":"4",
                "choice_content":"seastars"
              },
              {
                "choice_id":"5",
                "choice_content":"fish"
              },
            ],
          },
           //Q18
          {
            "q_img": "assets/images/science/science.png",
            "question":"WWhat is an example of a solid turning into another state of matter? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"breaking a chair into pieces"
              },
              {
                "choice_id":"2",
                "choice_content":"snow becoming a puddle"
              },
              {
                "choice_id":"3",
                "choice_content":"water freezing"
              },
               {
                "choice_id":"4",
                "choice_content":"tearing a piece of paper"
              },
              {
                "choice_id":"5",
                "choice_content":"none of the above"
              },
            ],
          },
           //Q19
          {
            "q_img": "assets/images/science/science.png",
            "question":"The biggest mammal is a ______ ",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"elephant"
              },
              {
                "choice_id":"2",
                "choice_content":"giraffe"
              },
              {
                "choice_id":"3",
                "choice_content":"bull"
              },
               {
                "choice_id":"4",
                "choice_content":"whale"
              },
              {
                "choice_id":"5",
                "choice_content":"cheetah"
              },
            ],
          },
           //Q20
          {
            "q_img": "assets/images/science/science.png",
            "question":"Gravity is holding everything on to the Earth. ",
            "answer": "1",
            "choices":[
             {
                "choice_id":"1",
                "choice_content":"true"
              },
              {
                "choice_id":"2",
                "choice_content":"false"
              },
              {
                "choice_id":"3",
                "choice_content":"none of the above"
              },
               {
                "choice_id":"4",
                "choice_content":"all of the above"
              },
              {
                "choice_id":"5",
                "choice_content":"a and b"
              },
            ],
          },
           //Q21
          {
            "q_img": "assets/images/science/science.png",
            "question":" There are three states of matter; solid, liquid, and gas. ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"true"
              },
              {
                "choice_id":"2",
                "choice_content":"false"
              },
              {
                "choice_id":"3",
                "choice_content":"none of the above"
              },
               {
                "choice_id":"4",
                "choice_content":"all of the above"
              },
              {
                "choice_id":"5",
                "choice_content":"a and b"
              },
            ],
          },
           //Q22
          {
            "q_img": "assets/images/science/sq22.png",
            "question":"Magnets have two poles; an east pole and a west pole.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"true"
              },
              {
                "choice_id":"2",
                "choice_content":"false"
              },
              {
                "choice_id":"3",
                "choice_content":"none of the above"
              },
               {
                "choice_id":"4",
                "choice_content":"all of the above"
              },
              {
                "choice_id":"5",
                "choice_content":"a and b"
              },
            ],
          },
           //Q23
          {
            "q_img": "assets/images/science/science.png",
            "question":"Observable characteristics are things that can only be measured.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"true"
              },
              {
                "choice_id":"2",
                "choice_content":"false"
              },
              {
                "choice_id":"3",
                "choice_content":"none of the above"
              },
               {
                "choice_id":"4",
                "choice_content":"all of the above"
              },
              {
                "choice_id":"5",
                "choice_content":"a and b"
              },
            ],
          },
           //Q24
          {
            "q_img": "assets/images/science/science.png",
            "question":"Fossils help us to understand prehistoric times.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"true"
              },
              {
                "choice_id":"2",
                "choice_content":"false"
              },
              {
                "choice_id":"3",
                "choice_content":"none of the above"
              },
               {
                "choice_id":"4",
                "choice_content":"all of the above"
              },
              {
                "choice_id":"5",
                "choice_content":"a and b"
              },
            ],
          },
          ]
        }-
        
      },
      
// GRADE3
      {
        "difficulty_name":"Grade 3",
        "grade_desc" : "Third grade is a year of primary education in many countries. It is the third school year of primary school. Students are usually 8–9 years old, depending on when their birthday occurs. ",
        "diff-avatar": "assets/images/grade3.png",
        "content":{
          "easy":[
            // Q1
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which is the largest land animal?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Lion"
              },
              {
                "choice_id":"2",
                "choice_content":"Tiger"
              },
              {
                "choice_id":"3",
                "choice_content":"Elephant"
              },
              {
                "choice_id":"4",
                "choice_content":"Rhinoceros"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/science/sci.pnng",
            "question":"____ helps pump blood through the entire body",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Lungs"
              },
              {
                "choice_id":"2",
                "choice_content":"Kidneys"
              },
              {
                "choice_id":"3",
                "choice_content":"Heart"
              },
              {
                "choice_id":"4",
                "choice_content":"Brain"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/science/sci.png",
            "question":"How does a dog express happiness?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Twitching ears"
              },
              {
                "choice_id":"2",
                "choice_content":"Moving head"
              },
              {
                "choice_id":"3",
                "choice_content":"Closing eyes"
              },
              {
                "choice_id":"4",
                "choice_content":"Wagging tail"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/science/sci.png",
            "question":"hich material from the following has the highest transparency?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Metal"
              },
              {
                "choice_id":"2",
                "choice_content":"Glass"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/science/sci.png",
            "question":"What are the three states of matter?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Small, Gas, Liquid"
              },
              {
                "choice_id":"2",
                "choice_content":"Solid, Liquid, Gas"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Frog is a ___ .",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Reptile"
              },
              {
                "choice_id":"2",
                "choice_content":"Amphibian"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/science/sci.png",
            "question":"If one boils water it will convert into ____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Mist"
              },
              {
                "choice_id":"2",
                "choice_content":"Steam"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/science/sci.png",
            "question":"When you push something, you apply ____.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Force"
              },
              {
                "choice_id":"2",
                "choice_content":"Mass"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which group of animals have scales?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Mammals"
              },
              {
                "choice_id":"2",
                "choice_content":"Reptiles"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Where does our food collect after we chew and swallow it?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Liver"
              },
              {
                "choice_id":"2",
                "choice_content":"Stomach"
              },
            ],
          },
          ],
          "medium":[],
          "hard":[]
        }-
      },
      // GRADE4
      {
        "difficulty_name":"Grade 4",
        "grade_desc" : "The fourth grade forms the fourth year of Elementary school and children enrolled are typically 9 to 10 years old. Subjects taught include Math, Science, Reading, Writing and Social Studies.",
        "diff-avatar": "assets/images/grade4.png",
        "content":{
          "easy":[
            // Q1
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which animal from the below list is best adapted to the desert?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Tiger"
              },
              {
                "choice_id":"2",
                "choice_content":"Cheetah"
              },
              {
                "choice_id":"3",
                "choice_content":"Camel"
              },
              {
                "choice_id":"4",
                "choice_content":"Deer"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/science/sheep.jpg",
            "question":"What is the name of a frog’s young one?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Infant"
              },
              {
                "choice_id":"2",
                "choice_content":"Puppy"
              },
              {
                "choice_id":"3",
                "choice_content":"Tadpole"
              },
              {
                "choice_id":"4",
                "choice_content":"Todpole"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which pigment gives the leaves its green color?",
            "answer": "4",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Carotenoids"
              },
              {
                "choice_id":"2",
                "choice_content":"Anthocyanins"
              },
              {
                "choice_id":"3",
                "choice_content":"Roots"
              },
              {
                "choice_id":"4",
                "choice_content":"Chlorophyll"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/science/sci.png",
            "question":"What part of the skeletal system protects the brain?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Spine"
              },
              {
                "choice_id":"2",
                "choice_content":"Skull"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/science/sci.png",
            "question":"What tissue connects muscles to bones?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Skin"
              },
              {
                "choice_id":"2",
                "choice_content":"Tendon"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which nutrient plays an essential role in muscle-building?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Protein"
              },
              {
                "choice_id":"2",
                "choice_content":"Carbohydrate"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Plants need which gas to perform photosynthesis?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Hydrogen"
              },
              {
                "choice_id":"2",
                "choice_content":"Carbon dioxide"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which scientist proposed the three laws of motion?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Isaac Newton"
              },
              {
                "choice_id":"2",
                "choice_content":"Albert Einstein"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Albert Einstein",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Hydrosphere"
              },
              {
                "choice_id":"2",
                "choice_content":"Atmosphere"
              },
            ],
          },
          //Q10
          {
            
            "q_img": "assets/images/science/sci.png",
            "question":"Which system of the body controls the senses?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Circulatory system"
              },
              {
                "choice_id":"2",
                "choice_content":"Nervous system"
              },
            ],
          },
          ],
          "medium":[],
          "hard":[]
        }
      },
      // GRADE5
      {
        "difficulty_name":"Grade 5",
        "grade_desc" : "The fifth grade is the fifth and last school year of elementary school in most schools. ... Key English Language Arts Common Core standards for 5th grade students include: Ability to determine the theme of a book, story, or poem from details in the text.",
        "diff-avatar": "assets/images/grade5.png",
        "content":{
          "easy":[
            // Q1
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which is the largest animal on earth?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Shark"
              },
              {
                "choice_id":"2",
                "choice_content":"Elephant"
              },
              {
                "choice_id":"3",
                "choice_content":"Blue whale"
              },
              {
                "choice_id":"4",
                "choice_content":"Giraffe"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Similar body cells group together to form a ___.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Organ"
              },
              {
                "choice_id":"2",
                "choice_content":"Tissue"
              },
              {
                "choice_id":"3",
                "choice_content":"Blood vessels"
              },
              {
                "choice_id":"4",
                "choice_content":"Joints"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/science/sci.png",
            "question":"What energy emerges from motion?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Potential energy"
              },
              {
                "choice_id":"2",
                "choice_content":"Electrical energy"
              },
              {
                "choice_id":"3",
                "choice_content":"Kinetic energy"
              },
              {
                "choice_id":"4",
                "choice_content":"Gravitational energy"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/science/sci.png",
            "question":"The standard unit of measurement for energy is ____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Newton"
              },
              {
                "choice_id":"2",
                "choice_content":"Joule"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which is the strongest sense in a dog?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Hearing"
              },
              {
                "choice_id":"2",
                "choice_content":"Smell"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which biologist proposed the theory of evolution through natural selection?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Stephen Hawking"
              },
              {
                "choice_id":"2",
                "choice_content":"Charles Darwin"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/science/sci.png",
            "question":"“For every action, there is an equal and opposite reaction.”  It is which of Newton’s law of motion?.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"First Law"
              },
              {
                "choice_id":"2",
                "choice_content":"Third Law"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which cell organelle is also called powerhouse of the cell?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Ribosome"
              },
              {
                "choice_id":"2",
                "choice_content":"Mitochondria"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/science/sci.png",
            "question":"The bending of light through a glass prism is called ____.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Reflection"
              },
              {
                "choice_id":"2",
                "choice_content":"Refraction"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/science/sci.png",
            "question":"A lion is most closely related to which of the following animals?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Dog"
              },
              {
                "choice_id":"2",
                "choice_content":"Leopard"
              },
            ],
          },
          ],
          "medium":[],
          "hard":[]
        }
      },
      // GRADE6
      {
        "difficulty_name":"Grade 6",
        "grade_desc" : "Sixth grade is a year of education for students ages 11–12. In many nations, it is the first year of middle school or the last year of elementary school. ",
        "diff-avatar": "assets/images/grade6.png",
        "content":{
          "easy":[
            // Q1
          {
            "q_img": "assets/images/science/sci.png",
            "question":"What color is universal indicator in a neutral solution?.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Green"
              },
              {
                "choice_id":"2",
                "choice_content":"Blue"
              },
              {
                "choice_id":"3",
                "choice_content":"Red"
              },
              {
                "choice_id":"4",
                "choice_content":"Orange"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/science/sci.png",
            "question":"Which of these features protects seaweed from being damaged by powerful waves?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Seaweed's green color"
              },
              {
                "choice_id":"2",
                "choice_content":"Seaweed's toughness and flexibility"
              },
              {
                "choice_id":"3",
                "choice_content":"Seaweed's slimy texture"
              },
              {
                "choice_id":"4",
                "choice_content":"Seaweed's nutritional value"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/science/sci.png",
            "question":"The area in which an organism lives is called ...",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"A habitat."
              },
              {
                "choice_id":"2",
                "choice_content":"A river"
              },
              {
                "choice_id":"3",
                "choice_content":"A wood"
              },
              {
                "choice_id":"4",
                "choice_content":"An environment"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/science/sci.png",
            "question":"These supply the body’s movement abilities.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Tendons"
              },
              {
                "choice_id":"2",
                "choice_content":"Periosteum"
              },
               {
                "choice_id":"3",
                "choice_content":"Muscles"
              },
              {
                "choice_id":"4",
                "choice_content":"Musculoskeletal system"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/science/sci.png",
            "question":"The ellipsoid joint is more commonly known as the ________.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Wrist"
              },
              {
                "choice_id":"2",
                "choice_content":"Thumb"
              },

               {
                "choice_id":"3",
                "choice_content":"Ankle"
              },
               {
                "choice_id":"4",
                "choice_content":"Fingers & Toes"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/science/sci.png",
            "question":"The heart is divided into ______.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"4 chambers"
              },
              {
                "choice_id":"2",
                "choice_content":"4 aortas"
              },
              {
                "choice_id":"3",
                "choice_content":"4 valves"
              },
              {
                "choice_id":"4",
                "choice_content":"4 arteries"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/science/sci.png",
            "question":"White blood cells are also known as _________.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"leukocytes"
              },
              {
                "choice_id":"2",
                "choice_content":"cytoplasm"
              },
              {
                "choice_id":"3",
                "choice_content":"neutrophils"
              },
              {
                "choice_id":"4",
                "choice_content":"basophils"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/science/sci.png",
            "question":"These are small, rounded masses of lymphatic tissue located in the pharynx and in the passage from the mouth to the pharynx.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Adenoids"
              },
              {
                "choice_id":"2",
                "choice_content":"Tonsils"
              },
                {
                "choice_id":"3",
                "choice_content":"Spleen"
              },
                {
                "choice_id":"4",
                "choice_content":"Glands"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/science/sci.png",
            "question":"The beginning stage of adolescence is known as _____.",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"meiosis"
              },
              {
                "choice_id":"2",
                "choice_content":"menstruation"
              },
              {
                "choice_id":"3",
                "choice_content":"puberty"
              },
            ],
          },
          //Q10
          {
            
            "q_img": "assets/images/science/sci.png",
            "question":"Humans have how many chromosomes?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"27"
              },
              {
                "choice_id":"2",
                "choice_content":"23"
              },
              {
                "choice_id":"3",
                "choice_content":"46"
              },
              {
                "choice_id":"4",
                "choice_content":"36"
              },
            ],
          },
          ],
          "medium":[],
          "hard":[]
        }
      },
    ]
  },
  //History
    {
    "category_name":"History",
    "category_img":"assets/images/history.png",
    "difficulty":[
      // GRADE4
      {
        "difficulty_name":"Grade 4",
        "grade_desc" : "The fourth grade forms the fourth year of Elementary school and children enrolled are typically 9 to 10 years old. Subjects taught include Math, Science, Reading, Writing and Social Studies.",
        "diff-avatar": "assets/images/grade4.png",
        "content":[
          // Q1
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Between what years did the Orang Dampuans come to the Philippines?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Between 600 A.D. and 900 A.D."
              },
              {
                "choice_id":"2",
                "choice_content":"Between 900 A.D. and 1200 A.D."
              },
              {
                "choice_id":"3",
                "choice_content":"Between 700 A.D. and 1200 A.D."
              },
              {
                "choice_id":"4",
                "choice_content":"Between 400 A.D. and 500 A.D."
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Who was credited with naming the Philippines \"Felipinas\"?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Garcia Jofre de Loasa"
              },
              {
                "choice_id":"2",
                "choice_content":"Ruy Lopez de Villalobos"
              },
              {
                "choice_id":"3",
                "choice_content":"Sebastian Cabot"
              },
              {
                "choice_id":"4",
                "choice_content":"Alvaro de Saavedra"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/histo/his.png",
            "question":"When did Dr. Jose Rizal die?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"December 30, 1896"
              },
              {
                "choice_id":"2",
                "choice_content":"January 20, 1897"
              },
              {
                "choice_id":"3",
                "choice_content":"June 4, 1894"
              },
              {
                "choice_id":"4",
                "choice_content":"May 25, 1900"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/histo/his.png",
            "question":"When was Manuel L. Quezon inaugurated?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"November 14, 1935"
              },
              {
                "choice_id":"2",
                "choice_content":"November 15, 1935"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/histo/his.png",
            "question":"When did Corregidor fall into the hands of the Japanese?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"January 2, 1942"
              },
              {
                "choice_id":"2",
                "choice_content":"May 6, 1942"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/his/his.png",
            "question":"When did the Japanese attack the Philippines?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"December 8, 1941"
              },
              {
                "choice_id":"2",
                "choice_content":"May 6, 1942"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/histo/his.png",
            "question":"When did Bataan fall into the hands of the Japanese?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"January 2, 1942"
              },
              {
                "choice_id":"2",
                "choice_content":"April 9, 1942"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Who was the third and last military governor of the Philippines?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"General Elwell Otis"
              },
              {
                "choice_id":"2",
                "choice_content":"General Arthur MacArthur"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/histo/his.png",
            "question":"When did a civilian government replace the military government?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"July 4, 1901"
              },
              {
                "choice_id":"2",
                "choice_content":"August 8, 1901"
              },
            ],
          },
          //Q10
          {
            
            "q_img": "assets/images/science/sci.png",
            "question":"Who proposed the idea of the Philippine Autonomy Act?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Manuel L. Quezon"
              },
              {
                "choice_id":"2",
                "choice_content":"William Atkinson Jones"
              },
            ],
          },
          // --
        ]
      },
      // GRADE5
      {
        "difficulty_name":"Grade 5",
        "grade_desc" : "The fifth grade is the fifth and last school year of elementary school in most schools. ... Key English Language Arts Common Core standards for 5th grade students include: Ability to determine the theme of a book, story, or poem from details in the text.",
        "diff-avatar": "assets/images/grade5.png",
        "content":[
          // Q1
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Who founded the la Liga Filipina?",
            "answer": "3",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Apolinario Mabini"
              },
              {
                "choice_id":"2",
                "choice_content":"Andres Bonifacio"
              },
              {
                "choice_id":"3",
                "choice_content":"Jose Rizal"
              },
              {
                "choice_id":"4",
                "choice_content":"Fidel Ramos"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/histo/his.png",
            "question":"In 1851, the first commercial bank in the Philippines and the far East, was established. What is the present name of this bank?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Bank of the Philippine Islands"
              },
              {
                "choice_id":"2",
                "choice_content":"Bangko De Oro"
              },
              {
                "choice_id":"3",
                "choice_content":"Allied Bank"
              },
              {
                "choice_id":"4",
                "choice_content":"Land Bank of the Philippines"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/histo/his.png",
            "question": "He arrived in Cebu in 1565 to establish the first Spanish settlement in the Philippines, marking the beginning of Spain's colonization and Christianization of the archipelago. Who was he?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Miguel Lopez de Legazpi"
              },
              {
                "choice_id":"2",
                "choice_content":"Magellan"
              },
              {
                "choice_id":"3",
                "choice_content":"Jose Rizal"
              },
              {
                "choice_id":"4",
                "choice_content":"General Mc Arthur"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Who was the founder of the KKK?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Emilio Aguinaldo"
              },
              {
                "choice_id":"2",
                "choice_content":"Andres Bonifacio"
              },
            ],
          },
          //Q5
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Considered as the first Philippine hero.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Ferdinand Magellan"
              },
              {
                "choice_id":"2",
                "choice_content":"Lapu-Lapu"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/histo/his.png",
            "question":"What is the timeline of the Philippine-American war?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"February 4, 1899 to July 2, 1902"
              },
              {
                "choice_id":"2",
                "choice_content":"Feb 4, 1819 to July 2, 1831"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/histo/his.png",
            "question":"The first and youngest president of First Philippine Republic? ",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Manuel A. Roxas"
              },
              {
                "choice_id":"2",
                "choice_content":"Emilio Aguinaldo"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Davao is known as \"City of Golden Friendship\".",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"True"
              },
              {
                "choice_id":"2",
                "choice_content":"False"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Katipunan was anchored on the political platform of separating the country from Spain.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"True"
              },
              {
                "choice_id":"2",
                "choice_content":"False"
              },
            ],
          },
          //Q10
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Under the Naic Military Agreement, Bonifacio made it clear that he was organizing an army in support of Aguinaldo's revolutionary forces.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"True"
              },
              {
                "choice_id":"2",
                "choice_content":"False"
              },
            ],
          },
          // --
        ]
      },
      // GRADE6
      {
        "difficulty_name":"Grade 6",
        "grade_desc" : "Sixth grade is a year of education for students ages 11–12. In many nations, it is the first year of middle school or the last year of elementary school. ",
        "diff-avatar": "assets/images/grade6.png",
        "content":[
          // Q1
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Sinong lider ng pinakamatagal na rebelyon?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Jose Rizal"
              },
              {
                "choice_id":"2",
                "choice_content":"Francisco Dagohoy"
              },
              {
                "choice_id":"3",
                "choice_content":"Emilio Aguinaldo"
              },
              {
                "choice_id":"4",
                "choice_content":"Andres Bonifacio"
              }
            ],
          },
          // Q2
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Sino ang ginang ni Ferdinand Marcos?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Imelda Papin"
              },
              {
                "choice_id":"2",
                "choice_content":"Imelda Marcos"
              },
              {
                "choice_id":"3",
                "choice_content":"Imelda Cuanco Marcos"
              },
              {
                "choice_id":"4",
                "choice_content":"Gregoria Marcos"
              }
            ],
          },
          // Q3
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Ang _______ ay makabagong katipunan ng mga kamaradang aktibong umuusig sa prinsipyong pang-pulitika at iba pa.",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"krus"
              },
              {
                "choice_id":"2",
                "choice_content":"arawkrus"
              },
              {
                "choice_id":"3",
                "choice_content":"krusade"
              },
              {
                "choice_id":"4",
                "choice_content":"krusada"
              }
            ],
          },
          //Q4
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Ang tawag sa mga tage rehiyon VII ay Cebuano",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"True"
              },
              {
                "choice_id":"2",
                "choice_content":"False"
              },
              
            ],
          },
          //Q5
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Heneral _______.taga Tacloban ,,dumaong sa red beach,Polo, Leyte ang kanyang grupo.",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"MacArthur"
              },
              {
                "choice_id":"2",
                "choice_content":"Jose"
              },

               {
                "choice_id":"3",
                "choice_content":"Bonefacio"
              },
               {
                "choice_id":"4",
                "choice_content":"Juan"
              },
            ],
          },
          //Q6
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Ilan ang barkong Nakabalik Sa Espanya?",
            "answer": "2",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"4"
              },
              {
                "choice_id":"2",
                "choice_content":"1"
              },
              {
                "choice_id":"3",
                "choice_content":"3"
              },
              {
                "choice_id":"4",
                "choice_content":"2"
              },
            ],
          },
          //Q7
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Anong barko ang nakabalik sa Espanya?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Victoria"
              },
              {
                "choice_id":"2",
                "choice_content":"Espanya"
              },
              {
                "choice_id":"3",
                "choice_content":"Merry"
              },
              {
                "choice_id":"4",
                "choice_content":"Bangka"
              },
            ],
          },
          //Q8
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Anong unang paaralan ng mga kababaihan ang tinatag sa Pilipinas?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Santa potenciana"
              },
              {
                "choice_id":"2",
                "choice_content":"Sana Jose"
              },
                {
                "choice_id":"3",
                "choice_content":"Santa Cruz"
              },
                {
                "choice_id":"4",
                "choice_content":"Santa Claus"
              },
            ],
          },
          //Q9
          {
            "q_img": "assets/images/histo/his.png",
            "question":"Pinakamaliit na isda sa Pilipinas?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"Pandaca Pygmea"
              },
              {
                "choice_id":"2",
                "choice_content":"Dilis"
              },
              {
                "choice_id":"3",
                "choice_content":"Bulinaw"
              },
            ],
          },
          //Q10
          {
            
            "q_img": "assets/images/histo/his.png",
            "question":"Sa  San Juan Batangas ba Kilala ang Lambayok/Lambanog Festival?At naririto rin ang mga magagandang binibini na sinasabing pinaglihi ng mga ninuno sa ilang-ilang ?",
            "answer": "1",
            "choices":[
              {
                "choice_id":"1",
                "choice_content":"True"
              },
              {
                "choice_id":"2",
                "choice_content":"False"
              },
             
            ],
          },
          // --
        ]
      },
    ]
  },
];