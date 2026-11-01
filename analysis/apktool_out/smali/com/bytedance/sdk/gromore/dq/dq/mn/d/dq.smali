.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;
.super Lcom/bytedance/sdk/openadsdk/mediation/dq/d/mn;


# instance fields
.field private d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

.field private dq:Lcom/bytedance/msdk/ox/p/mn;

.field private iw:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

.field private ox:Landroid/view/View;

.field private p:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;

.field private s:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/mn;Lcom/bytedance/msdk/api/p/dq/ox/dq;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/mediation/dq/d/mn;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->dq:Lcom/bytedance/msdk/ox/p/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->kx()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->ox:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->p:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->s:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    new-instance p1, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq$3;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq$3;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;)V

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->dq(Lcom/bytedance/msdk/api/p/dq/ox/d;)V

    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "\u5f53\u524d\u5e7f\u544a\u4e3a\u6a21\u7248\u5e7f\u544a\uff0c\u4e0d\u80fd\u4f7f\u7528\u81ea\u6e32\u67d3\u63a5\u53e3\u8fdb\u884c\u6e32\u67d3\uff0c\u8bf7\u4f7f\u7528render\u8fdb\u884c\u6e32\u67d3"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private ji()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->u()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "\u5f53\u524d\u5e7f\u544a\u4e3a\u81ea\u6e32\u67d3\u5e7f\u544a\uff0c\u4e0d\u80fd\u4f7f\u7528\u6a21\u7248\u63a5\u53e3\u8fdb\u884c\u6e32\u67d3\uff0c\u8bf7\u4f7f\u7528registerViewForInteraction\u8fdb\u884c\u6e32\u67d3"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private kx()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->dq(Lcom/bytedance/msdk/api/p/dq/ox/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq$2;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;)V

    invoke-interface {v0, v1}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->dq(Lcom/bytedance/msdk/api/p/dq/mn/kk;)V

    :cond_0
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;)Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->s:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;)Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->iw:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    return-object p0
.end method


# virtual methods
.method public cd()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/d/ox;->kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/d/d;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/d/d;-><init>(Lcom/bytedance/msdk/api/p/dq/ox/dq;)V

    return-object v0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/d/ox;->r()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;)V
    .locals 1
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
            "Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;",
            "Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->h()V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-direct {p0, p6}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-static {p7}, Lcom/bytedance/msdk/api/p/dq/mn/no;->dq(Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;)Lcom/bytedance/msdk/api/p/dq/mn/no;

    move-result-object p7

    invoke-interface/range {p1 .. p7}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/d/ox;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/graphics/Bitmap;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/msdk/d/d;->dq(Landroid/graphics/Bitmap;I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
    .locals 8

    new-instance v3, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v7, p3

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;",
            ")V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v7, p4

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;",
            ")V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->h()V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-direct {p0, p7}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    move-object p7, p6

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p2

    move-object p2, p1

    iget-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-interface/range {p1 .. p7}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/d;->dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->iw:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/d;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->p:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/ox;

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

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/msdk/d/ox;->dq(Z)V

    :cond_0
    return-void
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;
    .locals 4

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/o;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->dq:Lcom/bytedance/msdk/ox/p/mn;

    iget-object v3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-direct {v1, v2, v3}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/d;-><init>(Lcom/bytedance/msdk/ox/p/mn;Lcom/bytedance/msdk/api/p/dq/ox/dq;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/p/o;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/p/gh;)V

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->h()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public fw()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->kx()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public gh()Lcom/bytedance/sdk/openadsdk/f/d/d/ox;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/d/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/d/dq;-><init>(Lcom/bytedance/msdk/api/p/dq/ox/dq;)V

    return-object v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->mp()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->ox:Landroid/view/View;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->q()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public ia()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->iw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public ig()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->p()Lcom/bytedance/msdk/d/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->p()Lcom/bytedance/msdk/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->en()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iw()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/d/ox;->le()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public jy()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/f/d/d/mp;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->f()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    iget-object v3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->ia()Ljava/lang/String;

    move-result-object v2

    :cond_1
    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;

    invoke-direct {v3, v2}, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;

    iget-object v3, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->o()I

    move-result v3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    iget-object v5, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v5, :cond_4

    invoke-interface {v5}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->no()I

    move-result v4

    :cond_4
    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    return-object v0
.end method

.method public k()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->ji()V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->ir()V

    :cond_0
    return-void
.end method

.method public kk()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->ig()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public le()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->ji()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->nh()Ljava/util/Map;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/gromore/dq/d/d;->dq(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->s()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public mp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->fw()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public no()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/d/ox;->k()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public o()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->jy()D

    move-result-wide v0

    double-to-int v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public ox()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->ox:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->bl()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public p()I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->u()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->ox:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->n()I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public q()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->mn()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/p/cd;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public r()Lcom/bytedance/sdk/openadsdk/f/d/d/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/d/ox;->wp()Lcom/bytedance/sdk/openadsdk/f/d/d/s;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/d/ox;->i()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public wp()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/d/dq;->d:Lcom/bytedance/msdk/api/p/dq/ox/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/msdk/api/p/dq/ox/dq;->wn()V

    :cond_0
    return-void
.end method
