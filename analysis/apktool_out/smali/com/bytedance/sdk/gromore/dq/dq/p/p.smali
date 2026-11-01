.class public Lcom/bytedance/sdk/gromore/dq/dq/p/p;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/s;


# instance fields
.field private dq:Lcom/bytedance/msdk/api/p/dq/mn/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/mn/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/p;->dq:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/p;->dq:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->er()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/p;->dq:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->wn()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/p;->dq:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->ce()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/p;->dq:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->wn()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/p/p;->dq:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->c()V

    :cond_1
    return-void
.end method
