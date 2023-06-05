;(() => {
   "use strict"
   const e = window.wp.element
   wp.blocks.registerBlockType("ourplugin/are-you-paying-attention", {
      title: "Are You Paying Attention?",
      icon: "smiley",
      category: "common",
      attributes: {
         skyColor: { type: "string" },
         grassColor: { type: "string" },
      },
      edit: (t) =>
         (0, e.createElement)(
            "h3",
            null,
            (0, e.createElement)("input", { type: "text" })
         ),
      save: () => (0, e.createElement)("div", null, "Je moeder"),
   })
})()
