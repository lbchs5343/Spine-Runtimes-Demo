.class public Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/iw;


# static fields
.field public static final dq:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;


# instance fields
.field private volatile d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;->dq:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;

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

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/dq;

    invoke-direct {v0, p1, p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/component/ia/dq/iw;)V

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;->d:Landroid/database/sqlite/SQLiteDatabase;

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
    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq/d;->d:Landroid/database/sqlite/SQLiteDatabase;

    return-object p1
.end method

.method public dq()Ljava/lang/String;
    .locals 1

    const-string v0, "loghighpriority"

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ox()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    const-string v0, "logstats"

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    const-string v0, "logstatsbatch"

    return-object v0
.end method
