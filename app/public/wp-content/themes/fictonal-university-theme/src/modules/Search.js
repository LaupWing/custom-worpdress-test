import $ from "jquery"

class Search {
   constructor(){
      this.addSearchHtml()
      this.resultsDiv = $("#search-overlay__results")
      this.openButton = $(".js-search-trigger")
      this.closeButton = $(".search-overlay__close")
      this.searchOverlay = $(".search-overlay")
      this.searchField = $("#search-term")
      this.events()
      this.isOverlayOpen = false
      this.isSpinnerVisible = false
      this.typingTimer
      this.previousValue
   }

   events(){
      this.openButton.on("click", this.openOverlay.bind(this))
      this.closeButton.on("click", this.closeOverlay.bind(this))
      $(document).on("keyup", this.keyPressDispatcher.bind(this))
      console.log(this)
      console.log(this.searchField)
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
            this.typingTimer = setTimeout(this.getResults.bind(this), 750)
         } else {
            this.resultsDiv.html("")
            this.isSpinnerVisible = false
         }

      }
      this.previousValue = this.searchField.val()
   }

   async getResults() {
      $.getJSON(universityData.root_url + "/wp-json/university/v1/search?term=" + this.searchField.val(), (results) => {
         this.resultsDiv.html(`
            <div class="row">
               <div class="one-third">
                  <h2 class="search-overlay__section-title">General Information</h2>
                  ${results.generalInfo.length ? 
                     `<ul class="link-list min-list">
                        ${results.generalInfo.map(result => `
                           <li><a href="${result.permalink}">${result.title}</a> ${result.authorName ? `By ${result.authorName}` : ""}</li>
                        `).join("")}
                     </ul>` :
                     `<p>No general information matches that search.</p>`
                  }
               </div>
               <div class="one-third">
                  <h2 class="search-overlay__section-title">Programs</h2>
                  ${results.programs.length ? 
                     `<ul class="link-list min-list">
                        ${results.programs.map(result => `
                           <li><a href="${result.permalink}">${result.title}</a></li>
                        `).join("")}
                     </ul>` :
                     `<p>No programs matches that search. <a href="${universityData.root_url}/programs">View all programs</a> </p>`
                  }
                  <h2 class="search-overlay__section-title">Professors</h2>
                  ${results.professors.length ? 
                     `<ul class="professor-cards">
                        ${results.professors.map(result => `
                           <li><a href="${result.permalink}">${result.title}</a></li>
                        `).join("")}
                     </ul>` :
                     `<p>No professors matches that search. </p>`
                  }
               </div>
               <div class="one-third">
                  <h2 class="search-overlay__section-title">Campuses</h2>
                  ${results.campuses.length ? 
                     `<ul class="link-list min-list">
                        ${results.campuses.map(result => `
                           <li><a href="${result.permalink}">${result.title}</a></li>
                        `).join("")}
                     </ul>` :
                     `<p>No campuses matches that search. <a href="${universityData.root_url}/campuses">View all campuses</a></p>`
                  }
                  <h2 class="search-overlay__section-title">Events</h2>
               </div>
            </div>
         `)
         this.isSpinnerVisible = false
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
      this.searchField.val("")
      this.isOverlayOpen = true
      setTimeout(() => {
         this.searchField.focus()
      }, 301)
   }
   
   closeOverlay() {
      this.searchOverlay.removeClass("search-overlay--active")
      $("body").removeClass("body-no-scroll")
      this.isOverlayOpen = false
   }

   addSearchHtml() {
      $("body").append(`
         <div class="search-overlay">
            <div class="search-overlay__top">
               <div class="container">
                  <i class="fa fa-search search-overlay__icon" aria-hidden="true"></i>
                  <input 
                     type="text" 
                     class="search-term" 
                     placeholder="What are you looking for?"
                     id="search-term"
                  >
                  <i class="fa fa-window-close search-overlay__close" aria-hidden="true"></i>
               </div>
            </div>
         
            <div class="container">
               <div id="search-overlay__results">
                  
               </div>
            </div>
         </div>
      `)
   }
}

export default Search