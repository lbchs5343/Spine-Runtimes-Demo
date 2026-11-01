.class public Lcom/bytedance/sdk/component/o/d/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/o/d/dq$dq;
    }
.end annotation


# instance fields
.field private d:Landroid/os/Handler;

.field private final dq:Lcom/bytedance/sdk/component/o/d/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/component/o/d/p<",
            "Lcom/bytedance/sdk/component/o/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Landroid/os/Handler;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/d/p;->dq(I)Lcom/bytedance/sdk/component/o/d/p;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/o/d/dq;->dq:Lcom/bytedance/sdk/component/o/d/p;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/component/o/d/dq$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/o/d/dq;-><init>()V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/utils/e$dq;Ljava/lang/String;)Lcom/bytedance/sdk/component/o/d/d;
    .locals 1

    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    new-instance p2, Lcom/bytedance/sdk/component/o/d/d;

    invoke-direct {p2, v0, p1}, Lcom/bytedance/sdk/component/o/d/d;-><init>(Landroid/os/HandlerThread;Lcom/bytedance/sdk/component/utils/e$dq;)V

    return-object p2
.end method

.method public static dq()Lcom/bytedance/sdk/component/o/d/dq;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/component/o/d/dq$dq;->dq()Lcom/bytedance/sdk/component/o/d/dq;

    move-result-object v0

    return-object v0
.end method

.method private dq(Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Lg/gdl;->w(Landroid/os/Looper;)Landroid/os/MessageQueue;

    move-result-object v0

    invoke-static {v0}, Lg/gdl;->y(Landroid/os/MessageQueue;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quit()V

    return-void

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/o/d/dq$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/bytedance/sdk/component/o/d/dq$1;-><init>(Lcom/bytedance/sdk/component/o/d/dq;Landroid/os/Handler;Landroid/os/Handler;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/o/d/dq;Landroid/os/Handler;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Landroid/os/Handler;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public d()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/d/dq;->d:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/o/d/dq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/o/d/dq;->d:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "csj_io_handler"

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/o/d/dq;->d:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/d/dq;->d:Landroid/os/Handler;

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/component/utils/e$dq;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/e;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/d/dq;->dq:Lcom/bytedance/sdk/component/o/d/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/o/d/p;->dq()Lcom/bytedance/sdk/component/o/d/ox;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/component/o/d/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/o/d/d;->dq(Lcom/bytedance/sdk/component/utils/e$dq;)V

    new-instance p1, Lcom/bytedance/sdk/component/o/d/dq$2;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/component/o/d/dq$2;-><init>(Lcom/bytedance/sdk/component/o/d/dq;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/o/d/dq;->d(Lcom/bytedance/sdk/component/utils/e$dq;Ljava/lang/String;)Lcom/bytedance/sdk/component/o/d/d;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/e;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Lcom/bytedance/sdk/component/utils/e$dq;Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object p1

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/component/utils/e;)Z
    .locals 1

    instance-of v0, p1, Lcom/bytedance/sdk/component/o/d/d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/bytedance/sdk/component/o/d/d;

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/d/dq;->dq:Lcom/bytedance/sdk/component/o/d/p;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/o/d/p;->dq(Lcom/bytedance/sdk/component/o/d/ox;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/o/d/d;->d()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public ox()Landroid/os/Handler;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/o/d/dq;->ox:Landroid/os/Handler;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/o/d/dq;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/o/d/dq;->ox:Landroid/os/Handler;

    if-nez v1, :cond_0

    const-string v1, "csj_main_handler"

    invoke-virtual {p0, v1}, Lcom/bytedance/sdk/component/o/d/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/component/o/d/dq;->ox:Landroid/os/Handler;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/bytedance/sdk/component/o/d/dq;->ox:Landroid/os/Handler;

    return-object v0
.end method
