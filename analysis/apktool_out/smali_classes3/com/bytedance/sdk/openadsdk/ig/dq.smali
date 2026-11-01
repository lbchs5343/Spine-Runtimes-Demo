.class public abstract Lcom/bytedance/sdk/openadsdk/ig/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/ig/dq$dq;,
        Lcom/bytedance/sdk/openadsdk/ig/dq$d;
    }
.end annotation


# static fields
.field private static final no:Ljava/util/concurrent/ConcurrentLinkedDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedDeque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final p:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field protected d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public dq:Lcom/bytedance/sdk/openadsdk/ig/d;

.field private ia:Ljava/lang/String;

.field private ig:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "[B>;>;"
        }
    .end annotation
.end field

.field protected iw:Lorg/json/JSONObject;

.field private jy:Ljava/util/concurrent/atomic/AtomicInteger;

.field private kk:Ljava/lang/String;

.field protected mn:Ljava/lang/String;

.field private final mp:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field protected ox:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private q:J

.field final s:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/ig/dq;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/ig/dq;->no:Ljava/util/concurrent/ConcurrentLinkedDeque;

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ig/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ig:Ljava/util/HashMap;

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->s:Ljava/util/concurrent/ExecutorService;

    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->mn:Ljava/lang/String;

    const-string v0, "index_censorship.json"

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->mp:Ljava/lang/String;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->jy:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq:Lcom/bytedance/sdk/openadsdk/ig/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ia:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->mn:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->kk:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    :try_start_0
    const-string v0, "log_extra"

    invoke-virtual {p1, v0, p4}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "cid"

    invoke-virtual {p1, p4, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "ac"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->ox(Landroid/content/Context;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "resource_type"

    const-string v0, "union"

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "app_name"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->q()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "app_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/no;->mp()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "app_version"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/mn/dq;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "sdk_version"

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/op;->ox:Ljava/lang/String;

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "plugin_version"

    const-string v0, "6.6.0.7"

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "ts"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "platform"

    const-string v0, "Android"

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "device_id"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->ox()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    const-string p4, "web_url"

    invoke-virtual {p1, p4, p5}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/ig/dq;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    invoke-virtual {p0, p2, p3}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private d([BILjava/io/File;)I
    .locals 0

    if-gtz p2, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq([BILjava/io/File;)I

    move-result p1

    return p1
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, ".lp_cache"

    invoke-static {v0, p0, v1}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lcom/bytedance/sdk/component/d/dq/o;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/webkit/WebResourceRequest;",
            "Landroid/webkit/WebResourceResponse;",
            "Lcom/bytedance/sdk/component/d/dq/o;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {p3}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/d/dq/o;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascript"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "js"

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ig:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ig:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x400

    new-array v2, v1, [B

    invoke-virtual {p4}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p4

    :cond_2
    :try_start_0
    invoke-virtual {p4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    const/4 v7, 0x0

    if-eq v3, v4, :cond_3

    :goto_0
    if-ge v7, v1, :cond_2

    aget-byte v3, v2, v7

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [B

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v7, v2, :cond_4

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v1, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->nh()I

    move-result v2

    int-to-long v2, v2

    const-wide/32 v7, 0x100000

    mul-long v2, v2, v7

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    int-to-long v7, p1

    cmp-long p1, v7, v2

    if-gtz p1, :cond_5

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    invoke-interface {p3}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Lorg/json/JSONObject;Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/o;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    :try_start_1
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :goto_2
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p4, :cond_7

    :try_start_3
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :goto_3
    if-eqz p4, :cond_6

    :try_start_4
    invoke-virtual {p4}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v0

    move-object p2, v0

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_4
    throw p1

    :cond_7
    :goto_5
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/ig/dq/d;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private dq([BILjava/io/File;)I
    .locals 6

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    const-string v1, "multipart/form-data"

    invoke-static {v1}, Lcom/bytedance/sdk/component/d/dq/o;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v2, v3}, Lcom/bytedance/sdk/component/d/dq/jy;->dq(Lcom/bytedance/sdk/component/d/dq/o;[BLjava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->t()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "?aid="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/no;->mp()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "&device_platform=android&device_type=android&source_type=union"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v4}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Lcom/bytedance/sdk/component/d/dq/jy;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/dq/d;->dq()Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/fw;->d()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "code"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_0

    const-string v0, "success"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d([BILjava/io/File;)I

    move-result p1

    return p1

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d([BILjava/io/File;)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d([BILjava/io/File;)I

    move-result p1

    return p1
.end method

.method private dq(Landroid/webkit/WebResourceRequest;)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebResourceRequest;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/webkit/WebResourceResponse;",
            "Lcom/bytedance/sdk/component/d/dq/o;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v5, v6}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    invoke-interface {p1}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/bytedance/sdk/component/d/dq/d;->dq()Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v5

    const/16 v0, 0xc8

    if-ne v5, v0, :cond_3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/iw;->dq()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/fw;->ox()Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {p0, v7}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Ljava/util/Map;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object p1

    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(I)Ljava/lang/String;

    move-result-object v6

    new-instance v2, Landroid/webkit/WebResourceResponse;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/o;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/o;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/o;->ox()Ljava/nio/charset/Charset;

    move-result-object v0

    if-nez v0, :cond_2

    move-object v4, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/o;->ox()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v4, v0

    :goto_2
    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    new-instance v0, Landroid/util/Pair;

    invoke-direct {v0, v2, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    return-object v1
.end method

.method private dq(Landroid/webkit/WebResourceResponse;)Landroid/util/Pair;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebResourceResponse;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/webkit/WebResourceResponse;",
            "Landroid/webkit/WebResourceResponse;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/ig/dq/d;->dq(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_0

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v0, v2

    move-object v3, v0

    goto :goto_2

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    move-object v0, v2

    :goto_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v4, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v7

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v9

    const/4 v1, 0x0

    if-nez v3, :cond_1

    new-instance v3, Ljava/io/ByteArrayInputStream;

    new-array v2, v1, [B

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_1
    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    new-instance v5, Landroid/webkit/WebResourceResponse;

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v8

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object v10

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    new-array p1, v1, [B

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    :cond_2
    move-object v11, v0

    invoke-direct/range {v5 .. v11}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V

    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    return-object v2
.end method

.method private dq(Ljava/util/Map;)Lcom/bytedance/sdk/component/d/dq/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/component/d/dq/o;"
        }
    .end annotation

    if-eqz p1, :cond_2

    const-string v0, "Content-Type"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "content-type"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, "CONTENT-TYPE"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "text/html; charset=UTF-8"

    :cond_3
    invoke-static {p1}, Lcom/bytedance/sdk/component/d/dq/o;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object p1

    return-object p1
.end method

.method private dq(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x64

    if-eq p1, v0, :cond_1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    const-string p1, ""

    return-object p1

    :pswitch_0
    const-string p1, "HTTP Version not supported"

    return-object p1

    :pswitch_1
    const-string p1, "Gateway Time-out"

    return-object p1

    :pswitch_2
    const-string p1, "Service Unavailable"

    return-object p1

    :pswitch_3
    const-string p1, "Bad Gateway"

    return-object p1

    :pswitch_4
    const-string p1, "Not Implemented"

    return-object p1

    :pswitch_5
    const-string p1, "Internal Server Error"

    return-object p1

    :pswitch_6
    const-string p1, "Expectation Failed"

    return-object p1

    :pswitch_7
    const-string p1, "Requested range not satisfiable"

    return-object p1

    :pswitch_8
    const-string p1, "Unsupported Media Type"

    return-object p1

    :pswitch_9
    const-string p1, "Request-URI Too Large"

    return-object p1

    :pswitch_a
    const-string p1, "Request Entity Too Large"

    return-object p1

    :pswitch_b
    const-string p1, "Precondition Failed"

    return-object p1

    :pswitch_c
    const-string p1, "Length Required"

    return-object p1

    :pswitch_d
    const-string p1, "Gone"

    return-object p1

    :pswitch_e
    const-string p1, "Conflict"

    return-object p1

    :pswitch_f
    const-string p1, "Request Time-out"

    return-object p1

    :pswitch_10
    const-string p1, "Proxy Authentication Required"

    return-object p1

    :pswitch_11
    const-string p1, "Not Acceptable"

    return-object p1

    :pswitch_12
    const-string p1, "Method Not Allowed"

    return-object p1

    :pswitch_13
    const-string p1, "Not Found"

    return-object p1

    :pswitch_14
    const-string p1, "Forbidden"

    return-object p1

    :pswitch_15
    const-string p1, "Payment Required"

    return-object p1

    :pswitch_16
    const-string p1, "Unauthorized"

    return-object p1

    :pswitch_17
    const-string p1, "Bad Request"

    return-object p1

    :pswitch_18
    const-string p1, "Partial Content"

    return-object p1

    :pswitch_19
    const-string p1, "Reset Content"

    return-object p1

    :pswitch_1a
    const-string p1, "No Content"

    return-object p1

    :pswitch_1b
    const-string p1, "Non-Authoritative Information"

    return-object p1

    :pswitch_1c
    const-string p1, "Accepted"

    return-object p1

    :pswitch_1d
    const-string p1, "Created"

    return-object p1

    :pswitch_1e
    const-string p1, "OK"

    return-object p1

    :cond_0
    const-string p1, "Switching Protocols"

    return-object p1

    :cond_1
    const-string p1, "Continue"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0xc8
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x190
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static dq(Landroid/content/Context;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    const-wide/16 v1, 0xbb8

    cmp-long v5, v3, v1

    if-lez v5, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/ig/dq/dq;->d(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private dq(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V
    .locals 11

    :try_start_0
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/ig/dq/dq;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p1, Lcom/bytedance/sdk/openadsdk/ig/dq;->p:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    :cond_1
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-nez p1, :cond_2

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ig/dq/dq;->d(Ljava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ia:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->kk:Ljava/lang/String;

    iget-wide v4, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->q:J

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->mn:Ljava/lang/String;

    move-object v1, p0

    move-wide v7, p4

    move-wide/from16 v9, p6

    invoke-virtual/range {v1 .. v10}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private dq([BI)[B
    .locals 0

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/h/d;->dq([BI)[B

    move-result-object p1

    return-object p1
.end method

.method private ox(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->o:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    const-string v1, ".lp_cache"

    invoke-static {v0, v1, v0, p1}, Lg/awf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ia:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private ox(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lcom/bytedance/sdk/component/d/dq/o;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/webkit/WebResourceRequest;",
            "Landroid/webkit/WebResourceResponse;",
            "Lcom/bytedance/sdk/component/d/dq/o;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/ig/dq;->ox(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p5}, Lcom/bytedance/sdk/component/d/dq/o;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "javascript"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "js"

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/bytedance/sdk/component/utils/s;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->nh()I

    invoke-virtual {p4}, Landroid/webkit/WebResourceResponse;->getData()Ljava/io/InputStream;

    move-result-object p4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->nh()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p4, p1, v5, v0, v1}, Lcom/bytedance/sdk/openadsdk/ig/dq/dq;->dq(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    invoke-interface {p3}, Landroid/webkit/WebResourceRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Lorg/json/JSONObject;Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/o;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()V
    .locals 0

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq()V

    return-void
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .locals 9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-direct {p0, p3}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Landroid/webkit/WebResourceRequest;)Landroid/util/Pair;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v0, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebResourceResponse;

    if-eqz v0, :cond_2

    iget-object v2, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/bytedance/sdk/component/d/dq/o;

    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Lcom/bytedance/sdk/component/d/dq/o;)Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Landroid/webkit/WebResourceResponse;)Landroid/util/Pair;

    move-result-object v7

    if-nez v7, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/webkit/WebResourceResponse;

    iget-object v1, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lcom/bytedance/sdk/component/d/dq/o;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/ig/dq$3;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/ig/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;Landroid/util/Pair;Landroid/util/Pair;)V

    invoke-virtual {p0, v6, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lcom/bytedance/sdk/component/d/dq/o;Lcom/bytedance/sdk/openadsdk/ig/dq$dq;)V

    iget-object p1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/WebResourceResponse;

    return-object p1

    :cond_2
    move-object v3, p0

    return-object v1
.end method

.method public dq(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
    .locals 1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/bytedance/sdk/openadsdk/ig/dq;->no:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ia:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-nez p1, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->jy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p1

    if-lez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getMethod()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "get"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->j()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->mn:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/webkit/WebResourceResponse;->getResponseHeaders()Ljava/util/Map;

    move-result-object p2

    const-string p3, "Access-Control-Allow-Origin"

    const-string v0, "*"

    invoke-interface {p2, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_2
    new-instance p1, Lcom/bytedance/sdk/openadsdk/ig/dq$1;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/openadsdk/ig/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Landroid/webkit/WebResourceRequest;)V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Ljava/lang/Runnable;)V

    :cond_3
    :goto_0
    return-object p3
.end method

.method public abstract dq()V
.end method

.method public dq(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lcom/bytedance/sdk/component/d/dq/o;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/webkit/WebResourceRequest;",
            "Landroid/webkit/WebResourceResponse;",
            "Lcom/bytedance/sdk/component/d/dq/o;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Lcom/bytedance/sdk/component/d/dq/o;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->gx()I

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->gx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lcom/bytedance/sdk/component/d/dq/o;Ljava/util/Map;)V

    return-void

    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/ig/dq;->ox(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lcom/bytedance/sdk/component/d/dq/o;Ljava/util/Map;)V

    return-void
.end method

.method public abstract dq(Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lcom/bytedance/sdk/component/d/dq/o;Lcom/bytedance/sdk/openadsdk/ig/dq$dq;)V
.end method

.method public dq(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    if-eqz p2, :cond_0

    const-string p1, "http"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->jy:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    :cond_0
    return-void
.end method

.method public dq(Ljava/lang/Runnable;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->s:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/ig/dq$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/ig/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public abstract dq(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract dq(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JJ)V
.end method

.method public abstract dq(Lorg/json/JSONObject;Ljava/lang/String;Lcom/bytedance/sdk/component/d/dq/o;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/d/dq/o;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract dq(Lcom/bytedance/sdk/component/d/dq/o;)Z
.end method

.method public ox()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public p()V
    .locals 20

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/bytedance/sdk/openadsdk/ig/dq;->q:J

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/bytedance/sdk/openadsdk/ig/dq;->ox(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/ig/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_d

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->l()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    invoke-static {v4}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const/4 v2, 0x0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V

    return-void

    :cond_1
    move-object v7, v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/ig/ox;->dq()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v8

    sub-long/2addr v3, v8

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v8

    add-long/2addr v8, v3

    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/ig/dq;->iw:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v10, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v10}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->gx()I

    move-result v10
    :try_end_0
    .catch Lcom/bytedance/sdk/openadsdk/ig/dq$d; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "index_censorship.json"

    const/4 v12, 0x0

    if-eq v10, v2, :cond_3

    :try_start_1
    new-instance v10, Ljava/io/ByteArrayInputStream;

    invoke-direct {v10, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-wide/32 v13, -0x80000000

    invoke-static {v10, v6, v11, v13, v14}, Lcom/bytedance/sdk/openadsdk/ig/dq/dq;->dq(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;J)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/openadsdk/ig/dq$d;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Z)V

    throw v0

    :catch_0
    move-exception v0

    :goto_0
    const-wide/16 v3, 0x0

    goto/16 :goto_8

    :catch_1
    move-exception v0

    :goto_1
    const-wide/16 v3, 0x0

    goto/16 :goto_a

    :cond_3
    :goto_2
    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual {v13}, Ljava/io/File;->mkdirs()Z

    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, v1, Lcom/bytedance/sdk/openadsdk/ig/dq;->ia:Ljava/lang/String;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "-compress.zip"

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v13

    invoke-virtual {v13}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->gx()I

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/bytedance/sdk/openadsdk/ig/dq$d; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->delete()Z

    goto :goto_3

    :catch_2
    move-exception v0

    move-object v5, v13

    goto :goto_0

    :catch_3
    move-exception v0

    move-object v5, v13

    goto :goto_1

    :cond_5
    :goto_3
    invoke-virtual {v13}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v10

    invoke-virtual {v10}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->gx()I

    move-result v10

    if-ne v10, v2, :cond_7

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/ig/dq;->ig:Ljava/util/HashMap;

    invoke-virtual {v0, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/ig/dq;->ig:Ljava/util/HashMap;

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/ig/dq/d;->dq(Ljava/util/HashMap;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/openadsdk/ig/dq$d;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Z)V

    throw v0

    :cond_7
    invoke-direct {v1, v6, v5}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    :goto_4
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/ig/dq/dq;->dq(Ljava/lang/String;)[B

    move-result-object v0

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10
    :try_end_2
    .catch Lcom/bytedance/sdk/openadsdk/ig/dq$d; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    long-to-int v5, v10

    int-to-long v10, v5

    :try_start_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->vf()I

    move-result v5

    int-to-long v14, v5

    const-wide/32 v16, 0x100000

    mul-long v14, v14, v16

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->vf()I

    cmp-long v5, v10, v14

    if-gtz v5, :cond_d

    sub-long v16, v8, v16

    cmp-long v5, v10, v16

    if-gtz v5, :cond_c

    long-to-int v5, v10

    invoke-direct {v1, v0, v5}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq([BI)[B

    move-result-object v0

    if-eqz v0, :cond_a

    array-length v5, v0

    int-to-long v3, v5

    cmp-long v5, v3, v14

    if-lez v5, :cond_8

    goto :goto_5

    :cond_8
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->ob()I

    move-result v3

    invoke-direct {v1, v0, v3, v13}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq([BILjava/io/File;)I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_9

    new-instance v3, Lcom/bytedance/sdk/openadsdk/ig/dq$d;

    array-length v0, v0

    int-to-long v4, v0

    invoke-direct {v3, v1, v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/ig/dq$d;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;ZJ)V

    throw v3

    :catch_4
    move-exception v0

    move-wide v3, v10

    move-object v5, v13

    goto :goto_8

    :catch_5
    move-exception v0

    move-wide v3, v10

    move-object v5, v13

    goto :goto_a

    :cond_9
    new-instance v2, Lcom/bytedance/sdk/openadsdk/ig/dq$d;

    array-length v0, v0

    int-to-long v3, v0

    invoke-direct {v2, v1, v12, v3, v4}, Lcom/bytedance/sdk/openadsdk/ig/dq$d;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;ZJ)V

    throw v2

    :cond_a
    :goto_5
    new-instance v2, Lcom/bytedance/sdk/openadsdk/ig/dq$d;

    if-nez v0, :cond_b

    const-wide/16 v4, 0x0

    :goto_6
    move-object v0, v2

    goto :goto_7

    :cond_b
    array-length v0, v0

    int-to-long v3, v0

    move-wide v4, v3

    goto :goto_6

    :goto_7
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/ig/dq$d;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;ZZJ)V

    throw v0

    :cond_c
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/openadsdk/ig/dq$d;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Z)V

    throw v0

    :cond_d
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/openadsdk/ig/dq$d;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Z)V

    throw v0
    :try_end_3
    .catch Lcom/bytedance/sdk/openadsdk/ig/dq$d; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_e
    :try_start_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;

    invoke-direct {v0, v1, v12}, Lcom/bytedance/sdk/openadsdk/ig/dq$d;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Z)V

    throw v0
    :try_end_4
    .catch Lcom/bytedance/sdk/openadsdk/ig/dq$d; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_6
    :cond_f
    :goto_9
    move-object v2, v5

    move-wide/from16 v18, v3

    move-object v3, v6

    move-wide/from16 v5, v18

    move-object v4, v7

    move-wide v7, v8

    goto :goto_c

    :goto_a
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :try_start_5
    iget-boolean v0, v0, Lcom/bytedance/sdk/openadsdk/ig/dq$d;->dq:Z

    if-eqz v0, :cond_f

    :goto_b
    sget-object v0, Lcom/bytedance/sdk/openadsdk/ig/dq;->no:Ljava/util/concurrent/ConcurrentLinkedDeque;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v2

    if-lez v2, :cond_10

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollLast()Ljava/lang/Object;

    goto :goto_b

    :cond_10
    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/ig/dq;->ia:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/ig/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentLinkedDeque;->push(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_9

    :goto_c
    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V

    :cond_11
    :goto_d
    return-void
.end method

.method public s()V
    .locals 9

    sget-object v0, Lcom/bytedance/sdk/openadsdk/ig/dq;->no:Ljava/util/concurrent/ConcurrentLinkedDeque;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ia:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ig/dq;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v5, -0x1

    const-wide/16 v7, -0x1

    const/4 v2, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Ljava/io/File;Ljava/lang/String;Landroid/content/Context;JJ)V

    return-void

    :cond_0
    move-object v1, p0

    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/ig/dq;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/ig/dq$4;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/ig/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/ig/dq;)V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
