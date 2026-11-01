.class public Lcom/bytedance/sdk/openadsdk/api/plugin/ia;
.super Lcom/bytedance/sdk/openadsdk/api/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/api/plugin/ia$dq;,
        Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;
    }
.end annotation


# static fields
.field private static final dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia$dq;


# instance fields
.field private volatile d:Lcom/bykv/vk/openvk/api/proto/Initializer;

.field private iw:Z

.field private mn:Lcom/bytedance/sdk/openadsdk/ox/d;

.field private volatile ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

.field private p:Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

.field private s:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$dq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$dq;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/ia$1;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia$dq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/dq;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->s()Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->iw:Z

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->mn:Lcom/bytedance/sdk/openadsdk/ox/d;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bytedance/sdk/openadsdk/api/plugin/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p:Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    return-object p0
.end method

.method private d(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lg/hat;->g(I)Lg/hat;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lg/hat;->i(IZ)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/bykv/vk/openvk/api/proto/Manager;->getBridge(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    const/16 v0, 0x10

    const-class v2, Ljava/lang/Void;

    invoke-interface {p1, v0, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq;->dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method

.method private dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/plugin/dq/dq;->dq()Lcom/bytedance/sdk/openadsdk/api/plugin/dq/dq;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/p;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/downloadnew/p;

    move-result-object p1

    return-object p1

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/live/ox;->dq()Lcom/bytedance/sdk/openadsdk/live/ox;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;I)Lcom/bykv/vk/openvk/api/proto/Bridge;
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bykv/vk/openvk/api/proto/Initializer;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    return-object p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bytedance/sdk/openadsdk/api/plugin/iw;)Lcom/bytedance/sdk/openadsdk/api/plugin/iw;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p:Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    return-object p1
.end method

.method private dq(Ljava/lang/Class;I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)TT;"
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    invoke-virtual {v0, v1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d()Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static dq(Lcom/bykv/vk/openvk/api/proto/Initializer;Lcom/bytedance/sdk/openadsdk/api/plugin/iw;Lg/hat;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/api/plugin/ox;
        }
    .end annotation

    if-eqz p0, :cond_1

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->dq()J

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-wide/16 v1, 0x14

    invoke-virtual {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->dq(Lorg/json/JSONObject;J)V

    const-string p1, "zeus"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->dq()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p2, Lg/hat;->c:Landroid/util/SparseArray;

    const/16 v2, 0x9

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/bykv/vk/openvk/api/proto/Initializer;->init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    invoke-static {p0}, Lcom/bytedance/pangle/Zeus;->hookHuaWeiVerifier(Landroid/app/Application;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    const-string p1, "com.byted.pangle"

    invoke-static {p1}, Lcom/bytedance/pangle/Zeus;->unInstallPlugin(Ljava/lang/String;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Init error: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p2, 0x106f

    invoke-direct {p1, p2, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;

    const/16 p1, 0x1069

    const-string p2, "Init error"

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq;->d(Lcom/bykv/vk/openvk/api/proto/Result;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lcom/bytedance/sdk/openadsdk/api/plugin/iw;Lg/hat;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/iw;Lg/hat;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/api/plugin/iw;Lg/hat;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    invoke-static {p2}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object p2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$3;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)V

    const/16 v1, 0xf

    invoke-virtual {p2, v1, v0}, Lg/hat;->m(ILjava/lang/Object;)V

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-nez v2, :cond_2

    const-class v2, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;

    monitor-enter v2
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/api/plugin/ox; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-nez v3, :cond_1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->dq()Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;Lcom/bytedance/sdk/openadsdk/api/plugin/iw;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object v3

    iput-object v3, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->ox:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-static {v3, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bykv/vk/openvk/api/proto/Initializer;Lcom/bytedance/sdk/openadsdk/api/plugin/iw;Lg/hat;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_1
    :goto_0
    monitor-exit v2

    return-void

    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Lcom/bytedance/sdk/openadsdk/api/plugin/ox; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_2
    :goto_2
    return-void

    :goto_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "Load p_init failed: "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x106e

    invoke-static {v2, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/s;->dq(ILjava/lang/String;J)V

    const-string p2, "_tt_ad_sdk_"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Load p_init failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :goto_4
    const-string p2, "_tt_ad_sdk_"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Load p_init failed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;->dq()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;->dq()I

    move-result p2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/s;->dq(ILjava/lang/String;J)V

    return-void
.end method

.method private dq(Landroid/content/Context;)Z
    .locals 0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->p(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method private iw()V
    .locals 4

    const/4 v0, 0x1

    const-class v1, Ljava/util/concurrent/ExecutorService;

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    move-object v3, v0

    check-cast v3, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/o/no;->dq(Ljava/util/concurrent/ThreadPoolExecutor;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq()Lcom/bytedance/sdk/openadsdk/cd/dq;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/cd/dq;->dq(Ljava/util/concurrent/ExecutorService;)V

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    sget-object v2, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    check-cast v0, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/o/no;->d(Ljava/util/concurrent/ThreadPoolExecutor;)V

    :cond_1
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    sget-object v1, Lcom/bytedance/sdk/component/o/no;->d:Lcom/bytedance/sdk/component/o/no;

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/o/no;->dq(Ljava/util/concurrent/ScheduledExecutorService;)V

    :cond_2
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->iw:Z

    return p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    return-object p0
.end method

.method private static s()Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-class v1, Lcom/bytedance/sdk/openadsdk/TTAdSdk;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.bytedance.sdk.openadsdk.core.AdSdkInitializerHolder"

    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "_pl_update_event_listener_"

    new-instance v4, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$ox;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$ox;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v3, "getNewInstance"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/Bundle;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v2, v3, v7

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/api/proto/Initializer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v1, "_tt_ad_sdk_"

    const-string v2, "Get direct initializer failed"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/api/ox;->s(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->iw()V

    return-void
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/openadsdk/api/dq$ox;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia$dq;

    return-object v0
.end method

.method public d(Landroid/content/Context;Lg/hat;)V
    .locals 3

    const-string v0, "async init"

    const-string v1, "_tt_ad_sdk_"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->iw:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_0

    const-string p1, "lower 26"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p:Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    const-string v2, "wait_asyn_cost"

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->d(Ljava/lang/String;)J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;

    invoke-direct {v2, p0, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$2;-><init>(Lcom/bytedance/sdk/openadsdk/api/plugin/ia;Lg/hat;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->dq(Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "no pl"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p1, "start pl load"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p:Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/iw;Lg/hat;)V

    return-void
.end method

.method public d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/api/dq;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/AdConfig;Lcom/bytedance/sdk/openadsdk/TTAdSdk$InitCallback;)Z

    const-string p1, "duration"

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p:Lcom/bytedance/sdk/openadsdk/api/plugin/iw;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/android/openliveplugin/process/LiveProcessUtils;->inLiveProcess(Landroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Result;)V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/api/plugin/s;->dq()V

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->isInitSuccess()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public dq(Landroid/content/Context;Lg/hat;)Z
    .locals 3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->dq(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "_tt_ad_sdk_"

    const-string p2, "use pl Init"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->iw:Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->getManager()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/api/dq;->dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/bykv/vk/openvk/api/proto/Initializer;->init(Landroid/content/Context;Lcom/bykv/vk/openvk/api/proto/ValueSet;)V

    return v1

    :cond_1
    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object p1

    iput-boolean v1, p1, Lg/cpq;->e:Z

    const/16 p2, 0x106e

    iput p2, p1, Lg/cpq;->d:I

    invoke-virtual {p1}, Lg/cpq;->h()Lg/gok;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq;->d(Lcom/bykv/vk/openvk/api/proto/Result;)V

    return v2
.end method

.method public ox()Lcom/bytedance/sdk/openadsdk/ox/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->mn:Lcom/bytedance/sdk/openadsdk/ox/d;

    return-object v0
.end method

.method public p()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->s:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "sp_bidding_opt_libra"

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->s:Landroid/content/SharedPreferences;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia;->s:Landroid/content/SharedPreferences;

    const-string v2, "_use_pl_"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method
