.class public Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/iw/ox;


# instance fields
.field private d:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

.field private dq:J


# direct methods
.method public constructor <init>(Ljava/io/File;JLjava/util/concurrent/ExecutorService;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->dq:J

    const v1, 0x134627e

    const/4 v2, 0x1

    move-object v0, p1

    move-wide v3, p2

    move-object v5, p4

    :try_start_0
    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->dq(Ljava/io/File;IIJLjava/util/concurrent/ExecutorService;)Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->d:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p1, v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->ox(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d(Ljava/lang/String;)[B
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->d:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_1

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return-object v1

    :cond_1
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;->dq(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz p1, :cond_2

    :try_start_2
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v3, 0x400

    :try_start_3
    new-array v3, v3, [B

    :goto_0
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_3

    invoke-virtual {v2, v3, v0, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    move-object v1, p1

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_2

    :cond_2
    move-object v2, v1

    :cond_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_3

    :catch_2
    move-exception v0

    move-object p1, v1

    move-object v2, p1

    :goto_2
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return-object v1

    :goto_3
    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    throw v0

    :cond_4
    :goto_4
    return-object v1
.end method

.method public dq(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->d:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;->dq(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    :cond_1
    return-object v1
.end method

.method public synthetic dq(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->d(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method

.method public dq(D)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->d:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    iget-wide v1, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->dq:J

    long-to-double v1, v1

    mul-double v1, v1, p1

    double-to-long p1, v1

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->dq(J)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, [B

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->dq(Ljava/lang/String;[B)Z

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;[B)Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->d:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-eqz p2, :cond_4

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->d(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$dq;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    invoke-static {v2}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return v1

    :cond_1
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$dq;->dq(I)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->ox:Ljava/io/OutputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v2, v0, :cond_2

    invoke-static {v2}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return v1

    :cond_2
    :try_start_2
    invoke-virtual {v2, p2}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$dq;->dq()V

    iget-object p2, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->d:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->dq()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v2}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    move-object v3, v2

    move-object v2, p1

    move-object p1, v3

    goto :goto_0

    :catch_1
    move-exception p2

    move-object p1, v2

    :goto_0
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$dq;->d()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    move-object v2, p1

    move-object p1, p2

    goto :goto_2

    :catch_2
    :cond_3
    :goto_1
    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return v1

    :goto_2
    invoke-static {v2}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    throw p1

    :cond_4
    :goto_3
    return v1
.end method

.method public ox(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/iw/ox/dq/dq/d;->d:Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/ox/dq/dq/dq$ox;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    return v0

    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/component/iw/ox/ox/d;->dq(Ljava/io/Closeable;)V

    throw p1
.end method
