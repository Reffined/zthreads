const c = @cImport({
    @cInclude("setjmp.h");
});

const Env = struct {
    env: c.jmp_buf,

    pub fn new() Env {
        return .{ .env = .{.{}} };
    }
};
