.class public Lcom/bytedance/sdk/openadsdk/core/dislike/dq;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;

.field private static dq:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;


# direct methods
.method public static dq()V
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq$1;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq$1;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq$2;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq$2;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    :cond_1
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/dislike/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;

    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/dislike/dq;->d:Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/dislike/dq/ox;Lcom/bytedance/sdk/openadsdk/core/dislike/dq/p;)V

    return-void
.end method
