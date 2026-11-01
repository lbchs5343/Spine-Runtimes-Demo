.class Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;
.super Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->d()I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->d(I)V

    return-void
.end method

.method public d(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V
    .locals 5

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    if-ne p2, v0, :cond_1

    :cond_0
    instance-of v2, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;

    if-eqz v2, :cond_1

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/r/k;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    iget v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(F)V

    iget v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->d:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(F)V

    iget v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->ox:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->p:F

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    iget-wide v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->s:J

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(J)V

    iget-wide v3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->iw:J

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(J)V

    iget-boolean p3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->jy:Z

    invoke-virtual {v2, p3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-ne p2, v0, :cond_2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->gx:Lcom/bytedance/sdk/openadsdk/core/d/mn;

    invoke-virtual {p3, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/mn;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_2
    if-ne p2, v1, :cond_3

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->gx:Lcom/bytedance/sdk/openadsdk/core/d/mn;

    invoke-virtual {p2, p1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/mn;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_3
    return-void
.end method

.method public dq()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->dq()J

    move-result-wide v0

    return-wide v0
.end method

.method public dq(F)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->dq(F)V

    return-void
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->dq(I)V

    return-void
.end method

.method public dq(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->dq(ILjava/lang/String;)V

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->dq(I)V

    return-void
.end method

.method public dq(Landroid/view/View;ILcom/bytedance/sdk/component/adexpress/ox;)V
    .locals 2

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->gx:Lcom/bytedance/sdk/openadsdk/core/d/mn;

    if-eqz p2, :cond_1

    instance-of p2, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;

    if-eqz p2, :cond_0

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/r/k;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {p2}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    iget v0, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq:F

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(F)V

    iget v0, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->d:F

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(F)V

    iget v0, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->ox:F

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->ox(F)V

    iget v0, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->p:F

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;->p(F)V

    iget-wide v0, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->s:J

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(J)V

    iget-wide v0, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->iw:J

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->d(J)V

    iget-boolean p3, p3, Lcom/bytedance/sdk/openadsdk/core/r/k;->jy:Z

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->dq(Z)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->gx:Lcom/bytedance/sdk/openadsdk/core/d/mn;

    invoke-virtual {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/mn;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    :cond_1
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method public getActualPlayDuration()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->getActualPlayDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->ox()I

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->p()V

    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->s()V

    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity$12;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;->er:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/dq;->t()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;->setPauseFromExpressView(Z)V

    return-void
.end method
