import { ToolbarGroup, ToolbarButton } from "@wordpress/components"
import { RichText, BlockControls } from "@wordpress/block-editor"

wp.blocks.registerBlockType("ourblocktheme/genericheading", {
   title: "Generic Heading",
   attributes: {
      text: {
         type: "string",
      },
      size: {
         type: "string",
         default: "large"
      }
   }, 
   edit: EditComponent,
   save: SaveComponent
})

function EditComponent(props) {
   {/* <h1 className="headline headline--large">Welcome!</h1>
   <h2 className="headline headline--medium">We think you&rsquo;ll like it here.</h2>
   <h3 className="headline headline--small">Why don&rsquo;t you check out the <strong>major</strong> you&rsquo;re interested in?</h3>
   <a href="#" className="btn btn--large btn--blue">Find Your Major</a> */}
   const handleTextChange = (x) => {
      props.setAttributes({
         text: x
      })
   }

   return (
      <>
         <BlockControls>
            <ToolbarGroup>
               <ToolbarButton isPressed={props.attributes.size === "large"} onClick={() => props.setAttributes({size: "large"})}>Large</ToolbarButton>
               <ToolbarButton isPressed={props.attributes.size === "medium"} onClick={() => props.setAttributes({size: "medium"})}>Medium</ToolbarButton>
               <ToolbarButton isPressed={props.attributes.size === "small"} onClick={() => props.setAttributes({size: "small"})}>Small</ToolbarButton>
            </ToolbarGroup>
         </BlockControls>
         <RichText 
            allowedFormats={["core/bold", "core/italic"]}
            tagName="h1" 
            className={`headline headline--${props.attributes.size}`} 
            value={props.attributes.text} 
            onChange={handleTextChange} 
         />
      </>
   )
}

function SaveComponent(props) {
   function createTagName(){
      switch(props.attributes.size){
         case "large":
            return "h1"
         case "medium":
            return "h2"
         case "small":
            return "h3"
      }
   }

   return (
      <RichText.Content className={`headline headline--${props.attributes.size}`}  value={props.attributes.text} tagName={createTagName()} />
   )
}