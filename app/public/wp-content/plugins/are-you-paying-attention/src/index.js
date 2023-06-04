wp.blocks.registerBlockType("ourplugin/are-you-paying-attention", {
   title: "Are You Paying Attention?",
   icon: "smiley",
   category: "common",
   edit: () => {
      return (
         <div>
            <h1>This is jsx</h1>
         </div>
      )
   },
   save: () => {
      return wp.element.createElement("h1", null, "This is the frontend.")
   }
})