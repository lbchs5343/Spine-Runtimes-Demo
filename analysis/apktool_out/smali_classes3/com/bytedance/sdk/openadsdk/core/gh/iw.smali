.class public Lcom/bytedance/sdk/openadsdk/core/gh/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/ia/dq/iw;


# static fields
.field public static final dq:Lcom/bytedance/sdk/openadsdk/core/gh/iw;


# instance fields
.field private volatile d:Landroid/database/sqlite/SQLiteDatabase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/gh/iw;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/gh/iw;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/gh/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/gh/iw;

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

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/iw;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez p1, :cond_1

    const-class p1, Lcom/bytedance/sdk/openadsdk/core/gh/iw;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/iw;->d:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ia;->dq(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kk;->dq()Lcom/bytedance/sdk/openadsdk/core/kk$ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kk$ox;->dq()V

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kk$ox;->d()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/gh/iw;->d:Landroid/database/sqlite/SQLiteDatabase;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p1

    goto :goto_2

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/gh/iw;->d:Landroid/database/sqlite/SQLiteDatabase;

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
