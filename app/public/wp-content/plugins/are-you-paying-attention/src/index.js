import "./index.scss"
import { TextControl, Flex, FlexBlock, FlexItem, Button, Icon } from "@wordpress/components"
const Edit = (props) => {
   const updateQuestion = (value) => {
      props.setAttributes({
         question: value
      })
   }

   const deleteAnswer = (indexToDelete) => {
      props.setAttributes({answers: [...props.attributes.answers].filter((_, i) => i !== indexToDelete)})
   }
   
   return (
      <div className="paying-attention-edit-block">
         <TextControl 
            value={props.attributes.question}
            onChange={updateQuestion}
            label="Question: " 
            style={{
               fontSize: "20px"
            }} 
         />
         <p style={{
            fontSize: "13px",
            margin: "20px 0 8px 0"
         }}>Answers:</p>
         {props.attributes.answers.map((answer, index) => (
            <Flex>
               <FlexBlock>
                  <TextControl onChange={newValue => {
                     const newAnswers = [...props.attributes.answers]
                     newAnswers[index] = newValue
                     props.setAttributes({answers: newAnswers})
                  }} value={answer} />
               </FlexBlock>
               <FlexItem>
                  <Button>
                     <Icon className="mark-as-correct" icon="star-empty" />
                  </Button>
               </FlexItem>
               <FlexItem>
                  <Button 
                     isLink 
                     className="attention-delete"
                     onClick={() => deleteAnswer(index)}
                  >
                     Delete
                  </Button>
               </FlexItem>
            </Flex>
         ))}
         <Button isPrimary onClick={() => {
            props.setAttributes({answers: [...props.attributes.answers]})
         }}>
            Add another answer
         </Button>
      </div>
   )
}

wp.blocks.registerBlockType("ourplugin/are-you-paying-attention", {
   title: "Are You Paying Attention?",
   icon: "smiley",
   category: "common",
   attributes: {
      question: {
         type: "string",
      },
      answers: {
         type: "array",
         default: ["red", "blue"]
      },
   }, 
   edit: Edit,
   save: () => {
      return null
   }
})

