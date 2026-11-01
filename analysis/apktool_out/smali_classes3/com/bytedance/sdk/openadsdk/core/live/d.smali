.class public Lcom/bytedance/sdk/openadsdk/core/live/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/live/d$dq;
    }
.end annotation


# instance fields
.field private final dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/op;->s:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/mn;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    return-void

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/op;->iw()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/live/dq/s;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/s;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    return-void

    :cond_1
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/live/dq/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/d;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/live/d$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/live/d;-><init>()V

    return-void
.end method

.method public static final dq()Lcom/bytedance/sdk/openadsdk/core/live/d;
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I

    move-result p1

    return p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq()V

    return-void
.end method

.method public d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ap()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ap()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->po()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x5

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;)I
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    const-string v1, "event_tag"

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->jy()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "reward_countdown"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    invoke-virtual {p0, v1, p1, v0}, Lcom/bytedance/sdk/openadsdk/core/live/d;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x5

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/live/d/d;Z)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/live/d/d;Z)I

    move-result p1

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/er;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/bytedance/sdk/openadsdk/core/r/er;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x4000000

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/lit16 v0, p1, 0xff

    const v1, 0xff00

    and-int/2addr p1, v1

    ushr-int/lit8 p1, p1, 0x8

    if-lez v0, :cond_2

    if-lez p1, :cond_2

    const/16 v1, 0x65

    if-ne v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/r/er;->ox()Z

    move-result p2

    if-nez p2, :cond_1

    const/16 v0, 0x66

    :cond_1
    const-string p2, "live_saas_param_interaction_type"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "click_saas_area"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p4, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;J)V

    return-void
.end method

.method public dq(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    return p1
.end method

.method public dq(Ljava/lang/String;I)Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->dq(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method

.method public ia()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->mn()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public iw()I
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia()I

    move-result v0

    return v0
.end method

.method public mn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->iw()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ox()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->d()I

    move-result v0

    return v0
.end method

.method public ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)I
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->kf()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->b_(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    return p1
.end method

.method public p()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->ox()V

    return-void
.end method

.method public p(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ap()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->ia()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/16 v0, 0x64

    if-le p1, v0, :cond_2

    const/16 p1, 0x64

    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->dq()Lcom/bytedance/sdk/openadsdk/core/ox/p;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ox/p;->d(I)V

    return-void
.end method

.method public s()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq:Lcom/bytedance/sdk/openadsdk/core/live/dq/p;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/live/dq/p;->p()I

    move-result v0

    return v0
.end method
