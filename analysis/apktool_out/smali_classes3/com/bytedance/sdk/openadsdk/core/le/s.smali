.class public Lcom/bytedance/sdk/openadsdk/core/le/s;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/le/s;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/content/Context;

.field private ox:Lcom/bytedance/sdk/openadsdk/mp/dq/dq;

.field private final p:Lcom/bytedance/sdk/component/kk/dq;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/s;->d:Landroid/content/Context;

    new-instance p1, Lcom/bytedance/sdk/component/kk/dq$dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/component/kk/dq$dq;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x2710

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/kk/dq$dq;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/kk/dq$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/kk/dq$dq;

    move-result-object p1

    invoke-virtual {p1, v1, v2, v0}, Lcom/bytedance/sdk/component/kk/dq$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/kk/dq$dq;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/le/dq$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/le/dq$dq;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Lcom/bytedance/sdk/component/d/dq/kk;)Lcom/bytedance/sdk/component/kk/dq$dq;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/n;->dq()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Ljava/util/Set;)Lcom/bytedance/sdk/component/kk/dq$dq;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/r/n;->d()Lcom/bytedance/sdk/component/d/dq/kk;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Lcom/bytedance/sdk/component/d/dq/kk;)Lcom/bytedance/sdk/component/kk/dq$dq;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Z)Lcom/bytedance/sdk/component/kk/dq$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/le/s;->p:Lcom/bytedance/sdk/component/kk/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq()Lcom/bytedance/sdk/component/d/dq/p;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/dq/p;->dq(I)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->s()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/dq/p;->d(I)V

    :cond_1
    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/le/s;
    .locals 4

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq:Lcom/bytedance/sdk/openadsdk/core/le/s;

    if-nez v0, :cond_2

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/le/s;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq:Lcom/bytedance/sdk/openadsdk/core/le/s;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq()Lcom/bytedance/sdk/component/d/dq/dq/dq;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/ox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/ox/ox;->iw()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/component/d/dq/dq/dq;->dq(Z)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/le/s;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/le/s;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq:Lcom/bytedance/sdk/openadsdk/core/le/s;

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    monitor-exit v0

    goto :goto_3

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_3
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq:Lcom/bytedance/sdk/openadsdk/core/le/s;

    return-object v0
.end method

.method private p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/s;->ox:Lcom/bytedance/sdk/openadsdk/mp/dq/dq;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mp/dq/dq;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/s;->ox:Lcom/bytedance/sdk/openadsdk/mp/dq/dq;

    :cond_0
    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/kk/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/s;->p:Lcom/bytedance/sdk/component/kk/dq;

    return-object v0
.end method

.method public ox()Lcom/bytedance/sdk/openadsdk/mp/dq/dq;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/le/s;->ox:Lcom/bytedance/sdk/openadsdk/mp/dq/dq;

    return-object v0
.end method
