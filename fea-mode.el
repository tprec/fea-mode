;;; package --- FEA mode
;;; Commentary:
;;; Generic FEA highlighting.
;;; Code:

;;;###autoload
(add-to-list 'auto-mode-alist '("\\.fea$" . fea-mode))
(define-generic-mode 'fea-mode '("#")
                     '("anchor" "anchorDef" "anon" "anonymous" "by" "contourpoint" "cursive" "enum"
                       "enumerate" "exclude_dflt" "from" "ignore" "IgnoreBaseGlyphs"
                       "IgnoreLigatures" "IgnoreMarks" "include" "include_dflt" "language"
                       "languagesystem" "lookupflag" "mark" "MarkAttachmentType"
                       "markClass" "nameid" "NULL" "parameters" "pos" "position" "reversesub"
                       "RightToLeft" "rsub" "script" "sub" "substitute" "subtable" "table"
                       "useExtension" "UseMarkFilteringSet" "valueRecordDef"
                       "HorizAxis.BaseScriptList" "HorizAxis.BaseTagList" "HorizAxis.MinMax"
                       "VertAxis.BaseScriptList" "VertAxis.BaseTagList" "VertAxis.MinMax" "Attach"
                       "GlyphClassDef" "LigatureCaretByDev" "LigatureCaretByIndex"
                       "LigatureCaretByPos" "FontRevision" "Ascender" "CaretOffset" "Descender"
                       "LineGap" "CapHeight" "CodePageRange" "Panose" "TypoAscender" "TypoDescender"
                       "TypoLineGap" "UnicodeRange" "Vendor" "winAscent" "winDescent" "XHeight"
                       "sizemenuname" "VertTypoAscender" "VertTypoDescender" "VertTypoLineGap"
                       "VertAdvanceY" "VertOriginY" "ElidedFallbackName" "ElidedFallbackNameID"
                       "DesignAxis" "AxisValue" "flag" "location" "ElidableAxisValueName"
                       "OlderSiblingFontAttribute")
                     '((";" . 'font-lock-constant-face)
                       ("\\@[a-zA-Z0-9_]+" . 'font-lock-type-face)
                       ("\\.[a-zA-Z0-9_]+" . 'font-lock-variable-name-face)
                       ("feature" . font-lock-function-name-face)
                       ("lookup" . font-lock-function-name-face)
                       ("excludeDFLT" . font-lock-warning-face)
                       ("includeDFLT" . font-lock-warning-face)
                       ("device" . font-lock-warning-face)
                       ("required" . font-lock-warning-face))
                     '("\\.fea$")
                     nil
                     "Mode for AFDKO FEA files."
                     )

(provide 'fea-mode)

;;; fea-mode.el ends here
