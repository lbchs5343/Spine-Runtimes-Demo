.class public Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;
.super Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;


# instance fields
.field private ia:J

.field private iw:J

.field private kk:J

.field private mn:J

.field private p:Lcom/bytedance/sdk/openadsdk/core/r/dq;

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/dq;Z)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->p:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->p:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->p:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/dq;->d()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    :cond_0
    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s:Z

    return-void
.end method


# virtual methods
.method public d(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->iw:J

    return-void
.end method

.method public ia()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->ia:J

    return-wide v0
.end method

.method public iw()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->iw:J

    return-wide v0
.end method

.method public kk()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->kk:J

    return-wide v0
.end method

.method public mn()J
    .locals 2

    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->mn:J

    return-wide v0
.end method

.method public ox(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->mn:J

    return-void
.end method

.method public p()Lcom/bytedance/sdk/openadsdk/core/r/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->p:Lcom/bytedance/sdk/openadsdk/core/r/dq;

    return-object v0
.end method

.method public p(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->ia:J

    return-void
.end method

.method public s(J)V
    .locals 0

    iput-wide p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->kk:J

    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s:Z

    return v0
.end method
