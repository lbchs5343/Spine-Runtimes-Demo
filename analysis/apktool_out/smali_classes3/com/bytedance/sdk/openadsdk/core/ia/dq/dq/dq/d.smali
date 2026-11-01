.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private dq:Landroid/content/Context;

.field private iw:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Ljava/lang/String;

.field private p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

.field private s:Lcom/bytedance/sdk/component/no/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/component/no/dq/dq;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->dq:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->ox:Ljava/lang/String;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->s:Lcom/bytedance/sdk/component/no/dq/dq;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->iw:Ljava/util/Map;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->iw:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;)Lcom/bytedance/sdk/component/no/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->s:Lcom/bytedance/sdk/component/no/dq/dq;

    return-object p0
.end method


# virtual methods
.method public dq(Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->p:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->dq:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->ox:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d$1;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;)I

    return v2
.end method
