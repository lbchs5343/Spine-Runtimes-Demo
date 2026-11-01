.class public Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

.field private static volatile dq:Z

.field private static ox:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;


# direct methods
.method public static d()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;

    return-object v0
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;)V
    .locals 1

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->dq:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->dq:Z

    sput-object p0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    sput-object p1, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;

    :cond_0
    return-void
.end method
