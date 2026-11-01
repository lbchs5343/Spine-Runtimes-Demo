.class public Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/bykv/vk/openvk/api/proto/Initializer;

.field private static volatile dq:Lcom/bykv/vk/openvk/api/proto/Initializer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCsjLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->getCsjManger()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->getCsjManger()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/api/proto/Manager;->createLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCsjManger()Lcom/bykv/vk/openvk/api/proto/Manager;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->getManager()Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getInstance(Landroid/os/Bundle;Lcom/bykv/vk/openvk/api/proto/Initializer;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 2

    sput-object p1, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    sget-object v0, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->dq:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->dq:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/gromore/init/q;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/gromore/init/q;-><init>(Landroid/os/Bundle;Lcom/bykv/vk/openvk/api/proto/Initializer;)V

    sput-object v1, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->dq:Lcom/bykv/vk/openvk/api/proto/Initializer;

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
    sget-object p0, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->dq:Lcom/bykv/vk/openvk/api/proto/Initializer;

    return-object p0
.end method

.method public static isInitSuccess()Z
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/gromore/init/DispatchAdSdkInitializerHolder;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/api/proto/Initializer;->isInitSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
