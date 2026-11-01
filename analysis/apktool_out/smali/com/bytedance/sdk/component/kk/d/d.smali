.class public Lcom/bytedance/sdk/component/kk/d/d;
.super Lcom/bytedance/sdk/component/kk/d/p;


# instance fields
.field public d:Ljava/io/File;

.field public dq:Ljava/io/File;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/d/dq/ig;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/kk/d/p;-><init>(Lcom/bytedance/sdk/component/d/dq/ig;)V

    return-void
.end method

.method public static synthetic d(Ljava/util/Map;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/component/kk/d/d;->iw(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method public static synthetic dq(Ljava/util/Map;)J
    .locals 2

    invoke-static {p0}, Lcom/bytedance/sdk/component/kk/d/d;->mn(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/component/kk/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/component/kk/d/d;->s()V

    return-void
.end method

.method private static ia(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Content-Encoding"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    const-string v0, "gzip"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method private static iw(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "Accept-Ranges"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    const-string v1, "bytes"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    return v2

    :cond_0
    const-string v0, "accept-ranges"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const-string v0, "Content-Range"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "content-range"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private static mn(Ljava/util/Map;)J
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    const-string v0, "content-length"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "Content-Length"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    return-wide v1

    :cond_2
    if-eqz p0, :cond_3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    :cond_3
    return-wide v1
.end method

.method public static synthetic ox(Ljava/util/Map;)Z
    .locals 0

    invoke-static {p0}, Lcom/bytedance/sdk/component/kk/d/d;->ia(Ljava/util/Map;)Z

    move-result p0

    return p0
.end method

.method private s()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/component/kk/d;
    .locals 23

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v3, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    if-nez v3, :cond_1

    :cond_0
    move-object/from16 v18, v2

    goto/16 :goto_d

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    new-instance v5, Lcom/bytedance/sdk/component/kk/d;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x1

    const/16 v7, 0xc8

    const-string v8, "Success"

    move-wide v13, v11

    invoke-direct/range {v5 .. v14}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v5, v0}, Lcom/bytedance/sdk/component/kk/d;->dq(Ljava/io/File;)V

    return-object v5

    :cond_2
    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v3

    if-gez v0, :cond_3

    move-wide v5, v3

    :cond_3
    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/kk/d/p;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/Object;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "bytes="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Range"

    invoke-virtual {v1, v9, v7}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, v1, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v9, "DownloadExecutor"

    if-eqz v7, :cond_4

    const-string v0, "execute: Url is Empty"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_4
    :try_start_0
    iget-object v7, v1, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Lcom/bytedance/sdk/component/d/dq/q$dq;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v0

    :try_start_1
    iget-object v7, v1, Lcom/bytedance/sdk/component/kk/d/p;->ox:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-virtual {v7, v0}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/dq/d;->dq()Lcom/bytedance/sdk/component/d/dq/f;

    move-result-object v0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v7

    if-eqz v7, :cond_19

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object v7

    const/4 v10, 0x0

    if-eqz v7, :cond_5

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {v7}, Lcom/bytedance/sdk/component/d/dq/iw;->dq()I

    move-result v12

    if-ge v11, v12, :cond_5

    invoke-virtual {v7, v11}, Lcom/bytedance/sdk/component/d/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v11}, Lcom/bytedance/sdk/component/d/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v14, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v18, v2

    goto/16 :goto_b

    :cond_5
    const/4 v7, 0x0

    new-instance v10, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v11

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v12

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v16

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v18

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v11

    invoke-virtual {v11}, Lcom/bytedance/sdk/component/d/dq/fw;->dq()J

    move-result-wide v11

    cmp-long v13, v11, v3

    if-gtz v13, :cond_6

    invoke-static {v14}, Lcom/bytedance/sdk/component/kk/d/d;->mn(Ljava/util/Map;)J

    move-result-wide v11

    :cond_6
    iget-object v13, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v15, v2

    move-wide/from16 v16, v3

    :try_start_2
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v14}, Lcom/bytedance/sdk/component/kk/d/d;->iw(Ljava/util/Map;)Z

    move-result v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_7

    add-long/2addr v11, v2

    move-object/from16 v18, v15

    :try_start_3
    const-string v15, "Content-Range"

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_8

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v13, "bytes "

    invoke-direct {v7, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x1

    sub-long v2, v11, v2

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    const/4 v7, -0x1

    if-ne v3, v7, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "execute: The Content-Range Header is invalid Assume["

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] vs Real["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], please remove the temporary file ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/bytedance/sdk/component/kk/p/s;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1}, Lcom/bytedance/sdk/component/kk/d/d;->s()V

    return-object v18

    :catch_1
    move-exception v0

    goto/16 :goto_b

    :cond_7
    move-object/from16 v18, v15

    :cond_8
    cmp-long v2, v11, v16

    if-lez v2, :cond_a

    iget-object v2, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v7, v2, v11

    if-nez v7, :cond_a

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    iget-object v2, v1, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/component/kk/d;->dq(Ljava/io/File;)V

    return-object v10

    :cond_9
    const-string v0, "Rename fail"

    invoke-static {v9, v0}, Lcom/bytedance/sdk/component/kk/p/s;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    return-object v18

    :cond_a
    :try_start_4
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    const-string v7, "rw"

    invoke-direct {v2, v3, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v4, :cond_b

    :try_start_5
    invoke-virtual {v2, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    move-wide v7, v5

    goto :goto_2

    :cond_b
    move-wide/from16 v7, v16

    invoke-virtual {v2, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    :goto_1
    const-wide/16 v7, 0x0

    goto :goto_2

    :catchall_1
    move-object/from16 v2, v18

    goto :goto_1

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/fw;->ox()Ljava/io/InputStream;

    move-result-object v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    :try_start_7
    invoke-static {v14}, Lcom/bytedance/sdk/component/kk/d/d;->ia(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_c

    instance-of v0, v3, Ljava/util/zip/GZIPInputStream;

    if-nez v0, :cond_c

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object v3, v0

    goto :goto_4

    :catchall_2
    move-exception v0

    :goto_3
    move/from16 v20, v4

    goto/16 :goto_8

    :cond_c
    :goto_4
    const/16 v0, 0x4000

    :try_start_8
    new-array v0, v0, [B
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_b

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    :goto_5
    move/from16 v20, v4

    rsub-int v4, v13, 0x4000

    :try_start_9
    invoke-virtual {v3, v0, v13, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_a

    move-object/from16 v21, v3

    const/4 v3, -0x1

    if-eq v4, v3, :cond_f

    add-int/2addr v13, v4

    int-to-long v3, v4

    add-long/2addr v14, v3

    const-wide/16 v3, 0x4000

    :try_start_a
    rem-long v3, v14, v3

    const-wide/16 v16, 0x0

    cmp-long v22, v3, v16

    if-eqz v22, :cond_d

    sub-long v3, v11, v5

    cmp-long v22, v14, v3

    if-nez v22, :cond_e

    :cond_d
    invoke-virtual {v2, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v3, v13

    add-long/2addr v7, v3

    const/4 v13, 0x0

    :cond_e
    move/from16 v4, v20

    move-object/from16 v3, v21

    goto :goto_5

    :catchall_3
    move-exception v0

    move-object/from16 v3, v21

    goto/16 :goto_8

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v2, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v7, 0x0

    invoke-virtual {v2, v0, v7, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_6

    :cond_10
    const/4 v7, 0x0

    :goto_6
    const-wide/16 v16, 0x0

    if-eqz v20, :cond_11

    cmp-long v0, v5, v16

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v11

    :cond_12
    cmp-long v0, v11, v16

    if-lez v0, :cond_14

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v11

    if-nez v0, :cond_14

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    iget-object v3, v1, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v0, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v10, v0}, Lcom/bytedance/sdk/component/kk/d;->dq(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :catchall_5
    return-object v10

    :cond_13
    :try_start_d
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    :try_start_e
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    :catchall_7
    return-object v18

    :cond_14
    :try_start_f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, " tempFile.length() == fileSize is"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v5, v3, v11

    if-nez v5, :cond_15

    const/4 v10, 0x1

    goto :goto_7

    :cond_15
    const/4 v10, 0x0

    :goto_7
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/bytedance/sdk/component/kk/p/s;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    invoke-virtual/range {v21 .. v21}, Ljava/io/InputStream;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_8

    :catchall_8
    :try_start_11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_9

    :catchall_9
    return-object v18

    :catchall_a
    move-exception v0

    move-object/from16 v21, v3

    goto :goto_8

    :catchall_b
    move-exception v0

    move-object/from16 v21, v3

    goto/16 :goto_3

    :catchall_c
    move-exception v0

    move/from16 v20, v4

    move-object/from16 v3, v18

    :goto_8
    :try_start_12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    if-nez v20, :cond_16

    invoke-direct {v1}, Lcom/bytedance/sdk/component/kk/d/d;->s()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_d

    goto :goto_9

    :catchall_d
    move-exception v0

    goto :goto_a

    :cond_16
    :goto_9
    if-eqz v3, :cond_17

    :try_start_13
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_e

    :catchall_e
    :cond_17
    :try_start_14
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_f

    :catchall_f
    return-object v18

    :goto_a
    if-eqz v3, :cond_18

    :try_start_15
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_10

    :catchall_10
    :cond_18
    :try_start_16
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_11

    :catchall_11
    :try_start_17
    throw v0
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_1

    :catch_2
    move-exception v0

    move-object/from16 v18, v15

    goto :goto_b

    :cond_19
    move-object/from16 v18, v2

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {v1}, Lcom/bytedance/sdk/component/kk/d/d;->s()V

    :goto_c
    return-object v18

    :catch_3
    move-object/from16 v18, v2

    const-string v0, "execute: Url is not a valid HTTP or HTTPS URL"

    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d
    return-object v18
.end method

.method public dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V
    .locals 13

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    new-instance v3, Lcom/bytedance/sdk/component/kk/d;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x1

    const/16 v5, 0xc8

    const-string v6, "Success"

    move-wide v11, v9

    invoke-direct/range {v3 .. v12}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/kk/d;->dq(Ljava/io/File;)V

    invoke-virtual {p1, p0, v3}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/component/kk/d/p;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/Object;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bytes="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Range"

    invoke-virtual {p0, v4, v3}, Lcom/bytedance/sdk/component/kk/d/p;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is Empty"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    return-void

    :cond_3
    :try_start_0
    iget-object v3, p0, Lcom/bytedance/sdk/component/kk/d/p;->iw:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/kk/d/p;->dq(Lcom/bytedance/sdk/component/d/dq/q$dq;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq()Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object v0

    iget-object v3, p0, Lcom/bytedance/sdk/component/kk/d/p;->ox:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-virtual {v3, v0}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object v0

    new-instance v3, Lcom/bytedance/sdk/component/kk/d/d$1;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/bytedance/sdk/component/kk/d/d$1;-><init>(Lcom/bytedance/sdk/component/kk/d/d;Lcom/bytedance/sdk/component/kk/dq/dq;J)V

    invoke-interface {v0, v3}, Lcom/bytedance/sdk/component/d/dq/d;->dq(Lcom/bytedance/sdk/component/d/dq/ox;)V

    return-void

    :catch_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Url is not a valid HTTP or HTTPS URL"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    return-void

    :cond_4
    :goto_1
    if-eqz p1, :cond_5

    new-instance v0, Ljava/io/IOException;

    const-string v1, "File info is null, please exec setFileInfo(String dir, String fileName)"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    :cond_5
    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, ".temp"

    invoke-static {p2, v1}, Lg/awf;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    return-void
.end method
