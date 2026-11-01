.class public final Lcom/bytedance/pangle/f/a/d;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/io/File;)Lcom/bytedance/pangle/f/a/e;
    .locals 13

    const-string v0, "Zeus/install_pangle"

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " not exists!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/bytedance/pangle/util/g;->a(Ljava/util/zip/ZipFile;)V

    return-object v2

    :catchall_0
    move-exception v3

    move-object v4, v2

    move-object v5, v4

    goto/16 :goto_5

    :cond_0
    :try_start_1
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v4, "AndroidManifest.xml"

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v4, "\u6ca1\u6709\u627e\u5230AndroidManifest.xml entry"

    invoke-static {v0, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lcom/bytedance/pangle/util/g;->a(Ljava/util/zip/ZipFile;)V

    return-object v2

    :catchall_1
    move-exception v4

    move-object v5, v4

    move-object v4, v3

    move-object v3, v5

    move-object v5, v2

    goto/16 :goto_5

    :cond_1
    :try_start_3
    new-instance v5, Lcom/bytedance/pangle/f/a/a;

    invoke-direct {v5}, Lcom/bytedance/pangle/f/a/a;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/a;->a()V

    if-eqz v4, :cond_2

    new-instance v6, Lcom/bytedance/pangle/f/a/b;

    invoke-direct {v6, v4}, Lcom/bytedance/pangle/f/a/b;-><init>(Ljava/io/InputStream;)V

    iput-object v6, v5, Lcom/bytedance/pangle/f/a/a;->b:Lcom/bytedance/pangle/f/a/b;

    goto :goto_0

    :catchall_2
    move-exception v4

    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    goto/16 :goto_5

    :cond_2
    :goto_0
    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/a;->b()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_3

    const-string v4, "\u5df2\u8fbe\u5230END_DOCUMENT"

    invoke-static {v0, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/a;->a()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    invoke-static {v3}, Lcom/bytedance/pangle/util/g;->a(Ljava/util/zip/ZipFile;)V

    return-object v2

    :cond_3
    const/4 v6, 0x2

    if-ne v4, v6, :cond_2

    :try_start_6
    iget v4, v5, Lcom/bytedance/pangle/f/a/a;->a:I

    const/4 v7, -0x1

    if-eq v4, v6, :cond_4

    const/4 v4, -0x1

    goto :goto_1

    :cond_4
    iget-object v4, v5, Lcom/bytedance/pangle/f/a/a;->c:[I

    array-length v4, v4

    div-int/lit8 v4, v4, 0x5

    :goto_1
    move-object v8, v2

    move-object v9, v8

    const/4 v6, 0x0

    :goto_2
    if-eq v6, v4, :cond_7

    const-string v10, "versionCode"

    invoke-virtual {v5, v6}, Lcom/bytedance/pangle/f/a/a;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-static {v5, v6}, Lcom/bytedance/pangle/f/a/d;->a(Lcom/bytedance/pangle/f/a/a;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    :cond_5
    const-string v10, "package"

    invoke-virtual {v5, v6}, Lcom/bytedance/pangle/f/a/a;->a(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-static {v5, v6}, Lcom/bytedance/pangle/f/a/d;->a(Lcom/bytedance/pangle/f/a/a;I)Ljava/lang/String;

    move-result-object v9
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :cond_6
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    :try_start_7
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_4

    :catchall_4
    nop

    const/4 v4, -0x1

    :goto_4
    if-ne v4, v7, :cond_8

    :try_start_8
    const-string v4, "versionCode\u83b7\u53d6\u5931\u8d25:"

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/a;->a()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :catchall_5
    invoke-static {v3}, Lcom/bytedance/pangle/util/g;->a(Ljava/util/zip/ZipFile;)V

    return-object v2

    :cond_8
    :try_start_a
    new-instance v6, Lcom/bytedance/pangle/f/a/e;

    invoke-direct {v6, v9, v4}, Lcom/bytedance/pangle/f/a/e;-><init>(Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/a;->a()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :catchall_6
    invoke-static {v3}, Lcom/bytedance/pangle/util/g;->a(Ljava/util/zip/ZipFile;)V

    return-object v6

    :goto_5
    :try_start_c
    invoke-static {}, Lcom/bytedance/pangle/Zeus;->getAppApplication()Landroid/app/Application;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0, v1}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-nez p0, :cond_a

    const-string p0, "packageArchiveInfo == null"

    invoke-static {v0, p0, v3}, Lcom/bytedance/pangle/log/ZeusLogger;->errReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_8

    if-eqz v5, :cond_9

    :try_start_d
    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/a;->a()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_7

    :catchall_7
    :cond_9
    invoke-static {v4}, Lcom/bytedance/pangle/util/g;->a(Ljava/util/zip/ZipFile;)V

    return-object v2

    :catchall_8
    move-exception p0

    goto :goto_6

    :cond_a
    :try_start_e
    new-instance v0, Lcom/bytedance/pangle/f/a/e;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-direct {v0, v1, p0}, Lcom/bytedance/pangle/f/a/e;-><init>(Ljava/lang/String;I)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_8

    if-eqz v5, :cond_b

    :try_start_f
    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/a;->a()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_9

    :catchall_9
    :cond_b
    invoke-static {v4}, Lcom/bytedance/pangle/util/g;->a(Ljava/util/zip/ZipFile;)V

    return-object v0

    :goto_6
    if-eqz v5, :cond_c

    :try_start_10
    invoke-virtual {v5}, Lcom/bytedance/pangle/f/a/a;->a()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_a

    :catchall_a
    :cond_c
    invoke-static {v4}, Lcom/bytedance/pangle/util/g;->a(Ljava/util/zip/ZipFile;)V

    throw p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    ushr-int/lit8 p0, p0, 0x18

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const-string p0, "android:"

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static a(Lcom/bytedance/pangle/f/a/a;I)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/bytedance/pangle/f/a/a;->b(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/bytedance/pangle/f/a/a;->c(I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, p1}, Lcom/bytedance/pangle/f/a/a;->d(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x1

    const/4 p1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {v1}, Lcom/bytedance/pangle/f/a/d;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, p1

    aput-object v1, v2, p0

    const-string p0, "?%s%08X"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v3, 0x10

    if-lt v0, v3, :cond_2

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, p1

    aput-object v0, v2, p0

    const-string p0, "<0x%X, type 0x%02X>"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
