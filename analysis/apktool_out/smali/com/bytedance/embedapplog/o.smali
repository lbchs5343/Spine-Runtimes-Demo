.class final Lcom/bytedance/embedapplog/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/embedapplog/o$d;,
        Lcom/bytedance/embedapplog/o$dq;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<SERVICE:",
        "Ljava/lang/Object;",
        "RESU",
        "LT:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final d:Landroid/content/Intent;

.field private final dq:Ljava/util/concurrent/CountDownLatch;

.field private final ox:Lcom/bytedance/embedapplog/o$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/embedapplog/o$d<",
            "TSERVICE;TRESU",
            "LT;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Lcom/bytedance/embedapplog/o$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Lcom/bytedance/embedapplog/o$d<",
            "TSERVICE;TRESU",
            "LT;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/embedapplog/o;->p:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/embedapplog/o;->d:Landroid/content/Intent;

    iput-object p3, p0, Lcom/bytedance/embedapplog/o;->ox:Lcom/bytedance/embedapplog/o$d;

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/bytedance/embedapplog/o;->dq:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method private dq(Lcom/bytedance/embedapplog/o$dq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/embedapplog/o<",
            "TSERVICE;TRESU",
            "LT;",
            ">.dq;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/embedapplog/o;->p:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dq()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TRESU",
            "LT;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const-string v0, "Don\'t do this in ui thread."

    invoke-static {v0, v2}, Lcom/bytedance/embedapplog/jo;->ox(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v2

    :cond_0
    :try_start_0
    new-instance v0, Lcom/bytedance/embedapplog/o$dq;

    iget-object v1, p0, Lcom/bytedance/embedapplog/o;->dq:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lcom/bytedance/embedapplog/o;->ox:Lcom/bytedance/embedapplog/o$d;

    invoke-direct {v0, p0, v1, v3}, Lcom/bytedance/embedapplog/o$dq;-><init>(Lcom/bytedance/embedapplog/o;Ljava/util/concurrent/CountDownLatch;Lcom/bytedance/embedapplog/o$d;)V

    iget-object v1, p0, Lcom/bytedance/embedapplog/o;->p:Landroid/content/Context;

    iget-object v3, p0, Lcom/bytedance/embedapplog/o;->d:Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iget-object v1, p0, Lcom/bytedance/embedapplog/o;->dq:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/embedapplog/o;->ox:Lcom/bytedance/embedapplog/o$d;

    iget-object v3, v0, Lcom/bytedance/embedapplog/o$dq;->dq:Ljava/lang/Object;

    invoke-interface {v1, v3}, Lcom/bytedance/embedapplog/o$d;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/o;->dq(Lcom/bytedance/embedapplog/o$dq;)V

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    move-object v0, v2

    :goto_0
    :try_start_2
    invoke-static {v1}, Lcom/bytedance/embedapplog/jo;->dq(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/o;->dq(Lcom/bytedance/embedapplog/o$dq;)V

    return-object v2

    :catchall_2
    move-exception v1

    invoke-direct {p0, v0}, Lcom/bytedance/embedapplog/o;->dq(Lcom/bytedance/embedapplog/o$dq;)V

    throw v1
.end method
