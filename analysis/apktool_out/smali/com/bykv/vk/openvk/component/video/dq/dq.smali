.class public Lcom/bykv/vk/openvk/component/video/dq/dq;
.super Ljava/lang/Object;


# static fields
.field public static d:I = 0xa

.field public static dq:I = 0xa

.field public static ox:I = 0xa

.field public static p:I = 0xa

.field private static s:Lcom/bykv/vk/openvk/component/video/api/dq/d;


# direct methods
.method public static d()I
    .locals 1

    sget v0, Lcom/bykv/vk/openvk/component/video/dq/dq;->dq:I

    return v0
.end method

.method public static dq()V
    .locals 1

    sget-object v0, Lcom/bykv/vk/openvk/component/video/dq/dq;->s:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bykv/vk/openvk/component/video/api/dq/d;->s()V

    :cond_0
    return-void
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 1

    invoke-static {p0}, Lcom/bykv/vk/openvk/component/video/api/iw/dq;->dq(Landroid/content/Context;)V

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-ge p0, v0, :cond_0

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/iw/dq;

    :cond_0
    return-void
.end method

.method public static dq(Lcom/bykv/vk/openvk/component/video/api/dq/d;)V
    .locals 0

    sput-object p0, Lcom/bykv/vk/openvk/component/video/dq/dq;->s:Lcom/bykv/vk/openvk/component/video/api/dq/d;

    return-void
.end method

.method public static dq(Lorg/json/JSONObject;)V
    .locals 7

    const-string v0, "MediaConfig"

    if-nez p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "splash"

    const/16 v2, 0xa

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bykv/vk/openvk/component/video/dq/dq;->dq:I

    const-string v1, "reward"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bykv/vk/openvk/component/video/dq/dq;->d:I

    const-string v1, "brand"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/bykv/vk/openvk/component/video/dq/dq;->ox:I

    const-string v1, "other"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/bykv/vk/openvk/component/video/dq/dq;->p:I

    sget v1, Lcom/bykv/vk/openvk/component/video/dq/dq;->dq:I

    if-gez v1, :cond_1

    sput v2, Lcom/bykv/vk/openvk/component/video/dq/dq;->dq:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    sget v1, Lcom/bykv/vk/openvk/component/video/dq/dq;->d:I

    if-gez v1, :cond_2

    sput v2, Lcom/bykv/vk/openvk/component/video/dq/dq;->d:I

    :cond_2
    sget v1, Lcom/bykv/vk/openvk/component/video/dq/dq;->ox:I

    if-gez v1, :cond_3

    sput v2, Lcom/bykv/vk/openvk/component/video/dq/dq;->ox:I

    :cond_3
    if-gez p0, :cond_4

    sput v2, Lcom/bykv/vk/openvk/component/video/dq/dq;->p:I

    :cond_4
    sget p0, Lcom/bykv/vk/openvk/component/video/dq/dq;->dq:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    sget v1, Lcom/bykv/vk/openvk/component/video/dq/dq;->d:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/bykv/vk/openvk/component/video/dq/dq;->ox:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v3, Lcom/bykv/vk/openvk/component/video/dq/dq;->p:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x8

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "splash="

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p0, v4, v5

    const-string p0, ",reward="

    const/4 v5, 0x2

    aput-object p0, v4, v5

    const/4 p0, 0x3

    aput-object v1, v4, p0

    const-string p0, ",brand="

    const/4 v1, 0x4

    aput-object p0, v4, v1

    const/4 p0, 0x5

    aput-object v2, v4, p0

    const-string p0, ",other="

    const/4 v1, 0x6

    aput-object p0, v4, v1

    const/4 p0, 0x7

    aput-object v3, v4, p0

    invoke-static {v0, v4}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ox()I
    .locals 1

    sget v0, Lcom/bykv/vk/openvk/component/video/dq/dq;->d:I

    return v0
.end method

.method public static p()I
    .locals 1

    sget v0, Lcom/bykv/vk/openvk/component/video/dq/dq;->ox:I

    return v0
.end method

.method public static s()I
    .locals 1

    sget v0, Lcom/bykv/vk/openvk/component/video/dq/dq;->p:I

    return v0
.end method
