wp.blocks.registerBlockType("ourblocktheme/page", {
   title: "Custom Page",
   edit: () => wp.element.createElement("div", {
      className: "our-placeholder-block"
   }, "Single Page Placerholder"),
   save: () => null,
})