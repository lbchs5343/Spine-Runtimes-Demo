.class public final synthetic Lg/bkq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(ILg/ark;Landroid/util/Pair;ZLjava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/bkq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/bkq;->e:I

    iput-object p2, p0, Lg/bkq;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/bkq;->c:Ljava/lang/Object;

    iput-boolean p4, p0, Lg/bkq;->a:Z

    iput-object p5, p0, Lg/bkq;->f:Ljava/io/Serializable;

    return-void
.end method

.method public synthetic constructor <init>([Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/bkq;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bkq;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/bkq;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/bkq;->f:Ljava/io/Serializable;

    iput p4, p0, Lg/bkq;->e:I

    iput-boolean p5, p0, Lg/bkq;->a:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lg/bkq;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/bkq;->b:Ljava/lang/Object;

    check-cast v0, [Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Lg/bkq;->c:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lg/bkq;->f:Ljava/io/Serializable;

    check-cast v2, Ljava/lang/String;

    iget v3, p0, Lg/bkq;->e:I

    iget-boolean v4, p0, Lg/bkq;->a:Z

    const/4 v5, 0x1

    :try_start_0
    new-instance v6, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    aget-object v7, v0, v5

    invoke-direct {v6, v7}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v7, Lg/awt;->g:Ljava/lang/Object;

    monitor-enter v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-static {v1, v3, v2, v4}, Lg/awt;->o(Ljava/lang/String;ILjava/lang/String;Z)Lg/he;

    move-result-object v1

    invoke-static {v1, v6}, Lg/egh;->ae(Lg/he;Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;)V

    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_6
    invoke-virtual {v6}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_0

    :catchall_3
    move-exception v2

    :try_start_7
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_1
    :try_start_8
    aget-object v0, v0, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to capture the foreground application: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/ParcelFileDescriptor;->closeWithError(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    :goto_2
    return-void

    :pswitch_0
    iget v0, p0, Lg/bkq;->e:I

    iget-object v1, p0, Lg/bkq;->b:Ljava/lang/Object;

    check-cast v1, Lg/ark;

    iget-object v2, p0, Lg/bkq;->c:Ljava/lang/Object;

    check-cast v2, Landroid/util/Pair;

    iget-boolean v3, p0, Lg/bkq;->a:Z

    iget-object v4, p0, Lg/bkq;->f:Ljava/io/Serializable;

    check-cast v4, Ljava/util/concurrent/atomic/AtomicBoolean;

    sget v5, Lg/bew;->e:I

    if-eq v0, v5, :cond_0

    goto :goto_5

    :cond_0
    const/4 v5, 0x0

    sput-object v5, Lg/bew;->d:Lg/bkq;

    if-nez v2, :cond_1

    goto :goto_3

    :cond_1
    iget-object v5, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    :goto_3
    if-nez v2, :cond_2

    const/4 v2, -0x1

    goto :goto_4

    :cond_2
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_4
    new-instance v6, Lg/cxu;

    invoke-direct {v6, v0, v4}, Lg/cxu;-><init>(ILjava/util/concurrent/atomic/AtomicBoolean;)V

    new-instance v0, Lg/gnl;

    new-instance v4, Lg/mn;

    invoke-direct {v4, v2, v5, v3}, Lg/mn;-><init>(ILjava/lang/String;Z)V

    invoke-direct {v0, v4, v6}, Lg/gnl;-><init>(Lg/cbr;Lg/deg;)V

    iget-object v2, v1, Lg/ark;->m:Landroid/os/Handler;

    new-instance v3, Lg/euq;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, Lg/euq;-><init>(Lg/ark;Lg/gnl;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
