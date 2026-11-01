.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/d/d;


# instance fields
.field private iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

.field private mn:I

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/d;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->dq()V

    return-void
.end method

.method public static d(I)Z
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")Z"
        }
    .end annotation

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->mn:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->mn:I

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->mn:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "live_saas_param_interaction_type"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "event_tag"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/o;->r()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "dpa_tag"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nr()Lcom/bytedance/sdk/openadsdk/core/r/er;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/er;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_3

    const-string v3, "click_saas_action"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v2, :cond_4

    return v1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->ox(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    return-object p0
.end method

.method public static dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    :try_start_0
    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object p0

    check-cast p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->dq()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method private ox(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    if-eqz v0, :cond_1

    :try_start_0
    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->d()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->d()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw$1;

    invoke-direct {v2, p0, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->iw:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")I"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->dq()V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->po()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->mn:I

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->mn:I

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->mn:I

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/k;)V
    .locals 3

    :try_start_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq()Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "live_saas_param_interaction_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->mn:I

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/k;->dq()Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/iw;->s:Ljava/lang/String;

    return-void
.end method
