.class public Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;
.super Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public ox()Z
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->ox:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/r;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->p()Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
