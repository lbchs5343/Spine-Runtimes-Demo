.class public Lcom/bytedance/msdk/ia/d/dq;
.super Ljava/lang/Object;


# direct methods
.method public static d(Lcom/bytedance/msdk/core/no/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->ce()I

    move-result p0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->v()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    const-string p0, "-1"

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public static dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/core/no/no;I)V
    .locals 23

    move-object/from16 v1, p1

    if-eqz p0, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    if-eqz v2, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "----------\u603b\u8d85\u65f6\u540e\u5c1d\u8bd5\u4ece\u590d\u7528\u6c60\u4e2d\u67e5\u627e\u5e7f\u544a\uff1aid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "   loadSort:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  showSort:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "   adnName:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v15, "TTMediationSDK"

    invoke-static {v15, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->r()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v7

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v8

    invoke-virtual {v7, v14, v3, v8}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v3, v2, v8}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Z)I

    move-result v7

    const/4 v9, 0x3

    if-ne v7, v9, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v14}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "----------\u53ef\u590d\u7528\uff1aid:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v15, v4}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v4

    move/from16 v6, p2

    invoke-virtual {v4, v14, v3, v1, v6}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/msdk/core/no/no;I)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v5

    invoke-virtual {v4, v3, v2, v5}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-gtz v5, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v7, v7, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/bytedance/msdk/d/s;->ia(Ljava/lang/String;)I

    move-result v7

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v10

    invoke-virtual {v10, v3}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v11

    xor-int/2addr v11, v8

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v12

    const/4 v13, 0x1

    const/16 v16, 0x0

    const/4 v5, 0x4

    move v8, v7

    const/16 v17, 0x1

    const/4 v7, 0x3

    const/16 v18, 0x3

    const/4 v9, 0x0

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object v3, v10

    move v4, v11

    const-wide/16 v10, -0x1

    move-object/from16 v21, v15

    move-object/from16 v15, v19

    const/4 v0, 0x3

    invoke-static/range {v1 .. v13}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v5, v0}, Lcom/bytedance/msdk/d/s;->o(I)V

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v5, v8}, Lcom/bytedance/msdk/d/s;->no(I)V

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual/range {p0 .. p0}, Lcom/bytedance/msdk/ox/s/dq/d;->d()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/d/s;->p(Z)V

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/d/s;->ox(Z)V

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-static {v14, v5, v15}, Lcom/bytedance/msdk/ia/d/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move-object/from16 v4, v20

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v3, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    move-object v0, v14

    const-wide/16 v13, 0x0

    const-wide/16 v15, -0x1

    const/4 v4, 0x0

    const/16 v22, 0x0

    const-string v5, "adn cache\u547d\u4e2d"

    const/16 v17, 0x1

    const-wide/16 v6, 0x0

    const/4 v11, 0x4

    const/4 v12, 0x0

    move/from16 v9, p2

    move-object/from16 p1, v0

    move-object v8, v2

    move-object/from16 v0, v21

    const/4 v2, 0x1

    invoke-static/range {v3 .. v16}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V

    move-object/from16 v3, p0

    invoke-static {v3, v1, v2}, Lcom/bytedance/msdk/ox/mn/dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/util/List;Z)V

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->w()Z

    move-result v4

    const-string v5, ",CPM="

    const-string v6, ",showSort="

    const-string v7, ",loadSort="

    const-string v8, ",\u5e7f\u544a\u7c7b\u578b\uff1a"

    const-string v9, ",slotId\uff1a"

    if-eqz v4, :cond_3

    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u590d\u7528\u6c60\u56de\u6eaf\u6210\u529f...........\u56de\u6eaf\u5230\u4e86P\u5c42\u5e7f\u544a_\u5f53\u524dP\u5c42\u5e7f\u544a\u7f13\u5b58\u6c60\u6570\u91cf\uff1a"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->jn()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v3, v1}, Lcom/bytedance/msdk/ox/s/dq/d;->dq(Ljava/util/List;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/d/s;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "\u590d\u7528\u6c60\u56de\u6eaf\u6210\u529f...........\u56de\u6eaf\u5230\u4e86\u666e\u901a\u5c42\u5e7f\u544a_\u5f53\u524d\u666e\u901a\u5e7f\u544a\u7f13\u5b58\u6c60\u6570\u91cf\uff1a"

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->b()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->m()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->ae()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->wq()I

    move-result v10

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v10

    invoke-virtual {v4, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private static dq(Ljava/lang/String;Lcom/bytedance/msdk/d/s;Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lcom/bytedance/msdk/core/s/dq/dq;->s(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/no/no;

    move-result-object p0

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->wp()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/d/s;->cd(I)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/d/s;->fw(I)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->q()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/d/s;->q(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->gh()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/msdk/d/s;->f(I)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/no;->k()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/msdk/d/s;->dq(D)V

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bytedance/msdk/core/no/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/core/no/d;->ce()I

    move-result p0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->d()Lcom/bytedance/msdk/core/f/ox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/core/f/ox;->yy()Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    const/4 v2, 0x1

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_2

    return v2

    :cond_2
    return v0

    :cond_3
    const-string p0, "-1"

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v2, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public static dq(Lcom/bytedance/msdk/ox/s/dq/d;Ljava/util/List;Ljava/util/Map;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/msdk/ox/s/dq/d;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/bytedance/msdk/core/no/no;",
            ">;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_b

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_b

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz p2, :cond_b

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const-string v4, "TTMediationSDK"

    if-eqz v2, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/bytedance/msdk/core/no/no;

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->p()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v7

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/bytedance/msdk/core/kk/no;->ox(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "adn \u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->p()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v7

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v1, v8}, Lcom/bytedance/msdk/core/kk/ig;->ox(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "adn \u8bf7\u6c42\u89e6\u53d1\u65f6\u95f4\u95f4\u9694\u62e6\u622a............"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/bytedance/msdk/core/kk/ox;->dq()Lcom/bytedance/msdk/core/kk/ox;

    move-result-object v7

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/bytedance/msdk/core/kk/ox;->dq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "adn \u8bf7\u6c42\u89e6\u53d1\u4e86\u9519\u8bef\u7801\u62e6\u622a............"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_7
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {p0, v6, v7}, Lcom/bytedance/msdk/ia/d/dq;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/core/no/no;I)V

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->jy()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u56de\u6eaf\u5230\u4e86\u6ee1\u8db3\u6570\u91cf\u7684\u5e7f\u544a.......\u6709\u5e7f\u544a\u56de\u8c03\u6210\u529f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_8
    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->mn()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->ia()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_a

    invoke-virtual {p0}, Lcom/bytedance/msdk/ox/s/dq/d;->o()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_9

    goto :goto_1

    :cond_9
    return v0

    :cond_a
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/s;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\u56de\u6eaf\u5230\u4e86\u5e7f\u544a.......\u6709\u5e7f\u544a\u56de\u8c03\u6210\u529f"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_b
    :goto_2
    return v0
.end method
