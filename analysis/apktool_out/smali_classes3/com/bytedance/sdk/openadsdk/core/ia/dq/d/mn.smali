.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;
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

.field protected dq:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "convert_from_landing_page"
    .end annotation
.end field

.field private ia:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "start_download_listener"
    .end annotation
.end field

.field private ig:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "is_direct_download"
    .end annotation
.end field

.field private iw:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "event_tag"
    .end annotation
.end field

.field private kk:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "is_show_download_dialog"
    .end annotation
.end field

.field private mn:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_url"
    .end annotation
.end field

.field private mp:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "download_dialog_listener"
    .end annotation
.end field

.field private no:I
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "dynamic_download_dialog_type"
    .end annotation
.end field

.field private o:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "is_from_new_click_event"
    .end annotation
.end field

.field private ox:Lcom/bytedance/sdk/openadsdk/core/r/j;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "material_meta"
    .end annotation
.end field

.field private p:Z
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "is_app_market_convert"
    .end annotation
.end field

.field private s:Lcom/bytedance/sdk/openadsdk/core/r/ox;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "app_manage_model"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->kk:Z

    return-void
.end method

.method private dq()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->p:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/s;-><init>()V

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->dq:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/p;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/p;-><init>()V

    return-object v0

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/d;-><init>()V

    return-object v0
.end method


# virtual methods
.method public dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
    .locals 5
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

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->d:Landroid/content/Context;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->ox:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->ig:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->ox(Z)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->kk:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Z)V

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->no:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(I)V

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->o:Z

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->mp:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/dq;)V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->dq()Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/dq;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->p(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->d(Ljava/util/Map;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->s:Lcom/bytedance/sdk/openadsdk/core/r/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->iw:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->mn:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/mn;->ia:Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;

    invoke-virtual {p1, v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ox/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;)V

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    return v1
.end method
