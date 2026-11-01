.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->p(I)V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->ia:Lcom/bytedance/sdk/openadsdk/core/c;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/c;->kk(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/d$d;->d()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ox(I)V

    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/l;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    const/4 p2, 0x0

    iput-boolean p2, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->f:Z

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->fw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;)V

    :cond_0
    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->no(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox$5;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(I)V

    :cond_0
    return-void
.end method
