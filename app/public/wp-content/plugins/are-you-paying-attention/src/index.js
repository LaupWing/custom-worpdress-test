wp.blocks.registerBlockType("ourplugin/are-you-paying-attention", {
   title: "Are You Paying Attention?",
   icon: "smiley",
   category: "common",
   edit: () => {
      return (
         <h1>This is jsx</h1>
      )
   },
   save: () => {
      return wp.element.createElement("h1", null, "This is the frontend.")
   }
})