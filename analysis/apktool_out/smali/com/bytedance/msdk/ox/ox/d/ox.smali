.class public Lcom/bytedance/msdk/ox/ox/d/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/dq/d;
.implements Lcom/bytedance/msdk/ox/ox/d/dq;


# instance fields
.field private d:Lcom/bytedance/msdk/ox/s/dq/d;

.field private dq:Lcom/bytedance/msdk/ox/s/d/d;

.field private iw:J

.field private mn:J

.field private ox:Lcom/bytedance/msdk/api/dq/d;

.field private p:Lcom/bytedance/msdk/ox/dq/dq;

.field private volatile s:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->p:Lcom/bytedance/msdk/ox/dq/dq;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->s:J

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/api/dq/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    return-object p0
.end method

.method private d(Ljava/util/List;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v2, p1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v2, p1

    :goto_0
    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v3, :cond_4

    invoke-static {v2}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->dq()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->wp()Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/msdk/d/s;

    iget-object v4, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v4

    iget-object v5, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/bytedance/msdk/ia/op;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Z)V

    iget-object v4, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->t()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v6

    cmpl-double v8, v4, v6

    if-lez v8, :cond_2

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3}, Lcom/bytedance/msdk/d/s;->ij()Ljava/lang/String;

    move-result-object v16

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v5

    invoke-static {v5}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/core/no/no;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    :goto_2
    move-object/from16 v17, v5

    move-wide/from16 v18, v6

    goto :goto_3

    :cond_3
    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    goto :goto_2

    :goto_3
    new-instance v6, Lcom/bytedance/msdk/api/dq;

    const v3, 0xc3b4

    invoke-static {v3}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    iget-object v7, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v8

    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v9

    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v10

    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v11

    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->iw:J

    invoke-static/range {v6 .. v19}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto/16 :goto_1

    :cond_4
    return-object v1
.end method

