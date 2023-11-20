describe('Window, Viewport, Location', () => {
  it('999.md', () => {
    cy.visit('https://999.md/ru/')
    //Window
    cy.window().should('have.property', 'top')
    cy.title('banasea')
    cy.document().should('have.property', 'charset').and('eq', 'UTF-8')


    //Viewport
    cy.viewport('iphone-8')


    //Location
    cy.get('#js-search-input').focus().type('iphone 8{enter}')
    
    cy.location('search').should('eq', '?query=iphone+8')

    cy.url().should('eq','https://999.md/ru/search?query=iphone+8')

    cy.window().then((win) => {
      console.log(win.location)
    })

    //Navigation
    cy.go('back')
    cy.url().should('eq', 'https://999.md/ru/')

    cy.reload(true)

    cy.visit('https://simpalsid.com/user/login/')
  })
})