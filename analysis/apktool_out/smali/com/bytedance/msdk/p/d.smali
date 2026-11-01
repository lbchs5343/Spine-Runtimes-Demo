.class public Lcom/bytedance/msdk/p/d;
.super Ljava/lang/Object;


# static fields
.field private static volatile dq:Lcom/bytedance/msdk/p/d;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/content/Context;

.field private final ox:Lcom/bytedance/sdk/component/kk/dq;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/bytedance/msdk/p/d;->d:Landroid/content/Context;

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

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Z)Lcom/bytedance/sdk/component/kk/dq$dq;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/msdk/ia/p/ox;->dq()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/bytedance/msdk/ia/p/ox;->dq:Ljava/util/Map;

    if-eqz v0, :cond_1

    const-string v1, "case_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/msdk/ia/p/ox$dq;

    invoke-direct {v0}, Lcom/bytedance/msdk/ia/p/ox$dq;-><init>()V

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq(Lcom/bytedance/sdk/component/d/dq/kk;)Lcom/bytedance/sdk/component/kk/dq$dq;

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/dq$dq;->dq()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/p/d;->ox:Lcom/bytedance/sdk/component/kk/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq()Lcom/bytedance/sdk/component/d/dq/p;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/d/dq/p;->dq(I)V

    :cond_2
    return-void
.end method

.method public static dq()Lcom/bytedance/msdk/p/d;
    .locals 3

    sget-object v0, Lcom/bytedance/msdk/p/d;->dq:Lcom/bytedance/msdk/p/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/msdk/p/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/msdk/p/d;->dq:Lcom/bytedance/msdk/p/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/msdk/p/d;

    invoke-static {}, Lcom/bytedance/msdk/core/dq;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bytedance/msdk/p/d;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/msdk/p/d;->dq:Lcom/bytedance/msdk/p/d;

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
    sget-object v0, Lcom/bytedance/msdk/p/d;->dq:Lcom/bytedance/msdk/p/d;

    return-object v0
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/kk/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/p/d;->ox:Lcom/bytedance/sdk/component/kk/dq;

    return-object v0
.end method