.method private d()Ljava/util/Map;
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

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/core/f/ox;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "tt_ad_network_config_appid"

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/dq;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "tt_ad_network_config_appKey"

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/dq;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->q()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tt_ad_origin_type"

    invoke-virtual {v0, v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->jy()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "tt_ad_sub_type"

    invoke-virtual {v0, v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->e()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->kx()I

    move-result v2

    const/4 v3, 0x0

    if-gez v1, :cond_3

    const/4 v1, 0x0

    :cond_3
    if-gez v2, :cond_4

    const/4 v2, 0x0

    :cond_4
    const-string v3, "ad_height"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "ad_width"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "ad_type"

    invoke-virtual {v0, v2, v1}, Lj$/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->bl()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->bl()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->bl()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lj$/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    :cond_6
    return-object v0
.end method

.method private d(Lcom/bytedance/msdk/api/dq;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V

    :cond_0
    return-void
.end method

.method private d(Lcom/bytedance/msdk/d/s;)V
    .locals 6

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;)V

    :cond_1
    sget-boolean p1, Lcom/bytedance/msdk/d/p;->d:Z

    const-string v1, "] AdType["

    const-string v2, "AdNetWorkName["

    const-string v3, "fill"

    const-string v4, "TTMediationSDK"

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] AdUnitId["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] \u89c6\u9891\u7f13\u5b58\u6210\u529f (loadSort="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",showSort="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "] \u89c6\u9891\u7f13\u5b58\u6210\u529f "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/ox/ox/d/ox;)Lcom/bytedance/msdk/ox/s/d/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    return-object p0
.end method

.method private dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/iw/d/d;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/dq/dq/p;->d()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->kk()V

    :cond_0
    return-void
.end method

.method private dq(ILcom/bytedance/msdk/d/s;ILjava/lang/String;J)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v1

    const/16 v2, 0x4e20

    move/from16 v4, p1

    if-ne v4, v2, :cond_1

    const-string v2, "load success"

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    const-string v2, "\u8bf7\u6c42\u6210\u529f\uff0c\u4f46\u65e0\u5e7f\u544a\u53ef\u7528"

    goto :goto_0

    :goto_1
    iget-object v2, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v2

    iget-boolean v11, v2, Lcom/bytedance/msdk/core/no/o;->iw:Z

    iget-object v2, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result v2

    if-nez v2, :cond_3

    if-eqz p2, :cond_3

    iget-wide v2, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->s:J

    const-wide/16 v6, -0x1

    cmp-long v8, v2, v6

    if-eqz v8, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->s:J

    sub-long v6, v2, v6

    :cond_2
    move-wide v15, v6

    iget-wide v6, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->iw:J

    iget-object v8, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v9

    move-object/from16 v3, p2

    move/from16 v10, p3

    move-object/from16 v12, p4

    move-wide/from16 v13, p5

    invoke-static/range {v3 .. v16}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V

    :cond_3
    sget-boolean v2, Lcom/bytedance/msdk/d/p;->d:Z

    const-string v3, "] AdType["

    const-string v4, "AdNetWorkName["

    const-string v5, "fill"

    const-string v6, "TTMediationSDK"

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v7}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] AdUnitId["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v4

    invoke-static {v3, v4, v1}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] \u8bf7\u6c42\u6210\u529f (loadSort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",showSort="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v7}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v5}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v3

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v4

    invoke-static {v3, v4, v1}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] \u8bf7\u6c42\u6210\u529f"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private dq(Lcom/bytedance/msdk/api/dq;Z)V
    .locals 14

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->mn:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->iw:J

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/core/no/no;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    :goto_0
    move-object v11, v2

    move-wide v12, v3

    goto :goto_1

    :cond_0
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    goto :goto_0

    :goto_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->iw:J

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v13}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v5

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->iw:J

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;J)V

    :goto_2
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v1

    if-eqz v0, :cond_7

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/bytedance/msdk/d/p;->d:Z

    const-string v3, ",msg="

    const-string v4, "] AdType["

    const-string v5, "AdNetWorkName["

    const-string v6, "fill_fail"

    const-string v7, ""

    const-string v8, "TTMediationSDK"

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-nez v9, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v9}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    :goto_3
    invoke-static {v7, v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "] AdUnitId["

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] \u8bf7\u6c42\u5931\u8d25 (loadSort="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",showSort="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "),error="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/bytedance/msdk/api/dq;->ox:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-nez v9, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v9}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-static {v7, v6}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v4

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result v5

    invoke-static {v4, v5, v1}, Lcom/bytedance/msdk/d/dq;->dq(IILcom/bytedance/msdk/core/no/no;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] \u8bf7\u6c42\u5931\u8d25 error="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/bytedance/msdk/api/dq;->ox:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcom/bytedance/msdk/api/dq;->ox:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/bytedance/msdk/api/dq;->p:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/dq;->dq(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ox;->dq()Lcom/bytedance/msdk/core/kk/ox;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v6}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1, v2}, Lcom/bytedance/msdk/dq/dq;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v5, v1}, Lcom/bytedance/msdk/core/kk/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    move-object v0, p1

    :cond_7
    :goto_6
    invoke-direct/range {p0 .. p1}, Lcom/bytedance/msdk/ox/ox/d/ox;->d(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method private dq(Lcom/bytedance/msdk/d/s;)V
    .locals 5

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->gh()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->gh()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ji()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ji()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->bl()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->d(D)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->n()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->ox(D)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->s(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->iw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->ia()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->ox(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->kk()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->p(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->dq()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->s(I)V

    :cond_4
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->gh()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->f(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->r()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->cd(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->i()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->fw(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->p:Lcom/bytedance/msdk/ox/dq/dq;

    const-string v1, ""

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/bytedance/msdk/ox/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    move-object v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->fw(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->jy(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->f()Ljava/lang/String;

    move-result-object v1

    :cond_6
    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/d/s;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ir()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->q(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(J)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->gh(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->cd(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/mp/dq;->ox(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "waterfall_abtest"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/msdk/d/s;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/d/dq;->d(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->q(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->ia(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->kk(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->o(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->no(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->q()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->mn(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->jy()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->iw(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->le()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->jy(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->u()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->p(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->d(I)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/msdk/ia/op;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Z)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v0

    if-eqz v0, :cond_a

    iget v1, v0, Lcom/bytedance/msdk/core/no/o;->d:I

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    goto :goto_1

    :cond_7
    move v2, v1

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "if_test"

    invoke-virtual {p1, v2, v1}, Lcom/bytedance/msdk/d/s;->d(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "server_bidding_extra"

    iget-object v2, v0, Lcom/bytedance/msdk/core/no/o;->dq:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/msdk/d/s;->d(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p1, v1}, Lcom/bytedance/msdk/d/s;->ia(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_9

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    :cond_9
    iget-boolean v0, v0, Lcom/bytedance/msdk/core/no/o;->s:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/msdk/d/s;->p(Z)V

    :cond_a
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->op()Lcom/bytedance/msdk/core/no/kk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/kk;->d()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "extra_data_and_no_parse"

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/msdk/d/s;->dq(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_b
    :goto_3
    return-void
.end method

.method private dq(Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;)V
    .locals 14

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v1

    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_1
    move-object/from16 v3, p4

    :goto_0
    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->n()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    const/4 v0, 0x3

    const/4 v5, 0x3

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_1
    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->s()Z

    move-result v4

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v7

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v8

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->p()J

    move-result-wide v10

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object p1

    iget-boolean v12, p1, Lcom/bytedance/msdk/core/no/o;->s:Z

    const/4 v13, 0x0

    move-object/from16 v9, p3

    invoke-static/range {v1 .. v13}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    return-void

    :cond_3
    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->ji()Lcom/bytedance/msdk/core/no/kk;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v1, p1, v3}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private dq(Ljava/lang/Runnable;)V
    .locals 0

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private dq(Lcom/bytedance/msdk/api/p/dq/d/ox/dq;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/bytedance/msdk/core/mp/dq;->dq()Lcom/bytedance/msdk/core/mp/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/mp/dq;->mn()Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/ox/dq;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "TMe"

    if-nez v2, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v2, 0x1f4a

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/ox/dq;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lg/hat;->n(ILjava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "custom className is "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/p/dq/d/ox/dq;->dq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    const-class v0, Ljava/lang/Boolean;

    const/16 v2, 0x2025

    invoke-interface {v1, v2, p1, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_1
    const-string p1, "custom className is empty"

    invoke-static {v3, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const-string p1, "TTMediationSDK"

    const-string v1, "load ad check custom name class loader is null "

    invoke-static {p1, v1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private ox()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "_"

    invoke-static {v0, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/ox/ox/d/ox;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq()V

    return-void
.end method

.method private ox(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/no;)V

    :cond_0
    new-instance p1, Lcom/bytedance/msdk/ox/ox/d/ox$2;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/ox/ox/d/ox$2;-><init>(Lcom/bytedance/msdk/ox/ox/d/ox;)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method private p()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/d/ox;->ox()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->ig()Lcom/bytedance/msdk/core/no/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/s/d/d;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->o()Z

    move-result v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->no()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-static {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/p;->dq(Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/dq/d;)Lcom/bytedance/msdk/ox/dq/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->p:Lcom/bytedance/msdk/ox/dq/dq;

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/core/mn/mn;->dq(Lcom/bytedance/msdk/core/no/no;)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Lcom/bytedance/msdk/ox/ox/d/dq/ox;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/ox;-><init>(Lcom/bytedance/msdk/ox/dq/d;)V

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->p:Lcom/bytedance/msdk/ox/dq/dq;

    goto/16 :goto_1

    :cond_1
    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    move-object v3, v1

    :goto_0
    invoke-static {v0, v3}, Lcom/bytedance/msdk/iw/d;->dq(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/iw/d/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->no()Lcom/bytedance/msdk/d/s;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v4

    new-instance v5, Lcom/bytedance/msdk/api/dq;

    const v6, 0xbf76

    const-string v7, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 configuration is null"

    invoke-direct {v5, v6, v7}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v0, v3, v4, v5}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq;)V

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/dq;

    move-result-object v0

    const v3, 0xbf75

    if-nez v0, :cond_4

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const-string v4, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 adNetworkConfValue is null"

    invoke-direct {v0, v3, v4}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v2, v2, v0}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/dq;->ox()Lcom/bytedance/msdk/api/p/dq/d/ox/d;

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const-string v4, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 getGMCustomConfig is null"

    invoke-direct {v0, v3, v4}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v2, v2, v0}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/dq;->ox()Lcom/bytedance/msdk/api/p/dq/d/ox/d;

    move-result-object v0

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/d/d;->kx()I

    move-result v4

    iget-object v5, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v5}, Lcom/bytedance/msdk/ox/s/d/d;->jy()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/bytedance/msdk/api/p/dq/d/ox/d;->dq(II)Lcom/bytedance/msdk/api/p/dq/d/ox/dq;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const-string v4, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 adConfig is null"

    invoke-direct {v0, v3, v4}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v2, v2, v0}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/api/p/dq/d/ox/dq;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox/dq;->dq()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-static {v0, v3, p0}, Lcom/bytedance/msdk/ox/ox/d/dq/p;->dq(Ljava/lang/String;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/dq/d;)Lcom/bytedance/msdk/ox/dq/dq;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->p:Lcom/bytedance/msdk/ox/dq/dq;

    goto :goto_1

    :cond_7
    new-instance v4, Lcom/bytedance/msdk/api/dq;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u521b\u5efa\u81ea\u5b9a\u4e49\u5e7f\u544a\u5bf9\u8c61 check className false className is "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/p/dq/d/ox/dq;->dq()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v3, v0}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-static {v1, v2, v2, v2, v4}, Lcom/bytedance/msdk/s/iw;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq;)V

    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->p:Lcom/bytedance/msdk/ox/dq/dq;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lcom/bytedance/msdk/ox/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v3, v2, v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->p:Lcom/bytedance/msdk/ox/dq/dq;

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/d/ox;->d()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/bytedance/msdk/ox/dq/dq;->dq(Landroid/content/Context;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->o()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->ig()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v4}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/msdk/core/no/no;I)V

    :cond_9
    return-void

    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "**********\u3010\u91cd\u8981\u3011"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->mp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u521b\u5efa\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5adapter\u662f\u5426\u63a5\u5165 **********"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "TTMediationSDK"

    invoke-static {v2, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/s/ox/dq;->dq()Lcom/bytedance/msdk/s/ox/dq;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/msdk/s/p;->ox()Lcom/bytedance/msdk/s/p;

    move-result-object v4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v5

    iget-object v6, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v7

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v8

    invoke-virtual/range {v3 .. v8}, Lcom/bytedance/msdk/s/ox/dq;->dq(Lcom/bytedance/msdk/s/p;Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;II)V

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    const-string v2, "create adn loader fail"

    invoke-direct {v0, v2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v4, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/msdk/api/dq;

    invoke-direct {v0, v2}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/api/dq;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/api/dq;Z)V

    return-void
.end method

.method public dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/d/s;->qz()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {p1, v0, p2}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/msdk/ox/ox/d/dq$dq;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->mn:J

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->d()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/dq/d;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, ""

    if-nez p1, :cond_1

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string v1, "request adn context is null"

    invoke-direct {p1, v1}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/d/ox;->p()V

    return-void

    :cond_2
    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const-string v1, "request adn waterfall request is null"

    invoke-direct {p1, v1}, Lcom/bytedance/msdk/api/dq;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    iget-object v2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->d:Lcom/bytedance/msdk/ox/s/dq/d;

    invoke-direct {p0, v1, v2, p1, v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/api/dq;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/api/dq;)V

    return-void
.end method

.method public dq(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    move-object v6, p0

    goto/16 :goto_8

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->s:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->s:J

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->mn:J

    sub-long/2addr v0, v4

    iput-wide v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->iw:J

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/d/s;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/ox/ox/d/ox;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/msdk/ia/r;->dq(Lcom/bytedance/msdk/core/no/no;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lg/tn;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v6

    move-object v10, v1

    :goto_1
    move-wide v11, v2

    goto :goto_2

    :cond_3
    move-object v10, v5

    goto :goto_1

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_4

    const/16 v1, 0x4e20

    const/16 v7, 0x4e20

    goto :goto_3

    :cond_4
    const v1, 0xc8321

    const v7, 0xc8321

    :goto_3
    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->dq()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->wp()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/bytedance/msdk/d/s;

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(ILcom/bytedance/msdk/d/s;ILjava/lang/String;J)V

    goto :goto_6

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/bytedance/msdk/d/s;

    if-eqz v8, :cond_7

    const/4 v9, 0x1

    move-object v6, p0

    invoke-direct/range {v6 .. v12}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(ILcom/bytedance/msdk/d/s;ILjava/lang/String;J)V

    goto :goto_5

    :cond_7
    move-object v6, p0

    goto :goto_5

    :cond_8
    move-object v6, p0

    :goto_6
    iget-object v1, v6, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_a

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    iget-object v1, v6, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v2, v6, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v2}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v2

    iget-wide v3, v6, Lcom/bytedance/msdk/ox/ox/d/ox;->iw:J

    invoke-static {p1, v1, v2, v3, v4}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;J)V

    goto :goto_7

    :cond_9
    move-object v6, p0

    :cond_a
    :goto_7
    invoke-direct {p0, v0}, Lcom/bytedance/msdk/ox/ox/d/ox;->ox(Ljava/util/List;)V

    iget-object p1, v6, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object p1

    if-eqz p1, :cond_b

    iget-object p1, v6, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->mp()I

    move-result p1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_b

    iget-object p1, v6, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->iw()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_b

    invoke-virtual {p0, v0, v5}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V

    :cond_b
    :goto_8
    return-void

    :cond_c
    move-object v6, p0

    new-instance p1, Lcom/bytedance/msdk/api/dq;

    const v0, 0xc3b4

    invoke-static {v0}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1, v4}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/api/dq;Z)V

    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/msdk/api/dq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/d/s;",
            ">;",
            "Lcom/bytedance/msdk/api/dq;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/d/s;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bytedance/msdk/d/s;->kk(Z)V

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq(Lcom/bytedance/msdk/d/s;)V

    invoke-direct {p0, v1}, Lcom/bytedance/msdk/ox/ox/d/ox;->d(Lcom/bytedance/msdk/d/s;)V

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    iget p2, p2, Lcom/bytedance/msdk/api/dq;->dq:I

    const/16 v0, 0x753a

    if-ne p2, v0, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/dq/dq;->p()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Lcom/bytedance/msdk/ox/ox/d/ox$1;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/msdk/ox/ox/d/ox$1;-><init>(Lcom/bytedance/msdk/ox/ox/d/ox;Ljava/util/List;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p2, v0, v1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;J)V

    return-void

    :cond_2
    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/bytedance/msdk/ox/s/d/d;->k()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1}, Lcom/bytedance/msdk/ia/n;->d(Ljava/util/List;)Z

    move-result p2

    if-nez p2, :cond_3

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/d/s;

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    iget-object p2, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->ox:Lcom/bytedance/msdk/api/dq/d;

    iget-object v0, p0, Lcom/bytedance/msdk/ox/ox/d/ox;->dq:Lcom/bytedance/msdk/ox/s/d/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;)V

    :cond_4
    invoke-direct {p0}, Lcom/bytedance/msdk/ox/ox/d/ox;->dq()V

    return-void
.end method
