# Example Makefile. Download raylib 2.5.0 binary release and
# imgui release 1.73 to use this. You will also need to have
# glad.h from raylib repository available in glad/glad.h as
# that is included from imgui_impl_opengl3.cpp.

SOURCES = \
	imgui-1.73/imgui.cpp \
	imgui-1.73/imgui_demo.cpp \
	imgui-1.73/imgui_draw.cpp \
	imgui-1.73/imgui_widgets.cpp \
	imgui-1.73/examples/imgui_impl_opengl3.cpp \
	imgui_impl_raylib.cpp

OBJECTS = $(SOURCES:.cpp=.o)

CPPFLAGS += -Iraylib-2.5.0-Linux-amd64/include -Iimgui-1.73 -Iimgui-1.73/examples -I.

CXXFLAGS += -g -DDEBUG -DIMGUI_IMPL_OPENGL_LOADER_GLAD

LDLIBS += -lraylib

LDFLAGS += -Lraylib-2.5.0-Linux-amd64/lib

example: example.o $(OBJECTS)
	$(LINK.cpp) $^ $(LDLIBS) -o $@

clean:
	rm -f $(OBJECTS) example.o
