import("core.base.list")

function test_push(t)
    local d = list.new()
    d:push({v = 1})
    d:push({v = 2})
    d:push({v = 3})
    d:push({v = 4})
    d:push({v = 5})
    t:are_equal(d:first().v, 1)
    t:are_equal(d:last().v, 5)
    local idx = 1
    for item in d:items() do
        t:are_equal(item.v, idx)
        idx = idx + 1
    end
end

function test_insert(t)
    local d = list.new()
    local v3 = {v = 3}
    d:insert({v = 1})
    d:insert({v = 2})
    d:insert(v3)
    d:insert({v = 5})
    d:insert({v = 4}, v3)
    t:are_equal(d:first().v, 1)
    t:are_equal(d:last().v, 5)
    local idx = 1
    for item in d:items() do
        t:are_equal(item.v, idx)
        idx = idx + 1
    end
end

function test_remove(t)
    local d = list.new()
    local v3 = {v = 3}
    d:insert({v = 1})
    d:insert({v = 2})
    d:insert(v3)
    d:insert({v = 3})
    d:insert({v = 4})
    d:insert({v = 5})
    d:remove(v3)
    t:are_equal(d:first().v, 1)
    t:are_equal(d:last().v, 5)
    local idx = 1
    for item in d:items() do
        t:are_equal(item.v, idx)
        idx = idx + 1
    end
end

function test_remove_first(t)
    local d = list.new()
    d:push({v = 1})
    d:push({v = 2})
    d:push({v = 3})
    d:push({v = 4})
    d:push({v = 5})
    d:remove_first()
    t:are_equal(d:first().v, 2)
    t:are_equal(d:last().v, 5)
    local idx = 2
    for item in d:items() do
        t:are_equal(item.v, idx)
        idx = idx + 1
    end
end

function test_remove_last(t)
    local d = list.new()
    d:push({v = 1})
    d:push({v = 2})
    d:push({v = 3})
    d:push({v = 4})
    d:push({v = 5})
    d:remove_last()
    t:are_equal(d:first().v, 1)
    t:are_equal(d:last().v, 4)
    local idx = 1
    for item in d:items() do
        t:are_equal(item.v, idx)
        idx = idx + 1
    end
end

function test_for_remove(t)
    local d = list.new()
    d:push({v = 1})
    d:push({v = 2})
    d:push({v = 3})
    d:push({v = 4})
    d:push({v = 5})
    t:are_equal(d:first().v, 1)
    t:are_equal(d:last().v, 5)
    local idx = 1
    local item = d:first()
    while item ~= nil do
        local next = d:next(item)
        t:are_equal(item.v, idx)
        d:remove(item)
        item = next
        idx = idx + 1
    end
    t:require(d:empty())
end

function test_rfor_remove(t)
    local d = list.new()
    d:push({v = 1})
    d:push({v = 2})
    d:push({v = 3})
    d:push({v = 4})
    d:push({v = 5})
    t:are_equal(d:first().v, 1)
    t:are_equal(d:last().v, 5)
    local idx = 5
    local item = d:last()
    while item ~= nil do
        local prev = d:prev(item)
        t:are_equal(item.v, idx)
        d:remove(item)
        item = prev
        idx = idx - 1
    end
    t:require(d:empty())
end

function test_insert_first(t)
    local d = list.new()
    d:push({v = 2})
    d:push({v = 3})
    d:push({v = 4})
    d:push({v = 5})
    d:insert_first({v = 1})
    t:are_equal(d:first().v, 1)
    t:are_equal(d:last().v, 5)
    local idx = 1
    for item in d:items() do
        t:are_equal(item.v, idx)
        idx = idx + 1
    end
end

function test_insert_last(t)
    local d = list.new()
    d:push({v = 1})
    d:push({v = 2})
    d:push({v = 3})
    d:push({v = 4})
    d:insert_last({v = 5})
    t:are_equal(d:first().v, 1)
    t:are_equal(d:last().v, 5)
    local idx = 1
    for item in d:items() do
        t:are_equal(item.v, idx)
        idx = idx + 1
    end
end

