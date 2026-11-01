.class public final Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;
.super Ljava/lang/Object;


# static fields
.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field private static final dq:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;->dq:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;->d:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/ia;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/mn;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/dq;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static d(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;
    .locals 3

    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;->dq:Ljava/util/Map;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/ia;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/ia;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/mn;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/mn;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/kk;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/dq;

    invoke-direct {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/dq;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p0, :cond_0

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;-><init>()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    if-nez v0, :cond_1

    new-instance p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;-><init>()V

    return-object p0

    :cond_1
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Landroid/content/Context;)V

    return-object v0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;I)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    move-result-object p0

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;I)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;->d:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    :cond_1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {p2, p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p2

    :catchall_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/p;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    move-result-object p0

    return-object p0
.end method
