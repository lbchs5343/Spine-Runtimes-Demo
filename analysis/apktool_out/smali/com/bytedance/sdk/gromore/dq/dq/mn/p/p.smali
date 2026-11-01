.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/jy;


# instance fields
.field private d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

.field private dq:Lcom/bytedance/msdk/ox/p/kk;

.field private iw:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

.field private mn:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;

.field private ox:Landroid/view/View;

.field private p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

.field private s:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/kk;Lcom/bytedance/msdk/api/p/dq/mn/dq;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->dq:Lcom/bytedance/msdk/ox/p/kk;

    iput-object p3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->mn:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->o()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;)Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;)Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->s:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    return-object p0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->dq(Lcom/bytedance/msdk/api/p/dq/mn/ox;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p$2;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->dq(Lcom/bytedance/msdk/api/p/dq/mn/kk;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p$3;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->dq(Lcom/bytedance/msdk/api/p/dq/d;)V

    :cond_0
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;)Lcom/bytedance/sdk/openadsdk/f/d/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->iw:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->ir()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->ig()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->ox:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->ox:Landroid/view/View;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/d/ox;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->s:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->s:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->iw:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/Double;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Z)V

    :cond_0
    return-void
.end method

.method public ia()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->h()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->gx()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/gromore/dq/d/d;->dq(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/d/ox;->kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/o;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->dq:Lcom/bytedance/msdk/ox/p/kk;

    iget-object v3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/ox;-><init>(Lcom/bytedance/msdk/ox/p/kk;Lcom/bytedance/msdk/api/p/dq/mn/dq;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/p/o;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/p/gh;)V

    return-object v0
.end method

.method public mn()V
    .locals 0

    return-void
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->kx()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public p()V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->ir()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->op()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->mn:Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;

    const-string v1, "TTMediationSDK"

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v2, Lcom/bytedance/sdk/gromore/dq/dq/p/kk;

    iget-object v3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    invoke-direct {v2, v3}, Lcom/bytedance/sdk/gromore/dq/dq/p/kk;-><init>(Lcom/bytedance/msdk/api/p/dq/mn/dq;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/d/dq;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->ox:Landroid/view/View;

    if-nez v0, :cond_1

    const-string v0, "--==-- \u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\u8f6c\u6a21\u677f\uff0cgetMediationBannerViewFromNativeAd()\u8fd4\u56denull\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->s:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    if-eqz v0, :cond_3

    const-string v2, "\u6e32\u67d3\u5931\u8d25"

    const v3, -0x1869f

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v2, v3}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;->dq(Landroid/view/View;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->s:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v3}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;->dq(Landroid/view/View;FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    const-string v2, "--==-- \u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\u8f6c\u6a21\u677f\uff0cgetMediationBannerViewFromNativeAd()\u53d1\u751f\u5f02\u5e38\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a\uff0c\u4fe1\u606f\u5982\u4e0b\uff1a"

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :cond_2
    const-string v0, "--==-- \u81ea\u6e32\u67d3\u4fe1\u606f\u6d41\u8f6c\u6a21\u677f\uff0c\u5f00\u53d1\u8005\u672a\u63d0\u4f9bMediationNativeToBannerListener\uff0c\u5c06\u65e0\u6cd5\u5c55\u793a\u8be5\u5e7f\u544a"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public s()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/p/p;->d:Lcom/bytedance/msdk/api/p/dq/mn/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/mn/dq;->vf()V

    :cond_0
    return-void
.end method
