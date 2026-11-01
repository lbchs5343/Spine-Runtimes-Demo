.class public Lcom/bytedance/msdk/api/p/dq/d/ox;
.super Lcom/bytedance/msdk/d/s;


# instance fields
.field private cd:Lcom/bytedance/msdk/api/p/dq/d/ia/s;

.field private d:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

.field private dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

.field private f:Lcom/bytedance/msdk/api/p/dq/d/ia/iw;

.field private fw:Lcom/bytedance/msdk/api/p/dq/d/ia/o;

.field private gh:Lcom/bytedance/msdk/api/p/dq/d/ia/ia;

.field private jy:Lcom/bytedance/msdk/api/p/dq/d/ia/no;

.field private ox:Lcom/bytedance/msdk/api/p/dq/d/ia/mn;

.field private p:Lcom/bytedance/msdk/api/p/jy;

.field private q:Lcom/bytedance/msdk/api/p/dq/d/ia/kk;

.field private s:Lcom/bytedance/msdk/api/p/dq/d/ia/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    return-void
.end method


# virtual methods
.method public c()Lcom/bytedance/msdk/api/p/dq/ox/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    return-object v0
.end method

.method public cd()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->gh:Lcom/bytedance/msdk/api/p/dq/d/ia/ia;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/ia;->dq()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public ce()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->ce()V

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->jy:Lcom/bytedance/msdk/api/p/dq/d/ia/no;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/no;->dq()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->d()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0, p1}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v2

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v1, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(ZDILjava/util/Map;)V

    :cond_0
    iget-object v6, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->p:Lcom/bytedance/msdk/api/p/jy;

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v8

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v7, 0x1

    invoke-interface/range {v6 .. v11}, Lcom/bytedance/msdk/api/p/jy;->dq(ZDILjava/util/Map;)V

    :cond_1
    return-void
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->ox:Lcom/bytedance/msdk/api/p/dq/d/ia/mn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/d/ia/mn;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V
    .locals 0
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
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    iget-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->s:Lcom/bytedance/msdk/api/p/dq/d/ia/p;

    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p7}, Lcom/bytedance/msdk/api/p/dq/d/ia/p;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/TTAdConstant$RitScenes;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz p2, :cond_0

    instance-of p3, p2, Lcom/bytedance/msdk/api/p/dq/d/d/ox;

    if-eqz p3, :cond_0

    check-cast p2, Lcom/bytedance/msdk/api/p/dq/d/d/ox;

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/api/p/dq/d/d/ox;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 0

    iput-object p2, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->d:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/msdk/api/p/dq/d/o/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/d/o/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/api/p/dq/d/o/d;->d(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/ia/ia;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->gh:Lcom/bytedance/msdk/api/p/dq/d/ia/ia;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/ia/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->f:Lcom/bytedance/msdk/api/p/dq/d/ia/iw;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/ia/kk;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->q:Lcom/bytedance/msdk/api/p/dq/d/ia/kk;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/ia/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->ox:Lcom/bytedance/msdk/api/p/dq/d/ia/mn;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/ia/no;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->jy:Lcom/bytedance/msdk/api/p/dq/d/ia/no;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/ia/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->fw:Lcom/bytedance/msdk/api/p/dq/d/ia/o;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/ia/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->s:Lcom/bytedance/msdk/api/p/dq/d/ia/p;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/dq/d/ia/s;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->cd:Lcom/bytedance/msdk/api/p/dq/d/ia/s;

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/api/p/jy;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->p:Lcom/bytedance/msdk/api/p/jy;

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;->OTHER:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;->getLossReason()I

    move-result v0

    :try_start_0
    const-string v1, "bidding_lose_reason"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;

    if-eqz v1, :cond_1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$BiddingLossReason;->getLossReason()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_1
    :goto_0
    move v5, v0

    iget-object v1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz v1, :cond_2

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->dq(ZDILjava/util/Map;)V

    :cond_2
    iget-object v1, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->p:Lcom/bytedance/msdk/api/p/jy;

    if-eqz v1, :cond_3

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const/4 v6, 0x0

    const/4 v2, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/msdk/api/p/jy;->dq(ZDILjava/util/Map;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public er()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->er()V

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->jy:Lcom/bytedance/msdk/api/p/dq/d/ia/no;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/no;->d()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->ox()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public fw()V
    .locals 0

    return-void
.end method

.method public gh()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->cd:Lcom/bytedance/msdk/api/p/dq/d/ia/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/s;->ox()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->gh()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public ig()Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/bytedance/msdk/api/p/dq/d/dq/d;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/bytedance/msdk/api/p/dq/d/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/dq/d;->iw()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->q:Lcom/bytedance/msdk/api/p/dq/d/ia/kk;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/kk;->d()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public ir()Lcom/bytedance/msdk/api/p/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object v0
.end method

.method public jy()V
    .locals 0

    return-void
.end method

.method public final kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->fw:Lcom/bytedance/msdk/api/p/dq/d/ia/o;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/o;->dq()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->mp()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0
.end method

.method public mp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->cd:Lcom/bytedance/msdk/api/p/dq/d/ia/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/s;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object v0
.end method

.method public no()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->q:Lcom/bytedance/msdk/api/p/dq/d/ia/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/kk;->dq()V

    :cond_0
    return-void
.end method

.method public o()Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->f:Lcom/bytedance/msdk/api/p/dq/d/ia/iw;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/iw;->dq()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->o()Z

    move-result v0

    return v0
.end method

.method public op()Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object v0
.end method

.method public p()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->p()V

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->jy:Lcom/bytedance/msdk/api/p/dq/d/ia/no;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/no;->ox()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->dq:Lcom/bytedance/msdk/api/p/dq/d/d/d;

    if-eqz v0, :cond_1

    :try_start_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/d/d;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public q()Lcom/bytedance/msdk/api/p/dq/mn/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->cd:Lcom/bytedance/msdk/api/p/dq/d/ia/s;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/d/ia/s;->d()Lcom/bytedance/msdk/api/p/dq/mn/iw;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public u()Lcom/bytedance/msdk/dq/d/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object v0
.end method

.method public wn()Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/api/p/dq/d/ox;->d:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    return-object v0
.end method
