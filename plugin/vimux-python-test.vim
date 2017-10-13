command! RunPytest :call _run_pytest("")
command! RunPytestBuffer :call RunPytestBuffer()
command! RunPytestFocused :call RunPytestFocused()

function! RunPytestBuffer()
  call _run_pytest(expand("%"))
endfunction

function! RunPytestFocused()
  let test_name = _pytest_search("def test_")
  if test_name == ""
    echoerr "Couldn't find test name to run focused test."
    return
  endif

  call _run_pytest(expand("%") . " -k " . test_name)
endfunction

function! _pytest_search(fragment)
  let line_num = search(a:fragment, "bs")
  if line_num > 0
    ''
    return split(split(getline(line_num), " ")[1], "(")[0]
  else
    return ""
  endif
endfunction

function! _run_pytest(test)
  call VimuxRunCommand("pytest " . a:test)
endfunction
