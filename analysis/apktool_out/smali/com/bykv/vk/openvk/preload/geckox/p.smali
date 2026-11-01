.class public Lcom/bykv/vk/openvk/preload/geckox/p;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bykv/vk/openvk/preload/geckox/p$dq;
    }
.end annotation


# static fields
.field private static cd:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static fw:Lcom/bykv/vk/openvk/preload/geckox/d;


# instance fields
.field final d:Lcom/bykv/vk/openvk/preload/geckox/kk/dq;

.field public final dq:Landroid/content/Context;

.field public f:Lorg/json/JSONObject;

.field public final ia:Ljava/lang/Long;

.field public final ig:Ljava/lang/String;

.field public final iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final jy:Z

.field public final kk:Ljava/lang/String;

.field final mn:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

.field public final mp:Ljava/lang/String;

.field public final no:Ljava/lang/String;

.field public final o:Ljava/lang/String;

.field public final ox:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

.field public final p:Lcom/bykv/vk/openvk/preload/geckox/mp/dq;

.field public final q:Ljava/io/File;

.field public final s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/p$dq;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->p:Landroid/content/Context;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->dq:Landroid/content/Context;

    if-eqz v0, :cond_6

    iget-object v1, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->d:Ljava/util/List;

    iput-object v1, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->s:Ljava/util/List;

    iget-object v2, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->ox:Ljava/util/List;

    iput-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->iw:Ljava/util/List;

    iget-object v2, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->s:Lcom/bykv/vk/openvk/preload/geckox/kk/dq;

    iput-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->d:Lcom/bykv/vk/openvk/preload/geckox/kk/dq;

    iget-object v2, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->ia:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

    iput-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->mn:Lcom/bykv/vk/openvk/preload/geckox/dq/dq/dq;

    iget-object v2, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->kk:Ljava/lang/Long;

    iput-object v2, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->ia:Ljava/lang/Long;

    iget-object v3, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->o:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/utils/d;->dq(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->kk:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->o:Ljava/lang/String;

    iput-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->kk:Ljava/lang/String;

    :goto_0
    iget-object v3, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->no:Ljava/lang/String;

    iput-object v3, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->o:Ljava/lang/String;

    iget-object v4, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->q:Ljava/lang/String;

    iput-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->ig:Ljava/lang/String;

    iget-object v4, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->jy:Ljava/lang/String;

    iput-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->mp:Ljava/lang/String;

    iget-object v4, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->mp:Ljava/io/File;

    if-nez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    const-string v5, "gecko_offline_res_x"

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->q:Ljava/io/File;

    goto :goto_1

    :cond_1
    iput-object v4, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->q:Ljava/io/File;

    :goto_1
    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->ig:Ljava/lang/String;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->no:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->dq:Lcom/bykv/vk/openvk/preload/geckox/mp/dq;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->p:Lcom/bykv/vk/openvk/preload/geckox/mp/dq;

    iget-object v0, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->iw:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

    iput-object v0, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->ox:Lcom/bykv/vk/openvk/preload/geckox/q/dq;

    iget-boolean p1, p1, Lcom/bykv/vk/openvk/preload/geckox/p$dq;->mn:Z

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/preload/geckox/p;->jy:Z

    return-void

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "deviceId key empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appId == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "access key empty"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "host == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "context == null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public synthetic constructor <init>(Lcom/bykv/vk/openvk/preload/geckox/p$dq;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bykv/vk/openvk/preload/geckox/p;-><init>(Lcom/bykv/vk/openvk/preload/geckox/p$dq;)V

    return-void
.end method

.method public static d()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p;->ox()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static dq()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/p;->ox()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public static dq(Lcom/bykv/vk/openvk/preload/geckox/d;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/openvk/preload/geckox/p;->fw:Lcom/bykv/vk/openvk/preload/geckox/d;

    return-void
.end method

.method public static ox()Ljava/util/concurrent/ExecutorService;
    .locals 10

    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/p;->fw:Lcom/bykv/vk/openvk/preload/geckox/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/preload/geckox/d;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/p;->cd:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_3

    const-class v1, Lcom/bykv/vk/openvk/preload/geckox/p;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/p;->cd:Ljava/util/concurrent/ThreadPoolExecutor;

    if-nez v0, :cond_2

    new-instance v2, Lcom/bytedance/sdk/component/o/p/p;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lcom/bytedance/sdk/component/o/o;

    const-string v0, "load/geckox/b"

    invoke-direct {v9, v0}, Lcom/bytedance/sdk/component/o/o;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    const/4 v4, 0x2

    const-wide/16 v5, 0x14

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/component/o/p/p;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v2, Lcom/bykv/vk/openvk/preload/geckox/p;->cd:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v0, 0x1

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/o/p/p;->allowCoreThreadTimeOut(Z)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_2
    :goto_1
    monitor-exit v1

    goto :goto_3

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_3
    sget-object v0, Lcom/bykv/vk/openvk/preload/geckox/p;->cd:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method
