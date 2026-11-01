.class public final Lg/zu;
.super Lg/axr;
.source "SourceFile"

# interfaces
.implements Lg/cvw;


# instance fields
.field final synthetic $name:Ljava/lang/String;

.field final synthetic $this_enqueueUniquelyNamedPeriodic:Lg/fxb;

.field final synthetic $workRequest:Lg/dze;


# direct methods
.method public constructor <init>(Lg/fxb;Lg/dqj;)V
    .locals 0

    iput-object p1, p0, Lg/zu;->$this_enqueueUniquelyNamedPeriodic:Lg/fxb;

    const-string p1, "opu"

    iput-object p1, p0, Lg/zu;->$name:Ljava/lang/String;

    iput-object p2, p0, Lg/zu;->$workRequest:Lg/dze;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lg/axr;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Lg/fxa;

    iget-object v2, v0, Lg/zu;->$workRequest:Lg/dze;

    iget-object v3, v0, Lg/zu;->$this_enqueueUniquelyNamedPeriodic:Lg/fxb;

    iget-object v4, v0, Lg/zu;->$name:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lg/fxa;-><init>(Lg/dze;Lg/fxb;Ljava/lang/String;)V

    iget-object v2, v3, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v2

    iget-object v3, v0, Lg/zu;->$name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lg/gg;->z(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_c

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    :goto_0
    check-cast v3, Lg/apn;

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lg/fxa;->invoke()Ljava/lang/Object;

    goto/16 :goto_2

    :cond_1
    iget-object v4, v3, Lg/apn;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lg/fkj;->z()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, v3, Lg/apn;->b:Lg/gys;

    sget-object v6, Lg/gys;->CANCELLED:Lg/gys;

    if-ne v5, v6, :cond_2

    invoke-virtual {v2, v4}, Lg/gg;->w(Ljava/lang/String;)V

    invoke-virtual {v1}, Lg/fxa;->invoke()Ljava/lang/Object;

    goto/16 :goto_2

    :cond_2
    iget-object v1, v0, Lg/zu;->$workRequest:Lg/dze;

    iget-object v4, v1, Lg/dze;->b:Lg/fkj;

    iget-object v5, v3, Lg/apn;->a:Ljava/lang/String;

    const/16 v16, 0x0

    const v17, 0xfffffe

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    invoke-static/range {v4 .. v17}, Lg/fkj;->y(Lg/fkj;Ljava/lang/String;Lg/gys;Ljava/lang/String;Lg/dwa;IJIIJII)Lg/fkj;

    move-result-object v1

    iget-object v2, v0, Lg/zu;->$this_enqueueUniquelyNamedPeriodic:Lg/fxb;

    iget-object v2, v2, Lg/fxb;->ax:Lg/egu;

    const-string v3, "processor"

    invoke-static {v2, v3}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Lg/zu;->$this_enqueueUniquelyNamedPeriodic:Lg/fxb;

    iget-object v3, v3, Lg/fxb;->az:Landroidx/work/impl/WorkDatabase;

    const-string v4, "workDatabase"

    invoke-static {v3, v4}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v0, Lg/zu;->$this_enqueueUniquelyNamedPeriodic:Lg/fxb;

    iget-object v4, v4, Lg/fxb;->aw:Lg/flk;

    const-string v5, "configuration"

    invoke-static {v4, v5}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v0, Lg/zu;->$this_enqueueUniquelyNamedPeriodic:Lg/fxb;

    iget-object v5, v5, Lg/fxb;->ay:Ljava/util/List;

    const-string v6, "schedulers"

    invoke-static {v5, v6}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v6, v0, Lg/zu;->$workRequest:Lg/dze;

    iget-object v6, v6, Lg/dze;->c:Ljava/util/Set;

    iget-object v7, v1, Lg/fkj;->h:Ljava/lang/String;

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->a()Lg/gg;

    move-result-object v8

    invoke-virtual {v8, v7}, Lg/gg;->p(Ljava/lang/String;)Lg/fkj;

    move-result-object v8

    if-eqz v8, :cond_9

    iget-object v9, v8, Lg/fkj;->q:Lg/gys;

    invoke-virtual {v9}, Lg/gys;->b()Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v8}, Lg/fkj;->z()Z

    move-result v9

    invoke-virtual {v1}, Lg/fkj;->z()Z

    move-result v10

    xor-int/2addr v9, v10

    if-nez v9, :cond_6

    invoke-virtual {v2, v7}, Lg/egu;->q(Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_4

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lg/giw;

    invoke-interface {v9, v7}, Lg/giw;->q(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v18, Lg/hal;

    move-object/from16 v21, v1

    move-object/from16 v19, v3

    move-object/from16 v22, v5

    move-object/from16 v24, v6

    move-object/from16 v23, v7

    move-object/from16 v20, v8

    invoke-direct/range {v18 .. v25}, Lg/hal;-><init>(Landroidx/work/impl/WorkDatabase;Lg/fkj;Lg/fkj;Ljava/util/List;Ljava/lang/String;Ljava/util/Set;Z)V

    move-object/from16 v3, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v22

    invoke-virtual {v1, v3}, Lg/gac;->ak(Ljava/lang/Runnable;)V

    if-nez v25, :cond_5

    invoke-static {v4, v1, v2}, Lg/fje;->c(Lg/flk;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :cond_5
    :goto_2
    sget-object v1, Lg/dgi;->a:Lg/dgi;

    return-object v1

    :cond_6
    move-object/from16 v21, v1

    move-object/from16 v20, v8

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Can\'t update "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v20 .. v20}, Lg/fkj;->z()Z

    move-result v3

    const-string v4, "OneTime"

    const-string v5, "Periodic"

    if-eqz v3, :cond_7

    move-object v3, v5

    goto :goto_3

    :cond_7
    move-object v3, v4

    :goto_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " Worker to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Lg/fkj;->z()Z

    move-result v3

    if-eqz v3, :cond_8

    move-object v4, v5

    :cond_8
    const-string v3, " Worker. Update operation must preserve worker\'s type."

    invoke-static {v2, v4, v3}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    move-object v1, v7

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Worker with "

    const-string v4, " doesn\'t exist"

    invoke-static {v3, v1, v4}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_a
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can\'t update OneTimeWorker to Periodic Worker. Update operation must preserve worker\'s type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WorkSpec with "

    const-string v3, ", that matches a name \""

    invoke-static {v2, v4, v3}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lg/zu;->$name:Ljava/lang/String;

    const-string v4, "\", wasn\'t found"

    invoke-static {v2, v3, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Can\'t apply UPDATE policy to the chains of work."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
