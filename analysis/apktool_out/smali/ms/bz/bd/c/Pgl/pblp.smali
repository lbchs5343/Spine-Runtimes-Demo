.class public final Lms/bz/bd/c/Pgl/pblp;
.super Lms/bz/bd/c/Pgl/pblo;


# instance fields
.field public h:Ljavax/net/ssl/SSLSocketFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lms/bz/bd/c/Pgl/pblo;-><init>()V

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lms/bz/bd/c/Pgl/pblp;->i(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v6}, Lms/bz/bd/c/Pgl/pblp;->i(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)[Ljava/lang/Object;
    .locals 14

    const/16 v0, 0x19

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-wide/16 v3, 0x0

    const-string v5, "0cbdfd"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v7 .. v13}, Lms/bz/bd/c/Pgl/pblp;->i(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    nop

    :array_0
    .array-data 1
        0x12t
        0x78t
        0x2t
        0x4t
        0x5ct
        0x7et
        0x1bt
        0x56t
        0x27t
        0x24t
        0x2t
        0x6dt
        0x18t
        0x15t
        0x57t
        0x67t
        0x73t
        0x57t
        0x21t
        0x38t
        0x61t
        0x2ct
        0x5ct
        0x5dt
        0x19t
    .end array-data
.end method

.method public final i(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)[Ljava/lang/Object;
    .locals 22

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    new-instance v5, Lms/bz/bd/c/Pgl/pblm$pgla;

    invoke-direct {v5}, Lms/bz/bd/c/Pgl/pblm$pgla;-><init>()V

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x7

    const/4 v9, 0x0

    const/16 v10, 0xa

    const/4 v11, -0x1

    const/4 v12, 0x0

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    instance-of v0, v13, Ljavax/net/ssl/HttpsURLConnection;

    const/4 v14, 0x3

    if-eqz v0, :cond_2

    :try_start_1
    iget-object v0, v1, Lms/bz/bd/c/Pgl/pblp;->h:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_1

    const-class v15, Lms/bz/bd/c/Pgl/pblp;

    :try_start_2
    monitor-enter v15
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v1, Lms/bz/bd/c/Pgl/pblp;->h:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez v0, :cond_0

    const-string v20, "656469"

    :try_start_4
    new-array v0, v14, [B

    fill-array-data v0, :array_0

    const v16, 0x1000001

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    move-object/from16 v21, v0

    invoke-static/range {v16 .. v21}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    invoke-virtual {v0, v12, v12, v12}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, v1, Lms/bz/bd/c/Pgl/pblp;->h:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v15

    goto :goto_2

    :goto_1
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :catchall_1
    move-exception v0

    goto/16 :goto_9

    :cond_1
    :goto_2
    iget-object v0, v1, Lms/bz/bd/c/Pgl/pblp;->h:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_2

    move-object v15, v13

    check-cast v15, Ljavax/net/ssl/HttpsURLConnection;

    invoke-virtual {v15, v0}, Ljavax/net/ssl/HttpsURLConnection;->setSSLSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    :cond_2
    const/16 v0, 0x2710

    :try_start_6
    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    const/16 v0, 0x1388

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->setReadTimeout(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v19, "98a723"

    :try_start_7
    new-array v0, v6, [B

    fill-array-data v0, :array_1

    const v15, 0x1000001

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v15 .. v20}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const-string v19, "8ff204"

    :try_start_8
    new-array v14, v14, [B

    fill-array-data v14, :array_2

    const v15, 0x1000001

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v20, v14

    invoke-static/range {v15 .. v20}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v0, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    const-string v19, "2d2cf9"

    :try_start_9
    new-array v0, v10, [B

    fill-array-data v0, :array_3

    const v15, 0x1000001

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v15 .. v20}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-string v18, "d86595"

    :try_start_a
    new-array v14, v10, [B

    fill-array-data v14, :array_4

    move-object/from16 v19, v14

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v19}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v0, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    const-string v19, "962271"

    :try_start_b
    new-array v0, v10, [B

    fill-array-data v0, :array_5

    const v15, 0x1000001

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v15 .. v20}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    const-string v18, "b926d0"

    const/16 v14, 0xf

    :try_start_c
    new-array v14, v14, [B

    fill-array-data v14, :array_6

    move-object/from16 v19, v14

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v19}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v0, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    const-string v19, "95dc4a"

    const/16 v0, 0xc

    :try_start_d
    new-array v0, v0, [B

    fill-array-data v0, :array_7

    const v15, 0x1000001

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    move-object/from16 v20, v0

    invoke-static/range {v15 .. v20}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    const-string v18, "4ef9db"

    const/16 v14, 0x18

    :try_start_e
    new-array v14, v14, [B

    fill-array-data v14, :array_8

    move-object/from16 v19, v14

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v19}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v0, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    if-lez v0, :cond_3

    const-string v18, "ddba59"

    :try_start_f
    new-array v0, v6, [B

    fill-array-data v0, :array_9

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    const-string v18, "97c4ee"

    const/16 v14, 0xc

    :try_start_10
    new-array v14, v14, [B

    fill-array-data v14, :array_a

    move-object/from16 v19, v14

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    invoke-static/range {v14 .. v19}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    new-array v15, v7, [Ljava/lang/Object;

    aput-object p3, v15, v9

    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v0, v14}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v3, :cond_4

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    if-lez v0, :cond_4

    const-string v18, "94466e"

    const/16 v0, 0x10

    :try_start_11
    new-array v0, v0, [B

    fill-array-data v0, :array_b

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0, v3}, Ljava/net/URLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    iput-object v2, v5, Lms/bz/bd/c/Pgl/pblm$pgla;->b:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v5, Lms/bz/bd/c/Pgl/pblm$pgla;->a:J
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_4
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    if-eqz p6, :cond_5

    const-string v18, "b2e7ca"

    const/4 v0, 0x4

    :try_start_12
    new-array v0, v0, [B

    fill-array-data v0, :array_c

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    invoke-virtual {v13, v7}, Ljava/net/URLConnection;->setDoOutput(Z)V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-virtual {v13}, Ljava/net/URLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-object/from16 v3, p2

    :try_start_13
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    goto :goto_3

    :cond_5
    move-object v2, v12

    :goto_3
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v11
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_2
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const-string v18, "29ccce"

    :try_start_14
    new-array v0, v10, [B

    fill-array-data v0, :array_d

    const v14, 0x1000001

    const/4 v15, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v19, v0

    invoke-static/range {v14 .. v19}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v11}, Lms/bz/bd/c/Pgl/pblm$pgla;->d(Ljava/lang/String;I)V

    const/16 v0, 0xc8

    if-ne v11, v0, :cond_9

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {v13}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_2
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-eqz v4, :cond_6

    :try_start_15
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v12, v2

    goto/16 :goto_d

    :cond_6
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_4
    const/16 v4, 0x100

    new-array v4, v4, [B

    :goto_5
    invoke-virtual {v3, v4}, Ljava/io/InputStream;->read([B)I

    move-result v14

    if-lez v14, :cond_7

    invoke-virtual {v0, v4, v9, v14}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_5

    :cond_7
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    instance-of v4, v0, Ljava/io/ByteArrayOutputStream;

    if-eqz v4, :cond_8

    move-object v4, v0

    check-cast v4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    goto :goto_6

    :cond_8
    move-object v4, v12

    :goto_6
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_5
    .catchall {:try_start_15 .. :try_end_15} :catchall_2

    move-object v12, v3

    goto :goto_7

    :cond_9
    move-object v4, v12

    :goto_7
    invoke-static {v12}, Lms/bz/bd/c/Pgl/pblo;->c(Ljava/io/BufferedInputStream;)V

    invoke-static {v2}, Lms/bz/bd/c/Pgl/pblo;->d(Ljava/io/DataOutputStream;)V

    :try_start_16
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    goto :goto_8

    :catch_1
    new-array v0, v8, [B

    fill-array-data v0, :array_e

    const-wide/16 v2, 0x0

    const-string v5, "7b8c23"

    const v6, 0x1000001

    const/4 v8, 0x0

    move-object/from16 p6, v0

    move-wide/from16 p3, v2

    move-object/from16 p5, v5

    const p1, 0x1000001

    const/16 p2, 0x0

    invoke-static/range {p1 .. p6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_8
    move-object v12, v4

    goto/16 :goto_c

    :catchall_3
    move-exception v0

    goto/16 :goto_e

    :catch_2
    move-object v3, v12

    goto :goto_a

    :catchall_4
    move-exception v0

    move-object v13, v12

    :goto_9
    move-object v2, v12

    goto/16 :goto_e

    :catch_3
    move-object v13, v12

    :catch_4
    move-object v2, v12

    move-object v3, v2

    :catch_5
    :goto_a
    const-string v0, "efbc24"

    :try_start_17
    new-array v4, v6, [B

    fill-array-data v4, :array_f

    const v6, 0x1000001

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    move-object/from16 p5, v0

    move-object/from16 p6, v4

    move-wide/from16 p3, v15

    const p1, 0x1000001

    const/16 p2, 0x0

    invoke-static/range {p1 .. p6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    if-eqz v13, :cond_a

    const-string v0, "422439"

    :try_start_18
    new-array v4, v10, [B

    fill-array-data v4, :array_10

    const v6, 0x1000001

    const/4 v10, 0x0

    const-wide/16 v14, 0x0

    move-object/from16 p5, v0

    move-object/from16 p6, v4

    move-wide/from16 p3, v14

    const p1, 0x1000001

    const/16 p2, 0x0

    invoke-static/range {p1 .. p6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v13, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_a
    move-object v0, v12

    :goto_b
    invoke-virtual {v5, v0, v11}, Lms/bz/bd/c/Pgl/pblm$pgla;->c(Ljava/lang/String;I)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_2

    invoke-static {v3}, Lms/bz/bd/c/Pgl/pblo;->c(Ljava/io/BufferedInputStream;)V

    invoke-static {v2}, Lms/bz/bd/c/Pgl/pblo;->d(Ljava/io/DataOutputStream;)V

    if-eqz v13, :cond_b

    :try_start_19
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_6

    goto :goto_c

    :catch_6
    new-array v0, v8, [B

    fill-array-data v0, :array_11

    const-wide/16 v2, 0x0

    const-string v4, "a70cb4"

    const v5, 0x1000001

    const/4 v6, 0x0

    move-object/from16 p6, v0

    move-wide/from16 p3, v2

    move-object/from16 p5, v4

    const p1, 0x1000001

    const/16 p2, 0x0

    invoke-static/range {p1 .. p6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    :goto_c
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v9

    aput-object v12, v2, v7

    return-object v2

    :goto_d
    move-object v2, v12

    move-object v12, v3

    :goto_e
    invoke-static {v12}, Lms/bz/bd/c/Pgl/pblo;->c(Ljava/io/BufferedInputStream;)V

    invoke-static {v2}, Lms/bz/bd/c/Pgl/pblo;->d(Ljava/io/DataOutputStream;)V

    if-eqz v13, :cond_c

    :try_start_1a
    invoke-virtual {v13}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_7

    goto :goto_f

    :catch_7
    new-array v2, v8, [B

    fill-array-data v2, :array_12

    const-wide/16 v3, 0x0

    const-string v5, "9f97da"

    const v6, 0x1000001

    const/4 v7, 0x0

    move-object/from16 p6, v2

    move-wide/from16 p3, v3

    move-object/from16 p5, v5

    const p1, 0x1000001

    const/16 p2, 0x0

    invoke-static/range {p1 .. p6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    :goto_f
    throw v0

    nop

    :array_0
    .array-data 1
        0x13t
        0x1bt
        0x76t
    .end array-data

    :array_1
    .array-data 1
        0x9t
        0x39t
        0x11t
        0x46t
        0x1dt
        0x30t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x63t
        0x2bt
        0x5ft
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x69t
        0x4ft
        0x19t
        0x5ct
        0x2dt
        0x25t
        0x4ct
        0x6ct
        0x3dt
    .end array-data

    nop

    :array_4
    .array-data 1
        0x5et
        0x3ft
        0x40t
        0x51t
        0x4bt
        0x3t
        0x6bt
        0x10t
        0x71t
        0x60t
    .end array-data

    nop

    :array_5
    .array-data 1
        0x1dt
        0x27t
        0x44t
        0x54t
        0x45t
        0x7t
        0x3dt
        0x12t
        0x6dt
        0x76t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x51t
        0x22t
        0x55t
        0x47t
        0x7ft
        0x26t
        0x6ft
        0x1bt
        0x66t
        0x2bt
        0x5et
        0x8t
        0x72t
        0x66t
        0x70t
    .end array-data

    :array_7
    .array-data 1
        0xbt
        0x38t
        0x19t
        0x3t
        0xet
        0x78t
        0x2et
        0x59t
        0x1t
        0x2at
        0x38t
        0x32t
    .end array-data

    :array_8
    .array-data 1
        0x24t
        0x77t
        0x5t
        0x41t
        0x52t
        0x76t
        0x36t
        0x50t
        0x3et
        0x66t
        0x2bt
        0x28t
        0x1at
        0x4et
        0x4ft
        0x70t
        0x23t
        0x9t
        0x24t
        0x7dt
        0x37t
        0x62t
        0x14t
        0x40t
    .end array-data

    :array_9
    .array-data 1
        0x56t
        0x69t
        0x1et
        0x1et
        0x3t
        0x2bt
    .end array-data

    nop

    :array_a
    .array-data 1
        0x3bt
        0x30t
        0x3t
        0x53t
        0x53t
        0x7dt
        0x34t
        0x1ft
        0x36t
        0x39t
        0x6dt
        0x26t
    .end array-data

    :array_b
    .array-data 1
        0x30t
        0x7bt
        0x53t
        0x56t
        0x44t
        0x60t
        0x3ft
        0x4t
        0x70t
        0x63t
        0x3bt
        0x22t
        0xat
        0x56t
        0x8t
        0x75t
    .end array-data

    :array_c
    .array-data 1
        0x43t
        0x1ft
        0x25t
        0x77t
    .end array-data

    :array_d
    .array-data 1
        0x3bt
        0x76t
        0x4t
        0x3t
        0x11t
        0x7et
        0x3et
        0x1ft
        0x3bt
        0x37t
    .end array-data

    nop

    :array_e
    .array-data 1
        0x35t
        0x68t
        0x48t
        0x28t
        0x5t
        0x35t
        0x66t
    .end array-data

    :array_f
    .array-data 1
        0x67t
        0x6ct
        0x12t
        0x28t
        0x5t
        0x32t
    .end array-data

    nop

    :array_10
    .array-data 1
        0x3dt
        0x7dt
        0x55t
        0x54t
        0x41t
        0x22t
        0x38t
        0x14t
        0x6at
        0x60t
    .end array-data

    nop

    :array_11
    .array-data 1
        0x63t
        0x3dt
        0x40t
        0x28t
        0x55t
        0x32t
        0x30t
    .end array-data

    :array_12
    .array-data 1
        0x3bt
        0x6ct
        0x49t
        0x7ct
        0x53t
        0x67t
        0x68t
    .end array-data
.end method
