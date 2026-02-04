import Testing
@testable import foliate_spm

@Test func example() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let loader = FileLoader()
    loader.loadReaderHTML()
    loader.loadTreeJS()
}
