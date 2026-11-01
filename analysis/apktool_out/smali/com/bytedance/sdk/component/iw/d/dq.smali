.class public Lcom/bytedance/sdk/component/iw/d/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/component/iw/p<",
        "Lcom/bytedance/sdk/component/iw/d/p;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(Ljava/net/HttpURLConnection;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/HttpURLConnection;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Ljava/net/URLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public call(Lcom/bytedance/sdk/component/iw/s;)Lcom/bytedance/sdk/component/iw/d/p;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/iw/s;",
            ")",
            "Lcom/bytedance/sdk/component/iw/d/p<",
            "[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/s;->dq()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;

    const-string v3, "GET"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const/16 v3, 0x1388

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->connect()V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/16 v4, 0x400

    :try_start_1
    new-array v4, v4, [B

    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_0

    invoke-virtual {v5, v4, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception p1

    :goto_1
    move-object v0, v3

    goto/16 :goto_9

    :catch_0
    move-exception p1

    move-object v4, v0

    goto :goto_5

    :catch_1
    move-exception p1

    move-object v4, v0

    goto :goto_7

    :cond_0
    const/16 v1, 0xc8

    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/s;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/component/iw/d/dq;->dq(Ljava/net/HttpURLConnection;)Ljava/util/Map;

    move-result-object v0
    :try_end_3
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_2
    move-exception p1

    goto :goto_5

    :catch_3
    move-exception p1

    goto :goto_7

    :cond_1
    :goto_2
    invoke-static {v3}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    const-string p1, "success"

    goto :goto_8

    :catchall_1
    move-exception p1

    move-object v5, v0

    goto :goto_1

    :catch_4
    move-exception p1

    move-object v4, v0

    :goto_3
    move-object v5, v4

    goto :goto_5

    :catch_5
    move-exception p1

    move-object v4, v0

    :goto_4
    move-object v5, v4

    goto :goto_7

    :catchall_2
    move-exception p1

    move-object v5, v0

    goto :goto_9

    :catch_6
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    goto :goto_3

    :catch_7
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    goto :goto_4

    :goto_5
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    invoke-static {v3}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    goto :goto_8

    :goto_7
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_6

    :goto_8
    new-instance v2, Lcom/bytedance/sdk/component/iw/d/p;

    invoke-direct {v2, v1, v4, p1, v0}, Lcom/bytedance/sdk/component/iw/d/p;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    return-object v2

    :goto_9
    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    invoke-static {v5}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    throw p1
.end method

.method public bridge synthetic call(Lcom/bytedance/sdk/component/iw/s;)Lcom/bytedance/sdk/component/iw/iw;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/iw/d/dq;->call(Lcom/bytedance/sdk/component/iw/s;)Lcom/bytedance/sdk/component/iw/d/p;

    move-result-object p1

    return-object p1
.end method
