import Statistics, Distributions

function test(size)
    d = Distributions.Normal(0, 1)
    arr = rand(d, (size, size))
    @time begin
        m = Statistics.mean(arr)
        diff = arr .- m
        squared = diff.^2
        result = Statistics.mean(squared)
    end
end