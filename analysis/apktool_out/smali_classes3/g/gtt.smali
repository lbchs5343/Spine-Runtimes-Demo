.class public final synthetic Lg/gtt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/fyn;Lg/ku;Lg/bco;Lg/gfj;)V
    .locals 0

    const/4 p3, 0x2

    iput p3, p0, Lg/gtt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gtt;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/gtt;->a:Ljava/lang/Object;

    iput-object p4, p0, Lg/gtt;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lg/gtt;->c:I

    iput-object p1, p0, Lg/gtt;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/gtt;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/gtt;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicBoolean;Lg/eje;Lg/cvw;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lg/gtt;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gtt;->d:Ljava/lang/Object;

    iput-object p2, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast p3, Lg/axr;

    iput-object p3, p0, Lg/gtt;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    iget v0, p0, Lg/gtt;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gtt;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast v1, Lg/eje;

    iget-object v2, p0, Lg/gtt;->b:Ljava/lang/Object;

    check-cast v2, Lg/axr;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-interface {v2}, Lg/cvw;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/eje;->e(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v1, v0}, Lg/eje;->f(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lg/gtt;->d:Ljava/lang/Object;

    check-cast v0, Lg/flz;

    iget-object v1, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast v1, Lg/aci;

    iget-object v2, p0, Lg/gtt;->b:Ljava/lang/Object;

    check-cast v2, Lg/dsp;

    invoke-static {v0, v1, v2}, Lg/flz;->a(Lg/flz;Lg/aci;Lg/dsp;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/gtt;->d:Ljava/lang/Object;

    check-cast v0, Lg/egu;

    iget-object v1, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast v1, Lg/gbb;

    iget-object v2, p0, Lg/gtt;->b:Ljava/lang/Object;

    check-cast v2, Lg/dly;

    :try_start_1
    iget-object v1, v1, Lg/gbb;->b:Lg/dqq;

    invoke-virtual {v1}, Lg/zi;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x1

    :goto_1
    iget-object v3, v0, Lg/egu;->c:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, v2, Lg/dly;->g:Lg/fkj;

    invoke-static {v4}, Lg/awt;->j(Lg/fkj;)Lg/gxm;

    move-result-object v4

    iget-object v5, v4, Lg/gxm;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lg/egu;->o(Ljava/lang/String;)Lg/dly;

    move-result-object v6

    if-ne v6, v2, :cond_1

    invoke-virtual {v0, v5}, Lg/egu;->s(Ljava/lang/String;)Lg/dly;

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_4

    :cond_1
    :goto_2
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg/egu;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eiv;

    invoke-interface {v2, v4, v1}, Lg/eiv;->h(Lg/gxm;Z)V

    goto :goto_3

    :cond_2
    monitor-exit v3

    return-void

    :goto_4
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_2
    iget-object v0, p0, Lg/gtt;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    iget-object v1, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast v1, Lg/eje;

    iget-object v2, p0, Lg/gtt;->b:Ljava/lang/Object;

    check-cast v2, Lg/cvw;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_5

    :cond_3
    :try_start_3
    invoke-interface {v2}, Lg/cvw;->invoke()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/eje;->e(Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    invoke-virtual {v1, v0}, Lg/eje;->f(Ljava/lang/Throwable;)V

    :goto_5
    return-void

    :pswitch_3
    iget-object v0, p0, Lg/gtt;->d:Ljava/lang/Object;

    check-cast v0, Lg/cqc;

    iget-object v1, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast v1, Lg/awr;

    iget-object v2, p0, Lg/gtt;->b:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    iget-object v3, v0, Lg/cqc;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "RES:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Lg/awr;->d:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    new-instance v3, Lg/oj;

    invoke-direct {v3, v0, v2, v1}, Lg/oj;-><init>(Lg/cqc;Ljava/io/File;Lg/awr;)V

    invoke-virtual {v3}, Lg/oj;->run()V

    return-void

    :pswitch_4
    iget-object v0, p0, Lg/gtt;->d:Ljava/lang/Object;

    check-cast v0, Lg/cqc;

    iget-object v1, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, p0, Lg/gtt;->b:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/cno;

    iget-object v4, v0, Lg/cqc;->d:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SOURCE:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v3, Lg/cno;->e:Lg/cci;

    iget-object v6, v6, Lg/cci;->ak:Lg/ve;

    invoke-virtual {v6}, Lg/ve;->m()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :try_start_4
    iget-object v4, v3, Lg/cno;->e:Lg/cci;

    invoke-virtual {v4}, Lg/cci;->bb()Lg/emz;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lg/wm;->c(Ljava/io/File;Lg/cci;Lg/emz;)V

    iget-object v5, v4, Lg/cci;->ad:Lg/gwz;

    sget-object v6, Lg/gwz;->NOT_LOADED:Lg/gwz;

    if-ne v5, v6, :cond_4

    goto :goto_8

    :cond_4
    sget-object v5, Lg/csv;->CLASS_UNLOADED:Lg/csv;

    invoke-virtual {v4, v5}, Lg/lh;->w(Lg/csv;)V

    invoke-virtual {v4}, Lg/cci;->bk()Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_7

    :cond_5
    iget-object v5, v4, Lg/cci;->ab:Lg/dwg;

    iget-object v5, v5, Lg/dwg;->i:Lg/ur;

    iget-object v5, v5, Lg/ur;->ab:Lg/etc;

    invoke-virtual {v4}, Lg/cci;->bn()Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_7
    invoke-virtual {v4}, Lg/cci;->ax()V

    :goto_8
    invoke-virtual {v4}, Lg/cci;->ax()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_6

    :catch_1
    move-exception v4

    sget-object v5, Lg/cqc;->a:Lg/dba;

    const-string v6, "Error saving class: {}"

    invoke-interface {v5, v3, v6, v4}, Lg/dba;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_6

    :cond_6
    return-void

    :pswitch_5
    iget-object v0, p0, Lg/gtt;->d:Ljava/lang/Object;

    check-cast v0, Lg/fyn;

    iget-object v1, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast v1, Lg/ku;

    iget-object v2, v1, Lg/ku;->a:Ljava/lang/String;

    iget-object v3, p0, Lg/gtt;->b:Ljava/lang/Object;

    check-cast v3, Lg/gfj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lg/fyn;->a:Ljava/util/logging/Logger;

    const-string v5, "Transport backend \'"

    :try_start_5
    iget-object v6, v0, Lg/fyn;->f:Lg/cuc;

    invoke-virtual {v6, v2}, Lg/cuc;->d(Ljava/lang/String;)Lg/dte;

    move-result-object v6

    if-nez v6, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' is not registered"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_9

    :cond_7
    check-cast v6, Lg/cov;

    invoke-virtual {v6, v3}, Lg/cov;->i(Lg/gfj;)Lg/gfj;

    move-result-object v2

    iget-object v3, v0, Lg/fyn;->c:Lg/ddc;

    new-instance v5, Lg/gkn;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v1, v2, v6}, Lg/gkn;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    check-cast v3, Lg/cga;

    invoke-virtual {v3, v5}, Lg/cga;->n(Lg/bqq;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_a

    :goto_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error scheduling event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    :goto_a
    return-void

    :pswitch_6
    iget-object v0, p0, Lg/gtt;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v1, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast v1, Lg/bmm;

    iget-object v2, p0, Lg/gtt;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v0, v0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v0, Lg/guk;

    invoke-interface {v1, v0, v2}, Lg/bmm;->w(Lg/czh;Ljava/lang/Throwable;)V

    return-void

    :pswitch_7
    iget-object v0, p0, Lg/gtt;->d:Ljava/lang/Object;

    check-cast v0, Lg/ffr;

    iget-object v1, p0, Lg/gtt;->a:Ljava/lang/Object;

    check-cast v1, Lg/bmm;

    iget-object v2, p0, Lg/gtt;->b:Ljava/lang/Object;

    check-cast v2, Lg/anx;

    iget-object v0, v0, Lg/ffr;->c:Ljava/lang/Object;

    check-cast v0, Lg/guk;

    iget-object v3, v0, Lg/guk;->f:Lg/czh;

    invoke-interface {v3}, Lg/czh;->a()Z

    move-result v3

    if-eqz v3, :cond_8

    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Lg/bmm;->w(Lg/czh;Ljava/lang/Throwable;)V

    goto :goto_b

    :cond_8
    invoke-interface {v1, v0, v2}, Lg/bmm;->ad(Lg/czh;Lg/anx;)V

    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
