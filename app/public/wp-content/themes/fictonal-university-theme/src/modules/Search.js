import $ from "jquery"

class Search {
   constructor(){
      this.resultsDiv = $("#search-overlay__results")
      this.openButton = $(".js-search-trigger")
      this.closeButton = $(".search-overlay__close")
      this.searchOverlay = $(".search-overlay")
      this.events()
      this.isOverlayOpen = false
      this.isSpinnerVisible = false
      this.searchField = $("#search-term")
      this.typingTimer
      this.previousValue
   }

   events(){
      this.openButton.on("click", this.openOverlay.bind(this))
      this.closeButton.on("click", this.closeOverlay.bind(this))
      $(document).on("keyup", this.keyPressDispatcher.bind(this))
      this.searchField.on("keyup", this.typingLogic.bind(this))
   }

   typingLogic() {
      if (this.searchField.val() != this.previousValue) {
         clearTimeout(this.typingTimer)

         if (this.searchField.val()) {
            if(!this.isSpinnerVisible){
               this.resultsDiv.html("<div class='spinner-loader'/>")
               this.isSpinnerVisible = true
            }
            this.typingTimer = setTimeout(this.getResults.bind(this), 2000)
         } else {
            this.resultsDiv.html("")
            this.isSpinnerVisible = false
         }

      }
      this.previousValue = this.searchField.val()
   }

   getResults() {
      $.getJSON("http://tutorial-college.local/wp-json/wp/v2/posts?search=" + this.searchField.val(), (posts) => {
         
         this.resultsDiv.html(`
            <h2 class="search-overlay__section-title">General information</h2>
            ${posts.length > 0 ? 
               `<ul class="link-list min-list">
                  ${posts.map(post => `
                     <li><a href="${post.link}">${post.title.rendered}</a></li>
                  `).join("")}
               </ul>` :
               `<p>No general information matches that search.</p>`
            }
         `)
      })
   }

   keyPressDispatcher(e){
      if(
         e.keyCode == 83 && 
         !this.isOverlayOpen && 
         !$("input", "textarea").is(":focus")
      ) {
         this.openOverlay()
      }

      if(e.keyCode == 27 && this.isOverlayOpen) {
         this.closeOverlay()
      }
   }

   openOverlay() {
      this.searchOverlay.addClass("search-overlay--active")
      $("body").addClass("body-no-scroll")
      this.isOverlayOpen = true

   }
   
   closeOverlay() {
      this.searchOverlay.removeClass("search-overlay--active")
      $("body").removeClass("body-no-scroll")
      this.isOverlayOpen = false
   }
}

export default Search