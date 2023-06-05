import React from "react"
import ReactDOM from "react-dom"
import "./frontend.scss"

const divsToUpdate = document.querySelectorAll(".paying-attention-update-me")

divsToUpdate.forEach((div) => {
   const data = JSON.parse(div.querySelector("pre").innerHTML)
   ReactDOM.render(<Quiz {...data} />, div)
   div.classList.remove("paying-attention-update-me")
})

function Quiz(props) {
   const handleAnswer = (index) => {
      if(index == props.correctAnswer){
         alert("Correct")
      }else {
         alert("Error")
      }
   }
   return (
      <div className="paying-attention-frontend">
         <p>{props.question}</p>
         <ul>
            {props.answers.map((answer, index) => (
               <li onClick={() => handleAnswer(index)}>
                  {answer}
               </li>
            ))}
         </ul>
      </div>
   )
}