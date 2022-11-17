import {Application} from "@hotwired/stimulus"

const application = Application.start()

// Configure Stimulus development experience
application.debug = false
window.Stimulus = application

document.addEventListener('turbo:load', function () {
  let toggle = document.getElementById('sidebarCollapse');
  toggle.addEventListener('click', function (){
    let sidebar = document.getElementById('sidebar');
    let content = document.getElementById('content');
    console.log(content.classList)
    content.classList.toggle('active')
    sidebar.classList.toggle('active')
  });
})

export {application}
