.class public Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq/d/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$dq;
    }
.end annotation


# instance fields
.field private ia:Z

.field private iw:Z

.field private kk:Lcom/bytedance/sdk/openadsdk/core/d/d;

.field private mn:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$dq;

.field private s:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x1

    move-object v1, p2

    move v2, p3

    move-object v0, p4

    move-object v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq(Ljava/util/Map;ZLjava/lang/String;ZZZ)Z

    move-result p1

    goto :goto_0

    :cond_0
    move-object v1, p2

    const/4 p1, 0x1

    :goto_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v1, p6}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    return-void
.end method

.method private d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 2
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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->kk:Lcom/bytedance/sdk/openadsdk/core/d/d;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->kk:Lcom/bytedance/sdk/openadsdk/core/d/d;

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/ox;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I

    return-void
.end method

.method private d(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7e06fff9

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7e06fed3

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7e06fff5

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7e06ff39

    if-eq v1, v3, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7e06fee9

    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v3, 0x7e06fead

    if-ne v1, v3, :cond_3

    return v2

    :cond_3
    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_0
    move-object v3, p1

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_5

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->d(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_4

    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return v0

    :cond_6
    :goto_1
    return v2
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d$dq;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;)V

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/h/mn;->dq(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$3;

    move-object v3, p0

    move-object v6, p1

    move-object v4, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    move-object/from16 v5, p6

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1, v2, v5}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/live/dq/ox;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    move-object/from16 v5, p6

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->d(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    return-void

    :goto_0
    invoke-direct {p0, p2, v5}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->d(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    const-string v2, "event_tag"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->ox:Lcom/bytedance/sdk/openadsdk/core/r/o;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/o;->r()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v2, "dpa_tag"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object p1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/r/j;->nr()Lcom/bytedance/sdk/openadsdk/core/r/er;

    move-result-object v3

    invoke-virtual {p1, v2, v3, v1, p2}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/er;Ljava/util/Map;Ljava/util/Map;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)I

    move-result p1

    and-int/lit16 v0, p1, 0xff

    if-eqz p2, :cond_2

    const v1, 0xff00

    and-int/2addr p1, v1

    shr-int/lit8 p1, p1, 0x8

    if-lez p1, :cond_2

    const-string v1, "click_saas_action"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v0, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private iw()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->ia:Z

    return v0
.end method

.method private mn()Z
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private p()Z
    .locals 2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->s()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->p:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->d(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->iw:Z

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private s()Z
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->iw()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->s:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->ia(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->s:I

    :cond_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->dq()Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->ox()Z

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->d()Z

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->s:I

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->mn()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->ox()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->dq()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->d()Z

    move-result v0

    if-nez v0, :cond_4

    return v1

    :cond_4
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->s:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-eq v0, v2, :cond_5

    return v1

    :cond_5
    return v3
.end method


# virtual methods
.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->iw:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$dq;->d()Z

    move-result v0

    return v0
.end method

.method public dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)I
    .locals 10
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

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->p()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->kk:Lcom/bytedance/sdk/openadsdk/core/d/d;

    if-nez v0, :cond_1

    return v1

    :cond_1
    const-class v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->d()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;

    move-result-object v3

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->ox()Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;

    move-result-object v6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/i;->ox(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->no()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v7, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->kk()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :goto_1
    invoke-virtual {v3, v7}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->dq(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v6, v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    move-result-object v0

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$1;

    move-object v9, p2

    move-object v4, v3

    move-object v8, v7

    move-object v3, p0

    move-object v7, v6

    move v6, v5

    move-object v5, p1

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;)I

    goto :goto_2

    :cond_3
    move-object v2, p0

    move-object v4, p1

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/iw;Ljava/util/Map;ZLcom/bytedance/sdk/openadsdk/core/d/dq/dq/s;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/dq/ox;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->kk:Lcom/bytedance/sdk/openadsdk/core/d/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$dq;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->ia:Z

    return-void
.end method

.method public dq()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn;->mn:Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$dq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/mn$dq;->dq()Z

    move-result v0

    return v0
.end method

.method public ox()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->mn(I)I

    move-result v0

    if-eq v0, v1, :cond_8

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->iw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1

    :cond_4
    return v3

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->s(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->iw(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    :cond_6
    return v3

    :cond_7
    :goto_1
    return v1

    :cond_8
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
