.class public abstract Lcom/bytedance/sdk/component/ox/d/n;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq(Lcom/bytedance/sdk/component/ox/d/i;JLcom/bytedance/sdk/component/ox/dq/s;)Lcom/bytedance/sdk/component/ox/d/n;
    .locals 1

    if-eqz p3, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ox/d/n$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/bytedance/sdk/component/ox/d/n$1;-><init>(Lcom/bytedance/sdk/component/ox/d/i;JLcom/bytedance/sdk/component/ox/dq/s;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "source == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static dq(Lcom/bytedance/sdk/component/ox/d/i;[B)Lcom/bytedance/sdk/component/ox/d/n;
    .locals 3

    new-instance v0, Lcom/bytedance/sdk/component/ox/dq/ox;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ox/dq/ox;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/ox/dq/ox;->d([B)Lcom/bytedance/sdk/component/ox/dq/ox;

    move-result-object v0

    array-length p1, p1

    int-to-long v1, p1

    invoke-static {p0, v1, v2, v0}, Lcom/bytedance/sdk/component/ox/d/n;->dq(Lcom/bytedance/sdk/component/ox/d/i;JLcom/bytedance/sdk/component/ox/dq/s;)Lcom/bytedance/sdk/component/ox/d/n;

    move-result-object p0

    return-object p0
.end method

.method private mn()Ljava/nio/charset/Charset;
    .locals 2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/n;->dq()Lcom/bytedance/sdk/component/ox/d/i;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lcom/bytedance/sdk/component/ox/d/dq/ox;->s:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ox/d/i;->dq(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/component/ox/d/dq/ox;->s:Ljava/nio/charset/Charset;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/n;->ox()Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    return-void
.end method

.method public abstract d()J
.end method

.method public abstract dq()Lcom/bytedance/sdk/component/ox/d/i;
.end method

.method public final iw()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/n;->ox()Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ox/d/n;->mn()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Lcom/bytedance/sdk/component/ox/dq/s;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/ox/dq/s;->dq(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    throw v1

    :catch_0
    invoke-static {v0}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract ox()Lcom/bytedance/sdk/component/ox/dq/s;
.end method

.method public final p()Ljava/io/InputStream;
    .locals 1

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/n;->ox()Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/ox/dq/s;->iw()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public final s()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/n;->d()J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_2

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/ox/d/n;->ox()Lcom/bytedance/sdk/component/ox/dq/s;

    move-result-object v2

    :try_start_0
    invoke-interface {v2}, Lcom/bytedance/sdk/component/ox/dq/s;->fw()[B

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    const-wide/16 v4, -0x1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_1

    array-length v2, v3

    int-to-long v4, v2

    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v4, "Content-Length ("

    const-string v5, ") and stream length ("

    invoke-static {v0, v1, v4, v5}, Lg/awf;->l(JLjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    array-length v1, v3

    const-string v3, ") disagree"

    invoke-static {v0, v1, v3}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :goto_0
    return-object v3

    :catchall_0
    move-exception v0

    invoke-static {v2}, Lcom/bytedance/sdk/component/ox/d/dq/ox;->dq(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Cannot buffer entire body for content length: "

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
