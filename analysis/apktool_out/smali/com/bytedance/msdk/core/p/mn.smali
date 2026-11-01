.class public Lcom/bytedance/msdk/core/p/mn;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/core/p/s;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/p/d;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;",
            "Lcom/bytedance/msdk/core/no/d;",
            "Lcom/bytedance/msdk/core/p/d;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p2, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v1

    const-string v2, "serverBidding_timeout"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_6

    if-nez v1, :cond_6

    invoke-static {}, Lcom/bytedance/msdk/mn/dq/dq;->jy()Lcom/bytedance/msdk/mn/dq/dq;

    move-result-object v1

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->ce()I

    move-result v3

    const/16 v4, 0x66

    invoke-virtual {v1, v2, v3, v4}, Lcom/bytedance/msdk/mn/dq/dq;->dq(Ljava/lang/String;II)Lcom/bytedance/msdk/core/no/d;

    move-result-object v5

    if-nez v5, :cond_3

    return-object v0

    :cond_3
    const-wide/16 v1, 0x0

    if-nez p3, :cond_4

    move-wide v7, v1

    goto :goto_1

    :cond_4
    iget-wide v3, p3, Lcom/bytedance/msdk/core/p/d;->ig:D

    move-wide v7, v3

    :goto_1
    if-nez p3, :cond_5

    :goto_2
    move-wide v9, v1

    goto :goto_3

    :cond_5
    iget-wide v1, p3, Lcom/bytedance/msdk/core/p/d;->q:D

    goto :goto_2

    :goto_3
    invoke-virtual {v5}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v6

    invoke-static/range {v5 .. v10}, Lcom/bytedance/msdk/core/o/ox;->dq(Lcom/bytedance/msdk/core/no/d;Ljava/lang/String;DD)Ljava/util/List;

    move-result-object p3

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {v5}, Lcom/bytedance/msdk/core/no/d;->s()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4

    :cond_6
    invoke-virtual {p2}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object p3

    :goto_4
    if-eqz p3, :cond_b

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_7

    goto :goto_6

    :cond_7
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_8
    :goto_5
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/no/no;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    if-eqz v0, :cond_9

    if-eqz v2, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_a
    return-object p2

    :cond_b
    :goto_6
    return-object v0
.end method

.method private dq(JILcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/p/s$dq;)V
    .locals 2

    if-eqz p4, :cond_0

    iget p3, p4, Lcom/bytedance/msdk/api/dq;->dq:I

    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    const/4 p3, 0x4

    goto :goto_0

    :cond_0
    const/4 p3, 0x5

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u5931\u8d25......onFail  result:"

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "TTMediationSDK"

    invoke-static {v0, p5}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p5, Lcom/bytedance/msdk/core/p/d;

    invoke-direct {p5}, Lcom/bytedance/msdk/core/p/d;-><init>()V

    iput p3, p5, Lcom/bytedance/msdk/core/p/d;->iw:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    iput-wide v0, p5, Lcom/bytedance/msdk/core/p/d;->mn:J

    iput-object p4, p5, Lcom/bytedance/msdk/core/p/d;->ia:Lcom/bytedance/msdk/api/dq;

    if-eqz p6, :cond_1

    invoke-interface {p6, p5}, Lcom/bytedance/msdk/core/p/s$dq;->dq(Lcom/bytedance/msdk/core/p/d;)V

    :cond_1
    return-void
.end method

