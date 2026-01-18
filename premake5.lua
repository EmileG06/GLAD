project "GLAD"
    kind "StaticLib"
    language "C"

    toolset "v145"
    systemversion "latest"
    staticruntime "on"

    flags { "MultiProcessorCompile" }

    targetdir ("bin/" .. outputdir .. "/%{prj.name}")
    objdir ("bin/" .. outputdir .. "/%{prj.name}/int")

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

    filter "configurations:Debug"
        runtime "Debug"
        symbols "on"

    filter "configurations:Release"
        runtime "Release"
        optimize "on"
