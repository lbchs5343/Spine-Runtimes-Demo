.class Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;
.super Lcom/bytedance/msdk/d/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/ox/ox/d/dq/d/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "dq"
.end annotation


# instance fields
.field d:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

.field dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

.field ox:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

.field private p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

.field private s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/f/d/d/no;ZZ)V
    .locals 5

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$2;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$3;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$3;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->d:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$4;

    invoke-direct {v0, p0, v1}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$4;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->gh()Lcom/bytedance/sdk/openadsdk/f/d/d/ox;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/d/s;->i(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/d/s;->le(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/d/s;->wp(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/d/s;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->s()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/d/s;->s(Ljava/util/Map;)V

    const-string v2, "5.1.0.0"

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->iw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/d/s;->k(Ljava/lang/String;)V

    :cond_1
    const-string v2, "5.4.0.3"

    invoke-static {v2}, Lcom/bytedance/msdk/dq/ox/d;->dq(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->mn()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/bytedance/msdk/d/s;->no(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/ox;->ia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->o(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->ox(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->mn()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->n(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->ia()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->op(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->kk()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->ji(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->q()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->q()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->ox()Ljava/lang/String;

    move-result-object v1

    :cond_4
    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->kx(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->ig(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->f()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->mp(I)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->mp()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->ir(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->o()I

    move-result p3

    int-to-double v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/msdk/d/s;->p(D)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->f()I

    move-result p3

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-ne p3, v0, :cond_5

    const/4 p3, 0x1

    goto :goto_0

    :cond_5
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->ia(Z)V

    invoke-virtual {p0, v1}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p3

    const/16 v2, 0x10

    if-eq p3, v2, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p3

    const/4 v2, 0x3

    if-eq p3, v2, :cond_a

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p3

    const/4 v2, 0x2

    if-ne p3, v2, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->fw()I

    move-result p3

    if-ne p3, v0, :cond_8

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_b

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->dq(Ljava/util/List;)V

    goto/16 :goto_3

    :cond_8
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->s()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object p3

    if-nez p3, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    :cond_9
    if-eqz p3, :cond_b

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->h(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->dq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->r(I)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->d()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->gh(I)V

    goto :goto_3

    :cond_a
    :goto_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->jy()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->h(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->dq()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->r(I)V

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/mp;->d()I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->gh(I)V

    :cond_b
    :goto_3
    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->le()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_d

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

    if-lez p3, :cond_c

    goto :goto_4

    :cond_c
    move-wide p1, v0

    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_d
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->d:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->ia()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "ad_id"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->mn()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "c_id"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string p2, "duration"

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->le()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_e

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->p(Ljava/util/Map;)V

    const-string p2, "log_extra"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_e
    return-void
.end method

.method public static synthetic bl(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic c(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic cd(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic ce(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/sdk/openadsdk/f/d/d/no;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    return-object p0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/o;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->o:Lcom/bytedance/msdk/api/p/dq/mn/o;

    return-object p0
.end method

.method private d(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 9
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
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->ox:Lcom/bytedance/sdk/openadsdk/f/d/dq/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Lcom/bytedance/sdk/openadsdk/f/d/dq/d;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    new-instance v1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    iget-object v8, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->dq:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;I)I
    .locals 0

    iput p1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->s:I

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/o;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->o:Lcom/bytedance/msdk/api/p/dq/mn/o;

    return-object p0
.end method

.method public static synthetic e(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic f(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic fw(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic gh(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic h(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic i(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic ig(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic ir(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic ji(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic jy(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic k(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic kx(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic le(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic mp(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic n(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic o(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic op(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic q(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic r(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/kk;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    return-object p0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/mn/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->iw:Lcom/bytedance/msdk/api/p/dq/mn/ox;

    return-object p0
.end method

.method public static synthetic u(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method

.method public static synthetic wp(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)Lcom/bytedance/msdk/api/p/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/d/s;->ia:Lcom/bytedance/msdk/api/p/dq/d;

    return-object p0
.end method


# virtual methods
.method public cd()I
    .locals 1

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->s:I

    return v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->ox()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/app/Activity;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->d(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const-string v0, "pangle native : getDislikeDialog = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Landroid/app/Activity;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)Lcom/bytedance/sdk/openadsdk/f/d/d/ia;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const-string v0, "pangle native : getDislikeDialog = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

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
    .locals 3
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

    move-object v0, p6

    const/4 p1, 0x0

    const/4 p7, 0x0

    move-object p6, p5

    move-object p5, p4

    move-object p4, p3

    move-object p3, p1

    move-object p1, p0

    invoke-direct/range {p1 .. p7}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->d(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    iget-object p3, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    const/4 p4, -0x1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->iw()Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_1

    if-eqz v0, :cond_1

    iget p3, v0, Lcom/bytedance/msdk/api/p/dq/mn/no;->ig:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_1

    const/4 p5, 0x0

    invoke-virtual {p3, p5}, Landroid/view/View;->setVisibility(I)V

    instance-of p5, p3, Landroid/view/ViewGroup;

    if-eqz p5, :cond_0

    move-object p5, p3

    check-cast p5, Landroid/view/ViewGroup;

    invoke-virtual {p5}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p6, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p7

    invoke-direct {p6, p7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object p7, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {p7}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->iw()Landroid/graphics/Bitmap;

    move-result-object p7

    invoke-virtual {p6, p7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p6, p7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p7

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x42180000    # 38.0f

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/mn;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, p7, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bytedance/msdk/dq/s/mn;->d(Landroid/content/Context;F)I

    move-result v1

    iput v1, p7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3, p7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p5, p6, p4, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    instance-of p5, p3, Landroid/widget/ImageView;

    if-eqz p5, :cond_1

    check-cast p3, Landroid/widget/ImageView;

    iget-object p5, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {p5}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->iw()Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->yy()Z

    move-result p3

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object p3

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    :cond_2
    if-eqz v0, :cond_4

    iget p3, v0, Lcom/bytedance/msdk/api/p/dq/mn/no;->mn:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    if-eqz p2, :cond_4

    iget-object p3, p1, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz p3, :cond_4

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->i()Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->d(Landroid/view/View;)V

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p2, p3, p4, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :cond_4
    :goto_1
    return-void
.end method

.method public dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pangle native:  activity = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " pluginDislikeInteractionCallback:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Landroid/app/Activity;Lcom/bytedance/sdk/openadsdk/gh/dq/d/dq/dq;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/app/Dialog;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const-string v0, "pangle native:  ttDislikeDialogAbstract = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    check-cast p1, Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->d(Lcom/bytedance/sdk/openadsdk/TTDislikeDialogAbstract;)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V
    .locals 0
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
            ")V"
        }
    .end annotation

    invoke-super/range {p0 .. p6}, Lcom/bytedance/msdk/d/s;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->d(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const-string v0, "pangle native : uploadDislikeEvent event = "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->dq(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->r()Lcom/bytedance/sdk/openadsdk/f/d/d/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->s:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->r()Lcom/bytedance/sdk/openadsdk/f/d/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/s;->dq()V

    :cond_0
    return-void
.end method

.method public fw()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->r()Lcom/bytedance/sdk/openadsdk/f/d/d/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->r()Lcom/bytedance/sdk/openadsdk/f/d/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/s;->d()V

    :cond_0
    return-void
.end method

.method public gh()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->i()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public i()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->s()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->i()Lcom/bytedance/sdk/openadsdk/f/d/d/mp;

    move-result-object v0

    return-object v0
.end method

.method public ia()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

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

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->le()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/dq/ox/d;->ox(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public jy()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->r()Lcom/bytedance/sdk/openadsdk/f/d/d/s;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->s:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->r()Lcom/bytedance/sdk/openadsdk/f/d/d/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/s;->dq()V

    :cond_0
    return-void
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->no()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->k()I

    move-result v0

    return v0
.end method

.method public kk()Lcom/bytedance/sdk/openadsdk/f/d/d/p;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const-string v0, "TTMediationSDK"

    const-string v1, "pangle native : getDislikeInfo"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->cd()Lcom/bytedance/sdk/openadsdk/f/d/d/p;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public le()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->iw()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->le()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public mn()J
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

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

.method public mp()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->yy()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;->dq()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->p()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/q;->wp()V

    iput-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    :cond_0
    return-void
.end method

.method public q()Lcom/bytedance/msdk/api/p/dq/mn/iw;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->yy()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$5;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq$5;-><init>(Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/d/d/no;->dq()D

    move-result-wide v0

    return-wide v0

    :cond_0
    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->r()D

    move-result-wide v0

    return-wide v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/dq/d/ia$dq;->p:Lcom/bytedance/sdk/openadsdk/f/d/d/no;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
