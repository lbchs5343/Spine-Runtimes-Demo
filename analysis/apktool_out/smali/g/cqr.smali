.class public final Lg/cqr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lg/gsn;

.field public final synthetic b:I

.field public final c:Lg/dcy;


# direct methods
.method public synthetic constructor <init>(Lg/dcy;Lg/gsn;I)V
    .locals 0

    iput p3, p0, Lg/cqr;->b:I

    iput-object p1, p0, Lg/cqr;->c:Lg/dcy;

    iput-object p2, p0, Lg/cqr;->a:Lg/gsn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lg/cqr;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/cqr;->c:Lg/dcy;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    iget-object v2, p0, Lg/cqr;->a:Lg/gsn;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lg/gsn;->aa(Ljava/lang/Throwable;)Z

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {v0}, Lg/zi;->j(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/gsn;->_z(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/gsn;->_z(Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lg/nj;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const-class v1, Lg/bff;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lg/bff;->l(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object v0, p0, Lg/cqr;->c:Lg/dcy;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    iget-object v2, p0, Lg/cqr;->a:Lg/gsn;

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lg/gsn;->aa(Ljava/lang/Throwable;)Z

    goto :goto_3

    :cond_2
    const/4 v1, 0x0

    :goto_1
    :try_start_1
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    :try_start_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    invoke-virtual {v2, v0}, Lg/gsn;->_z(Ljava/lang/Object;)V

    goto :goto_3

    :catch_1
    move-exception v0

    goto :goto_2

    :catchall_0
    move-exception v0

    if-eqz v1, :cond_4

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_4
    throw v0
    :try_end_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    invoke-static {v0}, Lg/eg;->i(Ljava/lang/Throwable;)Lg/egr;

    move-result-object v0

    invoke-virtual {v2, v0}, Lg/gsn;->_z(Ljava/lang/Object;)V

    :goto_3
    return-void

    :catch_2
    const/4 v1, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
