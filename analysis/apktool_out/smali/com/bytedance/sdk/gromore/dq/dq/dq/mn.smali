.class public Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;
.super Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/dq;


# instance fields
.field private dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/api/p/dq/dq/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    return-void
.end method


# virtual methods
.method public d(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->d(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->d(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/ox;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/dq/s;

    invoke-direct {v2, p1, v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/dq/s;-><init>(Landroid/app/Activity;Ljava/util/Map;Lcom/bytedance/msdk/api/p/dq/dq/ox;)V

    return-object v2

    :cond_0
    return-object v0
.end method

.method public dq(Landroid/app/Activity;Ljava/util/Map;)Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/ox;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/ox;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/dq/s;

    invoke-direct {v1, p1, p2, v0}, Lcom/bytedance/sdk/gromore/dq/dq/dq/s;-><init>(Landroid/app/Activity;Ljava/util/Map;Lcom/bytedance/msdk/api/p/dq/dq/ox;)V

    return-object v1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-static {p6}, Lcom/bytedance/msdk/api/p/dq/mn/no;->dq(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;)Lcom/bytedance/msdk/api/p/dq/mn/no;

    move-result-object v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v6}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public ia()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->mn()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public ig()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->no()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->s()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public kk()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->ia()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public mn()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->iw()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mp()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->ig()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public no()Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/p;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->o()Lcom/bytedance/msdk/api/p/dq/mn/d;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/dq/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->o()Lcom/bytedance/msdk/api/p/dq/mn/d;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/dq/iw;-><init>(Lcom/bytedance/msdk/api/p/dq/mn/d;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->kk()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->ox()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/dq/mn;->dq:Lcom/bytedance/msdk/api/p/dq/dq/ox;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/dq/ox;->p()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
