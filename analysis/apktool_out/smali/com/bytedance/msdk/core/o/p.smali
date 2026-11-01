.class public Lcom/bytedance/msdk/core/o/p;
.super Ljava/lang/Object;


# static fields
.field public static final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/no/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/core/o/p;->dq:Ljava/util/Map;

    return-void
.end method

.method public static dq(Ljava/lang/String;ILjava/util/Map;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/f/ox;->s(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/s;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/s;->ox()I

    move-result v2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/s;->p()Ljava/lang/String;

    move-result-object v3

    if-lez v2, :cond_4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/o/d;->p()Lcom/bytedance/msdk/core/o/d;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, p0, v2}, Lcom/bytedance/msdk/core/o/dq;->dq(ILjava/lang/String;I)D

    move-result-wide v2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/f/ox;->iw(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_3

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/core/no/p;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/p;->iw()D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/p;->s()D

    move-result-wide v4

    cmpg-double v6, v2, v4

    if-gtz v6, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/p;->ox()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/bytedance/msdk/core/no/s;->dq(Ljava/lang/String;)I

    move-result p0

    const-string p1, "refresh_time"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    const/16 p1, 0x2710

    if-lt p0, p1, :cond_4

    const p1, 0x2bf20

    if-gt p0, p1, :cond_4

    return p0

    :cond_4
    :goto_1
    return v1
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/d;I)Lcom/bytedance/msdk/core/no/d;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p0, :cond_9

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/f/ox;->by()Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const/16 v3, 0x65

    if-ne p1, v3, :cond_1

    sget-object p1, Lcom/bytedance/msdk/core/o/p;->dq:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bytedance/msdk/core/no/d;

    return-object p0

    :cond_1
    const/16 v3, 0x64

    if-ne p1, v3, :cond_9

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result p1

    const/4 v3, 0x3

    if-eq p1, v3, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result p1

    const/4 v3, 0x4

    if-ne p1, v3, :cond_9

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/bytedance/msdk/core/o/ox;->dq(Lcom/bytedance/msdk/core/no/d;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v2

    const-string v3, "rule_in_use"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_3
    const/4 v2, -0x1

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v5, "cost_time"

    invoke-interface {v3, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_8

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->f()Lcom/bytedance/msdk/core/no/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2, p1}, Lcom/bytedance/msdk/core/no/d;->d(Ljava/util/List;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2, p1}, Lcom/bytedance/msdk/core/no/d;->dq(Ljava/util/List;)V

    :goto_1
    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object p1

    const-string v3, "max_ecpm"

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v3

    const-string v4, "min_ecpm"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/bytedance/msdk/core/no/d;->p(D)V

    :cond_6
    if-eqz v3, :cond_7

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/msdk/core/no/d;->s(D)V

    :cond_7
    sget-object p1, Lcom/bytedance/msdk/core/o/p;->dq:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, v5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2

    :cond_8
    :goto_2
    return-object p0

    :cond_9
    :goto_3
    return-object v2
.end method

.method public static dq(ILjava/lang/String;ID)V
    .locals 3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->by()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    if-ne p0, v2, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/o/s;->p()Lcom/bytedance/msdk/core/o/s;

    move-result-object p0

    invoke-virtual {p0, p2, p3, p4}, Lcom/bytedance/msdk/core/o/s;->dq(ID)V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bytedance/msdk/core/f/ox;->s(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/s;

    move-result-object p2

    if-eqz p2, :cond_3

    if-ne p0, v0, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/s;->ox()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/o/d;->p()Lcom/bytedance/msdk/core/o/d;

    move-result-object p0

    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/bytedance/msdk/core/o/d;->dq(Ljava/lang/String;ID)V

    return-void

    :cond_2
    if-ne p0, v2, :cond_3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/s;->ox()I

    move-result p0

    if-eq p0, v0, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/o/d;->p()Lcom/bytedance/msdk/core/o/d;

    move-result-object p0

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/s;->ox()I

    move-result p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/msdk/core/o/d;->dq(Ljava/lang/String;ID)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static dq(ILjava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->by()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/core/f/ox;->s(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/s;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string p1, "dynamic_rule_id"

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/s;->p()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static dq(ILjava/util/List;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Lorg/json/JSONArray;

    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, "rit_ids"

    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_1
    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/d;DLjava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->by()Z

    move-result v0

    if-eqz v0, :cond_3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-static {v1, p3, p4, p1, p2}, Lcom/bytedance/msdk/core/o/p;->dq(ILjava/lang/String;ID)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result p3

    const/4 p4, 0x3

    if-eq p3, p4, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result p3

    const/4 p4, 0x4

    if-ne p3, p4, :cond_3

    :cond_2
    invoke-static {}, Lcom/bytedance/msdk/core/o/d;->p()Lcom/bytedance/msdk/core/o/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_last_load_cpm_"

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->ir()Ljava/lang/String;

    move-result-object v3

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/msdk/core/o/dq;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;ILorg/json/JSONObject;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->by()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    const/16 v1, 0x65

    invoke-virtual {v0, p0, p2, v1}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object p0

    if-eqz p0, :cond_3

    const-string v0, "mediation_request"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/o/s;->p()Lcom/bytedance/msdk/core/o/s;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/bytedance/msdk/core/o/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result p1

    if-ne p1, v1, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/o/d;->p()Lcom/bytedance/msdk/core/o/d;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/bytedance/msdk/core/o/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "sdk_init"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "sdk_init_end"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "get_config_start"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "get_config_final"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/o/d;->p()Lcom/bytedance/msdk/core/o/d;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p1, p2, p3, p0}, Lcom/bytedance/msdk/core/o/d;->ox(Ljava/lang/String;Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/core/no/d;",
            ")V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->by()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/d/s;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v1

    const/4 v2, 0x1

    const-string v3, "gm_usb"

    if-ne v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->ce()I

    move-result v1

    invoke-static {v1}, Lcom/bytedance/msdk/core/o/s;->ox(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v1

    const-string v2, "user_label_value"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/bytedance/msdk/core/no/p;

    invoke-virtual {v0}, Lcom/bytedance/msdk/d/s;->dq()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/p;->dq()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public static dq(ZLcom/bytedance/msdk/s/p;Lorg/json/JSONObject;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/bytedance/msdk/s/p;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->by()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/o/s;->p()Lcom/bytedance/msdk/core/o/s;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/bytedance/msdk/core/o/s;->dq(ZLcom/bytedance/msdk/s/p;Lorg/json/JSONObject;Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method
