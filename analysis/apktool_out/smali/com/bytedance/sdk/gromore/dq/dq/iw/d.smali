.class public Lcom/bytedance/sdk/gromore/dq/dq/iw/d;
.super Lcom/bytedance/sdk/openadsdk/f/d/d/d;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

.field private dq:Lcom/bytedance/msdk/core/admanager/no;

.field private iw:Lcom/bytedance/msdk/api/p/dq/kk/s;

.field private mn:Lcom/bytedance/msdk/api/p/dq/kk/p;

.field private ox:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

.field private p:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

.field private s:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/core/admanager/no;Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$2;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->iw:Lcom/bytedance/msdk/api/p/dq/kk/s;

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$3;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)V

    iput-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->mn:Lcom/bytedance/msdk/api/p/dq/kk/p;

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    iput-object p2, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->s:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    invoke-direct {p0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->o()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->s:Lcom/bytedance/sdk/openadsdk/r/dq/d/dq/dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->d:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    return-object p0
.end method

.method private o()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$1;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/admanager/no;->dq(Lcom/bytedance/msdk/api/p/dq/kk/d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->iw:Lcom/bytedance/msdk/api/p/dq/kk/s;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/admanager/no;->dq(Lcom/bytedance/msdk/api/p/dq/kk/s;)V

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    iget-object v1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->mn:Lcom/bytedance/msdk/api/p/dq/kk/p;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/admanager/no;->dq(Lcom/bytedance/msdk/api/p/dq/kk/p;)V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->ox:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;)Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->p:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    return-object p0
.end method


# virtual methods
.method public d()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/no;->no()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public d(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/mn/s;->d(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public d(Ljava/lang/Double;)V
    .locals 0

    return-void
.end method

.method public dq()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/no;->f()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/admanager/no;->dq(Landroid/view/ViewGroup;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/core/mn/s;->dq(Landroid/view/ViewGroup;Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$4;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/gromore/dq/dq/iw/d$4;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/iw/d;Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mn/s;->dq(Lcom/bytedance/msdk/api/p/dq/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/dq;)V
    .locals 0

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->p:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->d:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->ox:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/ox;

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

.method public ia()V
    .locals 0

    return-void
.end method

.method public iw()[I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/no;->q()[I

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [I

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/mn;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/gromore/dq/dq/iw/dq;

    new-instance v1, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/gromore/dq/dq/iw/ox;-><init>(Lcom/bytedance/msdk/core/admanager/no;)V

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/gromore/dq/dq/iw/dq;-><init>(Lcom/bytedance/sdk/gromore/dq/dq/s/iw;)V

    return-object v0
.end method

.method public mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/no;->cd()V

    :cond_0
    return-void
.end method

.method public ox()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/admanager/no;->mp()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public p()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->z()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public s()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/bytedance/sdk/gromore/dq/dq/iw/d;->dq:Lcom/bytedance/msdk/core/admanager/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mn/s;->xi()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 3

    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d/d;->values()Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object v0

    invoke-static {v0}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/dq;->dq()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/hat;->o(II)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    return-object v0
.end method
