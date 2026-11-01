.class public Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;
.super Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient;


# static fields
.field private static final HTTP_TIME_OUT:I = 0xa

.field public static final JSON:Lcom/bytedance/sdk/component/d/dq/o;

.field private static mClient:Lcom/bytedance/sdk/component/d/dq/ig;


# instance fields
.field private mCall:Lcom/bytedance/sdk/component/d/dq/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/json"

    invoke-static {v0}, Lcom/bytedance/sdk/component/d/dq/o;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/o;

    move-result-object v0

    sput-object v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->JSON:Lcom/bytedance/sdk/component/d/dq/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mCall:Lcom/bytedance/sdk/component/d/dq/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/dq/d;->ox()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mCall:Lcom/bytedance/sdk/component/d/dq/d;

    invoke-interface {v0}, Lcom/bytedance/sdk/component/d/dq/d;->d()V

    :cond_0
    return-void
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/bytedance/sdk/component/d/dq/ig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/d/dq/ig;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/ig;->d()Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v3, v4, v2}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v2}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v2}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v1

    sput-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/bytedance/sdk/component/d/dq/ig;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object p1

    sget-object p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mCall:Lcom/bytedance/sdk/component/d/dq/d;

    new-instance p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork$1;

    invoke-direct {p2, p0, p3}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork$1;-><init>(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/d/dq/d;->dq(Lcom/bytedance/sdk/component/d/dq/ox;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public startTask(Ljava/lang/String;Ljava/util/Map;Lorg/json/JSONObject;ILcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lorg/json/JSONObject;",
            "I",
            "Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;",
            ")V"
        }
    .end annotation

    const-class v0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/bytedance/sdk/component/d/dq/ig;

    if-nez v1, :cond_0

    new-instance v1, Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/d/dq/ig;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/ig;->d()Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v3, v4, v2}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v2}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->ox(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v2}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->d(JLjava/util/concurrent/TimeUnit;)Lcom/bytedance/sdk/component/d/dq/ig$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/d/dq/ig$dq;->dq()Lcom/bytedance/sdk/component/d/dq/ig;

    move-result-object v1

    sput-object v1, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/bytedance/sdk/component/d/dq/ig;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Lcom/bytedance/sdk/component/d/dq/q$dq;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/d/dq/q$dq;-><init>()V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    move-result-object p1

    if-eqz p2, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    goto :goto_1

    :cond_1
    const/4 p2, 0x1

    if-ne p4, p2, :cond_2

    sget-object p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->JSON:Lcom/bytedance/sdk/component/d/dq/o;

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/component/d/dq/jy;->dq(Lcom/bytedance/sdk/component/d/dq/o;Ljava/lang/String;)Lcom/bytedance/sdk/component/d/dq/jy;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/component/d/dq/q$dq;->dq(Lcom/bytedance/sdk/component/d/dq/jy;)Lcom/bytedance/sdk/component/d/dq/q$dq;

    :cond_2
    sget-object p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mClient:Lcom/bytedance/sdk/component/d/dq/ig;

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/d/dq/q$dq;->d()Lcom/bytedance/sdk/component/d/dq/q;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/component/d/dq/ig;->dq(Lcom/bytedance/sdk/component/d/dq/q;)Lcom/bytedance/sdk/component/d/dq/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;->mCall:Lcom/bytedance/sdk/component/d/dq/d;

    new-instance p2, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork$2;

    invoke-direct {p2, p0, p5}, Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork$2;-><init>(Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLHTTPNetwork;Lcom/bykv/vk/component/ttvideo/mediakit/net/AVMDLNetClient$CompletionListener;)V

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/component/d/dq/d;->dq(Lcom/bytedance/sdk/component/d/dq/ox;)V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
