.class public final Lcom/bykv/vk/openvk/preload/geckox/q/p;
.super Ljava/lang/Object;


# direct methods
.method private static d(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/d;)Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;
    .locals 11

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/preload/geckox/q/d;->dq()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;

    iget-object v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->p:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-wide v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->iw:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    :cond_0
    iget-boolean v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ia:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->kk:Z

    if-eqz v3, :cond_4

    new-instance v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ia:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->dq:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mn:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ox:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->f:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->kk:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->cd:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->fw:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ox:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->s:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->o:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->p:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->no:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->s:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ig:Ljava/util/List;

    iget-wide v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->mn:J

    iget-wide v6, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->iw:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->q:Ljava/lang/Long;

    iget-boolean v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->o:Z

    if-nez v3, :cond_2

    new-instance v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ox:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    const-string v4, "403"

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->p:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->r:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->s:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->f:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->kk:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->fw:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ox:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->cd:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->s:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->o:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->p:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->no:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->s:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ig:Ljava/util/List;

    :cond_1
    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_2
    iget-boolean v3, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->no:Z

    if-eqz v3, :cond_3

    new-instance v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->dq:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mn:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ia:Ljava/lang/String;

    const/16 v4, 0x66

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->fw:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ox:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->cd:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ox:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    iget-wide v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->q:J

    iget-wide v6, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->mn:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->jy:Ljava/lang/Long;

    iget-wide v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->jy:J

    iget-wide v6, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->q:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->f:Ljava/lang/Long;

    goto/16 :goto_0

    :cond_3
    new-instance v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->dq:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mn:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ia:Ljava/lang/String;

    const/16 v4, 0x67

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    const-string v4, "501"

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->p:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ox:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->fw:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ox:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->cd:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->i:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->s:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_4
    new-instance v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;-><init>()V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x65

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->dq:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mn:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ia:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ox:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->f:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->kk:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->fw:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ox:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->cd:Ljava/lang/Long;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->s:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->o:Ljava/lang/Integer;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->p:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->no:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->s:Ljava/util/List;

    invoke-static {v4}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ig:Ljava/util/List;

    iget-boolean v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ia:Z

    if-nez v4, :cond_5

    const-string v4, "301"

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->p:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->s:Ljava/util/List;

    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->s:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;

    iget-object v4, v4, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;->d:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->s:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-boolean v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->kk:Z

    if-nez v4, :cond_6

    const-string v4, "402"

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->p:Ljava/lang/String;

    iget-object v4, v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->gh:Ljava/lang/String;

    iput-object v4, v3, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->s:Ljava/lang/String;

    :cond_6
    :goto_1
    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;Ljava/util/List;)V

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/dq/d;->dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/geckox/dq/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq/d;->dq()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/utils/d;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/utils/kk;->dq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/ig/d;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->ia:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-object v5, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->kk:Ljava/lang/String;

    iget-object v6, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->o:Ljava/lang/String;

    iget-object v9, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->mp:Ljava/lang/String;

    iget-object v10, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->ig:Ljava/lang/String;

    invoke-direct/range {v2 .. v10}, Lcom/bykv/vk/openvk/preload/geckox/ig/d;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;

    invoke-direct {p0}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;-><init>()V

    iput-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/ig/d;

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;->d:Ljava/util/List;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    iput-object p1, v1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mp:Ljava/lang/String;

    goto :goto_2

    :cond_9
    return-object p0
.end method

