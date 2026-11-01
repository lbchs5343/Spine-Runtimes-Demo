.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/no/dq/dq/ox;


# annotations
.annotation runtime Lcom/bytedance/sdk/component/no/d/d;
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "material_meta"
    .end annotation
.end field

.field private dq:Landroid/content/Context;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "context"
    .end annotation
.end field

.field private ia:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "cancel_event"
    .end annotation
.end field

.field private iw:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "confirm_event"
    .end annotation
.end field

.field private mn:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "deny_event"
    .end annotation
.end field

.field private ox:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "ad_id"
    .end annotation
.end field

.field private p:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "permission_popup_listener"
    .end annotation
.end field

.field private s:Ljava/lang/String;
    .annotation runtime Lcom/bytedance/sdk/component/no/d/dq;
        dq = "app_manage_model"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->iw:Ljava/lang/String;

    return-object p0
.end method

.method private dq()Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;)V

    return-object v0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;)Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->p:Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->dq(Ljava/lang/String;)V

    return-void
.end method

.method private dq(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "material_meta"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "context"

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->dq:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/bytedance/sdk/component/no/dq/d$dq;

    invoke-direct {v1, p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/component/no/dq/d$dq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq(Ljava/util/Map;)Lcom/bytedance/sdk/component/no/dq/d$dq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/no/dq/d$dq;->dq()Lcom/bytedance/sdk/component/no/dq/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/no/dq/d;->dq()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->mn:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->ia:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public dq(Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/component/no/dq/dq;)Z
    .locals 2
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

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->ox:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->dq()Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/iw;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ir/iw$dq;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->dq:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->ox:Ljava/lang/String;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/d/ox;->s:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/activity/base/TTDelegateActivity;->dq(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Lcom/bytedance/sdk/component/no/dq/dq;->dq(Ljava/util/Map;)V

    const/4 p1, 0x1

    return p1
.end method
