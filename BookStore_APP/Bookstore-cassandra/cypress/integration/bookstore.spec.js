describe('Main test case for the BookStore application', () => {
    beforeEach(() => {
        cy.visit('http://localhost:8080/Bookstore_war_exploded/')
    })

    it('should create a new book correctly', () => {

        cy.get('[href="new"]').click();
        cy.get(':nth-child(1) > td > input').clear();
        cy.get(':nth-child(1) > td > input').type('Testbook');
        cy.get(':nth-child(2) > td > input').clear();
        cy.get(':nth-child(2) > td > input').type('Testauthor');
        cy.get(':nth-child(3) > td > input').clear();
        cy.get(':nth-child(3) > td > input').type('10.2');
        cy.get('.block').click();

        cy.contains('Testbook')
        cy.contains('Testauthor')
        cy.contains('10.2')
    })

    it('should be able to edit the newly created book', () => {
        cy.contains('Testbook').parent().contains('Edit').click();

        cy.get(':nth-child(1) > td > input').clear();
        cy.get(':nth-child(1) > td > input').type('Testbook1');
        cy.get(':nth-child(2) > td > input').clear();
        cy.get(':nth-child(2) > td > input').type('Testauthor1');
        cy.get('tbody > :nth-child(3)').click();
        cy.get(':nth-child(3) > td > input').clear();
        cy.get(':nth-child(3) > td > input').type('20.5');
        cy.get('.block').click();
    })

    it('should be able to delete the modified book', () => {
        cy.contains('Testbook1').parent().contains('Delete').click();

        cy.contains('Testbook1').should('not.exist');
    })

    it('should redirect to the error page when inserting an invalid price value', () => {
        cy.get('[href="new"]').click();
        cy.get(':nth-child(1) > td > input').clear();
        cy.get(':nth-child(1) > td > input').type('Testbook1');
        cy.get(':nth-child(2) > td > input').clear();
        cy.get(':nth-child(2) > td > input').type('Testauthor1');
        cy.get('tbody > :nth-child(3)').click();
        cy.get(':nth-child(3) > td > input').clear();
        cy.get(':nth-child(3) > td > input').type('Not a number');

        cy.get('.block').click();
        cy.get('h1').should('have.text', 'Error');
        cy.get(':nth-child(1) > h2').should('have.text', 'For input string: "Not a number" ');
        cy.get('a').click();
        cy.get('h1').should('have.text', 'Books Management');
    })

})