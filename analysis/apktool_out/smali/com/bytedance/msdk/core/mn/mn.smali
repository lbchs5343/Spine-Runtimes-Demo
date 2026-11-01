.class public Lcom/bytedance/msdk/core/mn/mn;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/lang/String; = "KEY_LOAD_SEQ"

.field private static dq:Ljava/util/Comparator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation
.end field

.field private static ox:Ljava/lang/String; = "KEY_LOAD_SEQ_TIME"


# direct methods
.method public static d(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/dq/dq;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/msdk/core/mn/mn;->p(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/dq/dq;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/bytedance/msdk/core/mn/mn;->dq(Lcom/bytedance/msdk/core/no/no;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/msdk/core/mn/mn;->ox(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/dq/dq;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "TMe"

    const-string v0, "getAndCheckTTAbsAdLoaderAdapter fail"

    invoke-static {p0, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static d()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/bytedance/msdk/core/mn/mn$1;

    invoke-direct {v0}, Lcom/bytedance/msdk/core/mn/mn$1;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/core/mn/mn;->dq:Ljava/util/Comparator;

    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private static d(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v2

    const/16 v3, 0x65

    invoke-virtual {v1, p0, v2, v3}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result p1

    invoke-virtual {v2, p0, p1}, Lcom/bytedance/msdk/core/f/ox;->d(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->u()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->u()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->kx()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/no;
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/no/no;

    invoke-direct {v0}, Lcom/bytedance/msdk/core/no/no;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/core/no/no;->ox(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/no/no;->s(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/no/no;->o(I)V

    const-string p0, "0"

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/no/no;->iw(Ljava/lang/String;)V

    const-string p0, "1"

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/no/no;->d(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/bytedance/msdk/core/no/no;->no(I)V

    invoke-virtual {v0, p3}, Lcom/bytedance/msdk/core/no/no;->ig(I)V

    const/4 p0, 0x3

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/no/no;->kk(I)V

    const-string p0, "%1$s%2$sAdapter"

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/no/no;->dq(Ljava/lang/String;)V

    return-object v0
.end method

.method public static dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "pangle"

    invoke-static {p1}, Lcom/bytedance/msdk/d/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/d;->no()Lcom/bytedance/msdk/core/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/d;->ce()Z

    move-result v0

    if-eqz v0, :cond_0

    new-array p1, v3, [Ljava/lang/Object;

    const-string v0, "PangleCustom"

    aput-object v0, p1, v2

    aput-object p2, p1, v1

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.bytedance.msdk.adapter.panglecustom."

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "com.bytedance.msdk.adapter."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bytedance/msdk/d/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static dq()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/msdk/core/mn/mn;->dq:Ljava/util/Comparator;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/mn/mn;->d()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;Lcom/bytedance/msdk/api/p/no;IIZJ)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/core/no/no;",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/msdk/api/p/no;",
            "IIZJ)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object v1

    const-string v2, "tt_ad_network_config_appKey"

    const-string v3, "tt_ad_network_config_appid"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/dq;->dq()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v3, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/dq;->d()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v1

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/p/no;->dq()I

    move-result v4

    invoke-static {v4}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v5

    const/4 v6, -0x4

    if-ne v5, v6, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/p/no;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/bytedance/msdk/api/p/no;->p()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, v2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->o()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string v1, "tt_ad_origin_type"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p3, "tt_ad_sub_type"

    invoke-virtual {v0, p3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result p0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result p3

    const/4 v1, 0x0

    if-gez p0, :cond_4

    const/4 p0, 0x0

    :cond_4
    if-gez p3, :cond_5

    const/4 p3, 0x0

    :cond_5
    const-string v1, "ad_height"

    const-string v2, "ad_width"

    invoke-static {p3, v0, v1, p0, v2}, Lg/tn;->e(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "ad_type"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    const-string p0, "key_mediation_rit_req_type"

    const-string p1, "key_mediation_rit_req_type_src"

    invoke-static {p4, v0, p0, p5, p1}, Lg/tn;->e(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const-string p0, "key_is_from_developer_req"

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "key_requestwfb_ms"

    invoke-static {p7, p8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p0

    if-lez p0, :cond_7

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_7
    return-object v0
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V
    .locals 5

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->vf()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const v0, 0xc8321

    iget v1, p0, Lcom/bytedance/msdk/api/dq;->dq:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "error_adn:%1$s no ads\uff0cplease check ad network"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/msdk/api/p;->dq(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/bytedance/msdk/api/dq;->ox:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p1, v4, v3

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object p0, v4, p1

    const-string p0, "test error_adn:%1$s  error_slot_id: %2$s  error_code:%3$d  error_message:%4$s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/bytedance/msdk/api/p;->dq(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/ox;)V
    .locals 5

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->vf()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    const v0, 0xc8321

    iget v1, p0, Lcom/bytedance/msdk/api/dq;->dq:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/ox;->no()Ljava/lang/String;

    move-result-object p1

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    const-string p1, "error_adn:%1$s no ads\uff0cplease check ad network"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/msdk/api/p;->dq(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/ox;->no()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object p1

    iget v1, p0, Lcom/bytedance/msdk/api/dq;->ox:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object p0, p0, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v2

    aput-object p1, v4, v3

    const/4 p1, 0x2

    aput-object v1, v4, p1

    const/4 p1, 0x3

    aput-object p0, v4, p1

    const-string p0, "test error_adn:%1$s  error_slot_id: %2$s  error_code:%3$d  error_message:%4$s"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/bytedance/msdk/api/p;->dq(Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/d/s;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->vf()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/bytedance/msdk/core/mn/mn;->d(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const/4 p0, 0x1

    aput-object p1, p2, p0

    const-string p0, "fill_suceess ,test_adn:%1$s,slot_id : %2$s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/bytedance/msdk/api/p;->dq(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/msdk/core/no/ox;Lcom/bytedance/msdk/d/s;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->vf()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p2}, Lcom/bytedance/msdk/core/mn/mn;->d(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/ox;->no()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/ox;->mp()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p0, p2, v0

    const/4 p0, 0x1

    aput-object p1, p2, p0

    const-string p0, "fill_suceess ,test_adn:%1$s,slot_id : %2$s"

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/bytedance/msdk/api/p;->dq(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->vf()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lcom/bytedance/msdk/core/mn/mn;->d(Ljava/lang/String;Lcom/bytedance/msdk/d/s;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->hf()I

    move-result p0

    invoke-static {p0}, Lcom/bytedance/msdk/d/dq;->dq(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 p0, 0x1

    aput-object p1, v0, p0

    const-string p0, "test_suceess ,test_adn:%1$s,slot_id : %2$s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lcom/bytedance/msdk/api/p;->dq(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static dq(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Ljava/util/Comparator<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    invoke-static {p0}, Lcom/bytedance/msdk/ia/ir;->dq(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/msdk/ia/ir;->dq(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/no;)Z
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pangle"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p0, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/mp/dq;->mn()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/bytedance/msdk/core/mn/mn;->iw(Lcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const/16 v2, 0x1f4a

    invoke-virtual {v1, v2, p0}, Lg/hat;->n(ILjava/lang/String;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p0

    const-class v1, Ljava/lang/Boolean;

    const/16 v2, 0x2025

    invoke-interface {v0, v2, p0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "TTMediationSDK"

    const-string v0, "load ad check class loader is null "

    invoke-static {p0, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static dq(Ljava/util/Date;Ljava/util/Date;)Z
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    if-ne v0, p0, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static iw(Lcom/bytedance/msdk/core/no/no;)Ljava/lang/String;
    .locals 14

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    const/4 v10, -0x1

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v2, "mintegral"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v10, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v2, "unity"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v10, 0x7

    goto :goto_0

    :sswitch_2
    const-string v2, "baidu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v10, 0x6

    goto :goto_0

    :sswitch_3
    const-string v2, "admob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v10, 0x5

    goto :goto_0

    :sswitch_4
    const-string v2, "gdt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v10, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "ks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v10, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "sigmob"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v10, 0x2

    goto :goto_0

    :sswitch_7
    const-string v2, "pangle"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v10, 0x1

    goto :goto_0

    :sswitch_8
    const-string v2, "klevin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v10, 0x0

    :goto_0
    packed-switch v10, :pswitch_data_0

    move-object v1, v0

    goto :goto_1

    :pswitch_0
    const-string v1, "com.bytedance.msdk.adapter.mintegral.Mintegral"

    goto :goto_1

    :pswitch_1
    const-string v1, "com.bytedance.msdk.adapter.unity.Unity"

    goto :goto_1

    :pswitch_2
    const-string v1, "com.bytedance.msdk.adapter.baidu.Baidu"

    goto :goto_1

    :pswitch_3
    const-string v1, "com.bytedance.msdk.adapter.admob.Admob"

    goto :goto_1

    :pswitch_4
    const-string v1, "com.bytedance.msdk.adapter.gdt.Gdt"

    goto :goto_1

    :pswitch_5
    const-string v1, "com.bytedance.msdk.adapter.ks.Ks"

    goto :goto_1

    :pswitch_6
    const-string v1, "com.bytedance.msdk.adapter.sigmob.Sigmob"

    goto :goto_1

    :pswitch_7
    const-string v1, "com.bytedance.msdk.adapter.pangle_csjm.Pangle"

    goto :goto_1

    :pswitch_8
    const-string v1, "com.bytedance.msdk.adapter.klevin.Klevin"

    :goto_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result p0

    const-string v10, "BannerLoader"

    const-string v11, "DrawLoader"

    const-string v12, "InterstitialLoader"

    const-string v13, "FullVideoLoader"

    packed-switch p0, :pswitch_data_1

    :pswitch_9
    goto :goto_4

    :pswitch_a
    if-ne v2, v9, :cond_a

    :pswitch_b
    move-object v0, v12

    goto :goto_4

    :cond_a
    if-ne v2, v8, :cond_e

    :goto_2
    :pswitch_c
    move-object v0, v13

    goto :goto_4

    :goto_3
    :pswitch_d
    move-object v0, v11

    goto :goto_4

    :pswitch_e
    const-string v0, "RewardLoader"

    if-ne v2, v4, :cond_b

    goto :goto_4

    :cond_b
    if-ne v2, v3, :cond_e

    goto :goto_2

    :pswitch_f
    const-string v0, "NativeLoader"

    if-ne v2, v6, :cond_c

    goto :goto_4

    :cond_c
    if-ne v2, v5, :cond_d

    goto :goto_3

    :cond_d
    if-ne v2, v7, :cond_e

    :pswitch_10
    move-object v0, v10

    goto :goto_4

    :pswitch_11
    const-string v0, "SplashLoader"

    :cond_e
    :goto_4
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x4347d989 -> :sswitch_8
        -0x3b56c19d -> :sswitch_7
        -0x35ca9371 -> :sswitch_6
        0xd68 -> :sswitch_5
        0x18f37 -> :sswitch_4
        0x58603fd -> :sswitch_3
        0x592ae1b -> :sswitch_2
        0x6a45775 -> :sswitch_1
        0x431e1919 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_10
        :pswitch_b
        :pswitch_11
        :pswitch_9
        :pswitch_f
        :pswitch_9
        :pswitch_e
        :pswitch_c
        :pswitch_d
        :pswitch_a
    .end packed-switch
.end method

.method public static ox(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/dq/dq;
    .locals 0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/bytedance/msdk/core/mn/mn;->s(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/dq/dq;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static ox()Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static p()I
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    sget-object v2, Lcom/bytedance/msdk/core/mn/mn;->ox:Ljava/lang/String;

    const-wide/16 v3, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v2}, Lcom/bytedance/msdk/core/mn/mn;->dq(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v2

    sget-object v3, Lcom/bytedance/msdk/core/mn/mn;->ox:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;J)V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v2

    sget-object v3, Lcom/bytedance/msdk/core/mn/mn;->d:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/msdk/ia/bl;->d(Ljava/lang/String;I)I

    move-result v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;Landroid/content/Context;)Lcom/bytedance/msdk/ia/bl;

    move-result-object v0

    sget-object v1, Lcom/bytedance/msdk/core/mn/mn;->d:Ljava/lang/String;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v1, v4}, Lcom/bytedance/msdk/ia/bl;->dq(Ljava/lang/String;I)V

    return v4
.end method

.method private static p(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/dq/dq;
    .locals 1

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    const/4 p0, 0x1

    if-ne v0, p0, :cond_0

    new-instance p0, Lcom/bytedance/msdk/dq/ox/ia;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ia;-><init>()V

    return-object p0

    :cond_0
    const/4 p0, 0x2

    if-ne v0, p0, :cond_6

    new-instance p0, Lcom/bytedance/msdk/dq/ox/mn;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/mn;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/bytedance/msdk/dq/ox/iw;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/iw;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/bytedance/msdk/dq/ox/mn;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/mn;-><init>()V

    return-object p0

    :pswitch_4
    const/4 p0, 0x6

    if-ne v0, p0, :cond_1

    new-instance p0, Lcom/bytedance/msdk/dq/ox/ig;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ig;-><init>()V

    return-object p0

    :cond_1
    const/4 p0, 0x7

    if-ne v0, p0, :cond_2

    new-instance p0, Lcom/bytedance/msdk/dq/ox/mn;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/mn;-><init>()V

    return-object p0

    :cond_2
    new-instance p0, Lcom/bytedance/msdk/dq/ox/ig;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ig;-><init>()V

    return-object p0

    :pswitch_5
    const/4 p0, 0x4

    if-ne v0, p0, :cond_3

    new-instance p0, Lcom/bytedance/msdk/dq/ox/no;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/no;-><init>()V

    return-object p0

    :cond_3
    const/4 p0, 0x5

    if-ne v0, p0, :cond_4

    new-instance p0, Lcom/bytedance/msdk/dq/ox/iw;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/iw;-><init>()V

    return-object p0

    :cond_4
    const/4 p0, 0x3

    if-ne v0, p0, :cond_5

    new-instance p0, Lcom/bytedance/msdk/dq/ox/ox;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ox;-><init>()V

    return-object p0

    :cond_5
    new-instance p0, Lcom/bytedance/msdk/dq/ox/no;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/no;-><init>()V

    return-object p0

    :pswitch_6
    new-instance p0, Lcom/bytedance/msdk/dq/ox/mp;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/mp;-><init>()V

    return-object p0

    :pswitch_7
    new-instance p0, Lcom/bytedance/msdk/dq/ox/ia;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ia;-><init>()V

    return-object p0

    :pswitch_8
    new-instance p0, Lcom/bytedance/msdk/dq/ox/ox;

    invoke-direct {p0}, Lcom/bytedance/msdk/dq/ox/ox;-><init>()V

    return-object p0

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static s(Lcom/bytedance/msdk/core/no/no;)Lcom/bytedance/msdk/dq/dq;
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/core/dq/kk;

    invoke-static {p0}, Lcom/bytedance/msdk/core/mn/mn;->iw(Lcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/kk;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static s()V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->vf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "slot setting error"

    invoke-static {v0, v1}, Lcom/bytedance/msdk/api/p;->dq(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
