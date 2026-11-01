.class public Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/jy;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

.field private dq:Lcom/bytedance/msdk/ox/p/no;

.field private iw:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

.field private mn:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

.field private ox:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;

.field private p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

.field private s:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/no;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/jy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->s:Landroid/view/View;

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->o()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;)Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;)Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    return-object p0
.end method

.method private ig()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->mn:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V

    :cond_0
    return-void
.end method

.method private no()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :cond_0
    return-void
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/msdk/api/p/dq/dq/dq;)V

    :cond_0
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;)Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    return-object p0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/no;->iw()I

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

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->s:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/no;->s()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->s:Landroid/view/View;

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->no()V

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->ig()V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->s:Landroid/view/View;

    return-object v0
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/no;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(I)V
    .locals 0

    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 1

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->d:Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/ox/p/no;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->mn:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->ig()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->no()V

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

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/ox/p/no;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 0

    return-void
.end method

.method public dq(Z)V
    .locals 0

    return-void
.end method

.method public ia()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/no;->mn()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/no;->q()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/p/o;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/d;

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/d;-><init>(Lcom/bytedance/msdk/ox/p/no;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/p/o;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/p/gh;)V

    return-object v0
.end method

.method public mn()V
    .locals 0

    return-void
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/no;->mp()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public p()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->p:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->s:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v1}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;->dq(Landroid/view/View;FF)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/dq;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->s:Landroid/view/View;

    invoke-virtual {v0, v2, v1, v1}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;->dq(Landroid/view/View;FF)V

    :cond_1
    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->s:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->s:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->dq:Lcom/bytedance/msdk/ox/p/no;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/no;->ox()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    if-eqz v0, :cond_2

    iput-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->iw:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->mn:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    if-eqz v0, :cond_3

    iput-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/mn/dq/dq;->mn:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/ox;

    :cond_3
    return-void
.end method
