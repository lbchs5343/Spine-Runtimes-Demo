.class public Lcom/bytedance/sdk/openadsdk/core/ig/iw;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;,
        Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;,
        Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;
    }
.end annotation


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;

.field private ox:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->d:Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;

    return-void
.end method

.method private static d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 4

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox;->dq()Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    const-string v1, "save_jump_success_time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;J)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "save_dpl_success_materialmeta"

    invoke-interface {v0, v1, p0}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "save_jump_success_ad_tag"

    invoke-interface {v0, p0, p1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ig/iw;)Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->d:Lcom/bytedance/sdk/openadsdk/core/ig/iw$ox;

    return-object p0
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/ig/iw;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/ig/iw;

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ig/iw;->ox:Ljava/util/Map;

    invoke-static {p1, p2, v0, p3}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Z)Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;

    move-result-object p1

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->p()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;

    invoke-direct {p3, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/iw$dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/ig/iw;Lcom/bytedance/sdk/openadsdk/core/ig/iw$d;)V

    const-wide/16 v0, 0x0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, p3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method
