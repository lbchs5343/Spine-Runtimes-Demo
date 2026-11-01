.class Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->kx:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->ha()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->le()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->cv()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;->wp()Z

    const/4 v0, 0x3

    return v0

    :cond_5
    :goto_0
    return v2
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$dq;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$dq;->dq(I)V

    return-void
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v0

    return-wide v0
.end method

.method public dq(F)V
    .locals 0

    return-void
.end method

.method public dq(FFFFI)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(FFFFI)V

    return-void
.end method

.method public dq(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;->mn(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$dq;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$dq;->d()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->u()V

    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;->mn(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->ir()V

    :cond_3
    :goto_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 0

    return-void
.end method

.method public getActualPlayDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public ia()V
    .locals 0

    return-void
.end method

.method public iw()V
    .locals 0

    return-void
.end method

.method public kk()V
    .locals 0

    return-void
.end method

.method public mn()V
    .locals 0

    return-void
.end method

.method public no()V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method

.method public ox()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->e:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/p;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->no()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/ox$dq;->dq()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/s;)Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/draw/d;->d(Z)V

    return-void
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 0

    return-void
.end method
