.class public final Lg/abv;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/fxy;

.field public final b:Lg/egq;

.field public final c:[Z

.field public d:Z


# direct methods
.method public constructor <init>(Lg/fxy;Lg/egq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/abv;->a:Lg/fxy;

    iput-object p2, p0, Lg/abv;->b:Lg/egq;

    iget-boolean p2, p2, Lg/egq;->c:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x2

    new-array p1, p1, [Z

    :goto_0
    iput-object p1, p0, Lg/abv;->c:[Z

    return-void
.end method


# virtual methods
.method public final e(I)Lg/evq;
    .locals 6

    iget-object v0, p0, Lg/abv;->a:Lg/fxy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/abv;->d:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lg/abv;->b:Lg/egq;

    iget-object v1, v1, Lg/egq;->j:Lg/abv;

    invoke-static {v1, p0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance p1, Lg/goh;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lg/abv;->b:Lg/egq;

    iget-boolean v1, v1, Lg/egq;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/abv;->c:[Z

    invoke-static {v1}, Lg/bff;->d(Ljava/lang/Object;)V

    aput-boolean v2, v1, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    iget-object v1, p0, Lg/abv;->b:Lg/egq;

    iget-object v1, v1, Lg/egq;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v1, "file"

    invoke-static {p1, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v1, 0x0

    :try_start_3
    sget-object v3, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, Lg/dgz;

    new-instance v5, Lg/dme;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v3, v2, v5}, Lg/dgz;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_4
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    sget-object v3, Lg/aro;->a:Ljava/util/logging/Logger;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v4, Lg/dgz;

    new-instance p1, Lg/dme;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v4, v3, v2, p1}, Lg/dgz;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    :try_start_5
    new-instance p1, Lg/eqv;

    new-instance v1, Lg/fbl;

    invoke-direct {v1, v0, p0}, Lg/fbl;-><init>(Lg/fxy;Lg/abv;)V

    invoke-direct {p1, v4, v1}, Lg/eqv;-><init>(Lg/dgz;Lg/and;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit v0

    return-object p1

    :catch_1
    :try_start_6
    new-instance p1, Lg/goh;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit v0

    return-object p1

    :cond_2
    :try_start_7
    const-string p1, "Check failed."

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_2
    monitor-exit v0

    throw p1
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lg/abv;->a:Lg/fxy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/abv;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/abv;->b:Lg/egq;

    iget-object v1, v1, Lg/egq;->j:Lg/abv;

    invoke-static {v1, p0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lg/fxy;->ai(Lg/abv;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lg/abv;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lg/abv;->a:Lg/fxy;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lg/abv;->d:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lg/abv;->b:Lg/egq;

    iget-object v1, v1, Lg/egq;->j:Lg/abv;

    invoke-static {v1, p0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0, v2}, Lg/fxy;->ai(Lg/abv;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lg/abv;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string v1, "Check failed."

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    throw v1
.end method

.method public final h()V
    .locals 3

    iget-object v0, p0, Lg/abv;->b:Lg/egq;

    iget-object v1, v0, Lg/egq;->j:Lg/abv;

    invoke-static {v1, p0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lg/abv;->a:Lg/fxy;

    iget-boolean v2, v1, Lg/fxy;->m:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lg/fxy;->ai(Lg/abv;Z)V

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lg/egq;->e:Z

    :cond_1
    return-void
.end method
