.class public Lcom/bytedance/msdk/core/iw/dq;
.super Ljava/lang/Object;


# instance fields
.field private final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/p/dq/d/iw/dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/msdk/core/iw/dq;->dq:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;
    .locals 1

    invoke-static {}, Lcom/bytedance/msdk/iw/d/d;->dq()Lcom/bytedance/msdk/iw/d/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/msdk/iw/d/d;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object p1

    return-object p1
.end method

.method public d(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/p;->dq(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/core/iw/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    const-string v1, "buyerId"

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sdkInfo"

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->d(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p3

    :cond_0
    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/core/iw/dq;->d(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object p3

    if-nez p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/dq/dq/p;->d(Landroid/content/Context;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/iw/dq;->dq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    return-object p1
.end method

.method public dq(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/msdk/dq/s/p;->dq(Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/core/iw/dq;->dq(Ljava/lang/String;)Lcom/bytedance/msdk/api/p/dq/d/iw/dq;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v1}, Lcom/bytedance/msdk/api/p/dq/d/iw/dq;->dq(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/core/iw/dq;->d(Ljava/lang/String;)Lcom/bytedance/msdk/dq/dq/p;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v1

    :cond_1
    invoke-interface {p3, p1, p2}, Lcom/bytedance/msdk/dq/dq/p;->dq(Landroid/content/Context;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public dq()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/bytedance/msdk/api/p/dq/d/iw/dq;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/iw/dq;->dq:Ljava/util/Map;

    return-object v0
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/msdk/api/p/dq/d/iw/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/iw/dq;->dq:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
