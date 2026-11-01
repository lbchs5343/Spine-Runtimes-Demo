.class public Lcom/bytedance/msdk/ox/ox/d/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/msdk/ox/ox/d/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/msdk/ox/ox/d/dq$dq;)V
    .locals 16

    invoke-interface/range {p1 .. p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq()Lcom/bytedance/msdk/ox/s/d/d;

    move-result-object v0

    invoke-interface/range {p1 .. p1}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->d()Lcom/bytedance/msdk/ox/s/dq/d;

    move-result-object v1

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ia()Lcom/bytedance/msdk/core/no/no;

    move-result-object v2

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/msdk/api/dq/d;->k()Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->p()Z

    move-result v4

    const-string v5, "TMe"

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/bytedance/msdk/core/kk/no;->ox(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "adn \u8bf7\u6c42\u89e6\u53d1\u6b21\u6570\u62e6\u622a............"

    invoke-static {v5, v4}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/no;->dq()Lcom/bytedance/msdk/core/kk/no;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/bytedance/msdk/core/kk/no;->dq(Ljava/lang/String;Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v3

    const v4, 0xa051

    if-eqz v3, :cond_0

    new-instance v5, Lcom/bytedance/msdk/api/d/d;

    invoke-static {v4}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-direct {v5, v4, v6, v7, v3}, Lcom/bytedance/msdk/api/d/d;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    move-object v10, v5

    goto :goto_1

    :cond_0
    new-instance v5, Lcom/bytedance/msdk/api/dq;

    invoke-static {v4}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v4, v3}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->s()Z

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v7

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v8

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v9

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v6

    iget-boolean v13, v6, Lcom/bytedance/msdk/core/no/o;->s:Z

    const/4 v14, 0x0

    const/4 v6, 0x2

    const-wide/16 v11, -0x1

    invoke-static/range {v2 .. v14}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v6

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v7

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v4, v2

    move-object v2, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v15}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v10, v2

    move-object v2, v4

    invoke-virtual {v0, v10, v2}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V

    return-void

    :cond_1
    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->p()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v6}, Lcom/bytedance/msdk/core/kk/ig;->ox(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string v4, "adn \u8bf7\u6c42\u89e6\u53d1\u65f6\u95f4\u95f4\u9694\u62e6\u622a............"

    invoke-static {v5, v4}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/bytedance/msdk/core/kk/ig;->p(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/msdk/core/kk/kk;

    move-result-object v4

    const v5, 0xa052

    if-eqz v4, :cond_2

    new-instance v6, Lcom/bytedance/msdk/api/d/ox;

    invoke-static {v5}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/msdk/core/kk/ig;->dq()Lcom/bytedance/msdk/core/kk/ig;

    move-result-object v9

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v3, v10}, Lcom/bytedance/msdk/core/kk/ig;->dq(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/bytedance/msdk/core/kk/kk;->o()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v5, v7, v3, v4}, Lcom/bytedance/msdk/api/d/ox;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    move-object v10, v6

    goto :goto_3

    :cond_2
    new-instance v6, Lcom/bytedance/msdk/api/dq;

    invoke-static {v5}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v5, v3}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    goto :goto_2

    :goto_3
    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->s()Z

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v7

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v8

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v9

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v6

    iget-boolean v13, v6, Lcom/bytedance/msdk/core/no/o;->s:Z

    const/4 v14, 0x0

    const/4 v6, 0x2

    const-wide/16 v11, -0x1

    invoke-static/range {v2 .. v14}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v6

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v7

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v4, v2

    move-object v2, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v15}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v10, v2

    move-object v2, v4

    invoke-virtual {v0, v10, v2}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/bytedance/msdk/core/kk/ox;->dq()Lcom/bytedance/msdk/core/kk/ox;

    move-result-object v3

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->jy()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6}, Lcom/bytedance/msdk/core/kk/ox;->dq(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "adn \u8bf7\u6c42\u89e6\u53d1\u4e86\u9519\u8bef\u7801\u62e6\u622a............"

    invoke-static {v5, v3}, Lcom/bytedance/msdk/dq/s/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v10, Lcom/bytedance/msdk/api/d/dq;

    const v3, 0x9c6c

    invoke-static {v3}, Lcom/bytedance/msdk/api/dq;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v10, v3, v4}, Lcom/bytedance/msdk/api/d/dq;-><init>(ILjava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v4

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->s()Z

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v7

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v8

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v9

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->c()Lcom/bytedance/msdk/core/no/o;

    move-result-object v6

    iget-boolean v13, v6, Lcom/bytedance/msdk/core/no/o;->s:Z

    const/4 v14, 0x0

    const/4 v6, 0x2

    const-wide/16 v11, -0x1

    invoke-static/range {v2 .. v14}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/core/no/no;Lcom/bytedance/msdk/api/dq/d;Ljava/lang/String;ZIIIILcom/bytedance/msdk/api/dq;JZZ)V

    invoke-virtual {v1}, Lcom/bytedance/msdk/ox/s/dq/d;->gh()Lcom/bytedance/msdk/api/dq/d;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->ox()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->mn()I

    move-result v6

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/s/d/d;->iw()I

    move-result v7

    invoke-static {}, Lcom/bytedance/msdk/core/s/dq/dq;->dq()Lcom/bytedance/msdk/core/s/dq/dq;

    move-result-object v1

    invoke-virtual {v2}, Lcom/bytedance/msdk/core/no/no;->cd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/bytedance/msdk/core/s/dq/dq;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    move-object v4, v2

    move-object v2, v10

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static/range {v2 .. v15}, Lcom/bytedance/msdk/s/iw;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/api/dq/d;Lcom/bytedance/msdk/core/no/no;IIILjava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    move-object v10, v2

    move-object v2, v4

    invoke-virtual {v0, v10, v2}, Lcom/bytedance/msdk/ox/s/d/d;->dq(Lcom/bytedance/msdk/api/dq;Lcom/bytedance/msdk/core/no/no;)V

    return-void

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v1, v0}, Lcom/bytedance/msdk/ox/ox/d/dq$dq;->dq(Lcom/bytedance/msdk/ox/ox/d/dq;)V

    return-void
.end method
