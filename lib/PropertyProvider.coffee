AbstractProvider = require './AbstractProvider'

module.exports =

##*
# Provides code navigation for member properties.
##
class PropertyProvider extends AbstractProvider
    ###*
     * @inheritdoc
    ###
    hoverEventSelectors: '.property'

    ###*
     * @inheritdoc
    ###
    clickEventSelectors: '.property'

    ###*
     * @inheritdoc
    ###
    gotoRegex: /^(\$\w+)?((->|::)\w+)+/

    ###*
     * @inheritdoc
    ###
    getJumpToRegex: (term) ->
        return ///(protected|public|private|static)\ +\$#{term}///i

    ###*
     * @inheritdoc
    ###
    gotoFromWord: (editor, term) ->
        bufferPosition = editor.getCursorBufferPosition()

        member = @service.getClassMemberAt(editor, bufferPosition, term)

        return unless member

        @jumpWord = term

        atom.workspace.open(member.declaringStructure.filename, {
            searchAllPanes: true
        })
