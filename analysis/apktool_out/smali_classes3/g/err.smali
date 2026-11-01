.class public final Lg/err;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/etk;
.implements Lg/fbr;
.implements Lg/brm;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final synthetic d:I

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/Executor;Lg/bea;Lg/chw;I)V
    .locals 0

    iput p4, p0, Lg/err;->d:I

    iput-object p1, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/err;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/err;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lg/brm;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/err;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/err;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/err;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lg/dyt;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lg/err;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/err;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/err;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lg/etk;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lg/err;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/err;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/err;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Lg/fbr;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lg/err;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lg/err;->c:Ljava/lang/Object;

    iput-object p1, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lg/err;->b:Ljava/lang/Object;

    return-void
.end method

.method private final g(Lg/ci;)V
    .locals 4

    invoke-virtual {p1}, Lg/ci;->a()Z

    move-result v0

    if-nez v0, :cond_0

    move-object v0, p1

    check-cast v0, Lg/chw;

    iget-boolean v0, v0, Lg/chw;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lg/err;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lg/fuy;

    const/16 v2, 0xf

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lg/fuy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    return-void
.end method

.method private final h(Lg/ci;)V
    .locals 2

    check-cast p1, Lg/chw;

    iget-boolean p1, p1, Lg/chw;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lg/err;->c:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Lg/aku;

    const/16 v1, 0xc

    invoke-direct {v0, v1, p0}, Lg/aku;-><init>(ILjava/lang/Object;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method private final i(Lg/ci;)V
    .locals 4

    iget-object v0, p0, Lg/err;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lg/fuy;

    const/16 v2, 0x9

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lg/fuy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lg/err;->b:Ljava/lang/Object;

    check-cast v0, Lg/chw;

    invoke-virtual {v0}, Lg/chw;->o()V

    return-void
.end method

.method public final f(Lg/ci;)V
    .locals 4

    iget v0, p0, Lg/err;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Lg/ci;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/err;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lg/fuy;

    const/16 v2, 0x11

    const/4 v3, 0x0

    invoke-direct {v1, v2, p0, p1, v3}, Lg/fuy;-><init>(ILjava/lang/Object;Ljava/lang/Object;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-direct {p0, p1}, Lg/err;->g(Lg/ci;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lg/err;->i(Lg/ci;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lg/err;->h(Lg/ci;)V

    return-void

    :pswitch_3
    new-instance v0, Lg/efr;

    const/16 v1, 0x1b

    invoke-direct {v0, p0, v1, p1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :pswitch_4
    new-instance v0, Lg/efr;

    const/16 v1, 0x19

    invoke-direct {v0, p0, v1, p1}, Lg/efr;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object p1, p0, Lg/err;->e:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onFailure(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lg/err;->b:Ljava/lang/Object;

    check-cast v0, Lg/chw;

    invoke-virtual {v0, p1}, Lg/chw;->l(Ljava/lang/Exception;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/err;->b:Ljava/lang/Object;

    check-cast v0, Lg/chw;

    invoke-virtual {v0, p1}, Lg/chw;->m(Ljava/lang/Object;)V

    return-void
.end method
