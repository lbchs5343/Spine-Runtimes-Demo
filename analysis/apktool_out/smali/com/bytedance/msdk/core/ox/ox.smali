.class public Lcom/bytedance/msdk/core/ox/ox;
.super Ljava/lang/Object;


# direct methods
.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->nh()Lcom/bytedance/msdk/core/ox/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/ia/dq/ox;->dq()Lcom/bytedance/msdk/ia/dq/ox;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/bytedance/msdk/ia/dq/ox;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static d(I)Z
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/ox/d;I)I
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->wn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-eqz p1, :cond_b

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/ox/d;->s()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/core/ox/d;->dq(I)Z

    move-result p2

    if-nez p2, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/ox/d;->d()I

    move-result p2

    if-nez p2, :cond_3

    const/4 p0, 0x3

    return p0

    :cond_3
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/ox/d;->dq()I

    move-result p2

    if-nez p2, :cond_4

    const/4 p0, 0x4

    return p0

    :cond_4
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/ox/d;->mn()Z

    move-result p2

    if-nez p2, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/core/ox/d;->dq(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->xz()I

    move-result p2

    if-nez p2, :cond_7

    const/4 p0, 0x7

    return p0

    :cond_7
    invoke-static {p0, p1}, Lcom/bytedance/msdk/core/ox/ox;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/ox/d;)Z

    move-result p1

    if-nez p1, :cond_8

    const/16 p0, 0x8

    return p0

    :cond_8
    invoke-static {p0}, Lcom/bytedance/msdk/core/ox/ox;->dq(Lcom/bytedance/msdk/core/no/d;)Z

    move-result p0

    if-eqz p0, :cond_9

    const/16 p0, 0x9

    return p0

    :cond_9
    const/16 p0, 0xc8

    return p0

    :cond_a
    :goto_0
    const/4 p0, 0x6

    return p0

    :cond_b
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;)Lcom/bytedance/msdk/core/no/d;
    .locals 29

    move-object/from16 v1, p1

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->nh()Lcom/bytedance/msdk/core/ox/d;

    move-result-object v2

    const-string v0, "----\u9884\u7f13\u5b58\u4f18\u5316\u5224\u65ad\u662f\u5426\u53ef\u4ee5\u53d1\u8d77\u9884\u7f13\u5b58\u5f00\u59cb"

    const-string v3, "TMe"

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f85\u68c0\u6d4b\u7684 behaviorState = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/api/dq/d;->o()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/api/dq/d;->o()I

    move-result v4

    invoke-static {v1, v2, v4}, Lcom/bytedance/msdk/core/ox/ox;->dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/ox/d;I)I

    move-result v4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const/16 v6, 0xc8

    if-ne v4, v6, :cond_14

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    const-string v8, " adnrit = "

    const-string v9, "adnName = "

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/msdk/core/no/no;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_e

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/bytedance/msdk/core/no/no;

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/bytedance/msdk/core/ox/dq;

    if-nez v12, :cond_a

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/d;->xz()I

    move-result v13

    invoke-virtual {v2, v14, v15}, Lcom/bytedance/msdk/core/ox/d;->dq(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v21

    invoke-virtual {v2, v14, v15}, Lcom/bytedance/msdk/core/ox/d;->d(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v23

    move-object/from16 v27, v0

    const-string v0, " adnRit "

    const-wide/16 v25, 0x0

    cmpl-double v16, v21, v25

    if-nez v16, :cond_2

    cmpl-double v16, v23, v25

    if-nez v16, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "\u6ca1\u6709\u914d\u7f6e\u89c4\u5219\uff0c\u76f4\u63a5\u6dfb\u52a0\u5230adn list\u4e2d adnName = "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    goto :goto_1

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    const v16, 0x36ee80

    mul-int v13, v13, v16

    move-object/from16 v28, v2

    int-to-long v1, v13

    sub-long v16, v18, v1

    invoke-static {}, Lcom/bytedance/msdk/ia/dq/ox;->dq()Lcom/bytedance/msdk/ia/dq/ox;

    move-result-object v13

    invoke-virtual/range {v13 .. v19}, Lcom/bytedance/msdk/ia/dq/ox;->query(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/bytedance/msdk/ia/dq/d;

    invoke-virtual {v13}, Lcom/bytedance/msdk/ia/dq/d;->dq()Ljava/lang/String;

    move-result-object v14

    const-string v15, "send"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_4

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v13}, Lcom/bytedance/msdk/ia/dq/d;->dq()Ljava/lang/String;

    move-result-object v14

    const-string v15, "fill"

    invoke-static {v14, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {v13}, Lcom/bytedance/msdk/ia/dq/d;->dq()Ljava/lang/String;

    move-result-object v13

    const-string v14, "show"

    invoke-static {v13, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    int-to-double v13, v2

    move-wide v15, v13

    int-to-double v13, v1

    div-double v13, v15, v13

    move-wide/from16 v17, v13

    goto :goto_3

    :cond_7
    move-wide/from16 v17, v25

    :goto_3
    if-eqz v12, :cond_8

    int-to-double v13, v1

    move-wide v15, v13

    int-to-double v13, v12

    div-double v25, v15, v13

    :cond_8
    move-wide/from16 v19, v25

    new-instance v16, Lcom/bytedance/msdk/core/ox/dq;

    invoke-virtual/range {v28 .. v28}, Lcom/bytedance/msdk/core/ox/d;->dq()I

    move-result v25

    invoke-virtual/range {v28 .. v28}, Lcom/bytedance/msdk/core/ox/d;->iw()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v16 .. v26}, Lcom/bytedance/msdk/core/ox/dq;-><init>(DDDDILjava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/core/ox/dq;->d(I)V

    invoke-virtual {v0, v12}, Lcom/bytedance/msdk/core/ox/dq;->dq(I)V

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/core/ox/dq;->ox(I)V

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v12, v0

    goto :goto_4

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6570\u636e\u5e93\u91cc\u6ca1\u6709\u67e5\u8be2\u5230\u6570\u636e\uff0c\u76f4\u63a5\u6dfb\u52a0\u5230adn list\u4e2d adnName = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_a
    move-object/from16 v27, v0

    move-object/from16 v28, v2

    :goto_4
    if-eqz v12, :cond_b

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/bytedance/msdk/core/ox/dq;->dq(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/bytedance/msdk/core/ox/dq;->d(Ljava/lang/String;)V

    const-string v0, "compareData "

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_b
    if-eqz v12, :cond_d

    invoke-virtual {v12}, Lcom/bytedance/msdk/core/ox/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {v6, v11}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_c
    move-object/from16 v27, v0

    move-object/from16 v28, v2

    :cond_d
    :goto_5
    move-object/from16 v1, p1

    move-object/from16 v0, v27

    move-object/from16 v2, v28

    goto/16 :goto_1

    :cond_e
    move-object/from16 v27, v0

    move-object/from16 v28, v2

    const-string v0, "\u7b5b\u9009\u6389\u4ee3\u7801\u4f4d \u540e\u7559\u4e0b\u7684\u4ee3\u7801\u4f4d ------- "

    invoke-static {v3, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/no/no;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v3, v10}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_f
    invoke-virtual {v4}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {v5, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_11
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ne v0, v1, :cond_12

    const/16 v0, 0xb

    const/16 v4, 0xb

    goto :goto_8

    :cond_12
    const/16 v0, 0xa

    const/16 v4, 0xa

    :goto_8
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/core/no/d;->f()Lcom/bytedance/msdk/core/no/d;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/bytedance/msdk/core/no/d;->dq(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/d;->no()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {v0, v6}, Lcom/bytedance/msdk/core/no/d;->d(Ljava/util/List;)V

    goto :goto_9

    :cond_13
    invoke-virtual {v0, v6}, Lcom/bytedance/msdk/core/no/d;->dq(Ljava/util/List;)V

    :goto_9
    move-object v6, v0

    move-object v0, v7

    :goto_a
    move v3, v4

    goto :goto_b

    :cond_14
    move-object/from16 v28, v2

    move-object v6, v0

    goto :goto_a

    :goto_b
    if-nez v6, :cond_15

    move-object/from16 v1, p1

    move-object v4, v5

    move-object/from16 v2, v28

    move-object v5, v0

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/msdk/core/ox/ox;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/ox/d;ILjava/util/Set;Ljava/util/Map;)V

    move-object v2, v6

    goto :goto_c

    :cond_15
    move-object/from16 v1, p0

    move v4, v3

    move-object v2, v6

    move-object/from16 v3, v28

    move-object v6, v0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/msdk/core/ox/ox;->dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/ox/d;ILjava/util/Set;Ljava/util/Map;)V

    :goto_c
    if-eqz p1, :cond_16

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/core/no/d;->xz()I

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/msdk/core/ox/ox;->dq(Ljava/lang/String;I)V

    :cond_16
    return-object v2
.end method

.method private static dq(Lcom/bytedance/msdk/core/ox/d;)Lorg/json/JSONArray;
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/bytedance/msdk/core/ox/d;->dq:Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static dq(ILcom/bytedance/msdk/core/ox/d;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/msdk/core/ox/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/ox/dq;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "rule_id"

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/ox/d;->ox()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "rule_timestamp"

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/ox/d;->p()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p0}, Lcom/bytedance/msdk/core/ox/ox;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v1, "condition"

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/ox/d;->dq()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const/16 p1, 0xa

    if-eq p0, p1, :cond_2

    const/16 p1, 0xb

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    const-string p1, "rule_inuse"

    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    if-eqz p2, :cond_5

    :try_start_0
    new-instance p0, Ljava/text/DecimalFormat;

    const-string p1, "#0.000"

    invoke-direct {p0, p1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/core/ox/dq;

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/ox/dq;->d()D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/ox/dq;->ox()D

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_2

    :cond_4
    const-string p0, "ssr"

    invoke-virtual {p1, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "srr"

    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "res"

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_3
    return-object v0
.end method

.method private static dq(Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/ox/d;ILjava/util/Set;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/api/dq/d;",
            "Lcom/bytedance/msdk/core/no/d;",
            "Lcom/bytedance/msdk/core/ox/d;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/core/ox/dq;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/msdk/api/dq/d;->no()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string p0, "TMe"

    const-string p1, "\u9884\u7f13\u5b58\u4f18\u5316\u5b58\u5728\u57cb\u70b9\u6570\u636e \u65e0\u9700\u91cd\u65b0\u5b58\u50a8"

    invoke-static {p0, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "result"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-static {p3}, Lcom/bytedance/msdk/core/ox/ox;->dq(I)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/dq/d;->dq(Lorg/json/JSONObject;)V

    return-void

    :cond_1
    const-string v1, "perform"

    invoke-static {p3, p2, p5}, Lcom/bytedance/msdk/core/ox/ox;->dq(ILcom/bytedance/msdk/core/ox/d;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p5

    invoke-virtual {v0, v1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {p3}, Lcom/bytedance/msdk/core/ox/ox;->d(I)Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/dq/d;->dq(Lorg/json/JSONObject;)V

    return-void

    :cond_2
    const-string p3, "behavior_state"

    invoke-static {p2}, Lcom/bytedance/msdk/core/ox/ox;->dq(Lcom/bytedance/msdk/core/ox/d;)Lorg/json/JSONArray;

    move-result-object p5

    invoke-virtual {v0, p3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "condition"

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/ox/d;->d()I

    move-result p2

    invoke-virtual {v0, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p1, :cond_3

    :try_start_1
    const-string p2, "behavior_ttl"

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/d;->xz()I

    move-result p1

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_3
    :goto_0
    if-eqz p4, :cond_5

    :try_start_2
    invoke-interface {p4}, Ljava/util/Set;->size()I

    move-result p1

    if-eqz p1, :cond_5

    new-instance p1, Lorg/json/JSONArray;

    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    :cond_4
    const-string p2, "filtered_adn"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_5
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/api/dq/d;->dq(Lorg/json/JSONObject;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    return-void
.end method

.method public static dq(Ljava/lang/String;I)V
    .locals 4

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->nh()Lcom/bytedance/msdk/core/ox/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const v2, 0x36ee80

    mul-int p1, p1, v2

    int-to-long v2, p1

    sub-long/2addr v0, v2

    const-string p1, "---\u9884\u7f13\u5b58\u4f18\u5316\u5220\u9664\u5b58\u50a8\u7684\u8fc7\u671f\u6570\u636e primeRit = "

    const-string v2, " startTime = "

    invoke-static {p1, p0, v2}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "TMe"

    invoke-static {v2, p1}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/ia/dq/ox;->dq()Lcom/bytedance/msdk/ia/dq/ox;

    move-result-object p1

    invoke-virtual {p1, p0, v0, v1}, Lcom/bytedance/msdk/ia/dq/ox;->dq(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->nh()Lcom/bytedance/msdk/core/ox/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/ia/dq/ox;->dq()Lcom/bytedance/msdk/ia/dq/ox;

    move-result-object v0

    const-string v1, "show"

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/bytedance/msdk/ia/dq/ox;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static dq(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private static dq(Lcom/bytedance/msdk/core/no/d;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->xz()I

    move-result v1

    int-to-long v1, v1

    const-wide/32 v3, 0x36ee80

    mul-long v1, v1, v3

    sub-long v4, v6, v1

    invoke-static {}, Lcom/bytedance/msdk/ia/dq/ox;->dq()Lcom/bytedance/msdk/ia/dq/ox;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/msdk/ia/dq/ox;->query(Ljava/lang/String;Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method private static dq(Lcom/bytedance/msdk/core/no/d;Lcom/bytedance/msdk/core/ox/d;)Z
    .locals 8

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->t()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/bytedance/msdk/core/ox/d;->dq(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->fw()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Lcom/bytedance/msdk/core/ox/d;->d(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v1, v2, v6

    if-nez v1, :cond_1

    cmpl-double v1, v4, v6

    if-eqz v1, :cond_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public static ox(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/f/ox;->nh()Lcom/bytedance/msdk/core/ox/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/ia/dq/ox;->dq()Lcom/bytedance/msdk/ia/dq/ox;

    move-result-object v0

    const-string v1, "fill"

    invoke-virtual {v0, p0, p1, p2, v1}, Lcom/bytedance/msdk/ia/dq/ox;->insert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
