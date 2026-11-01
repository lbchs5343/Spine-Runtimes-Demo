.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/video/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->kk:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->mn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->vf()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->k()V

    return-void
.end method

.method public dq(JJ)V
    .locals 0

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->d(J)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->r()V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ir:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/xz;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)V

    const/4 v0, 0x1

    return v0
.end method

.method public ia()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)V

    return-void
.end method

.method public iw()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->le:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/p;->o()Z

    move-result v0

    return v0
.end method

.method public kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->vf()V

    return-void
.end method

.method public mn()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const-string v0, "refer"

    const-string v1, "in_video"

    invoke-static {v0, v1}, Lg/tn;->p(Ljava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method public no()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ig()V

    :cond_0
    return-void
.end method

.method public ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ir()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->mp()V

    return-void
.end method

.method public p()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public s()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/kk;->ir:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    return-wide v0
.end method
