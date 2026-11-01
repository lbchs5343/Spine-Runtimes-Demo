.class public Lcom/bytedance/msdk/ox/ox/d/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/d/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lcom/bytedance/msdk/core/no/no;I)Z
    .locals 19

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    move/from16 v10, p6

    invoke-virtual {v2, v3, v0, v1, v10}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/msdk/core/no/no;I)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v2

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v3

    move-object/from16 v9, p3

    invoke-virtual {v2, v0, v9, v3}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;I)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x0

    if-eqz v14, :cond_2

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-gtz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v2, v2, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v9}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/msdk/d/s;->ia(Ljava/lang/String;)I

    move-result v8

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/msdk/ox/s/dq/d;->k()Z

    move-result v2

    const/16 v18, 0x1

    xor-int/lit8 v4, v2, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x3

    const/4 v9, 0x0

    const-wide/16 v10, -0x1

    move-object/from16 v2, p3

    move/from16 v6, p6

    invoke-static/range {v1 .. v13}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/bytedance/msdk/d/s;->o(I)V

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v5, v8}, Lcom/bytedance/msdk/d/s;->no(I)V

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v5, v15}, Lcom/bytedance/msdk/d/s;->p(Z)V

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v5, v15}, Lcom/bytedance/msdk/d/s;->ox(Z)V

    iget-object v5, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual/range {p3 .. p3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Lcom/bytedance/msdk/ox/mn/p;->dq(Lcom/bytedance/msdk/d/s;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v4, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v4, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v11

    const-wide/16 v14, 0x0

    const-wide/16 v16, -0x1

    const/4 v5, 0x0

    const-string v6, "adn cache\u547d\u4e2d"

    const-wide/16 v7, 0x0

    const/4 v12, 0x2

    const/4 v13, 0x0

    move-object/from16 v9, p3

    move/from16 v10, p6

    invoke-static/range {v4 .. v17}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/d/s;ILjava/lang/String;JLcom/bytedance/msdk/api/dq/d;IIILjava/lang/String;JJ)V

    move-object/from16 v0, p2

    invoke-virtual {v0, v2, v1}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Ljava/util/List;Lcom/bytedance/msdk/core/no/no;)V

    return v18

    :cond_2
    :goto_1
    return v15
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/ox/ox/d/dq$dq;)V
    .locals 8

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v6

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->d()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v4

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6}, Lcom/bytedance/msdk/core/no/no;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v2

    invoke-virtual {v0, v1, v5, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->p(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--==-- \u5e7f\u544a\u590d\u7528\uff0c\u6a21\u5f0f\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3}, Lcom/bytedance/msdk/core/s/dq/dq;->s(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TTMediationSDK"

    invoke-static {v1, v0}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v5, v4, v1}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;Z)I

    move-result v0

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox(I)V

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/ox/s/d/d;->dq(I)V

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->d()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v2

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v3

    const/4 v7, 0x2

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/msdk/ox/ox/d/iw;->dq(Lcom/bytedance/msdk/ox/s/dq/d;Lcom/bytedance/msdk/ox/s/d/d;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;Lcom/bytedance/msdk/core/no/no;I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_0
    move-object v1, p0

    if-ne v0, v2, :cond_2

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v0

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->s()I

    move-result v2

    invoke-virtual {v0, v5, v4, v2}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;Lcom/bytedance/msdk/api/dq/d;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/msdk/core/s/d/ig;

    iget-object v0, v0, Lcom/bytedance/msdk/core/s/d/ig;->dq:Lcom/bytedance/msdk/d/s;

    invoke-virtual {v4}, Lcom/bytedance/msdk/api/dq/d;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/msdk/d/s;->ia(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/msdk/ox/s/d/d;->d(I)V

    goto :goto_0

    :cond_1
    move-object v1, p0

    :cond_2
    :goto_0
    invoke-interface {p1, p0}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq;)V

    return-void
.end method
