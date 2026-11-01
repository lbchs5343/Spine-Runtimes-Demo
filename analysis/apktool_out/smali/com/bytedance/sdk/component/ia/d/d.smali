.class public Lcom/bytedance/sdk/component/ia/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/mn;


# static fields
.field private static volatile p:Lcom/bytedance/sdk/component/ia/dq/dq/dq;


# instance fields
.field private d:Landroid/content/Context;

.field private dq:Lcom/bytedance/sdk/component/ia/dq/s;

.field private ox:Lcom/bytedance/sdk/component/ia/dq/kk;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/component/ia/dq/dq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method private d(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/d/d;->ox(Lcom/bytedance/sdk/component/ia/dq/s;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->d(Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/component/ia/d/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d;->d(I)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/component/ia/dq/d;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    if-eqz p1, :cond_5

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->no()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/p;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ia/dq/kk;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d;->kk()Z

    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d;->kk()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/d$3;

    const-string v3, "dispatchEvent"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/bytedance/sdk/component/ia/d/d$3;-><init>(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/p;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Lcom/bytedance/sdk/component/ia/dq/d;I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ia/dq/kk;->dq(Lcom/bytedance/sdk/component/ia/dq/d;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const-string p1, "log_error"

    const-string v0, "dispatch event configManager is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/d;)Lcom/bytedance/sdk/component/ia/dq/s;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    return-object p0
.end method

.method private dq(I)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/d/d;->d(Lcom/bytedance/sdk/component/ia/dq/s;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d;->dq(I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/d;Lcom/bytedance/sdk/component/ia/dq/d;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Lcom/bytedance/sdk/component/ia/dq/d;I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/ia/dq/d;I)V
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/d/d;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/s;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/d;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method private dq(Ljava/lang/String;I)V
    .locals 1

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/ia/d/d/d/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    :cond_1
    return-void
.end method

.method private dq(Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZI",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2, p3, p4, p5}, Lcom/bytedance/sdk/component/ia/d/d/d/dq;->dq(Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/ia/dq/s;Lorg/json/JSONObject;)V

    return-void

    :cond_0
    const/4 p5, 0x1

    if-ne p4, p5, :cond_1

    iget-object p4, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {p1, p2, p3, p4}, Lcom/bytedance/sdk/component/ia/d/d/d/d;->dq(Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/ia/dq/s;)V

    :cond_1
    return-void
.end method

.method private dq(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/p;)Z
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-interface {p2}, Lcom/bytedance/sdk/component/ia/dq/p;->mp()Z

    move-result p1

    return p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/fw;->dq(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public static ia()Lcom/bytedance/sdk/component/ia/dq/dq/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/d;->p:Lcom/bytedance/sdk/component/ia/dq/dq/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/ia/d/d;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/ia/d/d;->p:Lcom/bytedance/sdk/component/ia/dq/dq/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/s/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ia/d/s/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/ia/d/d;->p:Lcom/bytedance/sdk/component/ia/dq/dq/dq;

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
    sget-object v0, Lcom/bytedance/sdk/component/ia/d/d;->p:Lcom/bytedance/sdk/component/ia/dq/dq/dq;

    return-object v0
.end method

.method private kk()Z
    .locals 2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public d()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->no()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/p;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/kk;->d()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d;->kk()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/d$2;

    const-string v3, "stop"

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/component/ia/d/d$2;-><init>(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/p;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ia/d/d;->d(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/kk;->d()V

    :cond_5
    :goto_0
    return-void
.end method

.method public d(Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d;->d:Landroid/content/Context;

    new-instance p1, Lcom/bytedance/sdk/component/ia/d/d/d;

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/component/ia/d/d/d;-><init>(Lcom/bytedance/sdk/component/ia/dq/s;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    return-void
.end method

.method public dq()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->no()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/p;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/kk;->dq()V

    return-void

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d;->kk()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/d$1;

    const-string v3, "start"

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/component/ia/d/d$1;-><init>(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/p;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/ia/d/d;->dq(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/kk;->dq()V

    :cond_5
    :goto_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d;->d(Lcom/bytedance/sdk/component/ia/dq/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/iw;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;->dq:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;

    :cond_0
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ia/dq/s;->dq(Lcom/bytedance/sdk/component/ia/dq/iw;)V

    :cond_1
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/component/ia/dq/s;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/ia/d/d;->d(Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    const-string p1, "log_error"

    const-string v1, "trackFailedUrls configManager is null"

    invoke-static {p1, v1, v0}, Lcom/bytedance/sdk/component/ia/d/ox/ox;->ox(Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/s;)V

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->iw()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v1

    if-nez v1, :cond_3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->no()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/p;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d;->kk()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/ia/d/d$5;

    const-string v3, "trackFailed"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/bytedance/sdk/component/ia/d/d$5;-><init>(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/ia/dq/p;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_5
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Ljava/lang/String;I)V

    return-void

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/iw/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)Lcom/bytedance/sdk/component/ia/d/iw/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ia/d/iw/d;->dq(Ljava/lang/String;)V

    :cond_7
    :goto_1
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v1, :cond_0

    const-string v1, "log_error"

    const-string v2, "track configManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v6

    if-eqz v6, :cond_8

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-interface {v6}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v6}, Lcom/bytedance/sdk/component/ia/dq/p;->iw()Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    invoke-interface {v6}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_1

    :cond_3
    invoke-interface {v6}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v1

    if-nez v1, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->no()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/ia/dq/s;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v6}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/p;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ia/d/d;->kk()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v6}, Lcom/bytedance/sdk/component/ia/dq/p;->ia()Ljava/util/concurrent/Executor;

    move-result-object v8

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/d$4;

    const-string v2, "trackFailed"

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/sdk/component/ia/d/d$4;-><init>(Lcom/bytedance/sdk/component/ia/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/ia/dq/p;Lorg/json/JSONObject;)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    invoke-interface {v6}, Lcom/bytedance/sdk/component/ia/dq/p;->o()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/component/ia/d/d;->dq(Ljava/lang/String;Ljava/util/List;ZILorg/json/JSONObject;)V

    return-void

    :cond_7
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ia/d/iw/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)Lcom/bytedance/sdk/component/ia/d/iw/d;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/component/ia/d/iw/d;->dq(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;Lorg/json/JSONObject;)V

    :cond_8
    :goto_1
    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/component/ia/dq/s;->dq(Z)V

    :cond_0
    return-void
.end method

.method public iw()Lcom/bytedance/sdk/component/ia/dq/kk;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    return-object v0
.end method

.method public mn()Lcom/bytedance/sdk/component/ia/dq/p;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/s;->p()Lcom/bytedance/sdk/component/ia/dq/p;

    move-result-object v0

    return-object v0
.end method

.method public ox()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->ox:Lcom/bytedance/sdk/component/ia/dq/kk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ia/dq/kk;->ox()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ia/d/iw/dq;->dq(Lcom/bytedance/sdk/component/ia/dq/s;)Lcom/bytedance/sdk/component/ia/d/iw/d;

    return-void
.end method

.method public s()Lcom/bytedance/sdk/component/ia/dq/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/d;->dq:Lcom/bytedance/sdk/component/ia/dq/s;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method
