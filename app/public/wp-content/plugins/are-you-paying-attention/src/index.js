// import { TextControl } from "@wordpress/components"

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
   edit: (props) => {
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
            <input type="text" />
         </div>
      )
   },
   save: () => {
      return (
         <div>Je moeder</div>
      )
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
         <input type="text" />
      </div>
   )
}