.class public final Lg/cbk;
.super Lms/bz/bd/c/Pgl/pblb$pgla;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8

    sget-object p1, Lms/bz/bd/c/Pgl/j1;->d:Ljava/lang/String;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-static {}, Lms/bz/bd/c/Pgl/j1;->k()Ljava/util/HashMap;

    move-result-object p2

    sget-object v0, Lms/bz/bd/c/Pgl/j1;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    new-instance v1, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v6, "bf3c13"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v2, 0x18

    :try_start_3
    new-array v7, v2, [B

    fill-array-data v7, :array_0

    const v2, 0x1000001

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    invoke-static/range {v2 .. v7}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v2, Lms/bz/bd/c/Pgl/j1;->h:Ljava/io/FileFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    array-length v1, v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    const/4 v1, -0x1

    :goto_0
    :try_start_4
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    sget-object v0, Lms/bz/bd/c/Pgl/j1;->d:Ljava/lang/String;

    invoke-static {p2, v0}, Lms/bz/bd/c/Pgl/j1;->m(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lms/bz/bd/c/Pgl/j1;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lms/bz/bd/c/Pgl/j1;->g:Ljava/lang/String;

    invoke-static {p2, v0}, Lms/bz/bd/c/Pgl/j1;->m(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lms/bz/bd/c/Pgl/j1;->c:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lms/bz/bd/c/Pgl/j1;->j:Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const-string v5, "1bdf69"

    const/16 v7, 0x35

    :try_start_5
    new-array v6, v7, [B

    fill-array-data v6, :array_1

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lms/bz/bd/c/Pgl/j1;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lms/bz/bd/c/Pgl/j1;->a:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const-string v5, "47a54c"

    :try_start_6
    new-array v6, v7, [B

    fill-array-data v6, :array_2

    const v1, 0x1000001

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lms/bz/bd/c/Pgl/j1;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lms/bz/bd/c/Pgl/j1;->i:Ljava/lang/String;

    invoke-static {p2, v0}, Lms/bz/bd/c/Pgl/j1;->m(Ljava/util/HashMap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sget-object v0, Lms/bz/bd/c/Pgl/j1;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_1

    :catchall_1
    nop

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    new-array v5, p1, [B

    fill-array-data v5, :array_3

    const-wide/16 v2, 0x0

    const-string v4, "813803"

    const v0, 0x1000001

    const/4 v1, 0x0

    invoke-static/range {v0 .. v5}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :array_0
    .array-data 1
        0x3ct
        0x77t
        0x59t
        0x4t
        0x41t
        0x20t
        0x64t
        0x51t
        0x6bt
        0x30t
        0x76t
        0x77t
        0xft
        0x4t
        0x17t
        0x37t
        0x75t
        0x42t
        0x6ft
        0x7ct
        0x70t
        0x74t
        0x55t
        0x58t
    .end array-data

    :array_1
    .array-data 1
        0x6ft
        0x73t
        0xet
        0x1t
        0x46t
        0x2at
        0x37t
        0x55t
        0x3ct
        0x35t
        0x25t
        0x73t
        0x58t
        0x1t
        0x10t
        0x3dt
        0x26t
        0x46t
        0x38t
        0x79t
        0x23t
        0x70t
        0x2t
        0x5dt
        0xat
        0x3et
        0x27t
        0x13t
        0x7at
        0x35t
        0x30t
        0x75t
        0x11t
        0x0t
        0xct
        0x3ft
        0x7dt
        0x40t
        0x25t
        0x23t
        0x29t
        0x6et
        0x11t
        0x1dt
        0x36t
        0x23t
        0x33t
        0x5bt
        0xat
        0x30t
        0x32t
        0x65t
        0x6t
    .end array-data

    nop

    :array_2
    .array-data 1
        0x6at
        0x26t
        0xbt
        0x52t
        0x44t
        0x70t
        0x32t
        0x0t
        0x39t
        0x66t
        0x20t
        0x26t
        0x5dt
        0x52t
        0x12t
        0x67t
        0x23t
        0x13t
        0x3dt
        0x2at
        0x26t
        0x25t
        0x7t
        0xet
        0x8t
        0x64t
        0x22t
        0x46t
        0x7ft
        0x66t
        0x35t
        0x20t
        0x14t
        0x53t
        0xet
        0x65t
        0x78t
        0x15t
        0x20t
        0x70t
        0x2ct
        0x3bt
        0x14t
        0x4et
        0x34t
        0x79t
        0x3et
        0x18t
        0xft
        0x63t
        0x37t
        0x30t
        0x3t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x32t
        0x2et
    .end array-data
.end method
