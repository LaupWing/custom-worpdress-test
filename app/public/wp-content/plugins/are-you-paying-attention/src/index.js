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
            <input 
               type="text" 
               placeholder="sky color" 
               value={props.attributes.skyColor}
               onChange={updateSkyColor}
            />
            <input 
               type="text" 
               placeholder="grass color" 
               value={props.attributes.grassColor}
               onChange={updateGrassColor}
            />
         </div>
      )
   },
   save: (props) => {
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
         <input type="text" />
      </div>
   )
}