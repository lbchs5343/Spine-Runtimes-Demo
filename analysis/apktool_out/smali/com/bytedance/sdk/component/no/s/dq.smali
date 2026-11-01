.class public Lcom/bytedance/sdk/component/no/s/dq;
.super Ljava/lang/Object;


# static fields
.field private static d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static volatile dq:Lcom/bytedance/sdk/component/no/s/dq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/no/s/dq;->d:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/component/no/s/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/no/s/dq;->dq:Lcom/bytedance/sdk/component/no/s/dq;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/no/s/dq;->dq:Lcom/bytedance/sdk/component/no/s/dq;

    return-object v0

    :cond_0
    const-class v0, Lcom/bytedance/sdk/component/no/s/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/no/s/dq;->dq:Lcom/bytedance/sdk/component/no/s/dq;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/component/no/s/dq;->dq:Lcom/bytedance/sdk/component/no/s/dq;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/component/no/s/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/no/s/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/no/s/dq;->dq:Lcom/bytedance/sdk/component/no/s/dq;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dq(Ljava/lang/String;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/bytedance/sdk/component/no/s/dq;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/component/no/s/dq;->d:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
