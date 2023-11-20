describe('Lab5', () => {
  it('999.md', () => {
    cy.visit('https://999.md')
    //Common Assertions
    cy.get('#js-categories-toggle')
    .should('have.class', 'header_bar_categories_toggle')
    .and('be.visible')

    //Explicit Assertions
    cy.get('.main-CatalogNavigation li').should(($lis) => {
      expect($lis.eq(0)).to.contain('Транспорт')
      expect($lis.eq(1)).to.contain('Недвижимость')
      expect($lis.eq(2)).to.contain('Телефоны, связь и гаджеты')
    })

  })
})