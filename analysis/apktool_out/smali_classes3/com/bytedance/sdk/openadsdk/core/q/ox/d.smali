.class public Lcom/bytedance/sdk/openadsdk/core/q/ox/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;
    }
.end annotation


# instance fields
.field public d:J

.field public dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;",
            ">;"
        }
    .end annotation
.end field

.field public ox:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->ox:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->dq:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->d()V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->d:J

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->d:J

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/d$dq;->dq()J

    move-result-wide v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/d;->d:J

    return-void
.end method
