.class public final Lms/bz/bd/c/Pgl/pblj;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_1

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_0

    aget-object v7, v3, v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "f9bfa7"

    :try_start_1
    new-array v14, v6, [B

    const/16 v9, 0x38

    aput-byte v9, v14, v2

    const v9, 0x1000001

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    invoke-static/range {v9 .. v14}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, "23a9b2"

    :try_start_2
    new-array v15, v6, [B

    const/16 v6, 0x6c

    aput-byte v6, v15, v2

    const v10, 0x1000001

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    invoke-static/range {v10 .. v15}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v7, p0

    invoke-static {v7, v8, v6}, Lms/bz/bd/c/Pgl/pblj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    return v6

    :cond_1
    const/4 v0, 0x0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const/4 v0, 0x3

    new-array v8, v0, [B

    fill-array-data v8, :array_0

    const-wide/16 v5, 0x0

    const-string v7, "1cc9b5"

    const v3, 0x1000001

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return v2

    :array_0
    .array-data 1
        0x23t
        0x60t
        0x16t
    .end array-data
.end method

.method public static b()V
    .locals 7

    new-instance v0, Lms/bz/bd/c/Pgl/pblc;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pblc;-><init>()V

    const v1, 0x10001

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bz/bd/c/Pgl/pbld;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pbld;-><init>()V

    const v1, 0x10002

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bz/bd/c/Pgl/pble;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pble;-><init>()V

    const v1, 0x10003

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bz/bd/c/Pgl/pblf;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pblf;-><init>()V

    const v1, 0x10004

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bz/bd/c/Pgl/pblg;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pblg;-><init>()V

    const v1, 0x10005

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bz/bd/c/Pgl/pblh;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pblh;-><init>()V

    const v1, 0x10006

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bz/bd/c/Pgl/pbli;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pbli;-><init>()V

    const v1, 0x10007

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    new-instance v0, Lms/bz/bd/c/Pgl/pblp;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pblp;-><init>()V

    const v1, 0x30001

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    const v1, 0x30002

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    const v1, 0x30003

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    const/16 v0, 0x39

    new-array v6, v0, [B

    fill-array-data v6, :array_0

    const-wide/16 v3, 0x0

    const-string v5, "9bef1d"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    :try_start_0
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    goto :goto_1

    :catchall_0
    nop

    const/4 v5, 0x0

    :goto_1
    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    if-eqz v4, :cond_1

    new-instance v0, Lms/bz/bd/c/Pgl/pbln;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pbln;-><init>()V

    goto :goto_2

    :cond_1
    new-instance v0, Lms/bz/bd/c/Pgl/pbll;

    invoke-direct {v0}, Lms/bz/bd/c/Pgl/pbll;-><init>()V

    :goto_2
    const-class v1, Lms/bz/bd/c/Pgl/pblm;

    monitor-enter v1

    :try_start_1
    sput-object v0, Lms/bz/bd/c/Pgl/pblm;->g:Lms/bz/bd/c/Pgl/pblm;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    const v1, 0x20001

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    const v1, 0x20002

    invoke-static {v1, v0}, Lms/bz/bd/c/Pgl/pblb;->b(ILms/bz/bd/c/Pgl/pblb$pgla;)V

    const/16 v0, 0x19

    new-array v6, v0, [B

    fill-array-data v6, :array_1

    const-wide/16 v3, 0x0

    const-string v5, "179ca1"

    const v1, 0x1000001

    const/4 v2, 0x0

    invoke-static/range {v1 .. v6}, Lms/bz/bd/c/Pgl/pblk;->a(IIJLjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :array_0
    .array-data 1
        0x2bt
        0x6ft
        0x1bt
        0x5ct
        0xct
        0x6at
        0x2et
        0x46t
        0x30t
        0x37t
        0x26t
        0x63t
        0x13t
        0x5ct
        0x8t
        0x61t
        0x3bt
        0x4et
        0x23t
        0x39t
        0x3at
        0x6bt
        0x58t
        0x11t
        0x1t
        0x61t
        0x3ft
        0xdt
        0x27t
        0x32t
        0x23t
        0x6dt
        0x19t
        0x1ct
        0x7t
        0x67t
        0x35t
        0x51t
        0x7at
        0x6t
        0x2ft
        0x6ct
        0x25t
        0x36t
        0x25t
        0x5et
        0x35t
        0x4dt
        0x3dt
        0x22t
        0x27t
        0x72t
        0x23t
        0x6t
        0x7t
        0x7ft
        0x29t
    .end array-data

    nop

    :array_1
    .array-data 1
        0x25t
        0x23t
        0x4ft
        0x19t
        0x4at
        0xat
        0x3dt
        0x11t
        0x45t
        0x32t
        0x2et
        0x34t
        0x4dt
        0x12t
        0x4ct
        0x66t
        0x31t
        0x1at
        0x69t
        0x20t
        0x33t
        0x75t
        0x43t
        0x4t
        0x1et
    .end array-data
.end method
