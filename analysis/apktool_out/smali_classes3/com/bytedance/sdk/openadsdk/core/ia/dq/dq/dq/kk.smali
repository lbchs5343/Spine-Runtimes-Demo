.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

.field private ia:Lcom/bytedance/sdk/component/no/dq/dq;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/r/io;

.field private mn:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private ox:Landroid/content/Context;

.field private p:Z

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/io;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/io;",
            "Landroid/content/Context;",
            "Z",
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->iw:Lcom/bytedance/sdk/openadsdk/core/r/io;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->ox:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->p:Z

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->s:Ljava/lang/String;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->mn:Ljava/util/Map;

    iput-object p6, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->ia:Lcom/bytedance/sdk/component/no/dq/dq;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->mn:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    return-object p0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;)Lcom/bytedance/sdk/component/no/dq/dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->ia:Lcom/bytedance/sdk/component/no/dq/dq;

    return-object p0
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

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

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->ox:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    move-result-object v0

    iget-boolean v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->p:Z

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->d(Z)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;Ljava/util/Map;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o$dq;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/o;->dq(Z)V

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v2

    :cond_2
    return v1
.end method
