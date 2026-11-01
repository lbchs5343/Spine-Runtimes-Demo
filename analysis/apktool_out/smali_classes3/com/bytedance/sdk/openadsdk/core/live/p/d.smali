.class public Lcom/bytedance/sdk/openadsdk/core/live/p/d;
.super Ljava/lang/Object;


# static fields
.field private static dq:Lcom/bytedance/sdk/component/mn/dq;


# direct methods
.method private static d()V
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-nez v0, :cond_0

    const-string v0, "csj_live"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/n;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/mn/dq;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->d()V

    :try_start_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-eqz v0, :cond_0

    const-string v1, "live_init_"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static dq()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/no;->iw(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    const-string v2, "com.byted.live.lite"

    iget-object v3, v1, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static dq(Ljava/lang/String;)V
    .locals 4

    const-string v0, "live_init_"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->d()V

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    if-eqz v1, :cond_0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result v1

    sget-object v2, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, p0, v1}, Lcom/bytedance/sdk/component/mn/dq;->dq(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static ox(Ljava/lang/String;)Z
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->d()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->dq:Lcom/bytedance/sdk/component/mn/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "live_init_"

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0, v1}, Lcom/bytedance/sdk/component/mn/dq;->d(Ljava/lang/String;I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x5

    if-ge p0, v0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public static p(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->dq()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/core/live/p/d;->d(Ljava/lang/String;)V

    return-void
.end method
