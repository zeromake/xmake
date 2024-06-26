-- add target
target("pdcurses")

    -- enable this target
    if not has_config("pdcurses") then
        set_default(false)
    end

    -- make as a static library
    set_kind("static")

    -- add includes directory
    add_includedirs("pdcurses", {public = true})

    -- add the common source files
    add_files("pdcurses/pdcurses/*.c", "pdcurses/wincon/*.c")

    -- add definitions
    add_defines("PDC_WIDE")

    -- set languages
    set_languages("c89")

    -- unset warnings
    set_warnings("none")
