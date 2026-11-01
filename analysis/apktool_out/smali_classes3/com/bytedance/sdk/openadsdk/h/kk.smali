.class public Lcom/bytedance/sdk/openadsdk/h/kk;
.super Ljava/lang/Object;


# static fields
.field public static volatile d:Lcom/bykv/vk/openvk/component/video/api/dq/d; = null

.field public static dq:Ljava/lang/String; = null

.field private static iw:I = 0x1

.field public static volatile ox:Lcom/bykv/vk/openvk/component/video/api/dq/d;

.field private static p:Ljava/lang/String;

.field private static s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static d(I)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "tt_ad"

    const-string v3, "CacheDirConstants"

    if-ne p0, v1, :cond_0

    const-string p0, "\u4f7f\u7528\u5185\u90e8\u5b58\u50a8"

    invoke-static {v3, p0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p0

    invoke-static {v0, p0, v2}, Lcom/bytedance/sdk/component/utils/iw;->d(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, "\u4f7f\u7528\u5916\u90e8\u5b58\u50a8"

    invoke-static {v3, p0}, Lcom/bytedance/sdk/component/utils/ig;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/multipro/d;->ox()Z

    move-result p0

    invoke-static {v0, p0, v2}, Lcom/bytedance/sdk/component/utils/iw;->dq(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/File;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d()[Ljava/lang/String;
    .locals 11

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/kk;->d(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/ig/d/dq/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ig/d/dq/dq;-><init>()V

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->dq(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/kk;->d(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/component/ig/d/dq/dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/ig/d/dq/dq;-><init>()V

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->dq(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->ox()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->dq()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->p()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->ox()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->dq()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ig/d/dq/dq;->p()Ljava/lang/String;

    move-result-object v10

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dq(I)Lcom/bykv/vk/openvk/component/video/api/dq/d;
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->ia()Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->mn()Lcom/bykv/vk/openvk/component/video/api/dq/d;

    move-result-object p0

    return-object p0
.end method

.method public static dq()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->kk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v2, "video_brand"

    invoke-static {v0, v1, v2}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dq(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->kk()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ia()Lcom/bykv/vk/openvk/component/video/api/dq/d;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->ox:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/h/kk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/kk;->ox:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/ig/d/dq/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/ig/d/dq/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/h/kk;->ox:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->kk()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->dq(Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/kk;->ox:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->s()V

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->ox:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    return-object v0
.end method

.method public static iw()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->s:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "image"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->s:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->s:Ljava/lang/String;

    return-object v0
.end method

.method private static kk()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->dq:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->dq:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->g()I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/h/kk;->iw:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/kk;->d(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->dq:Ljava/lang/String;

    return-object v0
.end method

.method private static mn()Lcom/bykv/vk/openvk/component/video/api/dq/d;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->d:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/openadsdk/h/kk;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/kk;->d:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/dq;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/dq/dq/dq/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/h/kk;->d:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/h/kk;->kk()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->dq(Ljava/lang/String;)V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/h/kk;->d:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    invoke-interface {v1}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->s()V

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
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->d:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    return-object v0
.end method

.method public static ox()[J
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    return-object v0

    :array_0
    .array-data 8
        0xa00000
        0x1400000
        0x1e00000
        0x1400000
        0xa00000
        0x1400000
        0x1e00000
        0x1400000
    .end array-data
.end method

.method public static p()I
    .locals 1

    sget v0, Lcom/bytedance/sdk/openadsdk/h/kk;->iw:I

    return v0
.end method

.method public static s()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->p:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "splash_image"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/kk;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->p:Ljava/lang/String;

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/h/kk;->p:Ljava/lang/String;

    return-object v0
.end method
