.class public final Lcom/bytedance/pangle/util/b/b;
.super Ljava/lang/Object;


# direct methods
.method private static a(ILjava/lang/String;IJLjava/lang/Throwable;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v3, "status_code"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "plugin_package_name"

    invoke-static {p1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "version_code"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "duration"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/pangle/log/b;->b(Ljava/lang/Object;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p0, "message"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5}, Lcom/bytedance/pangle/log/b;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    invoke-static {}, Lcom/bytedance/pangle/c/b;->a()Lcom/bytedance/pangle/c/b;

    move-result-object p0

    sget-object p1, Lcom/bytedance/pangle/c/b;->k:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, v2, v1}, Lcom/bytedance/pangle/c/b;->a(Ljava/lang/String;Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Ljava/lang/String;ZZLjava/lang/String;II)Z
    .locals 30

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p5

    const-string v4, "[shootsTag]"

    const-string v5, "Zeus_pangle"

    const-string v6, "rmSo:"

    const-string v7, " rmDex:"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    :try_start_0
    new-instance v0, Lcom/bytedance/pangle/util/b/a/a;

    invoke-direct {v0}, Lcom/bytedance/pangle/util/b/a/a;-><init>()V

    invoke-static/range {p0 .. p0}, Lcom/bytedance/pangle/util/b/a/a;->a(Ljava/lang/String;)Lcom/bytedance/pangle/util/b/b/d;

    move-result-object v0

    new-instance v13, Lcom/bytedance/pangle/util/b/a;

    invoke-direct {v13, v0}, Lcom/bytedance/pangle/util/b/a;-><init>(Lcom/bytedance/pangle/util/b/b/d;)V

    new-instance v14, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v15, v13, Lcom/bytedance/pangle/util/b/a;->a:Lcom/bytedance/pangle/util/b/b/d;

    iget-object v15, v15, Lcom/bytedance/pangle/util/b/b/d;->d:Ljava/io/File;

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ".rm_tmp"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v14}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v15, v4

    move-wide/from16 v26, v8

    :goto_0
    move-object v4, v0

    goto/16 :goto_15

    :cond_0
    :goto_1
    :try_start_1
    new-instance v15, Ljava/io/RandomAccessFile;

    const-string v0, "rw"

    invoke-direct {v15, v14, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_12

    :try_start_2
    new-instance v10, Ljava/io/RandomAccessFile;

    iget-object v0, v13, Lcom/bytedance/pangle/util/b/a;->a:Lcom/bytedance/pangle/util/b/b/d;

    iget-object v0, v0, Lcom/bytedance/pangle/util/b/b/d;->d:Ljava/io/File;

    const-string v11, "r"

    invoke-direct {v10, v0, v11}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_11

    :try_start_3
    iget-object v0, v13, Lcom/bytedance/pangle/util/b/a;->a:Lcom/bytedance/pangle/util/b/b/d;

    iget-object v0, v0, Lcom/bytedance/pangle/util/b/b/d;->a:Lcom/bytedance/pangle/util/b/b/a;

    iget-object v0, v0, Lcom/bytedance/pangle/util/b/b/a;->a:Ljava/util/List;

    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v12, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v16, :cond_7

    :try_start_4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v25, v0

    move-object/from16 v0, v16

    check-cast v0, Lcom/bytedance/pangle/util/b/b/c;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    if-eqz v1, :cond_2

    :try_start_5
    invoke-static {}, Lcom/bytedance/pangle/util/i;->d()Z

    move-result v16
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v16, :cond_1

    move-wide/from16 v26, v8

    :try_start_6
    iget-object v8, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    const-string v9, "classes.dex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    goto :goto_4

    :catchall_1
    move-exception v0

    :goto_3
    move-object/from16 v16, v10

    move-object v8, v15

    move-object v15, v4

    goto/16 :goto_13

    :cond_1
    move-wide/from16 v26, v8

    :goto_4
    iget-object v8, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    const-string v9, "classes"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    const-string v9, ".dex"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_6

    :catchall_2
    move-exception v0

    :goto_5
    move-wide/from16 v26, v8

    goto :goto_3

    :cond_2
    move-wide/from16 v26, v8

    :cond_3
    if-eqz v2, :cond_4

    iget-object v8, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    const-string v9, "lib/"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    const-string v9, ".so"

    invoke-virtual {v8, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    :goto_6
    iget-object v0, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    invoke-virtual {v11, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object/from16 v0, v25

    :goto_7
    move-wide/from16 v8, v26

    goto :goto_2

    :cond_4
    :try_start_7
    iget-wide v8, v0, Lcom/bytedance/pangle/util/b/b/c;->i:J

    move-wide/from16 v18, v8

    const-string v8, "resources.arsc"

    iget-object v9, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_b

    if-eqz v8, :cond_6

    :try_start_8
    invoke-virtual {v15}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v8

    invoke-virtual {v0}, Lcom/bytedance/pangle/util/b/b/c;->c()J

    move-result-wide v16

    add-long v8, v8, v16

    const-wide/16 v16, 0x1000

    rem-long v20, v8, v16

    const-wide/16 v28, 0x0

    cmp-long v22, v20, v28

    if-nez v22, :cond_5

    move-wide/from16 v8, v28

    goto :goto_8

    :cond_5
    move-wide/from16 v20, v8

    iget v8, v0, Lcom/bytedance/pangle/util/b/b/c;->g:I

    int-to-long v8, v8

    sub-long v8, v20, v8

    rem-long v8, v8, v16
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_9

    sub-long v16, v16, v8

    move-wide/from16 v8, v16

    :goto_8
    cmp-long v16, v8, v28

    if-eqz v16, :cond_6

    move-object/from16 v16, v10

    :try_start_9
    iget v10, v0, Lcom/bytedance/pangle/util/b/b/c;->g:I

    long-to-int v9, v8

    iput v9, v0, Lcom/bytedance/pangle/util/b/b/c;->g:I

    iget-object v8, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    const-wide/16 v20, 0x1c

    move-object/from16 v22, v8

    move-object/from16 v17, v15

    :try_start_a
    invoke-static/range {v16 .. v22}, Lcom/bytedance/pangle/util/b/a;->a(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;JJLjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    move-object/from16 v8, v17

    :try_start_b
    iget-object v15, v13, Lcom/bytedance/pangle/util/b/a;->a:Lcom/bytedance/pangle/util/b/b/d;

    iget-object v15, v15, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    move-object/from16 v28, v5

    :try_start_c
    iget-object v5, v15, Lcom/bytedance/pangle/util/b/a/c;->a:[B

    invoke-static {v5, v9}, Lcom/bytedance/pangle/util/b/a/c;->a([BI)V

    iget-object v5, v15, Lcom/bytedance/pangle/util/b/a/c;->a:[B

    invoke-virtual {v8, v5}, Ljava/io/RandomAccessFile;->write([B)V

    const-wide/16 v20, 0x1e

    add-long v18, v18, v20

    iget v5, v0, Lcom/bytedance/pangle/util/b/b/c;->e:I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    move-object v15, v4

    int-to-long v4, v5

    move-wide/from16 v20, v4

    :try_start_d
    iget-object v4, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-object/from16 v22, v4

    move-object/from16 v17, v8

    :try_start_e
    invoke-static/range {v16 .. v22}, Lcom/bytedance/pangle/util/b/a;->a(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;JJLjava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    move-object/from16 v8, v17

    :try_start_f
    new-array v4, v9, [B

    invoke-virtual {v8, v4}, Ljava/io/RandomAccessFile;->write([B)V

    iget v4, v0, Lcom/bytedance/pangle/util/b/b/c;->e:I

    int-to-long v4, v4

    add-long v18, v18, v4

    int-to-long v4, v10

    add-long v18, v18, v4

    invoke-virtual {v0}, Lcom/bytedance/pangle/util/b/b/c;->a()J

    move-result-wide v20

    iget-object v4, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-object/from16 v22, v4

    move-object/from16 v17, v8

    :try_start_10
    invoke-static/range {v16 .. v22}, Lcom/bytedance/pangle/util/b/a;->a(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;JJLjava/lang/String;)V

    move-object/from16 v8, v17

    goto :goto_e

    :catchall_3
    move-exception v0

    move-object/from16 v8, v17

    :goto_9
    move-object/from16 v5, v28

    goto/16 :goto_13

    :catchall_4
    move-exception v0

    :goto_a
    move-object/from16 v17, v8

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v15, v4

    goto :goto_a

    :catchall_6
    move-exception v0

    move-object v15, v4

    move-object/from16 v28, v5

    move-object/from16 v17, v8

    goto/16 :goto_13

    :catchall_7
    move-exception v0

    move-object v15, v4

    move-object/from16 v28, v5

    :goto_b
    move-object/from16 v8, v17

    goto/16 :goto_13

    :catchall_8
    move-exception v0

    move-object/from16 v28, v5

    :goto_c
    move-object/from16 v17, v15

    move-object v15, v4

    goto :goto_b

    :cond_6
    move-object/from16 v28, v5

    move-object/from16 v16, v10

    move-object/from16 v17, v15

    move-object v15, v4

    goto :goto_d

    :catchall_9
    move-exception v0

    move-object/from16 v28, v5

    move-object/from16 v16, v10

    goto :goto_c

    :goto_d
    invoke-virtual {v0}, Lcom/bytedance/pangle/util/b/b/c;->b()J

    move-result-wide v20

    iget-object v4, v0, Lcom/bytedance/pangle/util/b/b/c;->h:Ljava/lang/String;

    move-object/from16 v22, v4

    invoke-static/range {v16 .. v22}, Lcom/bytedance/pangle/util/b/a;->a(Ljava/io/RandomAccessFile;Ljava/io/RandomAccessFile;JJLjava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    move-object/from16 v8, v17

    :goto_e
    int-to-long v4, v12

    :try_start_11
    iput-wide v4, v0, Lcom/bytedance/pangle/util/b/b/c;->i:J

    invoke-virtual {v0}, Lcom/bytedance/pangle/util/b/b/c;->b()J

    move-result-wide v9

    add-long/2addr v4, v9

    long-to-int v12, v4

    move-object v4, v15

    move-object/from16 v10, v16

    move-object/from16 v0, v25

    move-object/from16 v5, v28

    move-object v15, v8

    goto/16 :goto_7

    :catchall_a
    move-exception v0

    goto :goto_9

    :catchall_b
    move-exception v0

    move-object/from16 v28, v5

    goto/16 :goto_3

    :catchall_c
    move-exception v0

    move-object/from16 v28, v5

    goto/16 :goto_5

    :cond_7
    move-object/from16 v28, v5

    move-wide/from16 v26, v8

    move-object/from16 v16, v10

    move-object v8, v15

    move-object v15, v4

    iget-object v0, v13, Lcom/bytedance/pangle/util/b/a;->a:Lcom/bytedance/pangle/util/b/b/d;

    iget-object v0, v0, Lcom/bytedance/pangle/util/b/b/d;->a:Lcom/bytedance/pangle/util/b/b/a;

    invoke-virtual {v0, v11}, Lcom/bytedance/pangle/util/b/b/a;->a(Ljava/util/Set;)V

    iget-object v0, v13, Lcom/bytedance/pangle/util/b/a;->a:Lcom/bytedance/pangle/util/b/b/d;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_a

    if-eqz v0, :cond_d

    :try_start_12
    new-instance v4, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v4}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_10

    :try_start_13
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v9

    invoke-static {v0, v4}, Lcom/bytedance/pangle/util/b/a/b;->a(Lcom/bytedance/pangle/util/b/b/d;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v5

    long-to-int v10, v9

    iget-object v9, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    const v11, 0x6054b50

    invoke-virtual {v9, v4, v11}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/OutputStream;I)V

    iget-object v9, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    const/4 v11, 0x0

    invoke-virtual {v9, v4, v11}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v9, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v9, v4, v11}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v9, v0, Lcom/bytedance/pangle/util/b/b/d;->a:Lcom/bytedance/pangle/util/b/b/a;

    iget-object v9, v9, Lcom/bytedance/pangle/util/b/b/a;->a:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    iget-object v11, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v11, v4, v9}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v11, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v11, v4, v9}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    iget-object v9, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v9, v4, v5}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/OutputStream;I)V

    iget-object v5, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    invoke-virtual {v5, v4, v10}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/OutputStream;I)V

    iget-object v0, v0, Lcom/bytedance/pangle/util/b/b/d;->c:Lcom/bytedance/pangle/util/b/a/c;

    const/4 v11, 0x0

    invoke-virtual {v0, v4, v11}, Lcom/bytedance/pangle/util/b/a/c;->a(Ljava/io/ByteArrayOutputStream;I)V

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/io/RandomAccessFile;->write([B)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    :try_start_14
    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    iget-object v0, v13, Lcom/bytedance/pangle/util/b/a;->a:Lcom/bytedance/pangle/util/b/b/d;

    iget-object v0, v0, Lcom/bytedance/pangle/util/b/b/d;->d:Ljava/io/File;

    invoke-virtual {v14, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_a

    if-eqz v0, :cond_b

    :try_start_15
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    invoke-static {v14}, Lcom/bytedance/pangle/util/b/a;->a(Ljava/io/File;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    if-eqz v3, :cond_a

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    sget v12, Lcom/bytedance/pangle/c/b$a;->a:I

    :goto_f
    move/from16 v16, v12

    goto :goto_10

    :cond_8
    const/4 v4, 0x2

    if-ne v3, v4, :cond_9

    sget v12, Lcom/bytedance/pangle/c/b$a;->b:I

    goto :goto_f

    :cond_9
    const/16 v16, 0x0

    :goto_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v5, v28

    invoke-static {v5, v0}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v19, v0, v26

    const/16 v21, 0x0

    move-object/from16 v17, p3

    move/from16 v18, p4

    invoke-static/range {v16 .. v22}, Lcom/bytedance/pangle/util/b/b;->a(ILjava/lang/String;IJLjava/lang/Throwable;Ljava/lang/String;)V

    const/16 v23, 0x1

    return v23

    :cond_a
    const/16 v23, 0x1

    return v23

    :catchall_d
    move-exception v0

    move-object/from16 v5, v28

    goto/16 :goto_0

    :cond_b
    move-object/from16 v5, v28

    :try_start_16
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v4, "cannot rename modified zip file"

    invoke-direct {v0, v4}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_e
    move-exception v0

    goto :goto_13

    :catchall_f
    move-exception v0

    move-object/from16 v5, v28

    goto :goto_11

    :catchall_10
    move-exception v0

    move-object/from16 v5, v28

    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_c

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_c
    throw v0

    :cond_d
    move-object/from16 v5, v28

    new-instance v0, Ljava/io/IOException;

    const-string v4, "input parameters is null, cannot finalize zip file"

    invoke-direct {v0, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :catchall_11
    move-exception v0

    move-wide/from16 v26, v8

    move-object v8, v15

    move-object v15, v4

    :goto_12
    const/16 v16, 0x0

    goto :goto_13

    :catchall_12
    move-exception v0

    move-object v15, v4

    move-wide/from16 v26, v8

    const/4 v8, 0x0

    goto :goto_12

    :goto_13
    if-eqz v16, :cond_e

    :try_start_17
    invoke-virtual/range {v16 .. v16}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_14

    :catchall_13
    move-exception v0

    goto/16 :goto_0

    :cond_e
    :goto_14
    if-eqz v8, :cond_f

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->close()V

    :cond_f
    invoke-static {v14}, Lcom/bytedance/pangle/util/b/a;->a(Ljava/io/File;)V

    throw v0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_13

    :goto_15
    :try_start_18
    const-string v0, "Zeus/install_pangle"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "rmEntries failed. zipFile:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v9, p0

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " rmSO:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_14

    if-eqz v3, :cond_12

    const/4 v8, 0x1

    if-ne v3, v8, :cond_10

    sget v11, Lcom/bytedance/pangle/c/b$a;->c:I

    :goto_16
    move v0, v11

    goto :goto_17

    :cond_10
    const/4 v8, 0x2

    if-ne v3, v8, :cond_11

    sget v11, Lcom/bytedance/pangle/c/b$a;->d:I

    goto :goto_16

    :cond_11
    const/4 v0, 0x0

    :goto_17
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v26

    move-object v5, v4

    move-wide v3, v1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static/range {v0 .. v6}, Lcom/bytedance/pangle/util/b/b;->a(ILjava/lang/String;IJLjava/lang/Throwable;Ljava/lang/String;)V

    :cond_12
    const/16 v24, 0x0

    return v24

    :catchall_14
    move-exception v0

    const/16 v24, 0x0

    move-object v8, v0

    if-eqz v3, :cond_15

    const/4 v9, 0x1

    if-eq v3, v9, :cond_14

    const/4 v9, 0x2

    if-ne v3, v9, :cond_13

    sget v12, Lcom/bytedance/pangle/c/b$a;->d:I

    :goto_18
    move v0, v12

    goto :goto_19

    :cond_13
    const/4 v0, 0x0

    goto :goto_19

    :cond_14
    sget v12, Lcom/bytedance/pangle/c/b$a;->c:I

    goto :goto_18

    :goto_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/bytedance/pangle/log/ZeusLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v26

    move-object v5, v4

    move-wide v3, v1

    move-object/from16 v1, p3

    move/from16 v2, p4

    invoke-static/range {v0 .. v6}, Lcom/bytedance/pangle/util/b/b;->a(ILjava/lang/String;IJLjava/lang/Throwable;Ljava/lang/String;)V

    :cond_15
    throw v8
.end method
