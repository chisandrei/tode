as yet unclassified
installOn: aTDToolCentral
    aTDToolCentral removeChildrenAt: self commandPath.
    ^ (Pragma allNamed: #'topezCommand:' in: self class)
        collect: [ :pragma | 
            | block |
            block := self perform: pragma selector.
            aTDToolCentral installCommand: (pragma argumentAt: 1) block: block at: self commandPath ]