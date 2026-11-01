.class public Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;
    }
.end annotation


# static fields
.field private static volatile dq:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;


# instance fields
.field private d:Landroid/net/ConnectivityManager;

.field private ox:Landroid/net/Network;

.field private p:Landroid/net/ConnectivityManager$NetworkCallback;

.field private s:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->ox:Landroid/net/Network;

    return-object p1
.end method

.method public static dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;

    return-object p0
.end method

.method private static dq(Landroid/net/ConnectivityManager;)Z
    .locals 3

    :try_start_0
    const-class v0, Landroid/net/ConnectivityManager;

    const-string v1, "getMobileDataEnabled"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->s:Z

    return p1
.end method


# virtual methods
.method public declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->p:Landroid/net/ConnectivityManager$NetworkCallback;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->p:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->ox:Landroid/net/Network;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    monitor-exit p0

    return-void

    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public dq()I
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_4

    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    const/4 v4, 0x1

    if-lt v2, v3, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lg/fdj;->g(Landroid/net/ConnectivityManager;)Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v1, :cond_9

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v3

    invoke-virtual {v1, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v5

    invoke-virtual {v1, v4}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v3, :cond_2

    return v2

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    if-eqz v5, :cond_8

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v4, :cond_7

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->dq(Landroid/net/ConnectivityManager;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    :goto_1
    const/4 v0, 0x3

    return v0

    :cond_6
    :goto_2
    return v4

    :cond_7
    if-nez v1, :cond_8

    :goto_3
    const/4 v0, 0x2

    return v0

    :cond_8
    const/4 v0, 0x5

    :catch_0
    :cond_9
    :goto_4
    return v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;->dq(Landroid/net/Network;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->ox:Landroid/net/Network;

    if-eqz v2, :cond_1

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->s:Z

    if-nez v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(Landroid/net/Network;)Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->ox:Landroid/net/Network;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;->dq(Landroid/net/Network;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->p:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->p:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_2
    :goto_0
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;)V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->p:Landroid/net/ConnectivityManager$NetworkCallback;

    :try_start_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox;->d:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v0, v2}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/op/dq/ox$dq;->dq(Landroid/net/Network;)V

    return-void
.end method
