wp.blocks.registerBlockType("ourblocktheme/singlepost", {
   title: "Single Post",
   edit: () => wp.element.createElement("div", {
      className: "our-placeholder-block"
   }, "Single Post Placerholder"),
   save: () => null,
})