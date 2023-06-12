wp.blocks.registerBlockType("ourblocktheme/footer", {
   title: "Footer",
   edit: () => wp.element.createElement("div", {
      className: "our-placeholder-block"
   }, "Footer Placerholder"),
   save: () => null,
})