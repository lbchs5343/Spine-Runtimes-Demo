.class public Lcom/bytedance/msdk/s/dq/mn$dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/msdk/s/dq/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "dq"
.end annotation


# instance fields
.field private d:Landroid/database/sqlite/SQLiteDatabase;

.field final synthetic dq:Lcom/bytedance/msdk/s/dq/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/s/dq/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/s/dq/mn$dq;->dq:Lcom/bytedance/msdk/s/dq/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/msdk/s/dq/mn$dq;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-void
.end method

.method private d()V
    .locals 5

    :try_start_0
    invoke-static {}, Lcom/bytedance/msdk/s/dq/mn;->d()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/bytedance/msdk/s/dq/mn$dq;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    new-instance v1, Lcom/bytedance/msdk/s/dq/ia;

    iget-object v2, p0, Lcom/bytedance/msdk/s/dq/mn$dq;->dq:Lcom/bytedance/msdk/s/dq/mn;

    invoke-static {v2}, Lcom/bytedance/msdk/s/dq/mn;->dq(Lcom/bytedance/msdk/s/dq/mn;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "tt_mediation_open_sdk.db"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/msdk/s/dq/ia;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/msdk/s/dq/mn$dq;->d:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->setLockingEnabled(Z)V

    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-direct {p0}, Lcom/bytedance/msdk/s/dq/mn$dq;->ox()Z

    return-void
.end method

.method private ox()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/s/dq/mn$dq;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->inTransaction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dq()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/s/dq/mn$dq;->d()V

    iget-object v0, p0, Lcom/bytedance/msdk/s/dq/mn$dq;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-object v0
.end method
