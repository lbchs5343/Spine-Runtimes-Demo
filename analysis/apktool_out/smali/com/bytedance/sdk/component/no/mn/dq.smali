.class public Lcom/bytedance/sdk/component/no/mn/dq;
.super Ljava/lang/Object;


# static fields
.field private static volatile d:Lcom/bytedance/sdk/component/no/mn/dq;


# instance fields
.field private dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/component/no/dq/dq/dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/no/mn/dq;->dq:Ljava/util/Map;

    return-void
.end method

.method public static dq()Lcom/bytedance/sdk/component/no/mn/dq;
    .locals 2

    sget-object v0, Lcom/bytedance/sdk/component/no/mn/dq;->d:Lcom/bytedance/sdk/component/no/mn/dq;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/no/mn/dq;->d:Lcom/bytedance/sdk/component/no/mn/dq;

    return-object v0

    :cond_0
    const-class v0, Lcom/bytedance/sdk/component/no/mn/dq;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/no/mn/dq;->d:Lcom/bytedance/sdk/component/no/mn/dq;

    if-eqz v1, :cond_1

    sget-object v1, Lcom/bytedance/sdk/component/no/mn/dq;->d:Lcom/bytedance/sdk/component/no/mn/dq;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/bytedance/sdk/component/no/mn/dq;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/no/mn/dq;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/no/mn/dq;->d:Lcom/bytedance/sdk/component/no/mn/dq;

    monitor-exit v0

    return-object v1

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/no/dq/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/component/no/mn/dq;->dq:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/no/dq/dq;Lcom/bytedance/sdk/component/no/p/dq;)V
    .locals 3

    iget-object p3, p0, Lcom/bytedance/sdk/component/no/mn/dq;->dq:Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/component/no/dq/dq/dq;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/no/dq/dq;->s()Lcom/bytedance/sdk/component/no/p/p;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/sdk/component/no/dq/d;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/component/no/s/dq;->dq()Lcom/bytedance/sdk/component/no/s/dq;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/component/no/s/dq;->dq(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    invoke-static {}, Lcom/bytedance/sdk/component/no/iw/dq;->dq()Lcom/bytedance/sdk/component/no/iw/dq;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/no/iw/dq;->dq(Lcom/bytedance/sdk/component/no/dq/dq/dq;)Lcom/bytedance/sdk/component/no/dq/dq/dq;

    move-result-object p1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/no/iw/dq;->dq(Ljava/lang/Object;Ljava/util/Map;)V

    :cond_2
    instance-of p3, p1, Lcom/bytedance/sdk/component/no/dq/dq/ox;

    if-eqz p3, :cond_3

    check-cast p1, Lcom/bytedance/sdk/component/no/dq/dq/ox;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p3, v0, p2}, Lcom/bytedance/sdk/component/no/dq/dq/ox;->dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z

    return-void

    :cond_3
    instance-of p3, p1, Lcom/bytedance/sdk/component/no/dq/dq/d;

    if-eqz p3, :cond_4

    check-cast p1, Lcom/bytedance/sdk/component/no/dq/dq/d;

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d()Ljava/util/Map;

    move-result-object p3

    invoke-virtual {p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, p3, v0, p2}, Lcom/bytedance/sdk/component/no/dq/dq/ox;->dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z

    :cond_4
    :goto_0
    return-void
.end method
