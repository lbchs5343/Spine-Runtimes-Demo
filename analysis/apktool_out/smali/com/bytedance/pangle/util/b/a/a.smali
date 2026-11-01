.class public final Lcom/bytedance/pangle/util/b/a/a;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/pangle/util/b/b/d;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "r"

    invoke-direct {v1, p0, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x16

    cmp-long v0, v2, v4

    if-ltz v0, :cond_3

    new-instance v0, Lcom/bytedance/pangle/util/b/b/d;

    invoke-direct {v0, p0}, Lcom/bytedance/pangle/util/b/b/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    cmp-long p0, v2, v4

    if-ltz p0, :cond_2

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object p0, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {p0, v1}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/RandomAccessFile;)I

    move-result p0

    int-to-long v4, p0

    const-wide/32 v6, 0x6054b50

    cmp-long p0, v4, v6

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v1, v0}, Lcom/bytedance/pangle/util/b/a/a;->b(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/util/b/b/d;)J

    move-result-wide v2

    :goto_0
    const-wide/16 v4, 0x4

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    new-instance p0, Lcom/bytedance/pangle/util/b/b/b;

    invoke-direct {p0}, Lcom/bytedance/pangle/util/b/b/b;-><init>()V

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    iget-object v2, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v2, v1}, Lcom/bytedance/pangle/util/b/a/c;->b(Ljava/io/RandomAccessFile;)I

    move-result v2

    iput v2, p0, Lcom/bytedance/pangle/util/b/b/b;->a:I

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    iget-object v2, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v2, v1}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/RandomAccessFile;)I

    move-result v2

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/bytedance/pangle/util/b/b/b;->b:J

    iput-object p0, v0, Lcom/bytedance/pangle/util/b/b/d;->b:Lcom/bytedance/pangle/util/b/b/b;

    iget p0, p0, Lcom/bytedance/pangle/util/b/b/b;->a:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez p0, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :cond_1
    :try_start_3
    invoke-static {v1, v0}, Lcom/bytedance/pangle/util/b/a/a;->a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/util/b/b/d;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    return-object v0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_1

    :cond_2
    :try_start_5
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Zip file size less than size of zip headers. Probably not a zip file."

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Zip file size less than minimum expected zip file size. Probably not a zip file or a corrupted zip file"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_1
    move-exception p0

    :goto_1
    if-eqz v0, :cond_4

    :try_start_6
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    :cond_4
    throw p0
.end method

.method private static a(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/util/b/b/d;)V
    .locals 13

    new-instance v0, Lcom/bytedance/pangle/util/b/b/a;

    invoke-direct {v0}, Lcom/bytedance/pangle/util/b/b/a;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p1, Lcom/bytedance/pangle/util/b/b/d;->b:Lcom/bytedance/pangle/util/b/b/b;

    iget-wide v3, v2, Lcom/bytedance/pangle/util/b/b/b;->b:J

    iget v2, v2, Lcom/bytedance/pangle/util/b/b/b;->a:I

    int-to-long v5, v2

    invoke-virtual {p0, v3, v4}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v2, 0x0

    :goto_0
    int-to-long v3, v2

    cmp-long v7, v3, v5

    if-gez v7, :cond_3

    new-instance v3, Lcom/bytedance/pangle/util/b/b/c;

    invoke-direct {v3}, Lcom/bytedance/pangle/util/b/b/c;-><init>()V

    iget-object v4, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v4, p0}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/RandomAccessFile;)I

    move-result v4

    int-to-long v7, v4

    const-wide/32 v9, 0x2014b50    # 1.6619997E-316

    cmp-long v4, v7, v9

    if-nez v4, :cond_2

    const/4 v4, 0x6

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    iget-object v4, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v4, p0}, Lcom/bytedance/pangle/util/b/a/c;->b(Ljava/io/RandomAccessFile;)I

    move-result v4

    iput v4, v3, Lcom/bytedance/pangle/util/b/b/c;->a:I

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    iget-object v4, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v4, p0}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/RandomAccessFile;)I

    move-result v4

    int-to-long v7, v4

    iput-wide v7, v3, Lcom/bytedance/pangle/util/b/b/c;->b:J

    iget-object v4, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v4, p0}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/RandomAccessFile;)I

    move-result v4

    int-to-long v7, v4

    iput-wide v7, v3, Lcom/bytedance/pangle/util/b/b/c;->c:J

    iget-object v4, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v4, p0}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/RandomAccessFile;)I

    move-result v4

    int-to-long v7, v4

    iput-wide v7, v3, Lcom/bytedance/pangle/util/b/b/c;->d:J

    iget-object v4, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v4, p0}, Lcom/bytedance/pangle/util/b/a/c;->b(Ljava/io/RandomAccessFile;)I

    move-result v4

    iput v4, v3, Lcom/bytedance/pangle/util/b/b/c;->e:I

    iget-object v7, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v7, p0}, Lcom/bytedance/pangle/util/b/a/c;->b(Ljava/io/RandomAccessFile;)I

    move-result v7

    iput v7, v3, Lcom/bytedance/pangle/util/b/b/c;->f:I

    iget-object v7, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v7, p0}, Lcom/bytedance/pangle/util/b/a/c;->b(Ljava/io/RandomAccessFile;)I

    move-result v7

    const/16 v8, 0x8

    invoke-virtual {p0, v8}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    iget-object v8, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v8, p0}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/RandomAccessFile;)I

    move-result v8

    int-to-long v8, v8

    iput-wide v8, v3, Lcom/bytedance/pangle/util/b/b/c;->i:J

    if-lez v4, :cond_1

    new-array v4, v4, [B

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->readFully([B)V

    new-instance v8, Ljava/lang/String;

    const-string v9, "UTF-8"

    invoke-static {v9}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v9

    invoke-direct {v8, v4, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v8, v3, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    iget v4, v3, Lcom/bytedance/pangle/util/b/b/c;->f:I

    invoke-virtual {p0, v4}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    if-lez v7, :cond_0

    invoke-virtual {p0, v7}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    :cond_0
    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    iget-wide v9, v3, Lcom/bytedance/pangle/util/b/b/c;->i:J

    const-wide/16 v11, 0x1c

    add-long/2addr v9, v11

    invoke-virtual {p0, v9, v10}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v4, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v4, p0}, Lcom/bytedance/pangle/util/b/a/c;->b(Ljava/io/RandomAccessFile;)I

    move-result v4

    iput v4, v3, Lcom/bytedance/pangle/util/b/b/c;->g:I

    invoke-virtual {p0, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Invalid entry name in file header"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Expected central directory entry not found (#"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iput-object v1, v0, Lcom/bytedance/pangle/util/b/b/a;->a:Ljava/util/List;

    iput-object v0, p1, Lcom/bytedance/pangle/util/b/b/d;->a:Lcom/bytedance/pangle/util/b/b/a;

    return-void
.end method

.method private static b(Ljava/io/RandomAccessFile;Lcom/bytedance/pangle/util/b/b/d;)J
    .locals 11

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x16

    sub-long/2addr v0, v2

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x10000

    cmp-long v6, v2, v4

    if-gez v6, :cond_0

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    :cond_0
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v6, v4, v2

    if-lez v6, :cond_2

    cmp-long v6, v0, v2

    if-lez v6, :cond_2

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v6, p1, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v6, p0}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/RandomAccessFile;)I

    move-result v6

    int-to-long v6, v6

    const-wide/32 v8, 0x6054b50

    cmp-long v10, v6, v8

    if-nez v10, :cond_1

    return-wide v0

    :cond_1
    sub-long/2addr v4, v2

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Zip headers not found. Probably not a zip file"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