.method private static d(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;)Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "params_for_special"

    const-string v2, "gecko"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "app_version"

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->kk:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "api_version"

    const-string v2, "v3"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->ia:Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-string p0, "aid"

    invoke-virtual {v0, p0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string p0, "x_tt_logid"

    iget-object v1, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->s:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "http_status"

    iget v1, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->mn:I

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, "err_msg"

    iget-object v1, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->p:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->s:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const-string v1, "custom_info"

    const-string v2, "local_info"

    const-string v3, "deployments_info"

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->d:Ljava/lang/String;

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->dq:Ljava/lang/String;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p0, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string p0, ""

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "os_version"

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_platform"

    const-string v1, "android"

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "ac"

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;->iw:Ljava/lang/String;

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-object v0
.end method

.method private static dq(Ljava/util/List;)Ljava/lang/Integer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;",
            ">;)",
            "Ljava/lang/Integer;"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static dq(Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;Lcom/bykv/vk/openvk/preload/geckox/ig/d;)Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "params_for_special"

    const-string v2, "gecko"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "region"

    iget-object v2, p1, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->no:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "err_code"

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "err_msg"

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->s:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sdk_version"

    iget-object v2, p1, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "access_key"

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "stats_type"

    iget-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_id"

    iget-object v2, p1, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ox:Ljava/lang/Long;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_0
    const-string v1, "patch_id"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "group_name"

    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    iget v4, p1, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->ox:I

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "app_version"

    iget-object v4, p1, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device_model"

    iget-object v4, p1, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channel"

    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    if-nez v1, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_1
    const-string v1, "id"

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "ac"

    iget-object p1, p1, Lcom/bykv/vk/openvk/preload/geckox/ig/d;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->o:Ljava/lang/Integer;

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    :goto_2
    const-string v1, "download_retry_times"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->no:Ljava/lang/String;

    const-string v1, ""

    if-nez p1, :cond_3

    move-object p1, v1

    :cond_3
    const-string v4, "download_url"

    invoke-virtual {v0, v4, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "download_duration"

    iget-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->q:Ljava/lang/Long;

    invoke-virtual {v0, p1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ig:Ljava/util/List;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, p1

    :goto_3
    const-string p1, "download_fail_records"

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "log_id"

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mp:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->jy:Ljava/lang/Long;

    if-nez p1, :cond_5

    move-wide v4, v2

    goto :goto_4

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    :goto_4
    const-string p1, "active_check_duration"

    invoke-virtual {v0, p1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->f:Ljava/lang/Long;

    if-nez p0, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_5
    const-string p0, "apply_duration"

    invoke-virtual {v0, p0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-object v0
.end method

.method public static dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/d;)V
    .locals 5

    invoke-static {p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->d(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/d;)Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;->d:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->ox:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    const-string v3, "geckosdk_update_stats"

    iget-object v4, p1, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/ig/d;

    invoke-static {v2, v4}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;Lcom/bykv/vk/openvk/preload/geckox/ig/d;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/bykv/vk/openvk/preload/geckox/q/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "gecko-debug-tag"

    const-string v2, "UploadStatistic.upload:"

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->jy:Z

    if-eqz v0, :cond_3

    :try_start_1
    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq()Lcom/bykv/vk/openvk/preload/geckox/p/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bykv/vk/openvk/preload/geckox/p/d;->dq:Lcom/bykv/vk/openvk/preload/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bykv/vk/openvk/preload/dq/iw;->dq(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Lcom/bykv/vk/openvk/preload/geckox/p;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    :cond_3
    :goto_1
    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;)V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->ox:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "geckosdk_query_pkgs"

    invoke-static {p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->d(Lcom/bykv/vk/openvk/preload/geckox/p;Lcom/bykv/vk/openvk/preload/geckox/q/dq/ox;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/bykv/vk/openvk/preload/geckox/q/dq;->dq(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    const-string p1, "gecko-debug-tag"

    const-string v0, "UploadStatistic.upload:"

    invoke-static {p1, v0, p0}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private static dq(Lcom/bykv/vk/openvk/preload/geckox/p;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->no:Ljava/lang/String;

    const-string v2, "/gecko/server/packages/stats"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p;->dq()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bykv/vk/openvk/preload/geckox/q/p$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/bykv/vk/openvk/preload/geckox/q/p$1;-><init>(Lcom/bykv/vk/openvk/preload/geckox/p;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static dq(Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;",
            "Ljava/util/List<",
            "Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ji:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->bl:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->dq:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mn:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ia:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ox:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->kk:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->cd:Ljava/lang/Long;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->k:Ljava/util/List;

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->o:Ljava/lang/Integer;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->le:Ljava/lang/String;

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->no:Ljava/lang/String;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->k:Ljava/util/List;

    invoke-static {v1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ig:Ljava/util/List;

    iget-wide v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->e:J

    iget-wide v3, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->wp:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->q:Ljava/lang/Long;

    iget-boolean v0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->n:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->dq:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mn:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ia:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->cd:Ljava/lang/Long;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ox:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    iget-wide v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->kx:J

    iget-wide v3, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->e:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->jy:Ljava/lang/Long;

    iget-wide v1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->h:J

    iget-wide p0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->kx:J

    sub-long/2addr v1, p0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    iput-object p0, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->f:Ljava/lang/Long;

    return-void

    :cond_0
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->dq:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mn:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ia:Ljava/lang/String;

    const-string p1, "500"

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->p:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->cd:Ljava/lang/Long;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ox:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ir:Ljava/lang/String;

    iput-object p0, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->s:Ljava/lang/String;

    return-void

    :cond_1
    new-instance v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;

    invoke-direct {v0}, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->d:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->dq:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->mn:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->d:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ia:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ox:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->iw:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->f:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->kk:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->cd:Ljava/lang/Long;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->dq:Ljava/lang/Long;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->dq(Ljava/util/List;)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->o:Ljava/lang/Integer;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->le:Ljava/lang/String;

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->no:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->k:Ljava/util/List;

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/q/p;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->ig:Ljava/util/List;

    iget-boolean p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->ji:Z

    if-nez p1, :cond_2

    const-string p1, "300"

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->p:Ljava/lang/String;

    iget-object p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->k:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->k:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq$dq;->d:Ljava/lang/String;

    iput-object p0, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->s:Ljava/lang/String;

    return-void

    :cond_2
    iget-boolean p1, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->bl:Z

    if-nez p1, :cond_3

    const-string p1, "450"

    iput-object p1, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->p:Ljava/lang/String;

    iget-object p0, p0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/d;->op:Ljava/lang/String;

    iput-object p0, v0, Lcom/bykv/vk/openvk/preload/geckox/q/dq/dq$dq;->s:Ljava/lang/String;

    :cond_3
    return-void
.end method
