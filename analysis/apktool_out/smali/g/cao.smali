.class public final synthetic Lg/cao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/cao;->b:I

    iput-object p1, p0, Lg/cao;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/cao;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/cao;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final e()Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lg/cao;->c:Ljava/lang/Object;

    check-cast v0, Lg/tq;

    iget-object v1, p0, Lg/cao;->d:Ljava/lang/Object;

    check-cast v1, Lg/dzt;

    iget-object v2, p0, Lg/cao;->a:Ljava/lang/Object;

    check-cast v2, Lg/czw;

    const/4 v3, 0x3

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v0}, Lg/tq;->aj()Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v2, Lg/hm;->zzb:Lg/hm;

    sget-object v5, Lg/edc;->n:Lg/ejd;

    invoke-virtual {v0, v2, v3, v5}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    invoke-interface {v1, v5}, Lg/dzt;->q(Lg/ejd;)V

    return-object v4

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :catch_1
    move-exception v2

    goto/16 :goto_1

    :cond_0
    iget-object v5, v2, Lg/czw;->a:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    sget v2, Lg/gbs;->a:I

    sget-object v2, Lg/hm;->zzz:Lg/hm;

    sget-object v5, Lg/edc;->q:Lg/ejd;

    invoke-virtual {v0, v2, v3, v5}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    invoke-interface {v1, v5}, Lg/dzt;->q(Lg/ejd;)V

    return-object v4

    :cond_1
    iget-boolean v5, v0, Lg/tq;->f:Z

    if-nez v5, :cond_2

    sget-object v2, Lg/hm;->zzA:Lg/hm;

    sget-object v5, Lg/edc;->h:Lg/ejd;

    invoke-virtual {v0, v2, v3, v5}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    invoke-interface {v1, v5}, Lg/dzt;->q(Lg/ejd;)V

    return-object v4

    :cond_2
    iget-object v5, v0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v6, v0, Lg/tq;->s:Lg/agh;

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v6, :cond_3

    :try_start_2
    sget-object v2, Lg/edc;->n:Lg/ejd;

    sget-object v5, Lg/hm;->zzbc:Lg/hm;

    sget v6, Lg/gbs;->a:I

    invoke-static {v4}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v3, v2, v6}, Lg/tq;->an(Lg/hm;ILg/ejd;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lg/dzt;->q(Lg/ejd;)V

    return-object v4

    :cond_3
    iget-object v5, v0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    iget-object v2, v2, Lg/czw;->a:Ljava/lang/String;

    iget-object v7, v0, Lg/tq;->y:Ljava/lang/String;

    iget-object v8, v0, Lg/tq;->g:Ljava/lang/String;

    iget-object v9, v0, Lg/tq;->w:Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sget v11, Lg/gbs;->a:I

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    invoke-static {v9, v10, v11, v7, v8}, Lg/gbs;->g(JLandroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    check-cast v6, Lg/eaw;

    invoke-virtual {v6, v5, v2, v11}, Lg/eaw;->n(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v2, "BillingClient"

    invoke-static {v0, v2}, Lg/gbs;->e(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v2

    const-string v3, "BillingClient"

    invoke-static {v0, v3}, Lg/gbs;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v0

    invoke-interface {v1, v0}, Lg/dzt;->q(Lg/ejd;)V

    return-object v4

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object v5, Lg/edc;->a:Lg/ejd;

    sget-object v6, Lg/hm;->zzB:Lg/hm;

    sget v7, Lg/gbs;->a:I

    invoke-static {v2}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v3, v5, v2}, Lg/tq;->an(Lg/hm;ILg/ejd;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lg/dzt;->q(Lg/ejd;)V

    goto :goto_2

    :goto_1
    sget-object v5, Lg/edc;->n:Lg/ejd;

    sget-object v6, Lg/hm;->zzB:Lg/hm;

    sget v7, Lg/gbs;->a:I

    invoke-static {v2}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v6, v3, v5, v2}, Lg/tq;->an(Lg/hm;ILg/ejd;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Lg/dzt;->q(Lg/ejd;)V

    :goto_2
    return-object v4
.end method

.method private final f()Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/cao;->c:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/tq;

    iget-object v0, v1, Lg/cao;->d:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg/emr;

    iget-object v0, v1, Lg/cao;->a:Ljava/lang/Object;

    check-cast v0, Lg/aoy;

    invoke-virtual {v2}, Lg/tq;->aj()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x52a

    const/4 v8, 0x7

    const/16 v9, 0x7c8

    if-nez v4, :cond_5

    sget-object v0, Lg/hm;->zzb:Lg/hm;

    sget-object v4, Lg/edc;->n:Lg/ejd;

    invoke-virtual {v2, v0, v8, v4}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    sget-object v0, Lg/fkz;->g:Lg/duz;

    sget-object v0, Lg/fun;->a:Lg/fun;

    iget-object v2, v3, Lg/emr;->n:Ljava/lang/Object;

    check-cast v2, Lg/gkr;

    if-eqz v4, :cond_3

    iget v3, v4, Lg/ejd;->a:I

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, v5}, Lg/fkz;->o(I)Lg/duz;

    move-result-object v0

    :cond_1
    invoke-virtual {v0}, Lg/duz;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lg/duz;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/x;

    const-string v4, "a"

    iget-object v5, v3, Lg/x;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v3}, Lg/gkr;->i(Lg/x;)V

    return-object v6

    :cond_2
    invoke-virtual {v2, v9}, Lg/gkr;->o(I)V

    return-object v6

    :cond_3
    :goto_0
    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    iget v0, v4, Lg/ejd;->a:I

    invoke-static {v0}, Lg/cdy;->j(I)I

    move-result v7

    :goto_1
    invoke-virtual {v2, v7}, Lg/gkr;->o(I)V

    return-object v6

    :cond_5
    iget-boolean v4, v2, Lg/tq;->ab:Z

    if-nez v4, :cond_b

    sget v0, Lg/gbs;->a:I

    sget-object v0, Lg/hm;->zzt:Lg/hm;

    sget-object v4, Lg/edc;->c:Lg/ejd;

    invoke-virtual {v2, v0, v8, v4}, Lg/tq;->ag(Lg/hm;ILg/ejd;)V

    sget-object v0, Lg/fkz;->g:Lg/duz;

    sget-object v0, Lg/fun;->a:Lg/fun;

    iget-object v2, v3, Lg/emr;->n:Ljava/lang/Object;

    check-cast v2, Lg/gkr;

    if-eqz v4, :cond_9

    iget v3, v4, Lg/ejd;->a:I

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0, v5}, Lg/fkz;->o(I)Lg/duz;

    move-result-object v0

    :cond_7
    invoke-virtual {v0}, Lg/duz;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lg/duz;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/x;

    const-string v4, "a"

    iget-object v5, v3, Lg/x;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v2, v3}, Lg/gkr;->i(Lg/x;)V

    return-object v6

    :cond_8
    invoke-virtual {v2, v9}, Lg/gkr;->o(I)V

    return-object v6

    :cond_9
    :goto_2
    if-nez v4, :cond_a

    goto :goto_3

    :cond_a
    iget v0, v4, Lg/ejd;->a:I

    invoke-static {v0}, Lg/cdy;->j(I)I

    move-result v7

    :goto_3
    invoke-virtual {v2, v7}, Lg/gkr;->o(I)V

    return-object v6

    :cond_b
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v8, Lg/fkz;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/bjy;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v13, "inapp"

    iget-object v0, v0, Lg/aoy;->h:Ljava/lang/Object;

    check-cast v0, Lg/fkz;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v8, :cond_1a

    add-int/lit8 v11, v10, 0x14

    if-le v11, v8, :cond_c

    move v12, v8

    goto :goto_5

    :cond_c
    move v12, v11

    :goto_5
    new-instance v14, Ljava/util/ArrayList;

    invoke-interface {v0, v10, v12}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v10

    invoke-direct {v14, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x0

    :goto_6
    if-ge v15, v12, :cond_d

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lg/bjy;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v9, "a"

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/16 v9, 0x7c8

    goto :goto_6

    :cond_d
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v12, "ITEM_ID_LIST"

    invoke-virtual {v9, v12, v10}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    move-object/from16 v16, v14

    iget-object v14, v2, Lg/tq;->y:Ljava/lang/String;

    const-string v10, "playBillingLibraryVersion"

    invoke-virtual {v9, v10, v14}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v10, v2, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v12, v2, Lg/tq;->s:Lg/agh;

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v12, :cond_e

    :try_start_2
    sget-object v0, Lg/edc;->n:Lg/ejd;

    sget-object v4, Lg/hm;->zzbc:Lg/hm;

    invoke-virtual {v2, v0, v4, v6}, Lg/tq;->be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;

    move-result-object v0

    goto/16 :goto_e

    :catch_0
    move-exception v0

    goto/16 :goto_c

    :catch_1
    move-exception v0

    goto/16 :goto_d

    :cond_e
    iget-boolean v10, v2, Lg/tq;->p:Z

    if-eqz v10, :cond_f

    iget-object v10, v2, Lg/tq;->z:Lg/cuf;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_f
    invoke-virtual {v2}, Lg/tq;->av()V

    invoke-virtual {v2}, Lg/tq;->av()V

    invoke-virtual {v2}, Lg/tq;->av()V

    invoke-virtual {v2}, Lg/tq;->av()V

    new-instance v10, Lg/cuf;

    const/16 v15, 0x10

    invoke-direct {v10, v15}, Lg/cuf;-><init>(I)V

    iget-boolean v15, v2, Lg/tq;->x:Z

    const/4 v5, 0x1

    if-eq v5, v15, :cond_10

    const/16 v5, 0x11

    goto :goto_7

    :cond_10
    const/16 v5, 0x14

    :goto_7
    iget-object v15, v2, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v20

    iget-object v15, v2, Lg/tq;->g:Ljava/lang/String;

    iget-object v6, v2, Lg/tq;->w:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v18

    move-object/from16 v17, v10

    invoke-static/range {v14 .. v19}, Lg/gbs;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lg/cuf;J)Landroid/os/Bundle;

    move-result-object v15

    move-object v10, v12

    check-cast v10, Lg/eaw;

    move v12, v11

    move v11, v5

    move v5, v12

    move-object v14, v9

    move-object/from16 v12, v20

    invoke-virtual/range {v10 .. v15}, Lg/eaw;->p(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v6, :cond_11

    sget-object v0, Lg/edc;->j:Lg/ejd;

    sget-object v4, Lg/hm;->zzR:Lg/hm;

    const/4 v5, 0x0

    invoke-virtual {v2, v0, v4, v5}, Lg/tq;->be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;

    move-result-object v0

    goto/16 :goto_e

    :cond_11
    const-string v9, "DETAILS_LIST"

    invoke-virtual {v6, v9}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v9

    const/4 v10, 0x6

    if-nez v9, :cond_13

    const-string v0, "BillingClient"

    invoke-static {v6, v0}, Lg/gbs;->e(Landroid/os/Bundle;Ljava/lang/String;)I

    move-result v0

    const-string v4, "BillingClient"

    invoke-static {v6, v4}, Lg/gbs;->f(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_12

    invoke-static {v0, v4}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v0

    sget-object v4, Lg/hm;->zzw:Lg/hm;

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v4, v9}, Lg/tq;->be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;

    move-result-object v0

    goto/16 :goto_e

    :cond_12
    const/4 v9, 0x0

    invoke-static {v10, v4}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v0

    sget-object v4, Lg/hm;->zzS:Lg/hm;

    invoke-virtual {v2, v0, v4, v9}, Lg/tq;->be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;

    move-result-object v0

    goto/16 :goto_e

    :cond_13
    const/4 v9, 0x0

    const-string v11, "DETAILS_LIST"

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v11

    if-nez v11, :cond_14

    sget-object v0, Lg/edc;->j:Lg/ejd;

    sget-object v4, Lg/hm;->zzT:Lg/hm;

    invoke-virtual {v2, v0, v4, v9}, Lg/tq;->be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;

    move-result-object v0

    goto/16 :goto_e

    :cond_14
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    const/4 v14, 0x0

    :goto_8
    if-ge v14, v12, :cond_15

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    :try_start_3
    new-instance v10, Lg/x;

    invoke-direct {v10, v15}, Lg/x;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    invoke-virtual {v10}, Lg/x;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v0

    const-string v0, "Got product details: "

    invoke-virtual {v0, v15}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v15, "BillingClient"

    invoke-static {v15, v0}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, v18

    const/4 v10, 0x6

    goto :goto_8

    :catch_2
    move-exception v0

    const-string v4, "Error trying to decode SkuDetails."

    const/4 v5, 0x6

    invoke-static {v5, v4}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v4

    sget-object v5, Lg/hm;->zzU:Lg/hm;

    invoke-virtual {v2, v4, v5, v0}, Lg/tq;->be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;

    move-result-object v0

    goto/16 :goto_e

    :cond_15
    move-object/from16 v18, v0

    const-string v0, "UNFETCHED_PRODUCT_LIST"

    invoke-virtual {v6, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_4
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_16

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    new-instance v11, Lg/va;

    invoke-direct {v11, v10}, Lg/va;-><init>(Ljava/lang/String;)V

    const-string v10, "BillingClient"

    invoke-virtual {v11}, Lg/va;->toString()Ljava/lang/String;

    move-result-object v12

    const-string v14, "Got unfetchedProduct: "

    invoke-virtual {v14, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Lg/gbs;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :catch_3
    move-exception v0

    goto/16 :goto_b

    :cond_16
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lg/bjy;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_17
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_18

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/x;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v14, "a"

    iget-object v15, v12, Lg/x;->h:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_17

    const-string v14, "inapp"

    iget-object v12, v12, Lg/x;->b:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_17

    goto :goto_a

    :cond_18
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    const-string v12, "productId"

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v10, "a"

    invoke-virtual {v11, v12, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "type"

    const-string v12, "inapp"

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "statusCode"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    new-instance v11, Lg/va;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Lg/va;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_a

    :cond_19
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    move v10, v5

    move-object/from16 v0, v18

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v9, 0x7c8

    goto/16 :goto_4

    :goto_b
    const-string v4, "Error trying to decode SkuDetails."

    const/4 v5, 0x6

    invoke-static {v5, v4}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v4

    sget-object v5, Lg/hm;->zzU:Lg/hm;

    invoke-virtual {v2, v4, v5, v0}, Lg/tq;->be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;

    move-result-object v0

    goto :goto_e

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v10
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Landroid/os/DeadObjectException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_c
    sget-object v4, Lg/edc;->a:Lg/ejd;

    sget-object v5, Lg/hm;->zzQ:Lg/hm;

    invoke-virtual {v2, v4, v5, v0}, Lg/tq;->be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;

    move-result-object v0

    goto :goto_e

    :goto_d
    sget-object v4, Lg/edc;->n:Lg/ejd;

    sget-object v5, Lg/hm;->zzQ:Lg/hm;

    invoke-virtual {v2, v4, v5, v0}, Lg/tq;->be(Lg/ejd;Lg/hm;Ljava/lang/Exception;)Lg/dsg;

    move-result-object v0

    goto :goto_e

    :cond_1a
    const-string v0, ""

    new-instance v2, Lg/dsg;

    const/4 v12, 0x0

    invoke-direct {v2, v12, v0, v4, v7}, Lg/dsg;-><init>(ILjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    move-object v0, v2

    :goto_e
    iget v2, v0, Lg/dsg;->d:I

    iget-object v4, v0, Lg/dsg;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v2, v4}, Lg/edc;->s(ILjava/lang/String;)Lg/ejd;

    move-result-object v2

    iget-object v0, v0, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    iget-object v3, v3, Lg/emr;->n:Ljava/lang/Object;

    check-cast v3, Lg/gkr;

    iget v2, v2, Lg/ejd;->a:I

    if-eqz v2, :cond_1b

    invoke-static {v2}, Lg/cdy;->j(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lg/gkr;->o(I)V

    :goto_f
    const/16 v21, 0x0

    goto :goto_10

    :cond_1b
    invoke-static {v0}, Lg/acw;->u(Ljava/util/Collection;)Z

    move-result v2

    if-nez v2, :cond_1d

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/x;

    const-string v4, "a"

    iget-object v5, v2, Lg/x;->h:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v3, v2}, Lg/gkr;->i(Lg/x;)V

    goto :goto_f

    :cond_1d
    const/16 v2, 0x7c8

    invoke-virtual {v3, v2}, Lg/gkr;->o(I)V

    goto :goto_f

    :goto_10
    return-object v21
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lg/cao;->b:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cao;->c:Ljava/lang/Object;

    check-cast v0, Lg/tq;

    iget-object v1, p0, Lg/cao;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/cao;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    :try_start_0
    iget-object v3, v0, Lg/tq;->k:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, v0, Lg/tq;->s:Lg/agh;

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v4, :cond_0

    :try_start_2
    sget-object v0, Lg/edc;->n:Lg/ejd;

    sget-object v1, Lg/hm;->zzbc:Lg/hm;

    invoke-static {v0, v1}, Lg/gbs;->h(Lg/ejd;Lg/hm;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_2

    :cond_0
    iget-object v0, v0, Lg/tq;->aa:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    check-cast v4, Lg/eaw;

    invoke-virtual {v4, v0, v1, v2}, Lg/eaw;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/DeadObjectException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Landroid/os/DeadObjectException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_0
    sget-object v1, Lg/edc;->a:Lg/ejd;

    sget-object v2, Lg/hm;->zze:Lg/hm;

    invoke-static {v0}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Lg/gbs;->h(Lg/ejd;Lg/hm;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    move-object v0, v1

    goto :goto_3

    :goto_2
    sget-object v1, Lg/edc;->n:Lg/ejd;

    sget-object v2, Lg/hm;->zze:Lg/hm;

    invoke-static {v0}, Lg/cgl;->b(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Lg/gbs;->h(Lg/ejd;Lg/hm;)Landroid/os/Bundle;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, "ADDITIONAL_LOG_DETAILS"

    invoke-virtual {v1, v2, v0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    return-object v0

    :pswitch_0
    iget-object v0, p0, Lg/cao;->c:Ljava/lang/Object;

    check-cast v0, Lg/sq;

    iget-object v1, p0, Lg/cao;->d:Ljava/lang/Object;

    check-cast v1, Lg/awn;

    iget-object v2, p0, Lg/cao;->a:Ljava/lang/Object;

    check-cast v2, Lg/ii;

    iget-object v0, v0, Lg/sq;->e:Landroid/content/Context;

    sget-object v3, Lg/bme;->BANNER:Lg/bme;

    invoke-static {v0, v3, v1, v2}, Lg/emr;->t(Landroid/content/Context;Lg/bme;Lg/awn;Lg/emg;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    invoke-direct {p0}, Lg/cao;->f()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lg/cao;->c:Ljava/lang/Object;

    check-cast v0, Lg/der;

    iget-object v2, p0, Lg/cao;->d:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lg/cao;->a:Ljava/lang/Object;

    check-cast v3, Lg/bjq;

    iget-object v4, v0, Lg/der;->p:Lcom/google/android/gms/internal/ads/zzavc;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzavc;->zzc()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzavc;->zzc()Lcom/google/android/gms/internal/ads/zzaux;

    move-result-object v4

    iget-object v5, v0, Lg/der;->ae:Landroid/content/Context;

    invoke-static {v3}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-interface {v4, v5, v3, v1}, Lcom/google/android/gms/internal/ads/zzaux;->zzh(Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_2
    const-string v1, ""

    :goto_4
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, v0, Lg/der;->i:Ljava/util/ArrayList;

    iget-object v6, v0, Lg/der;->aa:Ljava/util/ArrayList;

    invoke-static {v4, v5, v6}, Lg/der;->ao(Landroid/net/Uri;Ljava/util/List;Ljava/util/List;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Not a Google URL: "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lg/agd;->b(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_3
    const-string v5, "ms"

    invoke-static {v4, v5, v1}, Lg/der;->am(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_4
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    return-object v3

    :cond_5
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Empty impression URLs result."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to get view signals."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_3
    iget-object v0, p0, Lg/cao;->c:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lg/der;

    iget-object v0, p0, Lg/cao;->d:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbzl;

    iget-object v2, p0, Lg/cao;->a:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, Landroid/os/Bundle;

    iget-object v2, v1, Lg/der;->ae:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzbzl;->zza:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzbzl;->zzb:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzbzl;->zzc:Lg/eno;

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzbzl;->zzd:Lg/aeh;

    invoke-virtual/range {v1 .. v7}, Lg/der;->aq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lg/eno;Lg/aeh;Landroid/os/Bundle;)Lcom/google/android/gms/internal/ads/g;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lg/cao;->c:Ljava/lang/Object;

    check-cast v0, Lg/der;

    iget-object v2, p0, Lg/cao;->d:Ljava/lang/Object;

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lg/cao;->a:Ljava/lang/Object;

    check-cast v3, Lg/bjq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_5
    sget-object v4, Lcom/google/android/gms/internal/ads/zzbcn;->zzlI:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v0, Lg/der;->v:Lcom/google/android/gms/internal/ads/zzffs;

    if-eqz v4, :cond_7

    iget-object v0, v0, Lg/der;->ae:Landroid/content/Context;

    invoke-static {v3}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzffs;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_6

    :cond_7
    iget-object v4, v0, Lg/der;->p:Lcom/google/android/gms/internal/ads/zzavc;

    iget-object v0, v0, Lg/der;->ae:Landroid/content/Context;

    invoke-static {v3}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v4, v2, v0, v3, v1}, Lcom/google/android/gms/internal/ads/zzavc;->zza(Landroid/net/Uri;Landroid/content/Context;Landroid/view/View;Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v2
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzavd; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catch_2
    sget-object v0, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    :goto_6
    const-string v0, "ms"

    invoke-virtual {v2, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    return-object v2

    :cond_8
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Failed to append spam signals to click url."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_5
    invoke-direct {p0}, Lg/cao;->e()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
