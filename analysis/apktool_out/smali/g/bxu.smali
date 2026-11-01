.class public final Lg/bxu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bxu;->a:Landroid/content/Context;

    iput-object p2, p0, Lg/bxu;->b:Ljava/lang/String;

    iput-object p3, p0, Lg/bxu;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public call()Lg/caa;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lg/caa;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lg/bxu;->a:Landroid/content/Context;

    sget-object v1, Lg/buj;->g:Lg/eie;

    if-nez v1, :cond_1

    const-class v2, Lg/eie;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lg/buj;->g:Lg/eie;

    if-nez v1, :cond_0

    new-instance v1, Lg/eie;

    invoke-static {v0}, Lg/buj;->ak(Landroid/content/Context;)Lg/fnq;

    move-result-object v0

    new-instance v3, Lg/bli;

    const/16 v4, 0xe

    invoke-direct {v3, v4}, Lg/bli;-><init>(I)V

    invoke-direct {v1, v0, v3}, Lg/eie;-><init>(Lg/fnq;Lg/bli;)V

    sput-object v1, Lg/buj;->g:Lg/eie;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v2

    :cond_1
    move-object v3, v1

    goto :goto_2

    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :goto_2
    iget-object v4, p0, Lg/bxu;->a:Landroid/content/Context;

    iget-object v5, p0, Lg/bxu;->b:Ljava/lang/String;

    iget-object v8, p0, Lg/bxu;->c:Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v8, :cond_6

    iget-object v2, v3, Lg/eie;->g:Ljava/lang/Object;

    check-cast v2, Lg/fnq;

    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Lg/fnq;->n()Ljava/io/File;

    move-result-object v7

    sget-object v9, Lg/cgh;->dq:Lg/cgh;

    invoke-static {v5, v9, v0}, Lg/fnq;->j(Ljava/lang/String;Lg/cgh;Z)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v7, v10}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_3

    :cond_2
    new-instance v6, Ljava/io/File;

    invoke-virtual {v2}, Lg/fnq;->n()Ljava/io/File;

    move-result-object v2

    sget-object v7, Lg/cgh;->d:Lg/cgh;

    invoke-static {v5, v7, v0}, Lg/fnq;->j(Ljava/lang/String;Lg/cgh;Z)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v2, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v1

    :goto_3
    if-nez v6, :cond_4

    :goto_4
    move-object v6, v1

    goto :goto_5

    :cond_4
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    const-string v10, ".zip"

    invoke-virtual {v7, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    sget-object v9, Lg/cgh;->d:Lg/cgh;

    :cond_5
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    sget-object v6, Lg/hbp;->a:Lg/ckf;

    new-instance v6, Landroid/util/Pair;

    invoke-direct {v6, v9, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :catch_0
    nop

    goto :goto_4

    :goto_5
    if-nez v6, :cond_7

    :cond_6
    move-object v2, v1

    goto :goto_7

    :cond_7
    iget-object v2, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lg/cgh;

    iget-object v6, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, Ljava/io/InputStream;

    sget-object v7, Lg/cgh;->d:Lg/cgh;

    if-ne v2, v7, :cond_8

    new-instance v2, Ljava/util/zip/ZipInputStream;

    invoke-direct {v2, v6}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    :try_start_2
    invoke-static {v4, v2, v8}, Lg/ahz;->h(Landroid/content/Context;Ljava/util/zip/ZipInputStream;Ljava/lang/String;)Lg/caa;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    sget-object v7, Lg/ebx;->c:Lg/cqw;

    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_6

    :catch_1
    nop

    goto :goto_6

    :catch_2
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    sget-object v1, Lg/ebx;->c:Lg/cqw;

    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    throw v0

    :catch_4
    move-exception v0

    throw v0

    :cond_8
    invoke-static {v6, v8}, Lg/ahz;->i(Ljava/io/InputStream;Ljava/lang/String;)Lg/caa;

    move-result-object v6

    :goto_6
    iget-object v2, v6, Lg/caa;->a:Ljava/lang/Object;

    if-eqz v2, :cond_6

    check-cast v2, Lg/cgf;

    :goto_7
    if-eqz v2, :cond_9

    new-instance v0, Lg/caa;

    invoke-direct {v0, v2}, Lg/caa;-><init>(Ljava/lang/Object;)V

    goto :goto_c

    :cond_9
    sget-object v2, Lg/hbp;->a:Lg/ckf;

    const-string v2, "LottieFetchResult close failed "

    :try_start_5
    invoke-static {v5}, Lg/bli;->s(Ljava/lang/String;)Lg/crd;

    move-result-object v1

    iget-object v6, v1, Lg/crd;->d:Ljava/lang/Object;

    check-cast v6, Ljava/net/HttpURLConnection;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    invoke-virtual {v6}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v7

    div-int/lit8 v7, v7, 0x64
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    const/4 v9, 0x2

    if-ne v7, v9, :cond_a

    const/4 v0, 0x1

    goto :goto_8

    :catch_5
    nop

    :cond_a
    :goto_8
    if-eqz v0, :cond_c

    move-object v0, v6

    :try_start_7
    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v3 .. v8}, Lg/eie;->s(Landroid/content/Context;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lg/caa;

    move-result-object v3

    iget-object v0, v3, Lg/caa;->a:Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :goto_9
    :try_start_8
    invoke-virtual {v1}, Lg/crd;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    :cond_b
    :goto_a
    move-object v0, v3

    goto :goto_c

    :catch_6
    move-exception v0

    invoke-static {v2, v0}, Lg/hbp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    :catchall_2
    move-exception v0

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto :goto_d

    :catch_7
    move-exception v0

    goto :goto_b

    :cond_c
    :try_start_9
    new-instance v3, Lg/caa;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v1}, Lg/crd;->o()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v0}, Lg/caa;-><init>(Ljava/lang/Throwable;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_9

    :goto_b
    :try_start_a
    new-instance v3, Lg/caa;

    invoke-direct {v3, v0}, Lg/caa;-><init>(Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v1, :cond_b

    :try_start_b
    invoke-virtual {v1}, Lg/crd;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_6

    goto :goto_a

    :goto_c
    iget-object v1, p0, Lg/bxu;->c:Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v2, v0, Lg/caa;->a:Ljava/lang/Object;

    if-eqz v2, :cond_d

    sget-object v3, Lg/cy;->a:Lg/cy;

    check-cast v2, Lg/cgf;

    invoke-virtual {v3, v1, v2}, Lg/cy;->c(Ljava/lang/String;Lg/cgf;)V

    :cond_d
    return-object v0

    :goto_d
    if-eqz v0, :cond_e

    :try_start_c
    invoke-virtual {v0}, Lg/crd;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_e

    :catch_8
    move-exception v0

    invoke-static {v2, v0}, Lg/hbp;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    :goto_e
    throw v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lg/bxu;->call()Lg/caa;

    move-result-object v0

    return-object v0
.end method
