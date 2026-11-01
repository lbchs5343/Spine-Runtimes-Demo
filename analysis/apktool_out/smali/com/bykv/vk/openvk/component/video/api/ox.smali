.class public Lcom/bykv/vk/openvk/component/video/api/ox;
.super Ljava/lang/Object;


# static fields
.field private static d:Landroid/content/Context; = null

.field public static dq:Z = false

.field private static iw:I = 0x1

.field private static ox:Ljava/lang/String;

.field private static p:Z

.field private static s:Lcom/bytedance/sdk/component/d/dq/ig;


# direct methods
.method public static d()Z
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/ox;->p:Z

    return v0
.end method

.method public static dq()Ljava/lang/String;
    .locals 3

    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ox;->ox:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string v2, "ttad_dir"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/component/video/api/ox;->ox:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ox;->ox:Ljava/lang/String;

    return-object v0
.end method

.method public static dq(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/openvk/component/video/api/ox;->d:Landroid/content/Context;

    sput-object p1, Lcom/bykv/vk/openvk/component/video/api/ox;->ox:Ljava/lang/String;

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/d/dq/ig;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/openvk/component/video/api/ox;->s:Lcom/bytedance/sdk/component/d/dq/ig;

    return-void
.end method

.method public static dq(Z)V
    .locals 0

    sput-boolean p0, Lcom/bykv/vk/openvk/component/video/api/ox;->p:Z

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ox;->d:Landroid/content/Context;

    return-object v0
.end method

.method public static ox()Lcom/bytedance/sdk/component/d/dq/ig;
    .locals 4

    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ox;->s:Lcom/bytedance/sdk/component/d/dq/ig;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/ig$dq;

    const-string v1, "v_config"

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    invoke-virtual {v0, v2, v3, v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/openvk/component/video/api/ox;->s:Lcom/bytedance/sdk/component/d/dq/ig;

    :cond_0
    sget-object v0, Lcom/bykv/vk/openvk/component/video/api/ox;->s:Lcom/bytedance/sdk/component/d/dq/ig;

    return-object v0
.end method

.method public static p()Z
    .locals 1

    sget-boolean v0, Lcom/bykv/vk/openvk/component/video/api/ox;->dq:Z

    return v0
.end method

.method public static s()I
    .locals 1

    sget v0, Lcom/bykv/vk/openvk/component/video/api/ox;->iw:I

    return v0
.end method
