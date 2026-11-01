.class final Lcom/bytedance/sdk/openadsdk/ia/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ia/dq;->dq()Lcom/bytedance/sdk/component/iw/mp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/component/iw/d/s;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/iw/d/p;
    .locals 3

    const-string v0, "ImageConfig"

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/iw/d/s;->ox(J)V

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/component/iw/d/p;

    const/4 v1, 0x0

    const-string v2, "net failed"

    invoke-direct {v0, v1, p2, v2}, Lcom/bytedance/sdk/component/iw/d/p;-><init>(ILjava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/iw/d/p;->dq(Lcom/bytedance/sdk/component/iw/mn;)V

    return-object v0
.end method

.method private dq(Lcom/bytedance/sdk/component/iw/s;Lcom/bytedance/sdk/component/d/dq/f;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/component/iw/s;",
            "Lcom/bytedance/sdk/component/d/dq/f;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/s;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/iw;->dq()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/d/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/d/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public call(Lcom/bytedance/sdk/component/iw/s;)Lcom/bytedance/sdk/component/iw/d/p;
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/le/s;->dq()Lcom/bytedance/sdk/openadsdk/core/le/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/le/s;->d()Lcom/bytedance/sdk/component/kk/dq;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/kk/dq;->iw()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v2

    new-instance v3, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v3}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/s;->dq()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v3

    const-string v4, "csj_client_source_from"

    const-string v5, "2"

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/s;->ox()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    new-instance v4, Lcom/bytedance/sdk/component/iw/d/s;

    invoke-direct {v4}, Lcom/bytedance/sdk/component/iw/d/s;-><init>()V

    goto :goto_0

    :cond_0
    move-object v4, v5

    :goto_0
    if-eqz v4, :cond_1

    invoke-virtual {v4, v0, v1}, Lcom/bytedance/sdk/component/iw/d/s;->dq(J)V

    :cond_1
    :try_start_0
    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/dq/d;->dq()Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v4, :cond_2

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v4, v1, v2}, Lcom/bytedance/sdk/component/iw/d/s;->d(J)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v5, v0

    goto :goto_3

    :cond_2
    :goto_1
    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/s;->p()Lcom/bytedance/sdk/component/iw/q;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Lcom/bytedance/sdk/component/iw/s;->p()Lcom/bytedance/sdk/component/iw/q;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2, v5}, Lcom/bytedance/sdk/component/iw/q;->dq(ILjava/lang/Object;)V

    :cond_3
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/ia/dq$1;->dq(Lcom/bytedance/sdk/component/iw/s;Lcom/bytedance/sdk/component/d/dq/f;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/fw;->p()[B

    move-result-object v1

    const-string v2, "image_size"

    if-nez v1, :cond_4

    const/4 v3, 0x0

    goto :goto_2

    :cond_4
    array-length v3, v1

    :goto_2
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/bytedance/sdk/component/iw/d/p;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v3

    const-string v5, ""

    invoke-direct {v2, v3, v1, v5, p1}, Lcom/bytedance/sdk/component/iw/d/p;-><init>(ILjava/lang/Object;Ljava/lang/String;Ljava/util/Map;)V

    if-eqz v4, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/component/iw/d/s;->ox(J)V

    :cond_5
    invoke-virtual {v2, v4}, Lcom/bytedance/sdk/component/iw/d/p;->dq(Lcom/bytedance/sdk/component/iw/mn;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return-object v2

    :catchall_1
    move-exception p1

    :goto_3
    :try_start_2
    invoke-direct {p0, v4, p1}, Lcom/bytedance/sdk/openadsdk/ia/dq$1;->dq(Lcom/bytedance/sdk/component/iw/d/s;Ljava/lang/Throwable;)Lcom/bytedance/sdk/component/iw/d/p;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {v5}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return-object p1

    :catchall_2
    move-exception p1

    invoke-static {v5}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    throw p1
.end method

.method public bridge synthetic call(Lcom/bytedance/sdk/component/iw/s;)Lcom/bytedance/sdk/component/iw/iw;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/ia/dq$1;->call(Lcom/bytedance/sdk/component/iw/s;)Lcom/bytedance/sdk/component/iw/d/p;

    move-result-object p1

    return-object p1
.end method
