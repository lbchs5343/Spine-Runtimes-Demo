.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->cd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private volatile d:Z

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->d:Z

    return-void
.end method

.method private ox()V
    .locals 4

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->s(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ce()I

    move-result v3

    if-eq v3, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_1
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->d:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4$1;

    const-string v1, "splash_register_download"

    invoke-direct {v0, p0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Lcom/bytedance/sdk/component/o/kk;)V

    :catch_0
    :cond_2
    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    return-void
.end method

.method public dq()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->ox()V

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->ox()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/component/splash/dq/dq;->p()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Z)V

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q:J

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mn:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$d;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$d;->P_()V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v2, :cond_2

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->jy:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->iw(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->kk(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "cache_type"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    iget v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "splash_show_time_type"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v4, v3, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->fw:Ljava/util/Map;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v2, v1, v4, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->p()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->s(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mn(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)Z

    move-result v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    if-eqz v2, :cond_3

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->cd:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ji:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    if-eqz v1, :cond_5

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setIsShowSuccess(Z)V

    :cond_5
    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Z)V

    :cond_6
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$4;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    :cond_0
    return-void
.end method
