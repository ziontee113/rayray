const std = @import("std");
const raylib = @import("raylib");

pub fn main() !void {
    raylib.SetConfigFlags(raylib.ConfigFlags{ .FLAG_WINDOW_RESIZABLE = false, .FLAG_WINDOW_TRANSPARENT = true });
    raylib.InitWindow(800, 800, "hello world!");
    raylib.SetTextureFilter(raylib.GetFontDefault().texture, @intFromEnum(raylib.TextureFilter.TEXTURE_FILTER_BILINEAR));
    raylib.SetTargetFPS(60);

    defer raylib.CloseWindow();

    while (!raylib.WindowShouldClose()) {
        raylib.BeginDrawing();
        defer raylib.EndDrawing();

        raylib.ClearBackground(raylib.BLANK);
        raylib.DrawFPS(10, 10);

        raylib.DrawText("FEARLESS", 0, 100, 10, raylib.YELLOW);
        raylib.DrawText("FEARLESS", 200, 100, 12, raylib.YELLOW);
        raylib.DrawText("FEARLESS", 0, 200, 14, raylib.YELLOW);
        raylib.DrawText("FEARLESS", 200, 200, 16, raylib.YELLOW);
        raylib.DrawText("FEARLESS", 0, 300, 18, raylib.YELLOW);
        raylib.DrawText("FEARLESS", 200, 300, 20, raylib.YELLOW);
    }
}
