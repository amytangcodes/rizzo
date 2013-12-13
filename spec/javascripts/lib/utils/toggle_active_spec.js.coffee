require ['public/assets/javascripts/lib/utils/toggle_active.js'], (ToggleActive) ->

  describe 'ToggleActive', ->

    describe 'Object', ->
      it 'is defined', ->
        expect(ToggleActive).toBeDefined()

    describe 'Initialisation', ->
      beforeEach ->
        loadFixtures('toggle_active.html')
        window.toggleActive = new ToggleActive()

      it 'Toggles the is-active class.', ->
        $('#normal').trigger('click')
        expect($('.foo')[0]).toHaveClass('is-active')
        $('#normal').trigger('click')
        expect($('.foo')[0]).not.toHaveClass('is-active')

      it 'Toggles a custom class.', ->
        $('#custom-class').trigger('click')
        expect($('.foo')[0]).toHaveClass('custom-class')
        $('#custom-class').trigger('click')
        expect($('.foo')[0]).not.toHaveClass('custom-class')