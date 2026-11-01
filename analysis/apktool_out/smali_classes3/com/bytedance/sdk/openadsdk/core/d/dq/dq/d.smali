.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;
    }
.end annotation


# instance fields
.field iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

.field s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;-><init>()V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;Ljava/util/Map;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->p(Ljava/util/Map;)I

    move-result p0

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    return-object p0
.end method

.method private p(Ljava/util/Map;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/HashMap;-><init>(I)V

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->fw()V

    return v2

    :cond_1
    new-instance v1, Ljava/util/HashMap;

    const/4 v3, 0x3

    invoke-direct {v1, v3}, Ljava/util/HashMap;-><init>(I)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    const-string v4, "event_tag"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/o;->r()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v4, "dpa_tag"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nr()Lcom/bytedance/sdk/openadsdk/core/r/er;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/er;Ljava/util/Map;Ljava/util/Map;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v3, v4, v1}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I

    move-result v0

    and-int/lit16 v1, v0, 0xff

    const v3, 0xff00

    and-int/2addr v0, v3

    shr-int/lit8 v0, v0, 0x8

    if-lez v0, :cond_4

    const-string v3, "click_saas_action"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    if-nez v1, :cond_5

    return v2

    :cond_5
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->d(Ljava/util/Map;)I

    move-result p1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s()V

    return p1
.end method


# virtual methods
.method public d(Ljava/util/Map;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ox(I)V

    return-void
.end method

.method public d(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->p(Z)V

    return-void
.end method

.method public dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
    .locals 4
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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->ox(I)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->p()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$1;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;)V

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;Ljava/util/Map;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2, v3, p2}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;Ljava/lang/String;)I

    move-result p2

    if-ne p2, v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    return v0

    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->p(Ljava/util/Map;)I

    move-result p1

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method public dq()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ia()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    return-object v0
.end method

.method public dq(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d(I)V

    return-void
.end method

.method public dq(J)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(J)V

    return-void
.end method

.method public dq(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Landroid/content/Context;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/video/d/d;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;)V

    return-void
.end method

.method public dq(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Ljava/util/Map;)V

    return-void
.end method

.method public dq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Z)V

    return-void
.end method

.method public ox()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->iw:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    return-object v0
.end method

.method public ox(I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(I)V

    return-void
.end method

.method public ox(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v1, 0x7e06fe8d

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "reward_browse_banner_from"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public ox(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ox(Z)V

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ox()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->s()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->ia()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->ox(Z)V

    return-void
.end method

.method public p(Z)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d(Z)V

    return-void
.end method

.method public s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->s:Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->mn()Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/i/dq/d/dq/dq;->d()V

    :cond_1
    :goto_0
    return-void
.end method
