.class Lcom/bytedance/sdk/openadsdk/core/gh/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/dq/iw;


# instance fields
.field dq:Lcom/bytedance/sdk/component/kk/d/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/kk/d/s;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o;->dq:Lcom/bytedance/sdk/component/kk/d/s;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o;->dq:Lcom/bytedance/sdk/component/kk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/s;->ox(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq()Lcom/bytedance/sdk/component/ia/dq/dq/s;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o;->dq:Lcom/bytedance/sdk/component/kk/d/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/d/s;->dq()Lcom/bytedance/sdk/component/kk/d;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/gh/kk;-><init>(Lcom/bytedance/sdk/component/kk/d;)V

    return-object v1
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/dq/ox;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o;->dq:Lcom/bytedance/sdk/component/kk/d/s;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/gh/o$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/gh/o$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/gh/o;Lcom/bytedance/sdk/component/ia/dq/dq/ox;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o;->dq:Lcom/bytedance/sdk/component/kk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o;->dq:Lcom/bytedance/sdk/component/kk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;[B)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/o;->dq:Lcom/bytedance/sdk/component/kk/d/s;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/kk/d/s;->dq(Ljava/lang/String;[B)V

    :cond_0
    return-void
.end method
