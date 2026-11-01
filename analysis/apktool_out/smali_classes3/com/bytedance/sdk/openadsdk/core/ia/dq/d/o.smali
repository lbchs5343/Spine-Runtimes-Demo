.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/no/dq/dq/ox;


# annotations
.annotation runtime Lcom/bytedance/sdk/component/no/d/d;
.end annotation


# instance fields
.field private d:Landroid/content/Context;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "context"
    .end annotation
.end field

.field private dq:Lcom/bytedance/sdk/openadsdk/core/r/j;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "material_meta"
    .end annotation
.end field

.field private iw:Landroid/view/View;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "view"
    .end annotation
.end field

.field private mn:Ljava/util/Map;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "handle_chain_data"
    .end annotation

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
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "event_tag"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "dpa_tag"
    .end annotation
.end field

.field private s:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "live_saas_interaction_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->s:I

    return-void
.end method

.method private dq()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/component/no/dq/dq;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->dq()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->ox:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->p:Ljava/lang/String;

    invoke-direct {v1, p1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->s:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->dq(I)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->iw:Landroid/view/View;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->dq(Landroid/view/View;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->mn:Ljava/util/Map;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->d(Ljava/util/Map;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->ox:Ljava/lang/String;

    move-object v4, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/component/no/dq/dq;Ljava/util/Map;Ljava/lang/String;)V

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;

    move-object v7, v4

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->d:Landroid/content/Context;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/o;->ox:Ljava/lang/String;

    move-object v8, v3

    move-object v3, v0

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)V

    move-object v4, v7

    move-object v3, v8

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/d;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
