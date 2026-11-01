.class public Lcom/bytedance/msdk/s/no;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/iw;


# static fields
.field public static final dq:Lcom/bytedance/msdk/s/no;


# instance fields
.field private volatile d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/msdk/s/no;

    invoke-direct {v0}, Lcom/bytedance/msdk/s/no;-><init>()V

    sput-object v0, Lcom/bytedance/msdk/s/no;->dq:Lcom/bytedance/msdk/s/no;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    const-string v0, "adevent"

    return-object v0
.end method

.method public dq(Landroid/content/Context;)Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/s/no;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/msdk/s/no;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/bytedance/msdk/s/dq/iw;->dq(Landroid/content/Context;)Lcom/bytedance/msdk/s/dq/iw;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/s/dq/mn;->dq()Lcom/bytedance/msdk/s/dq/mn$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/msdk/s/dq/mn$dq;->dq()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/msdk/s/no;->d:Landroid/database/sqlite/SQLiteDatabase;

    const-string p1, "---------------DB CREATE  SUCCESS new------------"

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/ox;->dq(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/bytedance/msdk/s/no;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    const-string v0, "adevent_applog"

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
