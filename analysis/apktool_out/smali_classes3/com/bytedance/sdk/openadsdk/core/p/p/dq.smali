.class public Lcom/bytedance/sdk/openadsdk/core/p/p/dq;
.super Ljava/lang/Object;


# direct methods
.method public static d(I)Lcom/bytedance/sdk/openadsdk/core/p/d/dq;
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/ox;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/p/d/ox;-><init>(I)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/p/d/s;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/p/d/s;-><init>(I)V

    return-object v0
.end method

.method public static dq(I)I
    .locals 1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
