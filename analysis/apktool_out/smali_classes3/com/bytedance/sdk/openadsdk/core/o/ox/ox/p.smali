.class public Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/p;
.super Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public ox()Z
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->ox:I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/r;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
