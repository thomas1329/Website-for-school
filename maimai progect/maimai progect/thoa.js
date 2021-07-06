var i = 0;
var txt = ' In the summer of 2005, Riley brought in veteran free agent Gary Payton from the Boston Celtics, and also brought in James Posey, Jason Williams and Antoine Walker via trades. After a disappointing 11–10 start to the 2005–06 season, Riley relieved Van Gundy of his duties and took back the head coaching job. The Heat made it to the Conference Finals in 2006 and in a re-match, defeated the Pistons, winning the series 4–2. Making its first NBA Finals appearance, they played the Dallas Mavericks, who won the first two games in Dallas in routs. The Heat then won the next four games, capturing its first ever championship. Wade won the Finals MVP award.!';
var speed = 50;

function typeWriter() {
    if (i < txt.length) {
        document.getElementById("demo").innerHTML += txt.charAt(i);
        i++;
        setTimeout(typeWriter, speed);
    }
}