.class Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/api/p/dq/p/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public D_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;->dq()V

    :cond_0
    return-void
.end method

.method public b_(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/d;

    iget v1, p1, Lcom/bytedance/msdk/api/dq;->dq:I

    iget-object p1, p1, Lcom/bytedance/msdk/api/dq;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/d;->dq(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/ox/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/d;

    invoke-static {p1}, Lcom/bytedance/sdk/gromore/dq/dq/ox/p;->dq(Lcom/bytedance/msdk/api/ox/dq;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/d;->dq(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public iw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;->s()V

    :cond_0
    return-void
.end method

.method public o_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;->d()V

    :cond_0
    return-void
.end method

.method public p_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;->ox()V

    :cond_0
    return-void
.end method

.method public q_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;->p()V

    :cond_0
    return-void
.end method

.method public r_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    instance-of v0, v0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq$1;->dq:Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;->dq(Lcom/bytedance/sdk/gromore/dq/dq/ox/dq;)Lcom/bytedance/sdk/openadsdk/k/dq/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/dq/d;->iw()V

    :cond_0
    return-void
.end method
