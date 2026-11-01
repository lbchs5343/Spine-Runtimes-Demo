.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/p;
.super Ljava/lang/Object;


# instance fields
.field private final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    return-void
.end method

.method private d(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    :try_start_1
    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/content/Context;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    invoke-virtual {p1, v5}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    aput-object v0, v1, v5

    invoke-virtual {p1, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    return-object v0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Z)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;

    invoke-direct {p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/o;-><init>()V

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Landroid/content/Context;)V

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    move-result-object p1

    :goto_0
    move-object p3, p1

    goto :goto_1

    :cond_1
    const/4 p3, 0x3

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;I)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    move-result-object p1

    goto :goto_0

    :goto_1
    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/ox;

    invoke-direct {p1, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;)V

    return-object p1
.end method


# virtual methods
.method public dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->d(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v0
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/p;Z)Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;
    .locals 11

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;

    invoke-direct {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/dq;

    invoke-direct {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class v3, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/dq;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;

    invoke-direct {v2, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class v4, Lcom/bytedance/sdk/openadsdk/core/d/dq/d;

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Z)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class v5, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;

    invoke-direct {v4, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class v6, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/kk;

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;

    invoke-direct {v5, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class v7, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/ox;

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;

    invoke-direct {v6, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class v8, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-direct {v7, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class v9, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-interface {v8, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v8, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-direct {v8, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class v10, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-interface {v9, v10, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v9, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;

    invoke-direct {v9, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class v10, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/s;

    invoke-interface {p3, v10, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq()Z

    move-result p3

    if-nez p3, :cond_0

    invoke-virtual {v0, v6}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    invoke-virtual {v0, v4}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    if-eqz p4, :cond_0

    new-instance p3, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;

    invoke-direct {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/p;->dq:Ljava/util/Map;

    const-class p2, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    :cond_0
    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/p/dq;->dq()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {v0, v5}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    invoke-virtual {v0, v9}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    :cond_1
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    invoke-virtual {v0, v8}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;)V

    return-object v0
.end method
