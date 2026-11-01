.class Lcom/bytedance/sdk/openadsdk/core/k$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/k;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/k;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/k;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->mn(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/component/utils/i;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->mn(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/component/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/utils/i;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPause error:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShakeUtils"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->o(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->no(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->ia(Lcom/bytedance/sdk/openadsdk/core/k;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/k;->ox(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/k;->p(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(JLcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/k;J)J

    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->kk(Lcom/bytedance/sdk/openadsdk/core/k;)V

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->kk(Lcom/bytedance/sdk/openadsdk/core/k;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/k;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->ig(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/Map;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->o(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->no(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->ox(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/k;->p(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/k;->mp(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v0, v2, p1, v3}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->p()V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->q(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->jy(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/k;->d(Lcom/bytedance/sdk/openadsdk/core/k;J)J

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->f(Lcom/bytedance/sdk/openadsdk/core/k;)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->fw(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->fw(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;->p()V

    :cond_3
    return-void
.end method

.method public dq(Z)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->ia(Lcom/bytedance/sdk/openadsdk/core/k;)J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/k;->ox(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/k;->p(Lcom/bytedance/sdk/openadsdk/core/k;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v2, p1, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(JZLcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/core/k;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/k;->mn(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/component/utils/i;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->mn(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/component/utils/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/utils/i;->dq()Z

    return-void

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->mn(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/component/utils/i;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/k$3;->d:Lcom/bytedance/sdk/openadsdk/core/k;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/k;->mn(Lcom/bytedance/sdk/openadsdk/core/k;)Lcom/bytedance/sdk/component/utils/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/utils/i;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onPause error:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ShakeUtils"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
