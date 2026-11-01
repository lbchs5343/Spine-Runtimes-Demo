.class public Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;
.super Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;


# instance fields
.field private ia:Z

.field private iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

.field private final kk:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

.field private mn:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->ia:Z

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->kk:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->mn:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->mn:Landroid/view/View;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->s()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Lorg/json/JSONObject;Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq(Lorg/json/JSONObject;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void
.end method

.method private dq(Lorg/json/JSONObject;Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;

    move-object v1, p0

    move-object v3, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Landroid/view/ViewGroup;Lorg/json/JSONObject;Landroid/view/View;Z)V

    iput-object v0, v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->s:Ljava/lang/Runnable;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$4;

    invoke-direct {p1, p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Landroid/view/ViewGroup;)V

    invoke-virtual {v2, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->ia:Z

    return p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    return-object p0
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->mn:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->ia:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->kk:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/mn;

    return-object v0
.end method

.method public d(Landroid/view/ViewGroup;Landroid/view/View;Z)V
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "render_type"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 p2, 0x64

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "error_code"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->ox:Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/ox;->dq(ZLjava/util/Map;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/kx$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx$dq;->ox()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/kx;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/kx$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/kx$dq;->p()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->d(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v3

    if-lez v3, :cond_1

    invoke-direct {p0, v2, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->dq(Lorg/json/JSONObject;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    return-void

    :cond_1
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$2;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;Landroid/view/ViewGroup;Landroid/view/View;Z)V

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ugeno/ox;)V

    return-void
.end method

.method public dq()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public dq(II)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/r/kx$dq;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/r/kx$dq;->dq(II)Z

    move-result p1

    return p1
.end method

.method public ox()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/d;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kx;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    return v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->mn:Landroid/view/View;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/s;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ox/ox;->o()V

    :cond_0
    return-void
.end method
