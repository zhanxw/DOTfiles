;;; Compiled snippets and support files for `text-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("email" "`(replace-regexp-in-string \"@\" \"@NOSPAM.\" user-mail-address)`" "(user's email)" nil nil nil nil nil nil)
		       ("time" "`(current-time-string)`" "(current time)" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("do" "do\n{\n    $0\n} while (${1:condition});" "do { ... } while (...)" nil nil nil nil nil nil)
		       ("for" "for (${1:int i = 0}; ${2:i < N}; ${3:++i})\n{\n    $0\n}" "for (...; ...; ...) { ... }" nil nil nil nil nil nil)
		       ("if" "if (${1:condition})\n{\n    $0\n}" "if (...) { ... }" nil nil nil nil nil nil)
		       ("inc" "#include \"$1\"\n" "#include \"...\"" nil nil nil nil nil nil)
		       ("inc.1" "#include <$1>\n" "#include <...>" nil nil nil nil nil nil)
		       ("main" "int main(int argc, char *argv[])\n{\n    $0\n    return 0;\n}\n" "int main(argc, argv) { ... }" nil nil nil nil nil nil)
		       ("once" "#ifndef ${1:_`(upcase (file-name-nondirectory (file-name-sans-extension (buffer-file-name))))`_H_}\n#define $1\n\n$0\n\n#endif /* $1 */" "#ifndef XXX; #define XXX; #endif" nil nil nil nil nil nil)
		       ("struct" "struct ${1:name}\n{\n    $0\n};" "struct ... { ... }" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("beginend" "${1:v}.begin(), $1.end" "v.begin(), v.end()" nil nil nil nil nil nil)
		       ("class" "class ${1:Name}\n{\npublic:\n    ${1:$(yas/substr text \"[^: ]*\")}($2);\n    virtual ~${1:$(yas/substr text \"[^: ]*\")}();\n};" "class ... { ... }" nil nil nil nil nil nil)
		       ("ns" "namespace " "namespace ..." nil nil nil nil nil nil)
		       ("template" "template <typename ${T}>" "template <typename ...>" nil nil nil nil nil nil)
		       ("using" "using namespace ${std};\n$0" "using namespace ... " nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("fopen" "FILE *${fp} = fopen(${\"file\"}, \"${r}\");\n" "FILE *fp = fopen(..., ...);" nil nil nil nil nil nil)
		       ("printf" "printf (\"${1:%s}\\\\n\"${1:$(if (string-match \"%\" text) \",\" \"\\);\")\n}$2${1:$(if (string-match \"%\" text) \"\\);\" \"\")}" "printf " nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("attrib" "/// <summary>\n/// $3\n/// </summary>\nprivate $1 $2;\n" "private attribute ....;" nil nil nil nil nil nil)
		       ("attrib.1" "/// <summary>\n/// $3\n/// </summary>\nprivate $1 $2;\n\n/// <summary>\n/// $4\n/// </summary>\n/// <value>$5</value>\npublic $1 $2\n{\n    get {\n        return this.$2;\n    }\n    set {\n        this.$2 = value;\n    }\n}\n" "private attribute ....; public property ... ... { ... }" nil nil nil nil nil nil)
		       ("attrib.2" "/// <summary>\n/// $3\n/// </summary>\nprivate $1 ${2:$(if (> (length text) 0) (format \"_%s%s\" (downcase (substring text 0 1)) (substring text 1 (length text))) \"\")};\n\n/// <summary>\n/// ${3:Description}\n/// </summary>\n/// <value><c>$1</c></value>\npublic ${1:Type} ${2:Name}\n{\n    get {\n        return this.${2:$(if (> (length text) 0) (format \"_%s%s\" (downcase (substring text 0 1)) (substring text 1 (length text))) \"\")};\n    }\n    set {\n        this.${2:$(if (> (length text) 0) (format \"_%s%s\" (downcase (substring text 0 1)) (substring text 1 (length text))) \"\")} = value;\n    }\n}\n" "private _attribute ....; public Property ... ... { ... }" nil nil nil nil nil nil)
		       ("class" "${5:public} class ${1:Name}\n{\n    #region Ctor & Destructor\n    /// <summary>\n    /// ${3:Standard Constructor}\n    /// </summary>\n    public $1($2)\n    {\n    }\n\n    /// <summary>\n    /// ${4:Default Destructor}\n    /// </summary>    \n    public ~$1()\n    {\n    }\n    #endregion\n}\n" "class ... { ... }" nil nil nil nil nil nil)
		       ("comment" "/// <summary>\n/// $1\n/// </summary>\n" "/// <summary> ... </summary>" nil nil nil nil nil nil)
		       ("comment.1" "/// <param name=\"$1\">$2</param>\n" "/// <param name=\"...\"> ... </param>" nil nil nil nil nil nil)
		       ("comment.2" "/// <returns>$1</returns>\n" "/// <param name=\"...\"> ... </param>" nil nil nil nil nil nil)
		       ("comment.3" "/// <exception cref=\"$1\">$2</exception>\n" "/// <exception cref=\"...\"> ... </exception>" nil nil nil nil nil nil)
		       ("method" "/// <summary>\n/// ${5:Description}\n/// </summary>${2:$(if (string= (upcase text) \"VOID\") \"\" (format \"%s%s%s\" \"\\n/// <returns><c>\" text \"</c></returns>\"))}\n${1:public} ${2:void} ${3:MethodName}($4)\n{\n$0\n}\n" "public void Method { ... }" nil nil nil nil nil nil)
		       ("namespace" "namespace $1\n{\n$0\n}\n" "namespace .. { ... }" nil nil nil nil nil nil)
		       ("prop" "/// <summary>\n/// $5\n/// </summary>\n/// <value>$6</value>\n$1 $2 $3\n{\n    get {\n        return this.$4;\n    }\n    set {\n        this.$4 = value;\n    }\n}\n" "property ... ... { ... }" nil nil nil nil nil nil)
		       ("region" "#region $1\n$0\n#endregion\n" "#region ... #endregion" nil nil nil nil nil nil)
		       ("using" "using $1;\n" "using ...;" nil nil nil nil nil nil)
		       ("using.1" "using System;\n" "using System;" nil nil nil nil nil nil)
		       ("using.2" "using System.$1;\n" "using System....;" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("prop" "- (${1:id})${2:foo}\n{\n    return $2;\n}\n\n- (void)set${2:$(capitalize text)}:($1)aValue\n{\n    [$2 autorelease];\n    $2 = [aValue retain];\n}\n$0" "foo { ... } ; setFoo { ... }" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("bg" "background-color: #${1:DDD};" "background-color: ..." nil nil nil nil nil nil)
		       ("bg.1" "background-image: url($1);" "background-image: ..." nil nil nil nil nil nil)
		       ("bor" "border: ${1:1px} ${2:solid} #${3:999};" "border size style color" nil nil nil nil nil nil)
		       ("cl" "clear: $1;\n" "clear: ..." nil nil nil nil nil nil)
		       ("disp.block" "display: block;\n" "display: block" nil nil nil nil nil nil)
		       ("disp.inline" "display: inline;\n" "display: inline" nil nil nil nil nil nil)
		       ("disp.none" "display: none;\n" "display: none" nil nil nil nil nil nil)
		       ("ff" "font-family: $1;\n" "font-family: ..." nil nil nil nil nil nil)
		       ("fs" "font-size: ${12px};\n" "font-size: ..." nil nil nil nil nil nil)
		       ("mar.bottom" "margin-bottom: $1;\n" "margin-bottom: ..." nil nil nil nil nil nil)
		       ("mar.left" "margin-left: $1;\n" "margin-left: ..." nil nil nil nil nil nil)
		       ("mar.mar" "margin: $1;\n" "margin: ..." nil nil nil nil nil nil)
		       ("mar.margin" "margin: ${top} ${right} ${bottom} ${left};\n" "margin top right bottom left" nil nil nil nil nil nil)
		       ("mar.right" "margin-right: $1;\n" "margin-right: ..." nil nil nil nil nil nil)
		       ("mar.top" "margin-top: $1;\n" "margin-top: ..." nil nil nil nil nil nil)
		       ("pad.bottom" "padding-bottom: $1;\n" "padding-bottom: ..." nil nil nil nil nil nil)
		       ("pad.left" "padding-left: $1;\n" "padding-left: ..." nil nil nil nil nil nil)
		       ("pad.pad" "padding: $1;\n" "padding: ..." nil nil nil nil nil nil)
		       ("pad.padding" "padding: ${top} ${right} ${bottom} ${left};\n" "padding: top right bottom left" nil nil nil nil nil nil)
		       ("pad.right" "padding-right: $1;\n" "padding-right: ..." nil nil nil nil nil nil)
		       ("pad.top" "padding-top: $1;\n" "padding-top: ..." nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("defun" "(defun $1 ()\n  \"thisandthat.\"\n  (interactive)\n  (let (var1)\n    (setq var1 some)\n    $0\n  )\n)" "function template" nil nil nil nil nil nil)
		       ("dired.process_marked" ";; idiom for processing a list of files in dired's marked files\n \n;; suppose myProcessFile is your function that takes a file path\n;; and do some processing on the file\n\n(defun dired-myProcessFile ()\n  \"apply myProcessFile function to marked files in dired.\"\n  (interactive)\n  (require 'dired)\n  (mapc 'myProcessFile (dired-get-marked-files))\n)\n\n;; to use it, type M-x dired-myProcessFile\n" "process marked files in dired" nil nil nil nil nil nil)
		       ("file.process" "(defun doThisFile (fpath)\n  \"Process the file at path FPATH ...\"\n  (let ()\n    ;; create temp buffer without undo record or font lock. (more efficient)\n    ;; first space in temp buff name is necessary\n    (set-buffer (get-buffer-create \" myTemp\"))\n    (insert-file-contents fpath nil nil nil t)\n\n    ;; process it ...\n    ;; (goto-char 0) ; move to begining of file's content (in case it was open)\n    ;; ... do something here\n    ;; (write-file fpath) ;; write back to the file\n\n    (kill-buffer \" myTemp\")))\n" "a function that process a file" nil nil nil nil nil nil)
		       ("file.read-lines" "(defun read-lines (filePath)\n  \"Return a list of lines in FILEPATH.\"\n  (with-temp-buffer\n    (insert-file-contents filePath)\n    (split-string\n     (buffer-string) \"\\n\" t)) )\n\n;; process all lines\n(mapc \n (lambda (aLine) \n   (message aLine) ; do your stuff here\n   )\n (read-lines \"inputFilePath\")\n)" "read lines of a file" nil nil nil nil nil nil)
		       ("find-replace" "(defun replace-html-chars-region (start end)\n  \"Replace “<” to “&lt;” and other chars in HTML.\nThis works on the current region.\"\n  (interactive \"r\")\n  (save-restriction \n    (narrow-to-region start end)\n    (goto-char (point-min))\n    (while (search-forward \"&\" nil t) (replace-match \"&amp;\" nil t))\n    (goto-char (point-min))\n    (while (search-forward \"<\" nil t) (replace-match \"&lt;\" nil t))\n    (goto-char (point-min))\n    (while (search-forward \">\" nil t) (replace-match \"&gt;\" nil t))\n    )\n  )\n" "find and replace on region" nil nil nil nil nil nil)
		       ("grabstring" "(setq $0 (buffer-substring-no-properties myStartPos myEndPos))\n" "grab buffer substring" nil nil nil nil nil nil)
		       ("grabthing" "(setq $0 (thing-at-point 'symbol))\n" "grab word under cursor" nil nil nil nil nil nil)
		       ("traverse_dir" ";; apply a function to all files in a dir\n(require 'find-lisp)\n(mapc 'my-process-file (find-lisp-find-files \"~/myweb/\" \"\\\\.html$\"))\n" "traversing a directory" nil nil nil nil nil nil)
		       ("word-or-region" ";; example of a command that works on current word or text selection\n(defun down-case-word-or-region ()\n  \"Lower case the current word or text selection.\"\n(interactive)\n(let (pos1 pos2 meat)\n  (if (and transient-mark-mode mark-active)\n      (setq pos1 (region-beginning)\n            pos2 (region-end))\n    (setq pos1 (car (bounds-of-thing-at-point 'symbol))\n          pos2 (cdr (bounds-of-thing-at-point 'symbol))))\n\n  ; now, pos1 and pos2 are the starting and ending positions\n  ; of the current word, or current text selection if exists\n\n  ;; put your code here.\n  $0\n  ;; Some example of things you might want to do\n  (downcase-region pos1 pos2) ; example of a func that takes region as args\n  (setq meat (buffer-substring-no-properties pos1 pos2)) ; grab the text.\n  (delete-region pos1 pos2) ; get rid of it\n  (insert \"newText\") ; insert your new text\n\n  )\n)\n" "Command that works on region or word" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("after" "after\n    $1 -> $0\n" "after ... ->" nil nil nil nil nil nil)
		       ("begin" "begin\n    $0\nend\n" "begin ... end" nil nil nil nil nil nil)
		       ("beh" "-behaviour(${1:gen_server}).\n$0\n" "-behaviour(...)." nil nil nil nil nil nil)
		       ("case" "case $1 of\n    $0\nend\n" "case ... of ... end" nil nil nil nil nil nil)
		       ("compile" "-compile([${1:export_all}]).\n$0\n" "-compile(...)." nil nil nil nil nil nil)
		       ("def" "-define($1,$2).\n$0\n" "-define(...,...)." nil nil nil nil nil nil)
		       ("exp" "-export([${1:start/0}]).\n$0\n" "-export([])." nil nil nil nil nil nil)
		       ("fun" "fun ($1) -> $0 end\n" "fun (...) -> ... end" nil nil nil nil nil nil)
		       ("if" "if\n    $1 -> $2;\n    true -> $0\nend\n" "if ... -> ... ; true -> ... end" nil nil nil nil nil nil)
		       ("ifdef" "-ifdef($1).\n$0\n-endif.\n" "-ifdef(...). ... -endif." nil nil nil nil nil nil)
		       ("ifndef" "-ifndef($1).\n$0\n-endif.\n" "-ifndef(...). ... -endif." nil nil nil nil nil nil)
		       ("imp" "-import(${1:lists}, [${2:map/2, sum/1}]).\n$0\n" "-import([])." nil nil nil nil nil nil)
		       ("inc" "-include(\"$1\").\n$0\n" "-include(\"...\")." nil nil nil nil nil nil)
		       ("inc.lib" "-include_lib(\"$1\").\n$0\n" "-include_lib(\"...\")." nil nil nil nil nil nil)
		       ("loop" "${1:loop}($2) ->\n    receive\n	${3:_} ->\n	    $1($2)\n    end.\n$0\n" "loop(...) -> receive _ -> loop(...) end." nil nil nil nil nil nil)
		       ("mod" "-module(${1:`(file-name-nondirectory\n              (file-name-sans-extension (or (buffer-file-name) (buffer-name))))`}).\n$0\n" "-module()." nil nil nil nil nil nil)
		       ("rcv" "receive\n    $1 -> $0\nend\n" "receive ... -> ... end" nil nil nil nil nil nil)
		       ("rcv.after" "receive\nafter\n    $1 -> $0\nend\n" "receive after ... -> ... end" nil nil nil nil nil nil)
		       ("rec" "-record($1,{$2}).\n$0\n" "-record(...,{...})." nil nil nil nil nil nil)
		       ("try" "try $1 of\n    $0\ncatch\nafter\nend\n" "try ... of ... catch after end" nil nil nil nil nil nil)
		       ("undef" "-undef($1).\n$0\n" "-undef(...)." nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("au" "automatic $0 \n" "automatic" nil nil nil nil nil nil)
		       ("bd" "block data $0\n" "block data" nil nil nil nil nil nil)
		       ("c" "continue $0\n" "continue" nil nil nil nil nil nil)
		       ("ch" "character $0\n" "character" nil nil nil nil nil nil)
		       ("cx" "complex $0\n" "complex" nil nil nil nil nil nil)
		       ("dc" "double complex $0\n" "double complex" nil nil nil nil nil nil)
		       ("do" "do while (${1:condition})\n   $0\nend do\n" "do while (...) end do" nil nil nil nil nil nil)
		       ("dp" "double precision $0\n" "double precision" nil nil nil nil nil nil)
		       ("eq" "equivalence $0\n" "equivalence" nil nil nil nil nil nil)
		       ("ib" "implicit byte $0\n" "implicit byte" nil nil nil nil nil nil)
		       ("ic" "implicit complex $0\n" "implicit complex" nil nil nil nil nil nil)
		       ("ich" "implicit character $0\n" "implicit character" nil nil nil nil nil nil)
		       ("if" "if ( ${1:condition} ) then\n   $0\nend if\n" "if then end if" nil nil nil nil nil nil)
		       ("ii" "implicit integer $0\n" "implicit integer " nil nil nil nil nil nil)
		       ("il" "implicit logical $0\n" "implicit logical" nil nil nil nil nil nil)
		       ("in" "implicit none\n" "implicit none" nil nil nil nil nil nil)
		       ("inc" "include $0\n" "include" nil nil nil nil nil nil)
		       ("intr" "intrinsic $0\n" "intrinsic" nil nil nil nil nil nil)
		       ("ir" "implicit real $0\n" "implicit real" nil nil nil nil nil nil)
		       ("l" "logical $0\n" "logical" nil nil nil nil nil nil)
		       ("pa" "parameter $0\n" "parameter" nil nil nil nil nil nil)
		       ("pr" "program ${1:name}\n  $0\nend program ${1:name}\n" "program ... end program ..." nil nil nil nil nil nil)
		       ("re" "read (${1:*},${2:*}) $0\n" "read (*,*)" nil nil nil nil nil nil)
		       ("st" "structure $0\n" "structure" nil nil nil nil nil nil)
		       ("su" "subroutine $0\n" "subroutine" nil nil nil nil nil nil)
		       ("wr" "write (${1:*},${2:*}) $0\n" "write (*,*)" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("body" "<body$1>\n  $0\n</body>" "<body>...</body>" nil nil nil nil nil nil)
		       ("br" "<br />" "<br />" nil nil nil nil nil nil)
		       ("code" "<code>\n  $0\n</code>" "<code>...</code>" nil nil nil nil nil nil)
		       ("code.class" "<code class=\"$1\">\n  $0\n</code>" "<code class=\"...\">...</code>" nil nil nil nil nil nil)
		       ("dd" "<dd>$1</dd>" "<dd> ... </dd>" nil
			("list")
			nil nil nil nil)
		       ("div" "<div${1: id=\"${2:some_id}\"}${3: class=\"${4:some_class}\"}>$0</div> " "<div...>...</div>" nil nil nil nil nil nil)
		       ("div.class" "<div class=\"$1\">\n  $0\n</div>" "<div class=\"...\">...</div>" nil nil nil nil nil nil)
		       ("div.id" "<div id=\"$1\">\n  $0\n</div>" "<div id=\"...\">...</div>" nil nil nil nil nil nil)
		       ("div.id-class" "<div id=\"$1\" class=\"$2\">\n  $0\n</div>" "<div id=\"...\" class=\"...\">...</div>" nil nil nil nil nil nil)
		       ("dl" "<dl>\n    $0\n</dl>\n" "<dl> ... </dl>" nil
			("list")
			nil nil nil nil)
		       ("dl.id" "<dl id=\"$1\">\n    $0\n</dl>" "<dl> ... </dl>" nil
			("list")
			nil nil nil nil)
		       ("doctype" "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01//EN\" \"http://www.w3.org/TR/html4/strict.dtd\">" "Doctype HTML 4.01 Strict" nil
			("meta")
			nil nil nil nil)
		       ("doctype.xhml1" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Frameset//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd\">" "DocType XHTML 1.0 frameset" nil
			("meta")
			nil nil nil nil)
		       ("doctype.xhtml1_1" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" "DocType XHTML 1.1" nil
			("meta")
			nil nil nil nil)
		       ("doctype.xhtml1_strict" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">" "DocType XHTML 1.0 Strict" nil
			("meta")
			nil nil nil nil)
		       ("doctype.xhtml1_transitional" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" "DocType XHTML 1.0 Transitional" nil
			("meta")
			nil nil nil nil)
		       ("dov" "a mirror up here $3\n\n\n<dov ${1:id=\"${2:some_id and here comes another nested field: ${3:nested_shit}}\"}>\n    $0\n</dov>\n<dov $1>\n    actually some other shit and $3\n</dov>\n" "<dov...>...</dov>" nil nil nil nil nil nil)
		       ("dt" "<dt>$1</dt>" "<dt> ... </dt>" nil
			("list")
			nil nil nil nil)
		       ("form" "<form method=\"$1\" id=\"$2\" action=\"$3\">\n  $0\n</form>" "<form method=\"...\" id=\"...\" action=\"...\"></form>" nil nil nil nil nil nil)
		       ("h1" "<h1>$1</h1>" "<h1>...</h1>" nil
			("header")
			nil nil nil nil)
		       ("h2" "<h2>$1</h2>" "<h2>...</h2>" nil
			("header")
			nil nil nil nil)
		       ("h3" "<h3>$1</h3>" "<h3>...</h3>" nil
			("header")
			nil nil nil nil)
		       ("h4" "<h4>$1</h4>" "<h4>...</h4>" nil
			("header")
			nil nil nil nil)
		       ("h5" "<h5>$1</h5>" "<h5>...</h5>" nil
			("header")
			nil nil nil nil)
		       ("h6" "<h6>$1</h6>" "<h6>...</h6>" nil
			("header")
			nil nil nil nil)
		       ("head" "<head>\n  $0\n</head>" "<head>...</head>" nil nil nil nil nil nil)
		       ("hr" "<hr />\n" "<hr />" nil nil nil nil nil nil)
		       ("href" "<a href=\"$1\">$2</a>" "<a href=\"...\">...</a>" nil nil nil nil nil nil)
		       ("html" "<html>\n  $0\n</html>\n" "<html>...</html>" nil nil nil nil nil nil)
		       ("html.xmlns" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n  $0\n</html>\n" "<html xmlns=\"...\">...</html>" nil nil nil nil nil nil)
		       ("img" "<img src=\"$1\" class=\"$2\" alt=\"$3\" />" "<img src=\"...\" class=\"...\" alt=\"...\" />" nil nil nil nil nil nil)
		       ("input" "<input type=\"$1\" name=\"$2\" value=\"$3\" />" "<input ... />" nil nil nil nil nil nil)
		       ("li" "<li>$1</li>" "<li>...</li>" nil
			("list")
			nil nil nil nil)
		       ("li.class" "<li class=\"$1\">$2</li>" "<li class=\"...\">...</li>" nil
			("list")
			nil nil nil nil)
		       ("link.stylesheet" "<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />" "<link stylesheet=\"...\" />" nil nil nil nil nil nil)
		       ("link.stylesheet-ie" "<!--[if IE]>\n<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />\n<![endif]-->" "<!--[if IE]><link stylesheet=\"...\" /><![endif]-->" nil nil nil nil nil nil)
		       ("mailto" "<a href=\"mailto:$1@$2\">$0</a>" "<a href=\"mailto:...@...\">...</a>" nil nil nil nil nil nil)
		       ("meta" "<meta name=\"${1:generator}\" content=\"${2:content}\" />" "<meta name=\"...\" content=\"...\" />" nil
			("meta")
			nil nil nil nil)
		       ("meta.http-equiv" "<meta name=\"${1:Content-Type}\" content=\"${2:text/html; charset=UTF-8}\" />" "<meta http-equiv=\"...\" content=\"...\" />" nil
			("meta")
			nil nil nil nil)
		       ("ol" "<ol>\n  $0\n</ol>" "<ol>...</ol>" nil
			("list")
			nil nil nil nil)
		       ("ol.class" "<ol class=\"$1\">\n  $0\n</ol>" "<ol class=\"...\">...</ol>" nil
			("list")
			nil nil nil nil)
		       ("ol.id" "<ol id=\"$1\">\n  $0\n</ol>" "<ol id=\"...\">...</ol>" nil
			("list")
			nil nil nil nil)
		       ("p" "<p>$1</p>" "<p>...</p>" nil nil nil nil nil nil)
		       ("pre" "<pre>\n  $0\n</pre>" "<pre>...</pre>" nil nil nil nil nil nil)
		       ("quote" "<blockquote>\n  $1\n</blockquote>" "<blockquote>...</blockquote>" nil nil nil nil nil nil)
		       ("script.javascript" "<script type=\"text/javascript\">\n  $0\n</script>" "<script type=\"text/javascript\">...</script> " nil nil nil nil nil nil)
		       ("script.javascript-src" "<script type=\"text/javascript\" src=\"$1\"></script>" "<script type=\"text/javascript\" src=\"...\"></script> " nil nil nil nil nil nil)
		       ("span" "<span>$1</span>" "<span>...</span>" nil nil nil nil nil nil)
		       ("span.class" "<span class=\"$1\">$2</span>" "<span class=\"...\">...</span>" nil nil nil nil nil nil)
		       ("span.id" "<span id=\"$1\">$2</span>" "<span id=\"...\">...</span>" nil nil nil nil nil nil)
		       ("style" "<style type=\"text/css\" media=\"${1:screen}\">\n  $0\n</style>" "<style type=\"text/css\" media=\"...\">...</style>" nil nil nil nil nil nil)
		       ("table" "<table width=\"$1\" cellspacing=\"$2\" cellpadding=\"$3\" border=\"$4\">\n  $0\n</table>" "<table ...>...</table>" nil
			("table")
			nil nil nil nil)
		       ("td" "<td$1>$2</td>" "<td>...</td>" nil
			("table")
			nil nil nil nil)
		       ("textarea" "<textarea name=\"$1\" id=\"$2\" rows=\"$3\" cols=\"$4\" tabindex=\"$5\"></textarea>" "<textarea ...></textarea>" nil nil nil nil nil nil)
		       ("th" "<th$1>$2</th>" "<th>...</th>" nil
			("table")
			nil nil nil nil)
		       ("title" "<title>$1</title>" "<title>...</title>" nil nil nil nil nil nil)
		       ("tr" "<tr>\n  $0\n</tr>" "<tr>...</tr>" nil
			("table")
			nil nil nil nil)
		       ("ul" "<ul>\n  $0\n</ul>" "<ul>...</ul>" nil
			("list")
			nil nil nil nil)
		       ("ul.class" "<ul class=\"$1\">\n  $0\n</ul>" "<ul class=\"...\">...</ul>" nil
			("list")
			nil nil nil nil)
		       ("ul.id" "<ul id=\"$1\">\n  $0\n</ul>" "<ul id=\"...\">...</ul>" nil
			("list")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("begin" "\n\\begin{${1:environment}}\n$0\n\\end{$1}\n" "\\begin{environment} ... \\end{environment}" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("+" "+ ${1:Text}\n+$0\n" "Unordered List" nil nil nil nil nil nil)
		       ("-" "- ${1:Text}\n-$0\n" "Unordered List" nil nil nil nil nil nil)
		       ("_" "_${1:Text}_ $0\n" "Emphasis" nil nil nil nil nil nil)
		       ("__" "**${1:Text}** $0\n" "Strong" nil nil nil nil nil nil)
		       ("`" "\\`${1:Code}\\` $0\n" "Inline Code" nil nil nil nil nil nil)
		       ("h1.1" "# ${1:Header 1} #\n\n$0\n" "Header 1 (#)" nil nil nil nil nil nil)
		       ("h1.2" "${1:Header 1}\n${1:$(make-string (string-width text) ?\\=)}\n\n$0\n" "Header 1 (=)" nil nil nil nil nil nil)
		       ("h2.1" "## ${1:Header 1} ##\n\n$0\n" "Header 2 (##)" nil nil nil nil nil nil)
		       ("h2.2" "${1:Header 2}\n${1:$(make-string (string-width text) ?\\-)}\n\n$0\n" "Header 2 (-)" nil nil nil nil nil nil)
		       ("h3" "### ${1:Header 3} ###\n\n$0\n" "Header 3" nil nil nil nil nil nil)
		       ("h4" "#### ${1:Header 4} ####\n\n$0\n" "Header 4" nil nil nil nil nil nil)
		       ("h5" "##### ${1:Header 5} #####\n\n$0\n" "Header 5" nil nil nil nil nil nil)
		       ("h6" "###### ${1:Header 6} ######\n\n$0\n" "Header 6" nil nil nil nil nil nil)
		       ("hr.1" "\n----------\n\n$0\n" "Horizontal Rule (-)" nil nil nil nil nil nil)
		       ("hr.2" "\n*******\n\n$0\n" "Horizontal Rule (*)" nil nil nil nil nil nil)
		       ("img" "![${1:Alt Text}](${2:URL} $3) $0\n" "Image" nil nil nil nil nil nil)
		       ("link" "[${1:Link Text}](${2:URL} $3) $0\n" "Link" nil nil nil nil nil nil)
		       ("ol" "${1:1}. ${2:Text}\n${1:$(number-to-string (1+ (string-to-number text)))}. $0\n" "Ordered List" nil nil nil nil nil nil)
		       ("rimg" "![${1:Alt Text}][$2] $0\n" "Referenced Image" nil nil nil nil nil nil)
		       ("rlb" "[${1:Reference}]: ${2:URL} $3\n$0\n" "Reference Label" nil nil nil nil nil nil)
		       ("rlink" "[${1:Link Text}][$2] $0\n" "Reference Link" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("body" "<body$1>\n  $0\n</body>" "<body>...</body>" nil nil nil nil nil nil)
		       ("br" "<br />" "<br />" nil nil nil nil nil nil)
		       ("code" "<code>\n  $0\n</code>" "<code>...</code>" nil nil nil nil nil nil)
		       ("div" "<div$1>$0</div>" "<div...>...</div>" nil nil nil nil nil nil)
		       ("doctype" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\" \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">" "DocType XHTML 1.1" nil
			("meta")
			nil nil nil nil)
		       ("doctype.xhtml1_strict" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Strict//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd\">" "DocType XHTML 1.0 Strict" nil
			("meta")
			nil nil nil nil)
		       ("doctype.xhtml1_transitional" "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.0 Transitional//EN\" \"http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd\">" "DocType XHTML 1.0 Transitional" nil
			("meta")
			nil nil nil nil)
		       ("form" "<form method=\"$1\" action=\"$2\">\n  $0\n</form>" "<form method=\"...\" action=\"...\"></form>" nil nil nil nil nil nil)
		       ("h1" "<h1>$1</h1>" "<h1>...</h1>" nil
			("header")
			nil nil nil nil)
		       ("h2" "<h2>$1</h2>" "<h2>...</h2>" nil
			("header")
			nil nil nil nil)
		       ("h3" "<h3>$1</h3>" "<h3>...</h3>" nil
			("header")
			nil nil nil nil)
		       ("h4" "<h4>$1</h4>" "<h4>...</h4>" nil
			("header")
			nil nil nil nil)
		       ("h5" "<h5>$1</h5>" "<h5>...</h5>" nil
			("header")
			nil nil nil nil)
		       ("h6" "<h6>$1</h6>" "<h6>...</h6>" nil
			("header")
			nil nil nil nil)
		       ("head" "<head>\n  $0\n</head>" "<head>...</head>" nil nil nil nil nil nil)
		       ("hr" "<hr />\n" "<hr />" nil nil nil nil nil nil)
		       ("href" "<a href=\"$1\">$2</a>" "<a href=\"...\">...</a>" nil nil nil nil nil nil)
		       ("html" "<html xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"${1:en}\" lang=\"${2:en}\">\n  $0\n</html>\n" "<html xmlns=\"...\">...</html>" nil nil nil nil nil nil)
		       ("img" "<img src=\"$1\" alt=\"$2\" />" "<img src=\"...\" alt=\"...\" />" nil nil nil nil nil nil)
		       ("input" "<input type=\"$1\" name=\"$2\" value=\"$3\" />" "<input ... />" nil nil nil nil nil nil)
		       ("li" "<li>$1</li>" "<li>...</li>" nil nil nil nil nil nil)
		       ("link" "<link rel=\"${1:stylesheet}\" href=\"${2:url}\" type=\"${3:text/css}\" media=\"${4:screen}\" />" "<link stylesheet=\"...\" />" nil nil nil nil nil nil)
		       ("meta" "<meta name=\"${1:generator}\" content=\"${2:content}\" />" "<meta name=\"...\" content=\"...\" />" nil
			("meta")
			nil nil nil nil)
		       ("name" "<a name=\"$1\"></a>" "<a name=\"...\"></a>" nil nil nil nil nil nil)
		       ("ol" "<ol>\n  $0\n</ol>" "<ol>...</ol>" nil nil nil nil nil nil)
		       ("p" "<p>$1</p>" "<p>...</p>" nil nil nil nil nil nil)
		       ("pre" "<pre>\n  $0\n</pre>" "<pre>...</pre>" nil nil nil nil nil nil)
		       ("quote" "<blockquote>\n  $1\n</blockquote>" "<blockquote>...</blockquote>" nil nil nil nil nil nil)
		       ("span" "<span>$1</span>" "<span>...</span>" nil nil nil nil nil nil)
		       ("style" "<style type=\"text/css\" media=\"${1:screen}\">\n  $0\n</style>" "<style type=\"text/css\" media=\"...\">...</style>" nil nil nil nil nil nil)
		       ("table" "<table>\n  $0\n</table>" "<table>...</table>" nil nil nil nil nil nil)
		       ("tag.1l" "<${1:tag}>$2</$1>$0" "<tag>...</tag>" nil nil nil nil nil nil)
		       ("tag.2l" "<${1:tag}>\n  $2\n</$1>$0" "<tag> \\n...\\n</tag>" nil nil nil nil nil nil)
		       ("td" "<td$1>$2</td>" "<td>...</td>" nil nil nil nil nil nil)
		       ("th" "<th$1>$2</th>" "<th>...</th>" nil nil nil nil nil nil)
		       ("title" "<title>$1</title>" "<title>...</title>" nil nil nil nil nil nil)
		       ("tr" "<tr>\n  $0\n</tr>" "<tr>...</tr>" nil nil nil nil nil nil)
		       ("ul" "<ul>\n  $0\n</ul>" "<ul>...</ul>" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("eval" "eval {\n    ${1:# do something risky...}\n};\nif (\\$@) {\n    ${2:# handle failure...}\n}" "eval { ... } if ($@) { ... }" nil nil nil nil nil nil)
		       ("for" "for (my \\$${1:var} = 0; \\$$1 < ${2:expression}; \\$$1++) {\n    ${3:# body...}\n}" "for (...) { ... }" nil nil nil nil nil nil)
		       ("fore" "foreach my \\$${1:x} (@${2:array}) {\n    ${3:# body...}\n}" "foreach ... { ... }" nil nil nil nil nil nil)
		       ("if" "if ($1) {\n    $0\n}" "if (...) { ... }" nil nil nil nil nil nil)
		       ("ife" "if ($1) {\n    $2\n} else {\n    $3\n}" "if (...) { ... } else { ... }" nil nil nil nil nil nil)
		       ("ifee" "if ($1) {\n	${2:# body...}\n} elsif ($3) {\n	${4:# elsif...}\n} else {\n	${5:# else...}\n}" "if, elsif, else ..." nil nil nil nil nil nil)
		       ("sub" "sub ${1:function_name} {\n    $0\n}" "sub ... { ... }" nil nil nil nil nil nil)
		       ("unless" "unless ($1) {\n    $0\n}" "unless (...) { ... }" nil nil nil nil nil nil)
		       ("while" "while ($1) {\n    $0\n}" "while (...) { ... }" nil nil nil nil nil nil)
		       ("xfore" "${1:expression} foreach @${2:array};" "... foreach ..." nil nil nil nil nil nil)
		       ("xif" "${1:expression} if ${2:condition}" "... if ..." nil nil nil nil nil nil)
		       ("xunless" "${1:expression} unless ${2:condition}" "... unless ..." nil nil nil nil nil nil)
		       ("xwhile" "${1:expression} while ${2:condition};" "... while ..." nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("chap" "${1:Chapter}\n${1:$(make-string (string-width text) ?\\=)}\n\n$0" "Chapter title" nil nil nil nil nil nil)
		       ("sec" "${1:Section}\n${1:$(make-string (string-width text) ?\\-)}\n\n$0" "Section title" nil nil nil nil nil nil)
		       ("tit" "${1:$(make-string (string-width text) ?\\=)}\n${1:Title}\n${1:$(make-string (string-width text) ?\\=)}\n\n$0" "Document title" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("#" "# => " "# =>" nil
			("general")
			nil nil nil nil)
		       ("=b" "=begin rdoc\n  $0\n=end" "=begin rdoc ... =end" nil
			("general")
			nil nil nil nil)
		       ("Comp" "include Comparable\n\ndef <=> other\n  $0\nend" "include Comparable; def <=> ... end" nil
			("definitions")
			nil nil nil nil)
		       ("all" "all? { |${e}| $0 }" "all? { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("am" "alias_method :${new_name}, :${old_name}" "alias_method new, old" nil
			("definitions")
			nil nil nil nil)
		       ("any" "any? { |${e}| $0 }" "any? { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("app" "if __FILE__ == $PROGRAM_NAME\n  $0\nend" "if __FILE__ == $PROGRAM_NAME ... end" nil
			("general")
			nil nil nil nil)
		       ("bm" "Benchmark.bmbm(${1:10}) do |x|\n  $0\nend" "Benchmark.bmbm(...) do ... end" nil
			("general")
			nil nil nil nil)
		       ("case" "case ${1:object}\nwhen ${2:condition}\n  $0\nend" "case ... end" nil
			("general")
			nil nil nil nil)
		       ("cla" "class << ${self}\n  $0\nend" "class << self ... end" nil
			("definitions")
			nil nil nil nil)
		       ("classify" "classify { |${e}| $0 }" "classify { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("cls" "class ${1:`(let ((fn (capitalize (file-name-nondirectory\n                                 (file-name-sans-extension\n				 (or (buffer-file-name)\n				     (buffer-name (current-buffer))))))))\n           (cond\n             ((string-match \"_\" fn) (replace-match \"\" nil nil fn))\n              (t fn)))`}\n  $0\nend\n" "class ... end" nil
			("definitions")
			nil nil nil nil)
		       ("collect" "collect { |${e}| $0 }" "collect { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("dee" "Marshal.load(Marshal.dump($0))" "deep_copy(...)" nil
			("general")
			nil nil nil nil)
		       ("deli" "delete_if { |${e} $0 }" "delete_if { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("det" "detect { |${e}| $0 }" "detect { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("dow" "downto(${0}) { |${n}|\n  $0\n}" "downto(...) { |n| ... }" nil
			("control structure")
			nil nil nil nil)
		       ("ea" "each { |${e}| $0 }" "each { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("eac" "each_cons(${1:2}) { |${group}| $0 }" "each_cons(...) { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("eai" "each_index { |${i}| $0 }" "each_index { |i| ... }" nil
			("collections")
			nil nil nil nil)
		       ("eav" "each_value { |${val}| $0 }" "each_value { |val| ... }" nil
			("collections")
			nil nil nil nil)
		       ("eawi" "each_with_index { |${e}, ${i}| $0 }" "each_with_index { |e, i| ... }" nil
			("collections")
			nil nil nil nil)
		       ("forin" "for ${1:element} in ${2:collection}\n  $0\nend" "for ... in ...; ... end" nil
			("control structure")
			nil nil nil nil)
		       ("if" "if ${1:condition}\n  $0\nend" "if ... end" nil
			("control structure")
			nil nil nil nil)
		       ("ife" "if ${1:condition}\n  $2\nelse\n  $3\nend" "if ... else ... end" nil
			("control structure")
			nil nil nil nil)
		       ("inject" "inject(${1:0}) { |${2:injection}, ${3:element}| $0 }" "inject(...) { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("mm" "def method_missing(method, *args)\n  $0\nend" "def method_missing ... end" nil
			("definitions")
			nil nil nil nil)
		       ("r" "attr_reader :" "attr_reader ..." nil
			("definitions")
			nil nil nil nil)
		       ("rb" "#!/usr/bin/ruby -wKU\n" "/usr/bin/ruby -wKU" nil
			("general")
			nil nil nil nil)
		       ("reject" "reject { |${1:element}| $0 }" "reject { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("req" "require \"$0\"" "require \"...\"" nil
			("general")
			nil nil nil nil)
		       ("rreq" "require File.join(File.dirname(__FILE__), $0)" "require File.join(File.dirname(__FILE__), ...)" nil
			("general")
			nil nil nil nil)
		       ("rw" "attr_accessor :" "attr_accessor ..." nil
			("definitions")
			nil nil nil nil)
		       ("select" "select { |${1:element}| $0 }" "select { |...| ... }" nil
			("collections")
			nil nil nil nil)
		       ("tim" "times { |${n}| $0 }" "times { |n| ... }" nil
			("control structure")
			nil nil nil nil)
		       ("until" "until ${condition}\n  $0\nend" "until ... end" nil
			("control structure")
			nil nil nil nil)
		       ("upt" "upto(${n}) { |${i}|\n  $0\n}" "upto(...) { |n| ... }" nil
			("control structure")
			nil nil nil nil)
		       ("w" "attr_writer :" "attr_writer ..." nil
			("definitions")
			nil nil nil nil)
		       ("when" "when ${condition}\n  $0\nend" "when ... end" nil
			("control structure")
			nil nil nil nil)
		       ("while" "while ${condition}\n  $0\nend" "while ... end" nil
			("control structure")
			nil nil nil nil)
		       ("y" ":yields: $0" ":yields: arguments (rdoc)" nil
			("general")
			nil nil nil nil)
		       ("zip" "zip(${enums}) { |${row}| $0 }" "zip(...) { |...| ... }" nil
			("collections")
			nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("act" "def act = {\n  loop {\n    react {\n      $0\n    }\n  }\n}" "def act = { ..}" nil nil nil nil nil nil)
		       ("act.arg" "def act(${1:arg}: ${2:type}) = {\n  loop {\n    react {\n      $0\n    }\n  }\n}" "def act(arg: T) = { ..}" nil nil nil nil nil nil)
		       ("actor" "val a = actor {\n  loop {\n    react {\n      $0\n    }\n  }\n}" "val a = actor { ..}" nil nil nil nil nil nil)
		       ("ano" "($1) => ${2:body} $0" "(args) => ..." nil nil nil nil nil nil)
		       ("app" "object ${1:name} extends Application {\n  $0\n}" "object name extends Application" nil nil nil nil nil nil)
		       ("arr.new" "Array[${1:value}](${2:args}) $0" "Array[T](..)" nil nil nil nil nil nil)
		       ("arr.val-new" "val ${1:arr} = Array[${2:value}](${3:args}) $0" "val a = Array[T](..)" nil nil nil nil nil nil)
		       ("asof" "asInstanceOf[${1:type}] $0" "asInstanceOf[T] " nil nil nil nil nil nil)
		       ("ass" "assert(${1:x} === ${2:y}) $0" "assert(x === y)" nil nil nil nil nil nil)
		       ("ass.true" "assert(true) $0" "assert(true)" nil nil nil nil nil nil)
		       ("at.author" "@author ${1:name} $0" "@author name" nil nil nil nil nil nil)
		       ("at.param" "@param ${1:name} ${2:description} $0" "@param name description" nil nil nil nil nil nil)
		       ("at.return" "@return ${1:description} $0" "@return description" nil nil nil nil nil nil)
		       ("at.version" "@version ${1:0.1} $0" "@version number" nil nil nil nil nil nil)
		       ("bang" "${1:actor} ! ${2:message} $0" "actor ! message" nil nil nil nil nil nil)
		       ("case" "case ${1:pattern} => $0" "case pattern => " nil nil nil nil nil nil)
		       ("case.match-all" "case _ => $0" "case _ => " nil nil nil nil nil nil)
		       ("cast" "asInstanceOf[${1:type}] $0" "asInstanceOf[T] " nil nil nil nil nil nil)
		       ("cc" "case class ${1:name}(${2:arg}: ${3:type}) $0" "case class T(arg: A)" nil nil nil nil nil nil)
		       ("cl" "class ${1:name} {\n  $0\n}" "class T { .. }" nil nil nil nil nil nil)
		       ("cl.abs" "abstract class ${1:name} {\n  $0\n}" "abstract class T { .. }" nil nil nil nil nil nil)
		       ("cl.abs-arg" "abstract class ${1:name}(${2:args}) {\n  $0\n}" "abstract class T(args) { .. }" nil nil nil nil nil nil)
		       ("cl.arg" "class ${1:name}(${2:args}) {\n  $0\n}" "class T(args) { .. }" nil nil nil nil nil nil)
		       ("clof" "classOf[${1:type}] $0" "classOf[T] " nil nil nil nil nil nil)
		       ("co" "case object ${1:name} $0" "case object T" nil nil nil nil nil nil)
		       ("cons" "${1:element1} :: ${2:element2} $0" "element1 :: element2" nil nil nil nil nil nil)
		       ("cons.nil" "${1:element1} :: Nil $0\n" "element1 :: Nil" nil nil nil nil nil nil)
		       ("def.arg" "def ${1:name}(${2:args}) = $0" "def f(arg: T) = ..." nil nil nil nil nil nil)
		       ("def.arg-body" "def ${1:name}(${2:args}) = {\n  $0\n}" "def f(arg: T) = {...}" nil nil nil nil nil nil)
		       ("def.arg-ret" "def ${1:name}(${2:args}): ${3:Unit} = $0" "def f(arg: T): R = ..." nil nil nil nil nil nil)
		       ("def.arg-ret-body" "def ${1:name}(${2:args}): ${3:Unit} = {\n  $0\n}" "def f(arg: T): R = {...}" nil nil nil nil nil nil)
		       ("def.body" "def ${1:name} = {\n  $0\n}" "def f = {...}" nil nil nil nil nil nil)
		       ("def.ret" "def ${1:name}: ${2:Unit} = $0" "def f: R = ..." nil nil nil nil nil nil)
		       ("def.ret-body" "def ${1:name}: ${3:Unit} = {\n  $0\n}" "def f: R = {...}" nil nil nil nil nil nil)
		       ("def.simple" "def ${1:name} = $0" "def f = ..." nil nil nil nil nil nil)
		       ("doc.class" "/** \n * `(scala-mode-find-clstrtobj-name-doc)`\n * ${1:description}\n * $0  \n */" "/** cls/trt/obj name */" nil nil nil nil nil nil)
		       ("doc.def" "/** \n * `(scala-mode-def-and-args-doc)`\n */ " "/** method name */" nil nil nil nil nil nil)
		       ("doc.file" "/**\n * `(scala-mode-file-doc)`\n * $0\n * @author ${1:name}\n * @version ${2:0.1} \n */" "/** file name */" nil nil nil nil nil nil)
		       ("doc.file-scala" "/*                     __                                               *\\\n**     ________ ___   / /  ___     Scala $3                               **\n**    / __/ __// _ | / /  / _ |    (c) 2005-`(format-time-string \"%Y\")` , LAMP/EPFL             **\n**  __\\ \\/ /__/ __ |/ /__/ __ |    http://scala-lang.org/               **\n** /____/\\___/_/ |_/____/_/ | |                                         **\n**                          |/                                          **\n\\*                                                                      */\n/** \n * $0\n * @author ${1:name} \n * @version ${2:0.1}\n * $Id$\n */" "/** scala file */" nil nil nil nil nil nil)
		       ("doc.file-scala-api" "/*                     __                                               *\\\n**     ________ ___   / /  ___     Scala API                            **\n**    / __/ __// _ | / /  / _ |    (c) 2005-`(format-time-string \"%Y\")`, LAMP/EPFL             **\n**  __\\ \\/ /__/ __ |/ /__/ __ |    http://scala-lang.org/               **\n** /____/\\___/_/ |_/____/_/ | |                                         **\n**                          |/                                          **\n\\*                                                                      */\n/** \n * $0\n * @author ${1:name} \n * @version ${2:0.1}\n * $Id$\n */" "/** scala api file */" nil nil nil nil nil nil)
		       ("doc.scaladoc" "/**\n * ${1:description}\n * $0\n */" "/** ... */" nil nil nil nil nil nil)
		       ("expect" "expect(${1:reply}) {\n  $0\n}" "expect(value) { ..}" nil nil nil nil nil nil)
		       ("ext" "extends $0" "extends T" nil nil nil nil nil nil)
		       ("for.extract" "${1:x} <- ${2:xs}" "x <- xs" nil nil nil nil nil nil)
		       ("for.if" "for (${1:x} <- ${2:xs} if ${3:guard}) {\n  $0\n}" "for (x <- xs if guard) { ... }" nil nil nil nil nil nil)
		       ("for.loop" "for (${1:x} <- ${2:xs}) {\n  $0\n}" "for (x <- xs) { ... }" nil nil nil nil nil nil)
		       ("for.multi" "for {\n  ${1:x} <- ${2:xs}\n  ${3:x} <- ${4:xs}\n} {\n  yield $0\n}" "for {x <- xs \\ y <- ys} { yield }" nil nil nil nil nil nil)
		       ("foreach" "foreach(${1:x} => ${2:body}) $0" "foreach(x => ..)" nil nil nil nil nil nil)
		       ("hmap.new" "new HashMap[${1:key}, ${2:value}] $0" "new HashMap[K, V]" nil nil nil nil nil nil)
		       ("hmap.val-new" "val ${1:m} = new HashMap[${2:key}, ${3:value}] $0" "val m = new HashMap[K, V]" nil nil nil nil nil nil)
		       ("hset.new" "new HashSet[${1:key}] $0\n" "new HashSet[K]" nil nil nil nil nil nil)
		       ("hset.val-new" "val ${1:m} = new HashSet[${2:key}] $0" "val m = new HashSet[K]" nil nil nil nil nil nil)
		       ("if" "if (${1:condition}) {\n  $0\n}" "if (cond) { .. }" nil nil nil nil nil nil)
		       ("if.else" "if (${1:condition}) {\n  $2\n} else {\n  $0\n}" "if (cond) { .. } else { .. }" nil nil nil nil nil nil)
		       ("imp" "import $0" "import .." nil nil nil nil nil nil)
		       ("intercept" "intercept(classOf[${1:Exception]}) {\n  $0\n}" "intercept(classOf[T]) { ..}" nil nil nil nil nil nil)
		       ("isof" "isInstanceOf[${1:type}] $0" "isInstanceOf[T] " nil nil nil nil nil nil)
		       ("ls.new" "List(${1:args}, ${2:args}) $0" "List(..)" nil nil nil nil nil nil)
		       ("ls.val-new" "val ${1:l} = List(${2:args}, ${3:args}) $0" "val l = List(..)" nil nil nil nil nil nil)
		       ("main" "def main(args: Array[String]) = {\n  $0\n}" "def main(args: Array[String]) = { ... }" nil nil nil nil nil nil)
		       ("map" "map(${1:x} => ${2:body}) $0" "map(x => ..)" nil nil nil nil nil nil)
		       ("map.new" "Map(${1:key} -> ${2:value}) $0" "Map(key -> value)" nil nil nil nil nil nil)
		       ("match" "${1:cc} match {\n  case ${2:pattern} => $0\n}" "cc match { .. }" nil nil nil nil nil nil)
		       ("match.can" "${1:option} match {\n  case Full(res) => $0\n\n  case Empty => \n\n  case Failure(msg, _, _) => \n\n}" "can match { case Full(res) => .. }" nil nil nil nil nil nil)
		       ("match.option" "${1:option} match {\n  case None => $0\n  case Some(res) => \n\n}" "option match { case None => .. }" nil nil nil nil nil nil)
		       ("mix" "trait ${1:name} {\n  $0\n}" "trait T { .. }" nil nil nil nil nil nil)
		       ("ob" "object ${1:name} extends ${2:type} $0" "object name extends T" nil nil nil nil nil nil)
		       ("pac" "package $0" "package .." nil nil nil nil nil nil)
		       ("pr.newline" "println(${1:obj}) $0" "println(..)" nil nil nil nil nil nil)
		       ("pr.simple" "print(${1:obj}) $0" "print(..)" nil nil nil nil nil nil)
		       ("pr.string" "println(\"${1:msg}\") $0" "println(\"..\")" nil nil nil nil nil nil)
		       ("pr.trace" "println(\"${1:obj}: \" + ${1:obj}) $0" "println(\"obj: \" + obj)" nil nil nil nil nil nil)
		       ("pri" "private $0" "private" nil nil nil nil nil nil)
		       ("pri.param" "private[${1:this}] $0" "private[this]" nil nil nil nil nil nil)
		       ("pro" "protected $0" "protected" nil nil nil nil nil nil)
		       ("pro.param" "protected[${1:this}] $0" "protected[this]" nil nil nil nil nil nil)
		       ("suite" "import org.scalatest._\n\nclass ${1:name} extends Suite {\n  $0\n}" "class T extends Suite { .. }" nil nil nil nil nil nil)
		       ("test" "//@Test\ndef test${1:name} = {\n  $0\n}" "@Test def testX = ..." nil nil nil nil nil nil)
		       ("throw" "throw new ${1:Exception}(${2:msg}) $0" "throw new Exception" nil nil nil nil nil nil)
		       ("tr" "trait ${1:name} {\n  $0\n}" "trait T { .. }" nil nil nil nil nil nil)
		       ("tr.ext" "trait ${1:name} extends ${2:class} {\n  $0\n}" "trait T extends C { .. }" nil nil nil nil nil nil)
		       ("tr.ext-with" "trait ${1:name} extends ${2:class} with ${3:trait} {\n  $0\n}" "trait T1 extends C with T2 { .. }" nil nil nil nil nil nil)
		       ("tr.with" "trait ${1:name} with ${2:trait} {\n  $0\n}" "trait T1 with T2 { .. }" nil nil nil nil nil nil)
		       ("try" "try {\n  $0\n} catch {\n  case ${1:e}: ${2:Exception} => \n    ${1:println(\\\"ERROR: \\\" + e) // TODO: handle exception}\\n}\n}" "try { .. } catch { case e => ..}" nil nil nil nil nil nil)
		       ("try.catch-finally" "try {\n  $0\n} catch {\n  case ${1:e}: ${2:Exception} => \n    ${1:println(\\\"ERROR: \\\" + e) // TODO: handle exception}\\n}\n} finally {\n\n}" "try { .. } catch { case e => ..} finally { ..}" nil nil nil nil nil nil)
		       ("try.finally" "try {\n\n} finally {\n  $0\n}" "try { .. } finally { .. }" nil nil nil nil nil nil)
		       ("tup.arrow" "${1:element1} -> ${2:element2} $0" "element1 -> element2" nil nil nil nil nil nil)
		       ("tup.paren" "(${1:element1}, ${2:element2}) $0" "(element1, element2)" nil nil nil nil nil nil)
		       ("val" "val ${1:name} = ${2:obj} $0" "val name = .." nil nil nil nil nil nil)
		       ("val.new" "val ${1:name} = new ${2:obj} $0" "val name = new .." nil nil nil nil nil nil)
		       ("val.ret" "val ${1:name}: ${2:T} = ${3:obj} $0\n" "val name: T = .." nil nil nil nil nil nil)
		       ("var" "var ${1:name} = ${2:obj} $0\n" "var name = .." nil nil nil nil nil nil)
		       ("var.new" "var ${1:name} = new ${2:obj} $0\n" "var name = new .." nil nil nil nil nil nil)
		       ("var.ret" "var ${1:name}: ${2:T} = ${3:obj} $0\n" "var name: T = .." nil nil nil nil nil nil)
		       ("whi" "while (${1:condition}) {\n  $0\n}" "while(cond) { .. }" nil nil nil nil nil nil)
		       ("with" "with $0" "with T" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("$f" "\\${${1:${2:n}:}$3${4:\\$(${5:lisp-fn})}\\}$0" "${ ...  } field" nil nil nil nil nil nil)
		       ("$m" "\\${${2:n}:${4:\\$(${5:reflection-fn})}\\}$0" "${n:$(...)} mirror" nil nil nil nil nil nil)
		       ("vars" "# name : $1${2:\n# key : ${3:expand-key}}${4:\n# group : ${5:group}} \n# contributor : $6\n# --\n$0" "Snippet header" nil nil nil nil nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'text-mode
		     '(("column" "	,	${1:Name}		${2:Type}			${3:NOT NULL}\n" ", ColumnName ColumnType NOT NULL..." nil nil nil nil nil nil)
		       ("constraint" "CONSTRAINT [${1:PK_Name}] PRIMARY KEY ${2:CLUSTERED} ([${3:ColumnName}]) \n" "CONSTRAINT [..] PRIMARY KEY ..." nil nil nil nil nil nil)
		       ("constraint.1" "CONSTRAINT [${1:FK_Name}] FOREIGN KEY ${2:CLUSTERED} ([${3:ColumnName}]) \n" "CONSTRAINT [..] FOREIGN KEY ..." nil nil nil nil nil nil)
		       ("create" "CREATE TABLE [${1:dbo}].[${2:TableName}] \n(\n		${3:Id}		${4:INT IDENTITY(1,1)}		${5:NOT NULL}\n$0\n	CONSTRAINT [${6:PK_}] PRIMARY KEY ${7:CLUSTERED} ([$3]) \n)\nGO\n" "create table ..." nil nil nil nil nil nil)
		       ("create.1" "CREATE PROCEDURE [${1:dbo}].[${2:Name}] \n(\n		$3		$4		= ${5:NULL}		${6:OUTPUT}\n)\nAS\nBEGIN\n$0\nEND\nGO\n" "create procedure ..." nil nil nil nil nil nil)
		       ("references" "REFERENCES ${1:TableName}([${2:ColumnName}])\n" "REFERENCES ..." nil nil nil nil nil nil)))


;;; Do not edit! File generated at Thu Dec 11 22:24:06 2014
