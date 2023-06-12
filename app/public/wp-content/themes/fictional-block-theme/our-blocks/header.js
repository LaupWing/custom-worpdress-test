wp.blocks.registerBlockType("ourblocktheme/header", {
   title: "Header",
   edit: () => wp.element.createElement("div", {
      className: "our-placeholder-block"
   }, "Header Placerholder"),
   save: () => null,
})