project "GLAD"
    kind "StaticLib"
    language "C"

    toolset "v145"
    systemversion "latest"
    staticruntime "on"

    flags { "MultiProcessorCompile" }

    outputdir = "%{cfg.buildcfg}-%{cfg.system}-%{cfg.architecture}"

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin/int/" .. outputdir .. "/%{prj.name}")

    defines
    {
        "_CRT_SECURE_NO_WARNINGS"
    }

    files
    {
        "include/glad/glad.h",
        "include/KHR/khrplatform.h",
        "src/glad.c"
    }

    includedirs
    {
        "include"
    }
