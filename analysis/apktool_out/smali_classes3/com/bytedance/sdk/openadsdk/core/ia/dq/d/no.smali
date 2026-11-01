.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;
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

.field private ox:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "convert_from_landing_page"
    .end annotation
.end field

.field private p:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "event_tag"
    .end annotation
.end field

.field private s:Lorg/json/JSONObject;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "wc_miniapp_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private dq()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;->d:Landroid/content/Context;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;->s:Lorg/json/JSONObject;

    if-nez v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
    .locals 8
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

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;->dq()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    return v0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;->s:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/io;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/io;

    move-result-object v2

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;->d:Landroid/content/Context;

    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;->ox:Z

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;->p:Ljava/lang/String;

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/io;Landroid/content/Context;ZLjava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/no;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/kk;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v7, v6}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    :goto_0
    return v0
.end method
