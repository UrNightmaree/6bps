local ok, nldecl = pcall(require, "nelua.plugins.nldecl")

if not ok and nldecl then
    error("Run using Nelua env")
end

nldecl.generate_bindings_file {
    output_file = "src/xbps-binding.nelua",
    includes = {"<XBPS.h>"},
    cflags = "-lxbps"
}
