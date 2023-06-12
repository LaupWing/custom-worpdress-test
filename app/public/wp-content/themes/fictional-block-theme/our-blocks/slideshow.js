import { 
   InnerBlocks
} from "@wordpress/block-editor"

wp.blocks.registerBlockType("ourblocktheme/slideshow", {
   title: "Slideshow",
   supports: {
      align: ["full"]
   }, 
   attributes: {
      align: {
         type: "string",
         default: "full"
      }
   },
   edit: EditComponent,
   save: SaveComponent,
})

function SaveComponent() {
   return <InnerBlocks.Content />
}

function EditComponent() {
   return (
      <div style={{ backgroundColor: "#333", padding: "35px" }}>
         <p style={{ textAlign: "center", fontSize: "20px", color: "#FFF"}}>Slide show</p>
         <InnerBlocks allowedBlocks={["ourblocktheme/slide"]} />
      </div>
   )
}