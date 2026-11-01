.class Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ia/d/dq/dq/dq$dq;,
        Lcom/bytedance/sdk/component/ia/d/dq/dq/dq$d;
    }
.end annotation


# static fields
.field private static volatile ox:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private d:Landroid/content/Context;

.field private dq:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq$d;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;->d:Landroid/content/Context;

    iget-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq$d;

    if-nez p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq$d;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq$d;-><init>(Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq$d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method public static dq(Landroid/content/Context;)Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;->ox:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;->ox:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;->ox:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-object p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;->ox:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;

    return-object p0
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;->d:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public dq()Lcom/bytedance/sdk/component/ia/d/dq/dq/dq$d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/ia/d/dq/dq/dq;->dq:Lcom/bytedance/sdk/component/ia/d/dq/dq/dq$d;

    return-object v0
.end method
