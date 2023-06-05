import { TextControl } from "@wordpress/components"

wp.blocks.registerBlockType("ourplugin/are-you-paying-attention", {
   title: "Are You Paying Attention?",
   icon: "smiley",
   category: "common",
   attributes: {
      skyColor: {
         type: "string",
      },
      grassColor: {
         type: "string"
      }
   }, 
   edit: Edit,
   save: () => {
      return null
   }
})

const Edit = (props) => {
   const updateSkyColor = (e) => {
      props.setAttributes({
         skyColor: e.target.value
      })
   }
   const updateGrassColor = (e) => {
      props.setAttributes({
         grassColor: e.target.value
      })
   }
   
   return (
      <div>
         <TextControl />
      </div>
   )
}