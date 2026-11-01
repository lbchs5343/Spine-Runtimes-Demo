.class public Lcom/bytedance/sdk/openadsdk/core/q/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/q/d$d;,
        Lcom/bytedance/sdk/openadsdk/core/q/d$dq;
    }
.end annotation


# static fields
.field private static dq:Ljava/lang/String; = "gecko.zijieapi.com"


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->ce()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bykv/vk/openvk/preload/geckox/no/d;->dq()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/q/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/q/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/q/d;)V

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq;->dq(Lcom/bykv/vk/openvk/preload/geckox/d;)V

    :cond_0
    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q/d$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q/d;-><init>()V

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    check-cast p2, Lcom/bykv/vk/openvk/preload/ox/dq/dq;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/manifest.json"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/bykv/vk/openvk/preload/ox/dq/dq;->dq(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/api/iw/dq;->dq(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "GeckoHub"

    const-string p2, "getFileInfoInManifest error null"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static dq()Lcom/bytedance/sdk/openadsdk/core/q/d;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/q/d;

    move-result-object v0

    return-object v0
.end method

.method private ox()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->rp()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q/d;->dq:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/dq;->ox()Ljava/util/Random;

    move-result-object v1

    array-length v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/q/d;->dq:Ljava/lang/String;

    :cond_1
    return-object v0
.end method


# virtual methods
.method public d()Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq;->dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/geckox/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/preload/geckox/dq;->dq()Lcom/bykv/vk/openvk/preload/ox/dq/d;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "GeckoHub"

    const-string v2, "getGeckoResLoader error"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public dq(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/openadsdk/core/q/ox/d;
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/q/d;->d(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;

    invoke-direct {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;-><init>(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;-><init>()V

    const-string v5, "fileName"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->dq:Ljava/lang/String;

    const-string v5, "fileMd5"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->d:Ljava/lang/String;

    const-string v5, "filSize"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->ox:J

    const-string v5, "resourceType"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->p:Ljava/lang/String;

    const-string v5, "url"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->s:Ljava/lang/String;

    const-string v5, "respHeader"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v6

    if-lez v6, :cond_2

    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v7, v8}, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    const-string v5, "type"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->iw:J

    const-string v5, "charset"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->mn:Ljava/lang/String;

    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    invoke-interface {v3, p1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object p1, v2, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    return-object v0

    :cond_4
    return-object v2

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/d;Ljava/lang/Object;)V
    .locals 5

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p2, Lcom/bykv/vk/openvk/preload/ox/dq/dq;

    :try_start_0
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->dq:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->ox:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/bykv/vk/openvk/preload/ox/dq/dq;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/iw;->p(Ljava/io/File;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->ia:[B

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq()V

    :cond_2
    :goto_1
    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/o/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 10

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->ox()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_1
    const-string v0, "1371"

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/q/d;->ox()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/dq;->dq(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bykv/vk/openvk/preload/geckox/dq;->dq(Landroid/content/Context;)Lcom/bykv/vk/openvk/preload/geckox/dq;

    move-result-object v2

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/q/d$d;

    invoke-direct {v6, v0}, Lcom/bytedance/sdk/openadsdk/core/q/d$d;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/q/dq;

    invoke-direct {v8}, Lcom/bytedance/sdk/openadsdk/core/q/dq;-><init>()V

    move-object v9, p2

    invoke-virtual/range {v2 .. v9}, Lcom/bykv/vk/openvk/preload/geckox/dq;->dq(JLjava/lang/String;Lcom/bykv/vk/openvk/preload/geckox/q/dq;Ljava/util/Set;Lcom/bykv/vk/openvk/preload/geckox/mp/dq;Lcom/bykv/vk/openvk/preload/geckox/o/dq;)V

    return-void
.end method
