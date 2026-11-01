.class Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ir/dq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->cd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$6;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dq()V
    .locals 0

    return-void
.end method
