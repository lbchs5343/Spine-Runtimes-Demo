.class public final synthetic Lg/gmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/dly;


# direct methods
.method public synthetic constructor <init>(Lg/dly;I)V
    .locals 0

    iput p2, p0, Lg/gmx;->a:I

    iput-object p1, p0, Lg/gmx;->b:Lg/dly;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lg/gmx;->a:I

    iget-object v1, p0, Lg/gmx;->b:Lg/dly;

    packed-switch v0, :pswitch_data_0

    iget-object v0, v1, Lg/dly;->l:Lg/gg;

    iget-object v1, v1, Lg/dly;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lg/gg;->ad(Ljava/lang/String;)Lg/gys;

    move-result-object v2

    sget-object v3, Lg/gys;->ENQUEUED:Lg/gys;

    if-ne v2, v3, :cond_0

    sget-object v2, Lg/gys;->RUNNING:Lg/gys;

    invoke-virtual {v0, v2, v1}, Lg/gg;->s(Lg/gys;Ljava/lang/String;)V

    iget-object v2, v0, Lg/gg;->h:Landroidx/work/impl/WorkDatabase_Impl;

    invoke-virtual {v2}, Lg/gac;->al()V

    iget-object v3, v0, Lg/gg;->m:Lg/bnh;

    invoke-virtual {v3}, Lg/fze;->i()Lg/cap;

    move-result-object v4

    const/4 v5, 0x1

    invoke-interface {v4, v5, v1}, Lg/eob;->e(ILjava/lang/String;)V

    :try_start_0
    invoke-virtual {v2}, Lg/gac;->an()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lg/cap;->h()I

    invoke-virtual {v2}, Lg/gac;->ah()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Lg/gac;->am()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v3, v4}, Lg/fze;->h(Lg/cap;)V

    const/16 v2, -0x100

    invoke-virtual {v0, v2, v1}, Lg/gg;->r(ILjava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v2}, Lg/gac;->am()V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-virtual {v3, v4}, Lg/fze;->h(Lg/cap;)V

    throw v0

    :cond_0
    const/4 v5, 0x0

    :goto_1
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v0, v1, Lg/dly;->g:Lg/fkj;

    iget-object v2, v0, Lg/fkj;->q:Lg/gys;

    sget-object v3, Lg/gys;->ENQUEUED:Lg/gys;

    if-eq v2, v3, :cond_1

    sget-object v0, Lg/bbv;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Lg/fkj;->z()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, v0, Lg/fkj;->q:Lg/gys;

    if-ne v2, v3, :cond_3

    iget v2, v0, Lg/fkj;->b:I

    if-lez v2, :cond_3

    :cond_2
    iget-object v1, v1, Lg/dly;->n:Lg/dwm;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lg/fkj;->aa()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-gez v0, :cond_3

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v0

    sget-object v1, Lg/bbv;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_2

    :cond_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_2
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
