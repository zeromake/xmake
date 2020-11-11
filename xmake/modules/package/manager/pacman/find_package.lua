--!A cross-platform build utility based on Lua
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.
--
-- Copyright (C) 2015-2020, TBOOX Open Source Group.
--
-- @author      ruki
-- @file        find_package.lua
--

-- imports
import("core.base.option")
import("lib.detect.find_tool")
import("package.manager.pkg_config.find_package", {alias = "find_package_from_pkgconfig"})

-- find package from the system directories
--
-- @param name  the package name
-- @param opt   the options, e.g. {verbose = true, version = "1.12.x")
--
function main(name, opt)

    -- init options
    opt = opt or {}

    -- find pacman
    local pacman = find_tool("pacman")
    if not pacman then
        return
    end

    -- get package files list
    local list = try { function() return os.iorunv(pacman.program, {"-Q", "-l", name}) end }
    if not list then
        return
    end

    -- parse package files list
    local pkgconfig_dir = nil
    local pkgconfig_name = nil
    local linkdirs = {}
    for _, line in ipairs(list:split('\n', {plain = true})) do
        line = line:trim():split('%s+')[2]
        if not pkgconfig_dir and line:find("/pkgconfig/", 1, true) and line:endswith(".pc") then
            pkgconfig_dir  = path.directory(line)
            pkgconfig_name = path.basename(line)
        end
        if line:endswith(".so") or line:endswith(".a") or line:endswith(".lib") then
            table.insert(linkdirs, path.directory(line))
        end
    end

    -- find package
    local result = nil
    if pkgconfig_dir then
        linkdirs = table.unique(linkdirs)
        result = find_package_from_pkgconfig(pkgconfig_name or name, {configdirs = pkgconfig_dir, linkdirs = linkdirs})
    end
    return result
end
