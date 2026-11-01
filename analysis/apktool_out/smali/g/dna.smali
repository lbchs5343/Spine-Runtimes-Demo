.class public abstract Lg/dna;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EnqueueRunnable"

    invoke-static {v0}, Lg/cyl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/dna;->a:Ljava/lang/String;

    return-void
.end method

.method public static b(Lg/pc;)V
    .locals 5

    iget-object v0, p0, Lg/pc;->c:Lg/fxb;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v2, p0, Lg/pc;->_aq:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-static {p0}, Lg/pc;->i(Lg/pc;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lg/pc;->_aq:Ljava/util/ArrayList;

    invoke-interface {v1, v2}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    iget-object v1, v0, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lg/gac;->an()V

    :try_start_0
    iget-object v2, v0, Lg/fxb;->aw:Lg/flk;

    invoke-static {v1, v2, p0}, Lg/cro;->ac(Landroidx/work/impl/WorkDatabase;Lg/flk;Lg/pc;)V

    invoke-static {p0}, Lg/dna;->c(Lg/pc;)Z

    move-result p0

    invoke-virtual {v1}, Lg/gac;->ah()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lg/gac;->am()V

    if-eqz p0, :cond_2

    iget-object p0, v0, Lg/fxb;->aw:Lg/flk;

    iget-object v1, v0, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    iget-object v0, v0, Lg/fxb;->ay:Ljava/util/List;

    invoke-static {p0, v1, v0}, Lg/fje;->c(Lg/flk;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lg/gac;->am()V

    throw p0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WorkContinuation has cycles ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static c(Lg/pc;)Z
    .locals 23

    move-object/from16 v0, p0

    invoke-static {v0}, Lg/pc;->i(Lg/pc;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, v0, Lg/pc;->c:Lg/fxb;

    iget-object v3, v0, Lg/pc;->h:Ljava/util/List;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v5, v0, Lg/pc;->e:Ljava/lang/String;

    iget-object v6, v0, Lg/pc;->d:Lg/dne;

    iget-object v7, v2, Lg/fxb;->aw:Lg/flk;

    iget-object v7, v7, Lg/flk;->c:Lg/dwm;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v9, v2, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    if-eqz v1, :cond_0

    array-length v11, v1

    if-lez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_0

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-eqz v11, :cond_6

    array-length v12, v1

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1
    if-ge v13, v12, :cond_7

    aget-object v4, v1, v13

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v10

    invoke-virtual {v10, v4}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v10

    if-nez v10, :cond_2

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Prerequisite "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " doesn\'t exist; not enqueuing"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lg/dna;->a:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lg/cyl;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_2
    const/4 v4, 0x0

    :goto_3
    const/4 v9, 0x1

    goto/16 :goto_14

    :cond_2
    iget-object v4, v10, Lg/fkj;->q:Lg/gys;

    sget-object v10, Lg/gys;->SUCCEEDED:Lg/gys;

    if-ne v4, v10, :cond_3

    const/4 v10, 0x1

    goto :goto_4

    :cond_3
    const/4 v10, 0x0

    :goto_4
    and-int/2addr v14, v10

    sget-object v10, Lg/gys;->FAILED:Lg/gys;

    if-ne v4, v10, :cond_4

    const/16 v16, 0x1

    goto :goto_5

    :cond_4
    sget-object v10, Lg/gys;->CANCELLED:Lg/gys;

    if-ne v4, v10, :cond_5

    const/4 v15, 0x1

    :cond_5
    :goto_5
    add-int/lit8 v13, v13, 0x1

    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_7
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    if-nez v11, :cond_18

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v10

    invoke-virtual {v10, v5}, Lg/gg;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_18

    sget-object v12, Lg/dne;->APPEND:Lg/dne;

    if-eq v6, v12, :cond_c

    sget-object v12, Lg/dne;->APPEND_OR_REPLACE:Lg/dne;

    if-ne v6, v12, :cond_8

    goto :goto_7

    :cond_8
    sget-object v12, Lg/dne;->KEEP:Lg/dne;

    if-ne v6, v12, :cond_a

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/apn;

    iget-object v12, v12, Lg/apn;->b:Lg/gys;

    sget-object v13, Lg/gys;->ENQUEUED:Lg/gys;

    if-eq v12, v13, :cond_1

    sget-object v13, Lg/gys;->RUNNING:Lg/gys;

    if-ne v12, v13, :cond_9

    goto :goto_2

    :cond_a
    new-instance v6, Lg/grk;

    const/4 v12, 0x0

    invoke-direct {v6, v9, v5, v2, v12}, Lg/grk;-><init>(Landroidx/work/impl/WorkDatabase;Ljava/lang/String;Lg/fxb;I)V

    invoke-virtual {v9, v6}, Lg/gac;->ak(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v6

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/apn;

    iget-object v12, v12, Lg/apn;->a:Ljava/lang/String;

    invoke-virtual {v6, v12}, Lg/gg;->w(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v9

    const/4 v3, 0x1

    const/4 v9, 0x0

    goto/16 :goto_f

    :cond_c
    :goto_7
    invoke-virtual {v9}, Landroidx/work/impl/WorkDatabase;->d()Lg/gtb;

    move-result-object v11

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_8
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_13

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lg/apn;

    move-object/from16 v18, v3

    iget-object v3, v13, Lg/apn;->a:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move/from16 v19, v4

    const-string v4, "SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?"

    move-object/from16 v20, v9

    const/4 v9, 0x1

    invoke-static {v9, v4}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object v4

    invoke-virtual {v4, v9, v3}, Lg/fcg;->e(ILjava/lang/String;)V

    iget-object v3, v11, Lg/gtb;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Lg/gac;->al()V

    invoke-virtual {v3, v4}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object v3

    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_d

    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v17, :cond_e

    const/16 v17, 0x1

    goto :goto_9

    :catchall_0
    move-exception v0

    goto :goto_c

    :cond_d
    const/4 v9, 0x0

    :cond_e
    const/16 v17, 0x0

    :goto_9
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Lg/fcg;->p()V

    if-nez v17, :cond_12

    iget-object v3, v13, Lg/apn;->b:Lg/gys;

    sget-object v4, Lg/gys;->SUCCEEDED:Lg/gys;

    if-ne v3, v4, :cond_f

    const/4 v4, 0x1

    goto :goto_a

    :cond_f
    const/4 v4, 0x0

    :goto_a
    and-int/2addr v4, v14

    sget-object v14, Lg/gys;->FAILED:Lg/gys;

    if-ne v3, v14, :cond_10

    const/16 v16, 0x1

    goto :goto_b

    :cond_10
    sget-object v14, Lg/gys;->CANCELLED:Lg/gys;

    if-ne v3, v14, :cond_11

    const/4 v15, 0x1

    :cond_11
    :goto_b
    iget-object v3, v13, Lg/apn;->a:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v14, v4

    :cond_12
    move-object/from16 v3, v18

    move/from16 v4, v19

    move-object/from16 v9, v20

    goto :goto_8

    :goto_c
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    invoke-virtual {v4}, Lg/fcg;->p()V

    throw v0

    :cond_13
    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v9

    const/4 v9, 0x0

    sget-object v3, Lg/dne;->APPEND_OR_REPLACE:Lg/dne;

    if-ne v6, v3, :cond_16

    if-nez v15, :cond_14

    if-eqz v16, :cond_16

    :cond_14
    invoke-virtual/range {v20 .. v20}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v3

    invoke-virtual {v3, v5}, Lg/gg;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_15

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/apn;

    iget-object v6, v6, Lg/apn;->a:Ljava/lang/String;

    invoke-virtual {v3, v6}, Lg/gg;->w(Ljava/lang/String;)V

    goto :goto_d

    :cond_15
    sget-object v12, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v15, 0x0

    const/16 v16, 0x0

    :cond_16
    invoke-interface {v12, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    array-length v3, v1

    if-lez v3, :cond_17

    const/4 v11, 0x1

    goto :goto_e

    :cond_17
    const/4 v11, 0x0

    :goto_e
    const/4 v3, 0x0

    goto :goto_f

    :cond_18
    move-object/from16 v18, v3

    move/from16 v19, v4

    move-object/from16 v20, v9

    const/4 v9, 0x0

    goto :goto_e

    :goto_f
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_10
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/dze;

    iget-object v10, v6, Lg/dze;->b:Lg/fkj;

    iget-object v12, v6, Lg/dze;->a:Ljava/util/UUID;

    if-eqz v11, :cond_1b

    if-nez v14, :cond_1b

    if-eqz v16, :cond_19

    sget-object v13, Lg/gys;->FAILED:Lg/gys;

    iput-object v13, v10, Lg/fkj;->q:Lg/gys;

    goto :goto_11

    :cond_19
    if-eqz v15, :cond_1a

    sget-object v13, Lg/gys;->CANCELLED:Lg/gys;

    iput-object v13, v10, Lg/fkj;->q:Lg/gys;

    goto :goto_11

    :cond_1a
    sget-object v13, Lg/gys;->BLOCKED:Lg/gys;

    iput-object v13, v10, Lg/fkj;->q:Lg/gys;

    goto :goto_11

    :cond_1b
    iput-wide v7, v10, Lg/fkj;->d:J

    :goto_11
    iget-object v13, v10, Lg/fkj;->q:Lg/gys;

    sget-object v9, Lg/gys;->ENQUEUED:Lg/gys;

    if-ne v13, v9, :cond_1c

    const/4 v3, 0x1

    :cond_1c
    invoke-virtual/range {v20 .. v20}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v9

    iget-object v13, v2, Lg/fxb;->ay:Ljava/util/List;

    invoke-static {v13, v10}, Lg/cro;->am(Ljava/util/List;Lg/fkj;)Lg/fkj;

    move-result-object v10

    iget-object v13, v9, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v13}, Lg/gac;->al()V

    invoke-virtual {v13}, Lg/gac;->an()V

    :try_start_1
    iget-object v9, v9, Lg/gg;->l:Lg/sw;

    invoke-virtual {v9, v10}, Lg/sw;->c(Ljava/lang/Object;)V

    invoke-virtual {v13}, Lg/gac;->ah()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    invoke-virtual {v13}, Lg/gac;->am()V

    const-string v9, "id.toString()"

    if-eqz v11, :cond_1d

    array-length v10, v1

    const/4 v13, 0x0

    :goto_12
    if-ge v13, v10, :cond_1d

    move-object/from16 v18, v1

    aget-object v1, v18, v13

    move-object/from16 v21, v2

    new-instance v2, Lg/gcy;

    move/from16 v22, v3

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3, v1}, Lg/gcy;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Landroidx/work/impl/WorkDatabase;->d()Lg/gtb;

    move-result-object v1

    iget-object v3, v1, Lg/gtb;->d:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Lg/gac;->al()V

    invoke-virtual {v3}, Lg/gac;->an()V

    :try_start_2
    iget-object v1, v1, Lg/gtb;->b:Ljava/lang/Object;

    check-cast v1, Lg/sw;

    invoke-virtual {v1, v2}, Lg/sw;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lg/gac;->ah()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v3}, Lg/gac;->am()V

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move/from16 v3, v22

    goto :goto_12

    :catchall_1
    move-exception v0

    invoke-virtual {v3}, Lg/gac;->am()V

    throw v0

    :cond_1d
    move-object/from16 v18, v1

    move-object/from16 v21, v2

    move/from16 v22, v3

    invoke-virtual/range {v20 .. v20}, Landroidx/work/impl/WorkDatabase;->b()Lg/dzh;

    move-result-object v1

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v9}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v6, Lg/dze;->c:Ljava/util/Set;

    invoke-virtual {v1, v2, v3}, Lg/dzh;->ah(Ljava/lang/String;Ljava/util/Set;)V

    if-nez v19, :cond_1e

    invoke-virtual/range {v20 .. v20}, Landroidx/work/impl/WorkDatabase;->c()Lg/ffr;

    move-result-object v1

    new-instance v2, Lg/fap;

    invoke-virtual {v12}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v9}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v5, v3}, Lg/fap;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lg/ffr;->f:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v3}, Lg/gac;->al()V

    invoke-virtual {v3}, Lg/gac;->an()V

    :try_start_3
    iget-object v1, v1, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v1, Lg/sw;

    invoke-virtual {v1, v2}, Lg/sw;->c(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lg/gac;->ah()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-virtual {v3}, Lg/gac;->am()V

    goto :goto_13

    :catchall_2
    move-exception v0

    invoke-virtual {v3}, Lg/gac;->am()V

    throw v0

    :cond_1e
    :goto_13
    move-object/from16 v1, v18

    move-object/from16 v2, v21

    move/from16 v3, v22

    const/4 v9, 0x0

    goto/16 :goto_10

    :catchall_3
    move-exception v0

    invoke-virtual {v13}, Lg/gac;->am()V

    throw v0

    :cond_1f
    move v4, v3

    goto/16 :goto_3

    :goto_14
    iput-boolean v9, v0, Lg/pc;->a:Z

    return v4
.end method
