.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;
.super Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    const-string v1, "popup_cancel"

    const/4 v2, 0x0

    const-string v3, "reward_endcard"

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->ox()V

    return-void
.end method

.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d;->p()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->o(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    const-string v1, "reward_again"

    const-string v2, "popup"

    const-string v3, "reward_endcard"

    invoke-static {v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
