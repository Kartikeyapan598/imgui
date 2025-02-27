project "ImGui"
	kind "StaticLib"
	language "C++"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"imconfig.h",
		"imgui.h",
		"imgui.cpp",
		"imgui_draw.cpp",
		"imgui_internal.h",
		"imgui_widgets.cpp",
		"imstb_rectpack.h",
		"imstb_textedit.h",
		"imstb_truetype.h",
		"imgui_demo.cpp",
		"imgui_tables.cpp",
		"backends/imgui_impl_dx9.cpp",
		"backends/imgui_impl_dx9.h",
		"backends/imgui_impl_dx10.cpp",
		"backends/imgui_impl_dx10.h",
		"backends/imgui_impl_dx11.cpp",
		"backends/imgui_impl_dx11.h",
		"backends/imgui_impl_dx12.cpp",
		"backends/imgui_impl_dx12.h",
		"backends/imgui_impl_win32.h",
		"backends/imgui_impl_win32.cpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"
		staticruntime "On"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"