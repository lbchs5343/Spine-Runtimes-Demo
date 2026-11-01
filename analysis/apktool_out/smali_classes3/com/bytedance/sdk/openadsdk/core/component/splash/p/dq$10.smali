.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getCountDownView()Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/countdown/d;->getView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kk(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-wide v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q:J

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(JLcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->o:Z

    const/4 v3, 0x2

    invoke-virtual {v1, v0, v3}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Z)V

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$10;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q()V

    return-void
.end method
