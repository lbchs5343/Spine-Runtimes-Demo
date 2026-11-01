.class public final Lg/hdm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final b:Lg/jf;


# direct methods
.method public synthetic constructor <init>(Lg/jf;I)V
    .locals 0

    iput p2, p0, Lg/hdm;->a:I

    iput-object p1, p0, Lg/hdm;->b:Lg/jf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c()V
    .locals 6

    iget-object v0, p0, Lg/hdm;->b:Lg/jf;

    iget-object v0, v0, Lg/jf;->c:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/hdm;->b:Lg/jf;

    iget-object v2, v1, Lg/jf;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, v1, Lg/jf;->b:Landroid/content/Intent;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lg/hdm;->b:Lg/jf;

    iget-object v0, v0, Lg/jf;->b:Landroid/content/Intent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/hdm;->b:Lg/jf;

    iget-object v1, v1, Lg/jf;->b:Landroid/content/Intent;

    const-string v2, "KEY_START_ID"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    sget-object v3, Lg/jf;->a:Ljava/lang/String;

    iget-object v3, p0, Lg/hdm;->b:Lg/jf;

    iget-object v3, v3, Lg/jf;->b:Landroid/content/Intent;

    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lg/hdm;->b:Lg/jf;

    iget-object v2, v2, Lg/jf;->i:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ("

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lg/qj;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const/4 v2, 0x1

    :try_start_1
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v3, p0, Lg/hdm;->b:Lg/jf;

    iget-object v4, v3, Lg/jf;->l:Lg/cip;

    iget-object v5, v3, Lg/jf;->b:Landroid/content/Intent;

    invoke-virtual {v4, v5, v1, v3}, Lg/cip;->k(Landroid/content/Intent;ILg/jf;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lg/hdm;->b:Lg/jf;

    iget-object v1, v0, Lg/jf;->k:Lg/ccc;

    check-cast v1, Lg/gkr;

    iget-object v1, v1, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lg/bxc;

    new-instance v3, Lg/hdm;

    invoke-direct {v3, v0, v2}, Lg/hdm;-><init>(Lg/jf;I)V

    :goto_0
    invoke-virtual {v1, v3}, Lg/bxc;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    sget-object v4, Lg/jf;->a:Ljava/lang/String;

    const-string v5, "Unexpected error in onHandleIntent"

    invoke-virtual {v3, v4, v5, v1}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lg/hdm;->b:Lg/jf;

    iget-object v1, v0, Lg/jf;->k:Lg/ccc;

    check-cast v1, Lg/gkr;

    iget-object v1, v1, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v1, Lg/bxc;

    new-instance v3, Lg/hdm;

    invoke-direct {v3, v0, v2}, Lg/hdm;-><init>(Lg/jf;I)V

    goto :goto_0

    :catchall_1
    move-exception v1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v3

    sget-object v4, Lg/jf;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, p0, Lg/hdm;->b:Lg/jf;

    iget-object v3, v0, Lg/jf;->k:Lg/ccc;

    check-cast v3, Lg/gkr;

    iget-object v3, v3, Lg/gkr;->c:Ljava/lang/Object;

    check-cast v3, Lg/bxc;

    new-instance v4, Lg/hdm;

    invoke-direct {v4, v0, v2}, Lg/hdm;-><init>(Lg/jf;I)V

    invoke-virtual {v3, v4}, Lg/bxc;->execute(Ljava/lang/Runnable;)V

    throw v1

    :cond_0
    return-void

    :catchall_2
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v1
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget v0, p0, Lg/hdm;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/hdm;->b:Lg/jf;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/jf;->m()V

    iget-object v1, v0, Lg/jf;->c:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Lg/jf;->b:Landroid/content/Intent;

    if-eqz v2, :cond_1

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    iget-object v3, v0, Lg/jf;->b:Landroid/content/Intent;

    invoke-static {v3}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lg/jf;->c:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iget-object v3, v0, Lg/jf;->b:Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    iput-object v2, v0, Lg/jf;->b:Landroid/content/Intent;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Dequeue-d command is not the first."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v2, v0, Lg/jf;->k:Lg/ccc;

    check-cast v2, Lg/gkr;

    iget-object v2, v2, Lg/gkr;->e:Ljava/lang/Object;

    check-cast v2, Lg/aqv;

    iget-object v3, v0, Lg/jf;->l:Lg/cip;

    invoke-virtual {v3}, Lg/cip;->j()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v0, Lg/jf;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Lg/aqv;->g()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lg/jf;->j:Landroidx/work/impl/background/systemalarm/SystemAlarmService;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->c()V

    goto :goto_1

    :cond_2
    iget-object v2, v0, Lg/jf;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lg/jf;->n()V

    :cond_3
    :goto_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lg/hdm;->c()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
