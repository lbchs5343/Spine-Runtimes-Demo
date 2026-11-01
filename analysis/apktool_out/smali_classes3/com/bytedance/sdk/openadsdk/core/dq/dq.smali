.class public Lcom/bytedance/sdk/openadsdk/core/dq/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/h$d;


# instance fields
.field private d:I

.field private dq:Lcom/bytedance/sdk/openadsdk/core/h$d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/h$d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/h$d;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/dq/dq;)Lcom/bytedance/sdk/openadsdk/core/h$d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/h$d;

    return-object p0
.end method


# virtual methods
.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq;->d:I

    return-void
.end method

.method public dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/h$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(ILjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V
    .locals 3

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq;->d:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->op()I

    move-result v1

    and-int/2addr v1, v2

    if-eq v1, v2, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/h$d;

    if-eqz v0, :cond_5

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/h$d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    return-void

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/h$d;

    if-eqz v1, :cond_5

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/dq/dq$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/dq/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/dq;Lcom/bytedance/sdk/openadsdk/core/r/d;)V

    if-eqz v0, :cond_4

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/mn;->d(Ljava/lang/Runnable;)V

    :cond_5
    return-void
.end method