.method private dq(JLcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;ILcom/bytedance/msdk/core/no/ia;Lcom/bytedance/msdk/core/p/s$dq;)V
    .locals 15

    move-object/from16 v0, p4

    move-object/from16 v1, p7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u8fd4\u56de............."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTMediationSDK"

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v4, v4, p1

    const/4 v2, 0x1

    const/4 v6, 0x2

    if-eqz v0, :cond_5

    if-eqz p6, :cond_5

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->p()Ljava/util/List;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->p()Ljava/util/List;

    move-result-object v7

    new-instance v8, Lcom/bytedance/msdk/core/p/d;

    invoke-direct {v8}, Lcom/bytedance/msdk/core/p/d;-><init>()V

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->dq()D

    move-result-wide v9

    iput-wide v9, v8, Lcom/bytedance/msdk/core/p/d;->ig:D

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->d()I

    move-result v9

    iput v9, v8, Lcom/bytedance/msdk/core/p/d;->mp:I

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->ox()D

    move-result-wide v9

    iput-wide v9, v8, Lcom/bytedance/msdk/core/p/d;->q:D

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->mn()Lorg/json/JSONObject;

    move-result-object v9

    iput-object v9, v8, Lcom/bytedance/msdk/core/p/d;->no:Lorg/json/JSONObject;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    iput v9, v8, Lcom/bytedance/msdk/core/p/d;->kk:I

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->kk()Ljava/util/List;

    move-result-object v9

    iput-object v9, v8, Lcom/bytedance/msdk/core/p/d;->dq:Ljava/util/List;

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->iw()I

    move-result v9

    iput v9, v8, Lcom/bytedance/msdk/core/p/d;->o:I

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "winners : {"

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bytedance/msdk/core/no/kk;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/kk;->mn()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/bytedance/msdk/core/no/d;->iw(Ljava/lang/String;)Lcom/bytedance/msdk/core/no/no;

    move-result-object v12

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->s()Lcom/bytedance/msdk/core/no/no;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, " [ AdnName:"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",slotId:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ",loadSort:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",showSort:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "] "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Lcom/bytedance/msdk/core/no/no;->dq(Lcom/bytedance/msdk/core/no/kk;)V

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v7, "}"

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v9}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->kk()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v6, p5

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u5931\u8d25......\uff1a\u6570\u636e\u6709\u8fd4\u56de\uff0c\u4f46\u6ca1\u6709\u8fd4\u56dewinner\u6570\u636e......"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u6210\u529f......\uff1a"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    invoke-virtual {v6, v9}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->kk()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v7, v0, v8}, Lcom/bytedance/msdk/core/p/mn;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/p/d;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u6210\u529f......waterfall+server bidding\u7269\u6599......"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u6210\u529f......server bidding\u7269\u6599......"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    :goto_2
    iput-object v6, v8, Lcom/bytedance/msdk/core/p/d;->d:Ljava/util/List;

    move v6, v0

    goto :goto_4

    :cond_5
    if-eqz p6, :cond_6

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->kk()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v6, p5

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u7f51\u7edc\u8bf7\u6c42\u54cd\u5e94\u5931\u8d25......\u6ca1\u6709\u8fd4\u56deserverBiddingModel\u76f8\u5173\u6570\u636e"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v8, 0x0

    :goto_4
    if-eqz p6, :cond_c

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->iw()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    if-nez v8, :cond_7

    new-instance v8, Lcom/bytedance/msdk/core/p/d;

    invoke-direct {v8}, Lcom/bytedance/msdk/core/p/d;-><init>()V

    :cond_7
    iput-object v0, v8, Lcom/bytedance/msdk/core/p/d;->p:Ljava/lang/String;

    :cond_8
    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->ia()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "server bidding\u53d1\u73b0config\u8fc7\u671f\u4e86\uff0c\u9700\u8981\u91cd\u65b0\u62c9\u53d6\u914d\u7f6e......\uff1a"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v8, :cond_9

    new-instance v8, Lcom/bytedance/msdk/core/p/d;

    invoke-direct {v8}, Lcom/bytedance/msdk/core/p/d;-><init>()V

    :cond_9
    iput-boolean v2, v8, Lcom/bytedance/msdk/core/p/d;->ox:Z

    :cond_a
    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->s()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_c

    if-nez v8, :cond_b

    new-instance v0, Lcom/bytedance/msdk/core/p/d;

    invoke-direct {v0}, Lcom/bytedance/msdk/core/p/d;-><init>()V

    move-object v8, v0

    :cond_b
    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/msdk/core/no/ia;->s()Ljava/util/List;

    move-result-object v0

    iput-object v0, v8, Lcom/bytedance/msdk/core/p/d;->s:Ljava/util/List;

    :cond_c
    if-nez v8, :cond_d

    new-instance v8, Lcom/bytedance/msdk/core/p/d;

    invoke-direct {v8}, Lcom/bytedance/msdk/core/p/d;-><init>()V

    :cond_d
    iput v6, v8, Lcom/bytedance/msdk/core/p/d;->iw:I

    iput-wide v4, v8, Lcom/bytedance/msdk/core/p/d;->mn:J

    if-eqz v1, :cond_e

    invoke-interface {v1, v8}, Lcom/bytedance/msdk/core/p/s$dq;->dq(Lcom/bytedance/msdk/core/p/d;)V

    :cond_e
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/p/mn;JILcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/p/s$dq;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/msdk/core/p/mn;->dq(JILcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/p/s$dq;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/p/mn;JLcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;ILcom/bytedance/msdk/core/no/ia;Lcom/bytedance/msdk/core/p/s$dq;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/bytedance/msdk/core/p/mn;->dq(JLcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;ILcom/bytedance/msdk/core/no/ia;Lcom/bytedance/msdk/core/p/s$dq;)V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;JLcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/p/s$dq;)V
    .locals 8

    invoke-static {}, Lcom/bytedance/msdk/core/jy/dq;->dq()Lcom/bytedance/msdk/core/jy/dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/core/p/mn$2;

    move-object v2, p0

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/msdk/core/p/mn$2;-><init>(Lcom/bytedance/msdk/core/p/mn;JLcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/p/s$dq;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/msdk/core/jy/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/core/jy/dq$dq;)V

    return-void
