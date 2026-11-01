.class public Lcom/ss/android/socialbase/downloader/d/mn;
.super Ljava/lang/Object;


# instance fields
.field private final d:Ljava/lang/String;

.field private final dq:Landroid/database/sqlite/SQLiteDatabase;

.field private ia:Landroid/database/sqlite/SQLiteStatement;

.field private iw:Landroid/database/sqlite/SQLiteStatement;

.field private mn:Landroid/database/sqlite/SQLiteStatement;

.field private final ox:[Ljava/lang/String;

.field private final p:[Ljava/lang/String;

.field private s:Landroid/database/sqlite/SQLiteStatement;


# direct methods
.method public constructor <init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->dq:Landroid/database/sqlite/SQLiteDatabase;

    iput-object p2, p0, Lcom/ss/android/socialbase/downloader/d/mn;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/ss/android/socialbase/downloader/d/mn;->ox:[Ljava/lang/String;

    iput-object p4, p0, Lcom/ss/android/socialbase/downloader/d/mn;->p:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Landroid/database/sqlite/SQLiteStatement;
    .locals 2

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->mn:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->p:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/downloader/kk/kk;->dq(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->dq:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->mn:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->mn:Landroid/database/sqlite/SQLiteStatement;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->mn:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->mn:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public dq()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->s:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    const-string v0, "INSERT INTO "

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/d/mn;->ox:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/kk/kk;->dq(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->dq:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->s:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->s:Landroid/database/sqlite/SQLiteStatement;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->s:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->s:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public ox()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->iw:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->ox:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/d/mn;->p:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/kk/kk;->dq(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->dq:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->iw:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->iw:Landroid/database/sqlite/SQLiteStatement;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->iw:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->iw:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method

.method public p()Landroid/database/sqlite/SQLiteStatement;
    .locals 3

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->ia:Landroid/database/sqlite/SQLiteStatement;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->ox:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/d/mn;->p:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/kk/kk;->d(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->dq:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->ia:Landroid/database/sqlite/SQLiteStatement;

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->ia:Landroid/database/sqlite/SQLiteStatement;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/d/mn;->ia:Landroid/database/sqlite/SQLiteStatement;

    if-eq v1, v0, :cond_1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_2

    :goto_1
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/d/mn;->ia:Landroid/database/sqlite/SQLiteStatement;

    return-object v0
.end method
