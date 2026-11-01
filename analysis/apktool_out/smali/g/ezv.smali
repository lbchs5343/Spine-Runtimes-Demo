.class public final Lg/ezv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static volatile b:Ljava/util/concurrent/ThreadPoolExecutor;

.field public static c:Lg/dae;


# instance fields
.field public final synthetic d:Lg/adh;

.field public volatile e:Lg/egx;

.field public final f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final h:Lg/gzm;

.field public final i:Lg/ely;

.field public final j:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v7, Lg/dil;

    const/4 v0, 0x3

    invoke-direct {v7, v0}, Lg/dil;-><init>(I)V

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    const/16 v0, 0xa

    invoke-direct {v6, v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>(I)V

    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v3, 0x1

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x5

    const/16 v2, 0x80

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lg/ezv;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    sput-object v0, Lg/ezv;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public constructor <init>(Lg/adh;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ezv;->d:Lg/adh;

    sget-object p1, Lg/egx;->PENDING:Lg/egx;

    iput-object p1, p0, Lg/ezv;->e:Lg/egx;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lg/ezv;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lg/ezv;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Lg/gzm;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lg/gzm;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lg/ezv;->h:Lg/gzm;

    new-instance v0, Lg/ely;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lg/ely;-><init>(Ljava/lang/Object;Ljava/util/concurrent/Callable;I)V

    iput-object v0, p0, Lg/ezv;->i:Lg/ely;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lg/ezv;->j:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;)V
    .locals 5

    const-class v0, Lg/ezv;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lg/ezv;->c:Lg/dae;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    new-instance v1, Lg/dae;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v1, v4, v3, v2}, Lg/dae;-><init>(Landroid/os/Looper;IZ)V

    sput-object v1, Lg/ezv;->c:Lg/dae;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v1, Lg/ezv;->c:Lg/dae;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lg/dzr;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v2

    invoke-direct {v0, p0, v4}, Lg/dzr;-><init>(Lg/ezv;[Ljava/lang/Object;)V

    invoke-virtual {v1, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final run()V
    .locals 1

    iget-object v0, p0, Lg/ezv;->d:Lg/adh;

    invoke-virtual {v0}, Lg/adh;->o()V

    return-void
.end method
