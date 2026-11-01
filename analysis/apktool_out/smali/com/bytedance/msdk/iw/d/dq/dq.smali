.class public Lcom/bytedance/msdk/iw/d/dq/dq;
.super Lcom/bytedance/msdk/iw/d/dq;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/iw/d/dq;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->mn()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->iw()V

    return-void
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->o()V

    return-void
.end method

.method public static synthetic ig(Lcom/bytedance/msdk/iw/d/dq/dq;)Lcom/bytedance/msdk/core/iw/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/iw/d/dq;->ox:Lcom/bytedance/msdk/core/iw/d;

    return-object p0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->ia()V

    return-void
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->ig()V

    return-void
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->kk()V

    return-void
.end method

.method public static synthetic mp(Lcom/bytedance/msdk/iw/d/dq/dq;)Lcom/bytedance/msdk/core/iw/d;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/iw/d/dq;->ox:Lcom/bytedance/msdk/core/iw/d;

    return-object p0
.end method

.method public static synthetic no(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->f()V

    return-void
.end method

.method public static synthetic o(Lcom/bytedance/msdk/iw/d/dq/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/iw/d/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/iw/d/dq/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/msdk/iw/d/dq;->dq:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->f()V

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/msdk/iw/d/dq/dq;)V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->mp()V

    return-void
.end method


# virtual methods
.method public d(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/msdk/iw/d/dq;->no()V

    new-instance v0, Lcom/bytedance/msdk/iw/d/dq/dq$2;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/iw/d/dq/dq$2;-><init>(Lcom/bytedance/msdk/iw/d/dq/dq;Landroid/content/Context;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dq(Landroid/content/Context;)V
    .locals 2

    new-instance p1, Lcom/bytedance/msdk/iw/d/dq/dq$1;

    invoke-direct {p1, p0}, Lcom/bytedance/msdk/iw/d/dq/dq$1;-><init>(Lcom/bytedance/msdk/iw/d/dq/dq;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public jy()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/iw/d/dq/dq$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/iw/d/dq/dq$3;-><init>(Lcom/bytedance/msdk/iw/d/dq/dq;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/lang/Runnable;)V

    return-void
.end method

.method public ox(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/iw/d/dq/dq;->d(Landroid/content/Context;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/iw/d/dq/dq;->dq(Landroid/content/Context;)V

    return-void
.end method
