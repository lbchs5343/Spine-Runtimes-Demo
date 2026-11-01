.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;
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

.field private ia:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "is_market_covert"
    .end annotation
.end field

.field private iw:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "convert_from_landing_page"
    .end annotation
.end field

.field private kk:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_adapter"
    .end annotation
.end field

.field private mn:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "convert_from_downloader"
    .end annotation
.end field

.field private no:Lcom/bytedance/sdk/openadsdk/core/video/d/d;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "pip_controller"
    .end annotation
.end field

.field private o:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "convert_tag"
    .end annotation
.end field

.field private ox:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "event_tag"
    .end annotation
.end field

.field private p:Lorg/json/JSONObject;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "deep_link"
    .end annotation
.end field

.field private s:Lorg/json/JSONObject;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "app_info"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
    .locals 6
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

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->s:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d;->d(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/p;

    move-result-object p1

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ia;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->d:Landroid/content/Context;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ia;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/p;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ia;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->ox:Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ia;->dq(Ljava/lang/String;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->ox:Ljava/lang/String;

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/r/fw;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->p:Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lcom/bytedance/sdk/openadsdk/core/r/fw;-><init>(Lorg/json/JSONObject;)V

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->d:Landroid/content/Context;

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/fw;Landroid/content/Context;)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->mn:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->d(Z)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->iw:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Z)V

    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->ia:Z

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->ox(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->kk:Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->o:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mp;->no:Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/ox;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method
