.class public Lms/bz/bd/c/Pgl/pblt;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lms/bz/bd/c/Pgl/pblt$pgla;,
        Lms/bz/bd/c/Pgl/pblt$pblb;,
        Lms/bz/bd/c/Pgl/pblt$pblc;
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    new-instance v2, Lms/bz/bd/c/Pgl/pblu;

    new-instance v0, Lms/bz/bd/c/Pgl/pblw;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pblw;-><init>()V

    new-instance v3, Lms/bz/bd/c/Pgl/pblr;

    invoke-direct {v3}, Lms/bz/bd/c/Pgl/pblr;-><init>()V

    invoke-direct {v2, v0, v3}, Lms/bz/bd/c/Pgl/pblu;-><init>(Lms/bz/bd/c/Pgl/pblt$pblb;Lms/bz/bd/c/Pgl/pblr;)V

    if-eqz v1, :cond_f

    const-string v3, "Pglbizssdk_ml"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v4, v2, Lms/bz/bd/c/Pgl/pblu;->b:Lms/bz/bd/c/Pgl/pblt$pblb;

    iget-object v5, v2, Lms/bz/bd/c/Pgl/pblu;->a:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v6, 0x0

    :try_start_0
    move-object v0, v4

    check-cast v0, Lms/bz/bd/c/Pgl/pblw;

    if-eqz v0, :cond_1

    invoke-static {v3}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_1
    throw v6
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v1}, Lms/bz/bd/c/Pgl/pblu;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_d

    const-string v7, "lib"

    const/4 v8, 0x0

    invoke-static {v1, v7, v8}, Lcom/bytedance/sdk/openadsdk/api/plugin/d;->dq(Landroid/content/Context;Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v2, v1}, Lms/bz/bd/c/Pgl/pblu;->d(Landroid/content/Context;)Ljava/io/File;

    move-result-object v9

    move-object v10, v4

    check-cast v10, Lms/bz/bd/c/Pgl/pblw;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v3}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    new-instance v11, Lms/bz/bd/c/Pgl/pblv;

    invoke-direct {v11, v10}, Lms/bz/bd/c/Pgl/pblv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v11}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v7

    if-eqz v7, :cond_3

    array-length v10, v7

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_3

    aget-object v12, v7, v11

    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v12}, Ljava/io/File;->delete()Z

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_3
    sget-object v7, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    array-length v9, v7

    const/4 v10, 0x1

    if-gtz v9, :cond_5

    sget-object v7, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    if-eqz v7, :cond_4

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    sget-object v11, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v11, v9, v8

    aput-object v7, v9, v10

    move-object v7, v9

    goto :goto_2

    :cond_4
    new-array v7, v10, [Ljava/lang/String;

    sget-object v9, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v9, v7, v8

    :cond_5
    :goto_2
    invoke-static {v3}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v11, v2, Lms/bz/bd/c/Pgl/pblu;->c:Lms/bz/bd/c/Pgl/pblr;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_1
    invoke-static {v1, v7, v9, v2}, Lms/bz/bd/c/Pgl/pblr;->b(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Lms/bz/bd/c/Pgl/pblu;)Lms/bz/bd/c/Pgl/pblr$pgla;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz v2, :cond_b

    iget-object v1, v2, Lms/bz/bd/c/Pgl/pblr$pgla;->a:Ljava/util/zip/ZipFile;

    const/4 v7, 0x0

    :goto_3
    add-int/lit8 v9, v7, 0x1

    const/4 v11, 0x5

    if-ge v7, v11, :cond_a

    :try_start_2
    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v7, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v7
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v7, :cond_6

    goto :goto_5

    :cond_6
    :goto_4
    move/from16 p0, v9

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    move-object v6, v2

    goto/16 :goto_10

    :catch_1
    nop

    goto :goto_4

    :cond_7
    :goto_5
    :try_start_5
    iget-object v7, v2, Lms/bz/bd/c/Pgl/pblr$pgla;->b:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1, v7}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v7
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/16 v12, 0x1000

    :try_start_7
    new-array v12, v12, [B

    const-wide/16 v13, 0x0

    :goto_6
    invoke-virtual {v7, v12}, Ljava/io/InputStream;->read([B)I

    move-result v15

    const/4 v6, -0x1

    if-ne v15, v6, :cond_9

    invoke-virtual {v11}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v11}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/FileDescriptor;->sync()V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v16
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    cmp-long v6, v13, v16

    if-eqz v6, :cond_8

    goto :goto_7

    :cond_8
    :try_start_8
    invoke-static {v7}, Lms/bz/bd/c/Pgl/pblr;->c(Ljava/io/Closeable;)V

    invoke-static {v11}, Lms/bz/bd/c/Pgl/pblr;->c(Ljava/io/Closeable;)V

    invoke-virtual {v0, v10, v8}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v10, v8}, Ljava/io/File;->setExecutable(ZZ)Z

    invoke-virtual {v0, v10}, Ljava/io/File;->setWritable(Z)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    goto :goto_8

    :catch_2
    :goto_7
    move/from16 p0, v9

    goto :goto_d

    :cond_9
    :try_start_a
    invoke-virtual {v11, v12, v8, v15}, Ljava/io/OutputStream;->write([BII)V
    :try_end_a
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move/from16 p0, v9

    int-to-long v8, v15

    add-long/2addr v13, v8

    move/from16 v9, p0

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto :goto_6

    :goto_8
    move-object v6, v11

    goto :goto_a

    :catchall_2
    move-exception v0

    goto :goto_9

    :catch_3
    move/from16 p0, v9

    goto :goto_c

    :catchall_3
    move-exception v0

    const/4 v7, 0x0

    goto :goto_9

    :catch_4
    move/from16 p0, v9

    goto :goto_b

    :catch_5
    move/from16 p0, v9

    goto :goto_b

    :goto_9
    const/4 v6, 0x0

    :goto_a
    :try_start_b
    invoke-static {v7}, Lms/bz/bd/c/Pgl/pblr;->c(Ljava/io/Closeable;)V

    invoke-static {v6}, Lms/bz/bd/c/Pgl/pblr;->c(Ljava/io/Closeable;)V

    throw v0

    :goto_b
    const/4 v7, 0x0

    :goto_c
    const/4 v11, 0x0

    :goto_d
    invoke-static {v7}, Lms/bz/bd/c/Pgl/pblr;->c(Ljava/io/Closeable;)V

    invoke-static {v11}, Lms/bz/bd/c/Pgl/pblr;->c(Ljava/io/Closeable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_e

    :catch_6
    move/from16 p0, v9

    nop

    :goto_e
    move/from16 v7, p0

    const/4 v6, 0x0

    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_a
    if-eqz v1, :cond_d

    :try_start_c
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    goto :goto_11

    :cond_b
    :try_start_d
    invoke-static {v1, v9}, Lms/bz/bd/c/Pgl/pblr;->a(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_f

    :catch_7
    move-exception v0

    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    :goto_f
    new-instance v1, Lms/bz/bd/c/Pgl/pbls;

    const-string v3, "Could not find \'"

    const-string v4, "\'. Looked for: "

    invoke-static {v3, v9, v4}, Lg/awf;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", but only found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "."

    invoke-static {v3, v0, v4}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :catchall_4
    move-exception v0

    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_c

    :try_start_f
    iget-object v1, v6, Lms/bz/bd/c/Pgl/pblr$pgla;->a:Ljava/util/zip/ZipFile;

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8

    :catch_8
    :cond_c
    throw v0

    :catch_9
    :cond_d
    :goto_11
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    check-cast v4, Lms/bz/bd/c/Pgl/pblw;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Ljava/lang/System;->load(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    return-void

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given library is either null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Given context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
