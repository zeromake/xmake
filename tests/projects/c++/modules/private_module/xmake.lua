add_rules("mode.release", "mode.debug")
set_languages("c++20")

target("private_module")
    add_rules("c++")
    set_kind("$(kind)")
    add_files("src/*.mpp")
    add_files("src/*.cpp")