.end method

.method public dq(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/core/p/ox;Lcom/bytedance/msdk/core/p/s$dq;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/dq/dq;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/bytedance/msdk/core/p/ox;",
            "Lcom/bytedance/msdk/core/p/s$dq;",
            ")V"
        }
    .end annotation

    move-object/from16 v4, p3

    const/4 v0, 0x0

    if-eqz v4, :cond_0

    iget-object v1, v4, Lcom/bytedance/msdk/core/p/ox;->dq:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v1, :cond_0

    iget-object v1, v4, Lcom/bytedance/msdk/core/p/ox;->p:Lcom/bytedance/msdk/core/no/d;

    if-eqz v1, :cond_0

    iget-object v1, v4, Lcom/bytedance/msdk/core/p/ox;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/bytedance/msdk/ia/n;->dq(Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move-object/from16 v6, p4

    goto :goto_0

    :cond_1
    iget-object v1, v4, Lcom/bytedance/msdk/core/p/ox;->p:Lcom/bytedance/msdk/core/no/d;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->gx()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v4, Lcom/bytedance/msdk/core/p/ox;->dq:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u5f00\u542fserver bidding\u7f51\u7edc\u8bf7\u6c42......\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTMediationSDK"

    invoke-static {v3, v2}, Lcom/bytedance/msdk/dq/s/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v4, Lcom/bytedance/msdk/core/p/ox;->dq:Lcom/bytedance/msdk/api/dq/d;

    invoke-static {v2, v1, v0}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lorg/json/JSONObject;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x4

    filled-new-array {v0}, [I

    move-result-object v5

    invoke-static {}, Lcom/bytedance/msdk/core/jy/dq;->dq()Lcom/bytedance/msdk/core/jy/dq;

    move-result-object v7

    iget-object v9, v4, Lcom/bytedance/msdk/core/p/ox;->dq:Lcom/bytedance/msdk/api/dq/d;

    iget-object v10, v4, Lcom/bytedance/msdk/core/p/ox;->d:Ljava/util/List;

    iget-object v11, v4, Lcom/bytedance/msdk/core/p/ox;->ox:Ljava/util/List;

    iget-object v12, v4, Lcom/bytedance/msdk/core/p/ox;->p:Lcom/bytedance/msdk/core/no/d;

    iget v13, v4, Lcom/bytedance/msdk/core/p/ox;->s:I

    iget-boolean v14, v4, Lcom/bytedance/msdk/core/p/ox;->iw:Z

    new-instance v15, Lcom/bytedance/msdk/core/p/mn$1;

    move-object/from16 v1, p0

    move-object/from16 v6, p4

    move-object v0, v15

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/msdk/core/p/mn$1;-><init>(Lcom/bytedance/msdk/core/p/mn;JLcom/bytedance/msdk/core/p/ox;[ILcom/bytedance/msdk/core/p/s$dq;)V

    move-object/from16 v8, p2

    move-object v6, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v6 .. v15}, Lcom/bytedance/msdk/core/jy/dq;->dq(Ljava/util/Map;Landroid/content/Context;Lcom/bytedance/msdk/api/dq/d;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/core/no/d;IZLcom/bytedance/msdk/core/jy/dq$dq;)V

    return-void

    :goto_0
    invoke-interface {v6, v0}, Lcom/bytedance/msdk/core/p/s$dq;->dq(Lcom/bytedance/msdk/core/p/d;)V

    return-void
.end method
