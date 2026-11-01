.class public Lcom/bytedance/msdk/dq/p/dq/p/s;
.super Lcom/bytedance/sdk/openadsdk/mediation/dq/d/ox;


# instance fields
.field private dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/ox;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/dq/p/dq/p/s;->dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/p/s;->dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/p/s;->dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->d()V

    :cond_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/p/dq/p/s;->dq:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;->dq(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method
