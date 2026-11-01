.class Lcom/bytedance/msdk/dq/ox/ox$dq;
.super Lcom/bytedance/msdk/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/dq/ox/ox;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/msdk/dq/ox/ox;

.field dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

.field private ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

.field private p:Landroid/content/Context;

.field private volatile q:Z

.field private s:Z


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/dq/ox/ox;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V
    .locals 5

    iput-object p1, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->d:Lcom/bytedance/msdk/dq/ox/ox;

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->q:Z

    new-instance v1, Lcom/bytedance/msdk/dq/ox/ox$dq$3;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bytedance/msdk/dq/ox/ox$dq$3;-><init>(Lcom/bytedance/msdk/dq/ox/ox$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v1, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    iput-object p3, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    iput-object p2, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->p:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->gh()Lcom/bytedance/sdk/openadsdk/f/d/d/ox;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->le(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->p()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->wp(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->e(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->s()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->s(Ljava/util/Map;)V

    const-string v1, "5.4.0.3"

    invoke-static {v1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->mn()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->no(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->ia()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->o(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->mn()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->n(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->ia()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->op(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->kk()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->ji(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->q()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->q()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->ox()Ljava/lang/String;

    move-result-object v2

    :cond_3
    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/d/s;->kx(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->ig(I)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->f()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->mp(I)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->mp()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->ir(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->o()I

    move-result p2

    int-to-double v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/msdk/d/s;->p(D)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->f()I

    move-result p2

    const/4 v1, 0x4

    if-ne p2, v1, :cond_4

    const/4 p2, 0x1

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->ia(Z)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p2

    const/16 v2, 0x10

    if-eq p2, v2, :cond_7

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p2

    const/4 v2, 0x3

    if-eq p2, v2, :cond_7

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p2

    const/4 v2, 0x2

    if-ne p2, v2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p2

    if-ne p2, v1, :cond_8

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->dq(Ljava/util/List;)V

    goto :goto_3

    :cond_7
    :goto_2
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_8

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->h(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->dq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->r(I)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->d()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->gh(I)V

    :cond_8
    :goto_3
    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->ig(I)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/dq/dq;->iw()Z

    move-result p1

    if-eqz p1, :cond_a

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->le()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_a

    const-string p2, "price"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/Object;)D

    move-result-wide p1

    const-string p3, "pangle native \u8fd4\u56de\u7684 cpm\u4ef7\u683c\uff1a"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "TTMediationSDK_ECMP"

    invoke-static {v0, p3}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmpl-double p3, p1, v0

    if-lez p3, :cond_9

    goto :goto_4

    :cond_9
    move-wide p1, v0

    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_a
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/dq/ox/ox$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/ox$dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->s:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/dq/ox/ox$dq;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->s:Z

    return p1
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/dq/ox/ox$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/dq/ox/ox$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/dq/ox/ox$dq;)Lcom/bytedance/msdk/dq/d/dq;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ox$dq;->u()Lcom/bytedance/msdk/dq/d/dq;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/dq/ox/ox$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/dq/ox/ox$dq;)Lcom/bytedance/msdk/dq/d/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    return-object p0
.end method

.method private u()Lcom/bytedance/msdk/dq/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/d/s;->ig:Lcom/bytedance/msdk/dq/d/iw;

    check-cast v0, Lcom/bytedance/msdk/dq/d/dq;

    return-object v0
.end method


# virtual methods
.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->ox()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const-string v0, "pangle banner native: getDislikeDialog = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const-string v0, "pangle banner native : getDislikeDialog = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->le()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "coupon"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "live_room"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "product"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->ox(Ljava/util/Map;)V

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V
    .locals 8
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

    invoke-super/range {p0 .. p7}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V

    move-object v1, p2

    move-object p2, p1

    move-object p1, p0

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const/4 v6, 0x0

    iget-object v7, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    const/4 v2, 0x0

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    iget-object p3, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    new-instance p4, Lcom/bytedance/msdk/dq/ox/ox$dq$1;

    const/4 p5, 0x0

    invoke-direct {p4, p0, p5}, Lcom/bytedance/msdk/dq/ox/ox$dq$1;-><init>(Lcom/bytedance/msdk/dq/ox/ox$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {p3, p2, p4}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    iget-object p2, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    const/4 p3, -0x1

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->iw()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_2

    if-eqz p6, :cond_2

    iget p2, p6, Lcom/bytedance/msdk/api/p/dq/mn/no;->ig:I

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    instance-of p4, p2, Landroid/view/ViewGroup;

    if-eqz p4, :cond_1

    move-object p4, p2

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p5, Landroid/widget/ImageView;

    iget-object p7, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->p:Landroid/content/Context;

    invoke-direct {p5, p7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object p7, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->iw()Landroid/graphics/Bitmap;

    move-result-object p7

    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p5, p7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p7

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->p:Landroid/content/Context;

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v0, v2}, Lcom/bytedance/msdk/dq/s/mn;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p7, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->p:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/bytedance/msdk/dq/s/mn;->d(Landroid/content/Context;F)I

    move-result v0

    iput v0, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, p7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p4, p5, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_1
    instance-of p4, p2, Landroid/widget/ImageView;

    if-eqz p4, :cond_2

    check-cast p2, Landroid/widget/ImageView;

    iget-object p4, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->iw()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p2, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_2
    :goto_0
    if-eqz p6, :cond_4

    iget p2, p6, Lcom/bytedance/msdk/api/p/dq/mn/no;->mn:I

    invoke-virtual {v1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    iget-object p4, p1, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz p4, :cond_4

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->i()Landroid/view/View;

    move-result-object p4

    if-nez p4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p4}, Lcom/bytedance/msdk/d/s;->d(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p2, p4, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle banner native:  activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pluginDislikeInteractionCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    new-instance v1, Lcom/bytedance/msdk/dq/ox/ox$dq$4;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p2}, Lcom/bytedance/msdk/dq/ox/ox$dq$4;-><init>(Lcom/bytedance/msdk/dq/ox/ox$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const-string v0, "pangle banner native:  ttDislikeDialogAbstract = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->d(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    const-string v0, "pangle banner native: uploadDislikeEvent event = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public ia()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->le()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->d(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->le()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->ox(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle banner native : getDislikeInfo"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->cd()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public mn()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->le()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->q:Z

    new-instance v0, Lcom/bytedance/msdk/dq/ox/ox$dq$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/dq/ox/ox$dq$2;-><init>(Lcom/bytedance/msdk/dq/ox/ox$dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/msdk/dq/ox/ox$dq;->q:Z

    return v0
.end method
