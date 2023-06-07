import "./index.scss"
import { 
   TextControl, 
   Flex, 
   FlexBlock, 
   FlexItem, 
   Button, 
   Icon, 
   PanelBody, 
   PanelRow 
} from "@wordpress/components"
import { InspectorControls } from "@wordpress/block-editor"

const Edit = (props) => {
   const updateQuestion = (value) => {
      props.setAttributes({
         question: value
      })
   }

   const deleteAnswer = (indexToDelete) => {
      props.setAttributes({answers: [...props.attributes.answers].filter((_, i) => i !== indexToDelete)})

      if(indexToDelete == props.attributes.correctAnswer) {
         props.setAttributes({
            correctAnswer: undefined
         })
      }
   }

   const markAsCorrect = (indexToMark) => {
      props.setAttributes({
         correctAnswer: indexToMark
      })
   }
   
   return (
      <div className="paying-attention-edit-block">
         <InspectorControls>
            <PanelBody title="Background Color" initialOpen={true}>
               <PanelRow>
                  Hello!
               </PanelRow>
            </PanelBody>
         </InspectorControls>
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
                  <Button
                     onClick={() => {
                        markAsCorrect(index)
                     }}
                  >
                     <Icon 
                        className="mark-as-correct" 
                        icon={props.attributes.correctAnswer == index ? "star-filled" : "star-empty"} />
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
            props.setAttributes({answers: [...props.attributes.answers, ""]})
         }}>
            Add another answer
         </Button>
      </div>
   )
}

(function() {
   let locked = false

   wp.data.subscribe(function() {
      const results = wp.data.select("core/block-editor").getBlocks().filter(function(block) {
         return block.name == "ourplugin/are-you-paying-attention" && block.attributes.correctAnswer == undefined
      })

      if(results.length && !locked) {
         locked = true
         wp.data.dispatch("core/editor").lockPostSaving("noanswer")
      }
      if(!results.length && locked) {
         locked = false
         wp.data.dispatch("core/editor").unlockPostSaving("noanswer")
      }
   })
})()


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
      correctAnswer: {
         type: "number",
         default: undefined
      }
   }, 
   edit: Edit,
   save: () => {
      return null
   }
})

