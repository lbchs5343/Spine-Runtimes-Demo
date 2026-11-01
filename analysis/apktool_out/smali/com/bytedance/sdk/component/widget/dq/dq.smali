.class public Lcom/bytedance/sdk/component/widget/dq/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/bytedance/sdk/component/widget/dq/dq;


# instance fields
.field private volatile dq:Lcom/bytedance/sdk/component/widget/dq/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/component/widget/dq/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/widget/dq/dq;->d:Lcom/bytedance/sdk/component/widget/dq/dq;

    if-nez v0, :cond_1

    const-class v0, Lcom/bytedance/sdk/component/widget/dq/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/widget/dq/dq;->d:Lcom/bytedance/sdk/component/widget/dq/dq;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/widget/dq/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/widget/dq/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/widget/dq/dq;->d:Lcom/bytedance/sdk/component/widget/dq/dq;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_2
    sget-object v0, Lcom/bytedance/sdk/component/widget/dq/dq;->d:Lcom/bytedance/sdk/component/widget/dq/dq;

    return-object v0
.end method


# virtual methods
.method public d()Lcom/bytedance/sdk/component/widget/dq/d;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/dq/dq;->dq:Lcom/bytedance/sdk/component/widget/dq/d;

    return-object v0
.end method
