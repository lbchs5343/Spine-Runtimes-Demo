.class public Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

.field private ia:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private iw:I

.field private mn:Landroid/view/View;

.field private ox:Landroid/content/Context;

.field private p:Ljava/lang/String;

.field private s:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->ox:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->p:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->s:Ljava/lang/String;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->d()V

    return-void
.end method

.method private d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->po()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->iw:I

    return-void

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->iw:I

    return-void
.end method

.method private d(I)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    :pswitch_0
    const/4 p1, 0x1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private dq()Z
    .locals 6

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->iw:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->iw:I

    invoke-direct {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->d(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->iw:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "live_saas_param_interaction_type"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string v2, "event_tag"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->s:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "dpa_tag"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->ia:Ljava/util/Map;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->ia:Ljava/util/Map;

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->mn:Landroid/view/View;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nr()Lcom/bytedance/sdk/openadsdk/core/r/er;

    move-result-object v4

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->ia:Ljava/util/Map;

    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/er;Ljava/util/Map;Ljava/util/Map;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->ox:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->ia:Ljava/util/Map;

    const-string v4, "click_saas_action"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-eqz v2, :cond_5

    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public d(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->ia:Ljava/util/Map;

    return-void
.end method

.method public dq(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->iw:I

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->mn:Landroid/view/View;

    return-void
.end method

.method public dq(Ljava/util/Map;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->dq()Z

    move-result v0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->d()V

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(I)V

    const-string v2, "event_tag"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->p:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->s:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dpa_tag"

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->s:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->ox:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v2, v3, v4, v0}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/iw;->dq:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;

    if-eqz v0, :cond_3

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq;->dq(Ljava/util/Map;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
