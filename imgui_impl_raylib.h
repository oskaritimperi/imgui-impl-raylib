#ifndef IMGUI_IMPL_RAYLIB
#define IMGUI_IMPL_RAYLIB

#if defined(__cplusplus)
extern "C" {
#endif

IMGUI_IMPL_API bool     ImGui_ImplRaylib_Init();
IMGUI_IMPL_API void     ImGui_ImplRaylib_Shutdown();
IMGUI_IMPL_API void     ImGui_ImplRaylib_NewFrame();
IMGUI_IMPL_API bool     ImGui_ImplRaylib_ProcessEvent();

#if defined(__cplusplus)
}
#endif

#endif
