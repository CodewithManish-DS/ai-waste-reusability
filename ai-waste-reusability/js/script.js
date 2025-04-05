// Add smooth scrolling for navigation
document.querySelectorAll('nav a').forEach(anchor => {
    anchor.addEventListener('click', function(e) {
      e.preventDefault();
      
      const targetId = this.getAttribute('href');
      const targetSection = document.querySelector(targetId);
      
      window.scrollTo({
        top: targetSection.offsetTop - 80,
        behavior: 'smooth'
      });
    });
  });
  
  // Chatbot toggle functionality
  const chatbot = document.querySelector('.chatbot');
  
  chatbot.addEventListener('click', function() {
    alert('Chatbot functionality coming soon!');
    // You can replace this with actual chatbot implementation
  });