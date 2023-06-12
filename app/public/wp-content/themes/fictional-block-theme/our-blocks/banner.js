import { 
   InnerBlocks, 
   InspectorControls, 
   MediaUpload, 
   MediaUploadCheck 
} from "@wordpress/block-editor"
import { Button, PanelBody, PanelRow } from "@wordpress/compponents"

wp.blocks.registerBlockType("ourblocktheme/banner", {
   title: "Banner",
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

function EditComponent() {
   const onFileSelect = () => {
      
   }
   return (
      <>
         <InspectorControls>
            <PanelBody
               title="Background"
               initialOpen={true}
            >
               <PanelRow>
                  <MediaUploadCheck>
                     <MediaUpload 
                        onSelect={onFileSelect} 
                        value={1} 
                        render={({ open }) => {
                           return <Button onClick={open}>Choose Image</Button>
                        }} 
                     />
                  </MediaUploadCheck>
               </PanelRow>
            </PanelBody>
         </InspectorControls>
         <div className="page-banner">
            <div 
               className="page-banner__bg-image" 
               style={{backgroundImage: "url('/wp-content/themes/fictional-block-theme/images/library-hero.jpg')"}}
            >

            </div>
            <div className="page-banner__content container t-center c-white">
               <InnerBlocks allowedBlocks={["ourblocktheme/genericheading", "ourblocktheme/genericbutton"]} />
            </div>
         </div>
      </>
   )
}

function SaveComponent() {
   return <InnerBlocks.Content />
}