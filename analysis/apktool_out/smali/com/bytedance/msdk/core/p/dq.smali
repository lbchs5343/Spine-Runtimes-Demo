.class public Lcom/bytedance/msdk/core/p/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/msdk/core/p/dq$dq;
    }
.end annotation


# static fields
.field public static dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/p/dq$dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/core/p/dq;->dq:Ljava/util/Map;

    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Lcom/bytedance/msdk/core/no/d;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_8

    if-eqz p1, :cond_8

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->er()Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-static {p1}, Lcom/bytedance/msdk/core/p/dq;->dq(Lcom/bytedance/msdk/core/no/d;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_3

    const-string v2, "baidu"

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_5

    const/4 p0, 0x0

    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    :cond_5
    if-eqz v0, :cond_8

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/f/ox;->ha()Z

    move-result p0

    if-eqz p0, :cond_7

    if-nez p3, :cond_6

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/msdk/d/s;

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/bytedance/msdk/d/s;->iw()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_7
    move-object v7, v1

    sget-object p0, Lcom/bytedance/msdk/core/p/dq;->dq:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object p1

    new-instance v2, Lcom/bytedance/msdk/core/p/dq$dq;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v5

    invoke-direct/range {v2 .. v7}, Lcom/bytedance/msdk/core/p/dq$dq;-><init>(Ljava/lang/String;Ljava/lang/String;DLjava/util/Map;)V

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Lcom/bytedance/msdk/core/no/no;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "baidu"

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    sget-object p1, Lcom/bytedance/msdk/core/p/dq;->dq:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/core/p/dq$dq;

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    const-string p1, "bidding_win_adn"

    iget-object v0, p0, Lcom/bytedance/msdk/core/p/dq$dq;->dq:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v0, p0, Lcom/bytedance/msdk/core/p/dq$dq;->ox:D

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const-string v0, "bidding_win_price"

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/f/ox;->ha()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "bidding_is_open_ecpm"

    invoke-interface {p2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_6

    const-string p1, "bidding_request_id_map"

    iget-object v0, p0, Lcom/bytedance/msdk/core/p/dq$dq;->p:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "bidding_win_adn_id"

    iget-object p0, p0, Lcom/bytedance/msdk/core/p/dq$dq;->d:Ljava/lang/String;

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_0
    return-void
.end method

.method private static dq(Lcom/bytedance/msdk/core/no/d;)Z
    .locals 3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v1

    const-string v2, "baidu"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
