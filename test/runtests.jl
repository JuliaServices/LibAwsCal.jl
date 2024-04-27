using Test, Aqua, LibAwsCal, LibAwsCommon

@testset "LibAwsCal" begin
    @testset "aqua" begin
        Aqua.test_all(LibAwsCal, ambiguities=false)
        Aqua.test_ambiguities(LibAwsCal)
    end
    @testset "basic usage to test the library loads" begin
        alloc = aws_default_allocator() # important! this shouldn't need to be qualified! if we generate a definition for it in LibAwsCal that is a bug.
        aws_cal_library_init(alloc)
    end
end
