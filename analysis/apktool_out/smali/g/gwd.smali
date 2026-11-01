.class public final synthetic Lg/gwd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Lg/adb;

.field public final synthetic b:Lg/dly;


# direct methods
.method public synthetic constructor <init>(Lg/adb;Lg/dly;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gwd;->a:Lg/adb;

    iput-object p2, p0, Lg/gwd;->b:Lg/dly;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 11

    iget-object v0, p0, Lg/gwd;->a:Lg/adb;

    instance-of v1, v0, Lg/fcv;

    iget-object v2, p0, Lg/gwd;->b:Lg/dly;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_9

    check-cast v0, Lg/fcv;

    iget-object v0, v0, Lg/fcv;->a:Lg/dea;

    iget-object v1, v2, Lg/dly;->l:Lg/gg;

    iget-object v5, v2, Lg/dly;->m:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lg/gg;->ad(Ljava/lang/String;)Lg/gys;

    move-result-object v6

    iget-object v7, v2, Lg/dly;->j:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->f()Lg/gkr;

    move-result-object v7

    invoke-virtual {v7, v5}, Lg/gkr;->aa(Ljava/lang/String;)V

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    sget-object v7, Lg/gys;->RUNNING:Lg/gys;

    if-ne v6, v7, :cond_8

    iget-object v6, v2, Lg/dly;->g:Lg/fkj;

    instance-of v7, v0, Lg/aif;

    if-eqz v7, :cond_5

    sget-object v7, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lg/fkj;->z()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Lg/dly;->r()V

    :cond_1
    :goto_0
    const/4 v3, 0x0

    goto/16 :goto_4

    :cond_2
    sget-object v6, Lg/gys;->SUCCEEDED:Lg/gys;

    invoke-virtual {v1, v6, v5}, Lg/gg;->s(Lg/gys;Ljava/lang/String;)V

    check-cast v0, Lg/aif;

    iget-object v0, v0, Lg/aif;->a:Lg/dwa;

    const-string v6, "success.outputData"

    invoke-static {v0, v6}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v5, v0}, Lg/gg;->y(Ljava/lang/String;Lg/dwa;)V

    iget-object v0, v2, Lg/dly;->n:Lg/dwm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v0, v2, Lg/dly;->b:Lg/gtb;

    invoke-virtual {v0, v5}, Lg/gtb;->r(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Lg/gg;->ad(Ljava/lang/String;)Lg/gys;

    move-result-object v8

    sget-object v9, Lg/gys;->BLOCKED:Lg/gys;

    if-ne v8, v9, :cond_3

    const-string v8, "SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)"

    invoke-static {v3, v8}, Lg/fcg;->o(ILjava/lang/String;)Lg/fcg;

    move-result-object v8

    invoke-virtual {v8, v3, v5}, Lg/fcg;->e(ILjava/lang/String;)V

    iget-object v9, v0, Lg/gtb;->d:Ljava/lang/Object;

    check-cast v9, Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v9}, Lg/gac;->al()V

    invoke-virtual {v9, v8}, Lg/gac;->ag(Lg/fxn;)Landroid/database/Cursor;

    move-result-object v9

    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_4
    const/4 v10, 0x0

    :goto_2
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, Lg/fcg;->p()V

    if-eqz v10, :cond_3

    sget-object v8, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v8, Lg/gys;->ENQUEUED:Lg/gys;

    invoke-virtual {v1, v8, v5}, Lg/gg;->s(Lg/gys;Ljava/lang/String;)V

    invoke-virtual {v1, v6, v7, v5}, Lg/gg;->u(JLjava/lang/String;)V

    goto :goto_1

    :goto_3
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    invoke-virtual {v8}, Lg/fcg;->p()V

    throw v0

    :cond_5
    instance-of v1, v0, Lg/evc;

    if-eqz v1, :cond_6

    sget-object v0, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v0, -0x100

    invoke-virtual {v2, v0}, Lg/dly;->q(I)V

    goto :goto_4

    :cond_6
    sget-object v1, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Lg/fkj;->z()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v2}, Lg/dly;->r()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {v2, v0}, Lg/dly;->p(Lg/dea;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v6}, Lg/gys;->b()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, -0x200

    invoke-virtual {v2, v0}, Lg/dly;->q(I)V

    :goto_4
    move v4, v3

    goto :goto_5

    :cond_9
    instance-of v1, v0, Lg/eme;

    if-eqz v1, :cond_a

    check-cast v0, Lg/eme;

    iget-object v0, v0, Lg/eme;->a:Lg/dea;

    invoke-virtual {v2, v0}, Lg/dly;->p(Lg/dea;)V

    goto :goto_5

    :cond_a
    instance-of v1, v0, Lg/cmt;

    if-eqz v1, :cond_c

    check-cast v0, Lg/cmt;

    iget v0, v0, Lg/cmt;->a:I

    iget-object v1, v2, Lg/dly;->l:Lg/gg;

    iget-object v2, v2, Lg/dly;->m:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lg/gg;->ad(Ljava/lang/String;)Lg/gys;

    move-result-object v5

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lg/gys;->b()Z

    move-result v6

    if-nez v6, :cond_b

    sget-object v4, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v4

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lg/gys;->ENQUEUED:Lg/gys;

    invoke-virtual {v1, v4, v2}, Lg/gg;->s(Lg/gys;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lg/gg;->r(ILjava/lang/String;)V

    const-wide/16 v4, -0x1

    invoke-virtual {v1, v4, v5, v2}, Lg/gg;->ab(JLjava/lang/String;)V

    goto :goto_4

    :cond_b
    sget-object v0, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-static {v5}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_0

    :goto_5
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_c
    new-instance v0, Lg/dwb;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0
.end method
