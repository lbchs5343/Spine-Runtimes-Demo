.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->o:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/s;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x5

    return v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->p()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ox()Z

    const/4 v0, 0x3

    return v0
.end method

.method public d(I)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/uh;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->p(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(IZ)V

    return-void
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->iw(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->op:Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/s/ox;->dq()J

    move-result-wide v0

    return-wide v0
.end method

.method public dq(F)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->ox(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->uh()Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->dq(F)V

    return-void
.end method

.method public dq(FFFFI)V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(FFFFI)V

    return-void
.end method

.method public dq(I)V
    .locals 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->mn()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ji()V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->h()V

    return-void

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->d()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->ox()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->vf()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->d(JZ)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->mp:Z

    if-eq v1, p1, :cond_0

    iput-boolean p1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->mp:Z

    iget-object p1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->d()V

    :cond_0
    return-void
.end method

.method public getActualPlayDuration()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->r:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/iw;->u()Lcom/bytedance/sdk/openadsdk/core/video/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/dq;->by()J

    move-result-wide v0

    return-wide v0
.end method

.method public ia()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ha()V

    return-void
.end method

.method public iw()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v2, "stats_reward_full_click_express_close"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->dq()V

    return-void
.end method

.method public kk()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/d/s;->ox()V

    return-void
.end method

.method public mn()V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->dq()Lcom/bytedance/sdk/openadsdk/core/gh/ig;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const-string v2, "stats_reward_full_click_express_close"

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/gh/ig;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->finish()V

    return-void
.end method

.method public no()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->kk(I)V

    return-void
.end method

.method public o()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->ia(I)V

    return-void
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->e()I

    move-result v0

    return v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->h:Z

    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->h:Z

    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->f(I)V

    return-void
.end method
