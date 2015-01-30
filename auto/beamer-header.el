(TeX-add-style-hook
 "beamer-header"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("beamer" "french")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("inputenc" "utf8") ("fontenc" "T1") ("kpfonts" "light" "frenchstyle") ("asymptote" "inline")))
   (TeX-run-style-hooks
    "latex2e"
    "beamer"
    "beamer10"
    "inputenc"
    "fontenc"
    "babel"
    "filecontents"
    "relsize"
    "varwidth"
    "amsthm"
    "xargs"
    "xstring"
    "venndiagram"
    "amssymb"
    "amsmath"
    "amsfonts"
    "mathtools"
    "booktabs"
    "kpfonts"
    "xfrac"
    "polynom"
    "tikz"
    "graphicx"
    "color"
    "epsfig"
    "epstopdf"
    "asymptote"
    "siunitx"
    "numprint"
    "hyperref")
   (TeX-add-symbols
    '("DrawBox" ["argument"] 2)
    '("DrawHLine" ["argument"] 2)
    '("DrawLine" ["argument"] 2)
    '("dopolylongdiv" ["argument"] 4)
    '("limite" ["argument"] 2)
    '("ddx" ["argument"] 0)
    '("transpose" 1)
    '("tikzmark" 2)
    '("evaluatedAt" 2)
    '("course" 1)
    '("mean" 1)
    '("requires" 1)
    '("blankmatrix" 2)
    '("pder" 2)
    '("point" 1)
    '("fleche" 1)
    '("petito" 1)
    '("alg" 1)
    '("var" 1)
    '("ens" 1)
    '("scalprod" 2)
    '("conj" 1)
    '("ordre" 1)
    '("norme" 1)
    '("module" 1)
    '("abs" 1)
    '("set" 1)
    '("restr" 2)
    '("egs" 1)
    '("biindice" 3)
    "currentcourse"
    "dd"
    "econstant"
    "e"
    "dom"
    "tg"
    "argch"
    "ch"
    "sh"
    "cotg"
    "coseca"
    "arctg"
    "arctanh"
    "argsh"
    "seca"
    "grad"
    "diver"
    "un"
    "N"
    "Q"
    "R"
    "Z"
    "Defnemph"
    "pardef"
    "vecprod"
    "telque"
    "RR"
    "TT"
    "sphere"
    "CC"
    "ZZ"
    "QQ"
    "NN"
    "im"
    "Id"
    "pgcd"
    "ppcm"
    "adh"
    "vol"
    "Cclass"
    "Jac"
    "interior"
    "Mat"
    "Tr"
    "theequation"
    "lnot"
    "ldonc"
    "vers"
    "basep"
    "noqed")
   (LaTeX-add-environments
    "proposition"
    "property"
    "boxedalign"
    "fyi"
    "systeme")
   (LaTeX-add-counters
    "numdecours"
    "currentstage")))

