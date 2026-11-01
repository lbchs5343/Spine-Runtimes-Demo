.class final Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/plugin/ia;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# static fields
.field private static final dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;


# instance fields
.field private volatile d:Lcom/bykv/vk/openvk/api/proto/Initializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(Lcom/bytedance/sdk/openadsdk/api/plugin/iw;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/api/plugin/ox;
        }
    .end annotation

    const-string v0, "TTPluginManager"

    const/16 v1, 0x106d

    :try_start_0
    const-string v2, "call_create_initializer"

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->d(Ljava/lang/String;)J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/TTAppContextHolder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/api/plugin/mn;

    move-result-object v2

    const v3, 0x927c0

    invoke-virtual {v2, p0, v3}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/iw;I)Ldalvik/system/BaseDexClassLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "com.bytedance.sdk.openadsdk.core.AdSdkInitializerHolder"

    invoke-virtual {v2, v3}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "get_init_class_cost"

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->d(Ljava/lang/String;)J

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "_pl_update_event_listener_"

    new-instance v5, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$ox;

    invoke-direct {v5}, Lcom/bytedance/sdk/openadsdk/api/plugin/mn$ox;-><init>()V

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v4, "create_bundle_cost"

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->d(Ljava/lang/String;)J

    const-string v4, "getNewInstance"

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Landroid/os/Bundle;

    const/4 v8, 0x0

    aput-object v7, v6, v8

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v4, "get_init_method_cost"

    invoke-virtual {p0, v4}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->d(Ljava/lang/String;)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-array v4, v5, [Ljava/lang/Object;

    aput-object v3, v4, v8

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/api/proto/Initializer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "get_init_instance_cost"

    invoke-virtual {p0, v3}, Lcom/bytedance/sdk/openadsdk/api/plugin/iw;->d(Ljava/lang/String;)J

    const-string p0, "Create initializer success"

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/api/ox;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    const-string v2, "com.byted.pangle"

    invoke-static {v2}, Lcom/bytedance/pangle/Zeus;->unInstallPlugin(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;

    const-string v2, "Get initializer failed"

    invoke-direct {p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;-><init>(ILjava/lang/String;)V

    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    const-string v2, "Create initializer failed"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/api/ox;->p(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, p0

    check-cast v3, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;->dq()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;

    const/16 v1, 0x106e

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/ox;-><init>(ILjava/lang/String;)V

    throw v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;Lcom/bytedance/sdk/openadsdk/api/plugin/iw;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/api/plugin/ox;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->dq(Lcom/bytedance/sdk/openadsdk/api/plugin/iw;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object p0

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/api/plugin/iw;)Lcom/bykv/vk/openvk/api/proto/Initializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/api/plugin/ox;
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->d(Lcom/bytedance/sdk/openadsdk/api/plugin/iw;)Lcom/bykv/vk/openvk/api/proto/Initializer;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->d:Lcom/bykv/vk/openvk/api/proto/Initializer;

    return-object p1
.end method

.method public static synthetic dq()Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;->dq:Lcom/bytedance/sdk/openadsdk/api/plugin/ia$d;

    return-object v0
.end method
