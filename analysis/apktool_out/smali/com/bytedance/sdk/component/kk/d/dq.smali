.class public Lcom/bytedance/sdk/component/kk/d/dq;
.super Lcom/bytedance/sdk/component/kk/d/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/ig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/kk/d/p;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/component/kk/d;
    .locals 15

    const/4 v1, 0x0

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/kk/d/p;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/Object;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    const-string v2, "Range"

    const-string v3, "bytes=0-"

    invoke-virtual {p0, v2, v3}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "ByteDownloadExecutor"

    const-string v2, "execute: Url is Empty"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :catchall_0
    move-exception v0

    move-object v14, v1

    goto/16 :goto_1

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Lcom/bytedance/sdk/component/d/dq/q$dq;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/kk/d/p;->ox:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/dq/d;->dq()Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object v2

    if-eqz v2, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/iw;->dq()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/d/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/d/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/d/dq/fw;->dq()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    new-array v13, v4, [B

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/component/d/dq/fw;->ox()Ljava/io/InputStream;

    move-result-object v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v14, v13}, Ljava/io/InputStream;->read([B)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v4, v2

    if-nez v6, :cond_2

    new-instance v3, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v4

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v5

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v11

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual {v3, v13}, Lcom/bytedance/sdk/component/kk/d;->dq([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    return-object v3

    :catchall_2
    move-exception v0

    goto :goto_1

    :cond_2
    :try_start_3
    new-instance v3, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v5

    const-string v6, "Byte opt fail"

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v11

    const/4 v4, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    return-object v3

    :cond_3
    return-object v1

    :goto_1
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-eqz v14, :cond_4

    :try_start_6
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :catchall_4
    :cond_4
    return-object v1

    :catchall_5
    move-exception v0

    if-eqz v14, :cond_5

    :try_start_7
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_6
    :cond_5
    throw v0
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V
    .locals 3

    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/kk/d/p;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/Object;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    const-string v1, "Range"

    const-string v2, "bytes=0-"

    invoke-virtual {p0, v1, v2}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is Empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Lcom/bytedance/sdk/component/d/dq/q$dq;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/p;->ox:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/component/kk/d/dq$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/component/kk/d/dq$1;-><init>(Lcom/bytedance/sdk/component/kk/d/dq;Lcom/bytedance/sdk/component/kk/dq/dq;)V

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/d/dq/d;->dq(Lcom/bytedance/sdk/component/d/dq/ox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
