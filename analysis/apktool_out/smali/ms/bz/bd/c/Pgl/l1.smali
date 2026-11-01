.class public Lms/bz/bd/c/Pgl/l1;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    const/4 v0, 0x5

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-wide/16 v3, 0x0

    const-string v5, "ca18e2"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v12, v0, [B

    fill-array-data v12, :array_1

    const-wide/16 v9, 0x0

    const-string v11, "8aaef7"

    const v7, 0x1000001

    const/4 v8, 0x0

    invoke-static/range {v7 .. v12}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lms/bz/bd/c/Pgl/l1;->a:Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 1
        0x49t
        0x3ft
        0x3t
        0x12t
        0x67t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x3dt
        0x77t
        0x2dt
        0x1ft
        0x5dt
    .end array-data
.end method

.method public static b(Ljava/io/BufferedInputStream;)Ljava/lang/String;
    .locals 9

    const/16 v0, 0x1000

    new-array v1, v0, [B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    :cond_0
    :try_start_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_1

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v5, v3}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-ge v3, v0, :cond_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x3

    new-array v8, p0, [B

    fill-array-data v8, :array_0

    const-wide/16 v5, 0x0

    const-string v7, "88faf4"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :array_0
    .array-data 1
        0x2ct
        0x33t
        0x16t
    .end array-data
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 19

    const/4 v1, 0x5

    const/4 v2, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v7, "8dabd4"

    const/4 v3, 0x2

    :try_start_1
    new-array v8, v3, [B

    fill-array-data v8, :array_0

    const v3, 0x1000001

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    new-instance v5, Ljava/io/BufferedInputStream;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/io/OutputStream;->write([B)V

    const/16 v0, 0xa

    invoke-virtual {v4, v0}, Ljava/io/BufferedOutputStream;->write(I)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V

    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    invoke-static {v5}, Lms/bz/bd/c/Pgl/l1;->b(Ljava/io/BufferedInputStream;)Ljava/lang/String;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    :catch_0
    new-array v11, v1, [B

    fill-array-data v11, :array_1

    const-wide/16 v8, 0x0

    const-string v10, "0cecbf"

    const v6, 0x1000001

    const/4 v7, 0x0

    invoke-static/range {v6 .. v11}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    :try_start_6
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_6

    :catch_1
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    const-wide/16 v14, 0x0

    const-string v16, "9e72b0"

    const v12, 0x1000001

    const/4 v13, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object v2, v5

    goto :goto_1

    :catchall_1
    move-exception v0

    :goto_1
    move-object/from16 v18, v3

    move-object v3, v2

    move-object v2, v4

    move-object/from16 v4, v18

    goto :goto_8

    :catch_2
    move-object v5, v2

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v3, v2

    :goto_2
    move-object v4, v3

    move-object v3, v2

    goto :goto_8

    :catch_3
    move-object v3, v2

    :catch_4
    move-object v4, v2

    move-object v5, v4

    :catch_5
    :goto_3
    const-string v10, "189a12"

    :try_start_7
    new-array v11, v1, [B

    fill-array-data v11, :array_3

    const v6, 0x1000001

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-static/range {v6 .. v11}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v4, :cond_0

    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    goto :goto_4

    :catch_6
    new-array v0, v1, [B

    fill-array-data v0, :array_4

    const-wide/16 v14, 0x0

    const-string v16, "f34770"

    const v12, 0x1000001

    const/4 v13, 0x0

    move-object/from16 v17, v0

    invoke-static/range {v12 .. v17}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    :goto_4
    if-eqz v5, :cond_1

    :try_start_9
    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_5

    :catch_7
    new-array v11, v1, [B

    fill-array-data v11, :array_5

    const-wide/16 v8, 0x0

    const-string v10, "d89fec"

    const v6, 0x1000001

    const/4 v7, 0x0

    invoke-static/range {v6 .. v11}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_5
    if-nez v3, :cond_2

    goto :goto_7

    :cond_2
    :goto_6
    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    :goto_7
    return-object v2

    :goto_8
    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8

    goto :goto_9

    :catch_8
    new-array v10, v1, [B

    fill-array-data v10, :array_6

    const-wide/16 v7, 0x0

    const-string v9, "fb26ec"

    const v5, 0x1000001

    const/4 v6, 0x0

    invoke-static/range {v5 .. v10}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_9
    if-eqz v3, :cond_4

    :try_start_b
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_9

    goto :goto_a

    :catch_9
    new-array v1, v1, [B

    fill-array-data v1, :array_7

    const-wide/16 v13, 0x0

    const-string v15, "0a4c18"

    const v11, 0x1000001

    const/4 v12, 0x0

    move-object/from16 v16, v1

    invoke-static/range {v11 .. v16}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_a
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Process;->destroy()V

    :cond_5
    throw v0

    :array_0
    .array-data 1
        0x3at
        0x6et
    .end array-data

    nop

    :array_1
    .array-data 1
        0x24t
        0x68t
        0x15t
        0x28t
        0x58t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x6et
        0x47t
        0x79t
        0x58t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x25t
        0x33t
        0x49t
        0x2at
        0xbt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x72t
        0x38t
        0x44t
        0x7ct
        0xdt
    .end array-data

    nop

    :array_5
    .array-data 1
        0x70t
        0x33t
        0x49t
        0x2dt
        0x5ft
    .end array-data

    nop

    :array_6
    .array-data 1
        0x72t
        0x69t
        0x42t
        0x7dt
        0x5ft
    .end array-data

    nop

    :array_7
    .array-data 1
        0x24t
        0x6at
        0x44t
        0x28t
        0xbt
    .end array-data
.end method
