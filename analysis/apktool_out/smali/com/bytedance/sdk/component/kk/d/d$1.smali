.class Lcom/bytedance/sdk/component/kk/d/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/d/dq/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/kk/d/d;->dq(Lcom/bytedance/sdk/component/kk/dq/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:J

.field final synthetic dq:Lcom/bytedance/sdk/component/kk/dq/dq;

.field final synthetic ox:Lcom/bytedance/sdk/component/kk/d/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/kk/d/d;Lcom/bytedance/sdk/component/kk/dq/dq;J)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iput-object p2, p0, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iput-wide p3, p0, Lcom/bytedance/sdk/component/kk/d/d$1;->d:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/bytedance/sdk/component/d/dq/d;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    invoke-virtual {p1, v0, p2}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    invoke-static {p1}, Lcom/bytedance/sdk/component/kk/d/d;->dq(Lcom/bytedance/sdk/component/kk/d/d;)V

    return-void
.end method

.method public onResponse(Lcom/bytedance/sdk/component/d/dq/d;Lcom/bytedance/sdk/component/d/dq/f;)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    if-eqz v0, :cond_12

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_12

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->mn()Lcom/bytedance/sdk/component/d/dq/iw;

    move-result-object v0

    const/4 v12, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/iw;->dq()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/iw;->dq(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/d/dq/iw;->d(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/kk/d;

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v3

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->ox()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->s()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->d()J

    move-result-wide v8

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->dq()J

    move-result-wide v10

    const/4 v7, 0x0

    invoke-direct/range {v2 .. v11}, Lcom/bytedance/sdk/component/kk/d;-><init>(ZILjava/lang/String;Ljava/util/Map;Ljava/lang/String;JJ)V

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->p()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/d/dq/fw;->dq()J

    move-result-wide v3

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-gtz v0, :cond_1

    invoke-static {v6}, Lcom/bytedance/sdk/component/kk/d/d;->dq(Ljava/util/Map;)J

    move-result-wide v3

    :cond_1
    invoke-static {v6}, Lcom/bytedance/sdk/component/kk/d/d;->d(Ljava/util/Map;)Z

    move-result v5

    const/4 v0, -0x1

    if-eqz v5, :cond_2

    iget-wide v9, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->d:J

    add-long/2addr v3, v9

    const-string v9, "Content-Range"

    invoke-virtual {v6, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "bytes "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v13, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->d:J

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v13, 0x1

    sub-long v13, v3, v13

    invoke-virtual {v10, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v11

    if-ne v11, v0, :cond_2

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/kk/d/d;->dq(Lcom/bytedance/sdk/component/kk/d/d;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    new-instance v3, Ljava/io/IOException;

    const-string v4, "] vs Real["

    const-string v5, "], please remove the temporary file ["

    const-string v6, "The Content-Range Header is invalid Assume["

    invoke-static {v6, v10, v4, v9, v5}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v5, v5, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "]."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    return-void

    :cond_2
    const-string v9, "Rename fail"

    cmp-long v10, v3, v7

    if-lez v10, :cond_4

    iget-object v10, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v10, v10, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_4

    iget-object v10, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v10, v10, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v13, v10, v3

    if-nez v13, :cond_4

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v3, v0, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/kk/d;->dq(Ljava/io/File;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v3, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V

    return-void

    :cond_3
    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    return-void

    :cond_4
    const/4 v10, 0x0

    :try_start_0
    new-instance v11, Ljava/io/RandomAccessFile;

    iget-object v13, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v13, v13, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    const-string v14, "rw"

    invoke-direct {v11, v13, v14}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_5

    :try_start_1
    iget-wide v13, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->d:J

    invoke-virtual {v11, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-wide v13, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->d:J

    goto :goto_2

    :cond_5
    invoke-virtual {v11, v7, v8}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :goto_1
    move-wide v13, v7

    goto :goto_2

    :catchall_1
    move-object v11, v10

    goto :goto_1

    :goto_2
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lcom/bytedance/sdk/component/d/dq/f;->iw()Lcom/bytedance/sdk/component/d/dq/fw;

    move-result-object v15

    invoke-virtual {v15}, Lcom/bytedance/sdk/component/d/dq/fw;->ox()Ljava/io/InputStream;

    move-result-object v10

    invoke-static {v6}, Lcom/bytedance/sdk/component/kk/d/d;->ox(Ljava/util/Map;)Z

    move-result v6

    if-eqz v6, :cond_6

    instance-of v6, v10, Ljava/util/zip/GZIPInputStream;

    if-nez v6, :cond_6

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v6, v10}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v10, v6

    goto :goto_3

    :catchall_2
    move-exception v0

    goto/16 :goto_6

    :cond_6
    :goto_3
    const/16 v6, 0x4000

    new-array v6, v6, [B

    move-wide/from16 v16, v7

    const/4 v15, 0x0

    :goto_4
    move-wide/from16 v18, v7

    rsub-int v7, v15, 0x4000

    invoke-virtual {v10, v6, v15, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    if-eq v7, v0, :cond_9

    add-int/2addr v15, v7

    int-to-long v7, v7

    add-long v16, v16, v7

    const-wide/16 v7, 0x4000

    rem-long v7, v16, v7

    cmp-long v20, v7, v18

    if-eqz v20, :cond_7

    iget-wide v7, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->d:J

    sub-long v7, v3, v7

    cmp-long v20, v16, v7

    if-nez v20, :cond_8

    :cond_7
    invoke-virtual {v11, v13, v14}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v11, v6, v12, v15}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v7, v15

    add-long/2addr v13, v7

    const/4 v15, 0x0

    :cond_8
    move-wide/from16 v7, v18

    goto :goto_4

    :cond_9
    if-nez v5, :cond_a

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    :cond_a
    cmp-long v0, v3, v18

    if-lez v0, :cond_c

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v6

    cmp-long v0, v6, v3

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v3, v0, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v0, v0, Lcom/bytedance/sdk/component/kk/d/d;->dq:Ljava/io/File;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/component/kk/d;->dq(Ljava/io/File;)V

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v3, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V

    goto :goto_5

    :cond_b
    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    goto :goto_5

    :cond_c
    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v2, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    new-instance v6, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, " tempFile.length() == fileSize is"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    iget-object v8, v8, Lcom/bytedance/sdk/component/kk/d/d;->d:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v8

    cmp-long v13, v8, v3

    if-nez v13, :cond_d

    const/4 v12, 0x1

    :cond_d
    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v6}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_5
    :try_start_3
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    :try_start_4
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_9

    :catchall_4
    return-void

    :goto_6
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object v2, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v3, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    new-instance v4, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Ljava/io/IOException;)V

    if-nez v5, :cond_e

    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/component/kk/d/d;->dq(Lcom/bytedance/sdk/component/kk/d/d;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    goto :goto_8

    :cond_e
    :goto_7
    if-eqz v10, :cond_f

    :try_start_6
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    :catchall_6
    :cond_f
    :try_start_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    goto :goto_9

    :catchall_7
    return-void

    :goto_8
    if-eqz v10, :cond_10

    :try_start_8
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_8

    :catchall_8
    :cond_10
    :try_start_9
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_9

    :catchall_9
    throw v0

    :cond_11
    iget-object v0, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->dq:Lcom/bytedance/sdk/component/kk/dq/dq;

    iget-object v3, v1, Lcom/bytedance/sdk/component/kk/d/d$1;->ox:Lcom/bytedance/sdk/component/kk/d/d;

    invoke-virtual {v0, v3, v2}, Lcom/bytedance/sdk/component/kk/dq/dq;->dq(Lcom/bytedance/sdk/component/kk/d/p;Lcom/bytedance/sdk/component/kk/d;)V

    :cond_12
    :goto_9
    return-void
.end method
