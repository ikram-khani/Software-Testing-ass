describe('MERN Stack Web Application Tests', () => {
    it('should visit the home page and verify the book list', () => {
      cy.visit('https://book-storage-mern-stack-frontend-git-main-ikram-khanis-projects.vercel.app/');
  
      
      cy.contains('h2', 'Book List').should('be.visible');
  
      
      cy.contains('nav a', 'Add Book').click();
      cy.url().should('include', '/add-book');
  
      
      cy.get('input[name="title"]').type('Web Engineering');
      cy.get('input[name="author"]').type('Markus nikolas');
      cy.get('input[name="publishYear"]').type('1998');
      cy.get('button[type="submit"]').click();
  
      
      cy.contains('h2', 'Book List').should('be.visible');
  
     
      cy.contains('nav a', 'Search').click();
      cy.url().should('include', '/search');
  
      
      cy.get('input[name="searchTitle"]').type('Software Engineering');
      cy.get('button[type="submit"]').click();
  
      
      cy.contains('h3', 'Search Results').should('be.visible');
    });
  
    it('should handle login and registration', () => {
      
      cy.contains('nav a', 'Login').click();
      cy.url().should('include', '/login');
  
      
      cy.get('input[name="username"]').type('ikr302000');
      cy.get('input[name="password"]').type('ik111011');
      cy.get('button[type="button"]').click();
  
      
      cy.contains('h2', 'Book List').should('be.visible');
  
      
      cy.contains('nav a', 'Register').click();
      cy.url().should('include', '/register');
  
    
      cy.get('input[name="username"]').type('habib12413');
      cy.get('input[name="password"]').type('habakladk');
      cy.get('button[type="button"]').click();
  
      
      cy.contains('h2', 'Book List').should('be.visible');
    });
  });
  