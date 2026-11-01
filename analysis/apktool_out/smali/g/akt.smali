.class public final synthetic Lg/akt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    iput p5, p0, Lg/akt;->d:I

    iput-object p1, p0, Lg/akt;->e:Ljava/lang/Object;

    iput-object p2, p0, Lg/akt;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/akt;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/akt;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lg/akt;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/akt;->e:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    iget-object v1, p0, Lg/akt;->a:Ljava/lang/Object;

    check-cast v1, Lg/euq;

    iget-object v2, p0, Lg/akt;->b:Ljava/lang/Object;

    check-cast v2, Lg/gnl;

    iget-object v3, p0, Lg/akt;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Exception;

    iget-object v4, v0, Lg/ark;->m:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lg/ark;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "operation_failed"

    invoke-virtual {v2, v0, v3}, Lg/gnl;->d(Ljava/lang/String;Ljava/lang/Throwable;)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/akt;->e:Ljava/lang/Object;

    check-cast v0, Lg/ark;

    iget-object v1, p0, Lg/akt;->a:Ljava/lang/Object;

    check-cast v1, Lg/euq;

    iget-object v2, p0, Lg/akt;->b:Ljava/lang/Object;

    check-cast v2, Lg/gnl;

    iget-object v3, v0, Lg/ark;->m:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, v0, Lg/ark;->p:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, v2, Lg/gnl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    iget-object v1, p0, Lg/akt;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    instance-of v0, v1, Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_1

    :try_start_0
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    iget-object v0, v2, Lg/gnl;->b:Lg/deg;

    invoke-interface {v0, v1}, Lg/deg;->onSuccess(Ljava/lang/Object;)V

    :catch_0
    :cond_1
    :goto_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lg/akt;->e:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/ark;

    iget-object v0, p0, Lg/akt;->a:Ljava/lang/Object;

    move-object v4, v0

    check-cast v4, Lg/gnl;

    iget-object v0, p0, Lg/akt;->b:Ljava/lang/Object;

    check-cast v0, Lg/anf;

    iget-object v1, p0, Lg/akt;->c:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lg/euq;

    iget-object v7, v2, Lg/ark;->m:Landroid/os/Handler;

    iget-object v1, v4, Lg/gnl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :try_start_1
    iget-object v1, v4, Lg/gnl;->a:Lg/cbr;

    invoke-interface {v1, v0}, Lg/cbr;->_bj(Lg/anf;)Ljava/lang/Object;

    move-result-object v5

    new-instance v1, Lg/akt;

    const/4 v6, 0x2

    invoke-direct/range {v1 .. v6}, Lg/akt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v5, v0

    new-instance v1, Lg/akt;

    const/4 v6, 0x3

    invoke-direct/range {v1 .. v6}, Lg/akt;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v7, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void

    :pswitch_2
    iget-object v0, p0, Lg/akt;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    iget-object v1, p0, Lg/akt;->a:Ljava/lang/Object;

    check-cast v1, Lg/gxm;

    iget-object v2, p0, Lg/akt;->b:Ljava/lang/Object;

    check-cast v2, Lg/flk;

    iget-object v3, p0, Lg/akt;->c:Ljava/lang/Object;

    check-cast v3, Landroidx/work/impl/WorkDatabase;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/giw;

    iget-object v6, v1, Lg/gxm;->a:Ljava/lang/String;

    invoke-interface {v5, v6}, Lg/giw;->q(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {v2, v3, v0}, Lg/fje;->c(Lg/flk;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
