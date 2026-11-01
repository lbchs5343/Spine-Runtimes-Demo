.class public abstract Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ia;
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ox;
.implements Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$dq;
    }
.end annotation


# instance fields
.field protected cd:I

.field protected d:Landroid/content/Context;

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

.field private e:Landroid/widget/FrameLayout;

.field protected f:I

.field protected fw:I

.field protected gh:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/d;

.field protected i:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected ia:Lg/dlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dlv;"
        }
    .end annotation
.end field

.field protected ig:Ljava/lang/String;

.field protected iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

.field protected jy:I

.field private k:Z

.field protected kk:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/co;",
            ">;"
        }
    .end annotation
.end field

.field private kx:Z

.field private le:Z

.field protected mn:Lg/dlv;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lg/dlv;"
        }
    .end annotation
.end field

.field protected mp:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected no:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Ljava/util/concurrent/atomic/AtomicInteger;

.field protected ox:Landroid/view/ViewGroup;

.field protected p:Lcom/bytedance/sdk/openadsdk/core/ig/s;

.field protected q:Lorg/json/JSONObject;

.field protected r:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$dq;

.field protected s:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private wp:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/sdk/openadsdk/core/ig/s;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->le:Z

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->k:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ox:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ig:Ljava/lang/String;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gh()Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->no:Ljava/util/Map;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ig/s;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/p;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ox;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fq()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/ia;)V

    :cond_0
    return-void
.end method

.method private d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/dq;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    const-class v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/ox/dq;->s()Ljava/util/Map;

    move-result-object v1

    const-string v3, "click_element_type"

    invoke-virtual {p2}, Lg/dlv;->n()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->mp:Ljava/util/Map;

    if-eqz p2, :cond_0

    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fx()Ljava/lang/String;

    move-result-object p2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v1, p1, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/o/s;->d(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Z)Lcom/bytedance/sdk/openadsdk/core/o/d/p;

    move-result-object p1

    const-class v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/d/p;->dq(Ljava/lang/Class;)Lcom/bytedance/sdk/openadsdk/core/d/dq/dq;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/dq/d;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/ox;)V

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/r/o;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/r/o;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    if-eqz p1, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$9;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$9;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/o/d/dq;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    instance-of p2, p1, Lcom/bytedance/sdk/openadsdk/core/mn/d;

    if-eqz p2, :cond_2

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/mn/d;

    const/4 p2, 0x2

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/mn/d;->dq(I)V

    :cond_2
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->kx:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    return-object p0
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->r()Lcom/bytedance/sdk/openadsdk/core/ugeno/o/dq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/dq;->d()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/q;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/q;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/q;->ox()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/q;->ox()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    :cond_0
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dq(Lcom/bytedance/sdk/openadsdk/core/r/q;)V

    :cond_1
    return-void
.end method

.method private dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/content/Context;)I

    move-result v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->iw(Landroid/content/Context;)F

    move-result v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->mn(Landroid/content/Context;)F

    move-result v2

    new-instance v4, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    invoke-direct {v4}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;-><init>()V

    const/high16 v5, -0x40800000    # -1.0f

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->iw(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    const-wide/16 v5, -0x1

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(J)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->ox(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->p(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    const/16 v5, -0x400

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->s(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v5

    invoke-virtual {v5}, Lcom/bytedance/sdk/openadsdk/core/no;->ox()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    :goto_0
    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(I)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->d(F)Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/kk$dq;->dq()Lcom/bytedance/sdk/openadsdk/core/r/kk;

    move-result-object v2

    const/4 v6, -0x1

    const/4 v7, 0x0

    const-string v0, "click"

    const/4 v4, 0x1

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/r/kk;Ljava/lang/String;ZLjava/util/Map;IZ)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V

    return-void
.end method

.method private fw()Landroid/view/View;
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->e:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v1, "#99000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/bytedance/sdk/component/adexpress/widget/GifView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/component/adexpress/widget/GifView;-><init>(Landroid/content/Context;)V

    const-string v1, "shop_page_guide_gif.gif"

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/mn/ox;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/ia/d;->dq(Ljava/lang/String;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/iw/o;->ox(I)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/iw/o;->dq(Landroid/graphics/Bitmap$Config;)Lcom/bytedance/sdk/component/iw/o;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$3;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;Lcom/bytedance/sdk/component/adexpress/widget/GifView;)V

    invoke-interface {v1, v2}, Lcom/bytedance/sdk/component/iw/o;->dq(Lcom/bytedance/sdk/component/iw/f;)Lcom/bytedance/sdk/component/iw/kk;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    const/high16 v2, 0x42f00000    # 120.0f

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const-string v2, "\u9700\u8981\u6d4f\u89c8\u9875\u9762\u624d\u80fd\u9886\u53d6\u5956\u52b1"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    sget-object v2, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    const/high16 v3, 0x428c0000    # 70.0f

    invoke-static {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result v1

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->e:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)V

    const/16 v4, 0xc8

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/ugeno/o/ox$dq;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->e:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$5;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$5;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->e:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)Landroid/view/View;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->fw()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)Landroid/widget/FrameLayout;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->e:Landroid/widget/FrameLayout;

    return-object p0
.end method


# virtual methods
.method public d(Lg/dlv;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fq()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lg/dlv;->d(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->kx:Z

    return-void
.end method

.method public dq(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/core/r/j;",
            ">;)",
            "Ljava/util/List<",
            "Lg/co;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/core/r/j;

    new-instance v2, Lg/co;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ve()Lorg/json/JSONObject;

    move-result-object v1

    :try_start_0
    const-string v3, "voice_btn_position"

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/r/gh;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const v3, -0x7f3a9fd0

    iput v3, v2, Lg/co;->b:I

    iput-object v1, v2, Lg/co;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V
    .locals 5

    invoke-virtual {p2}, Lg/dlv;->n()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mute"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lg/dlv;->bl()Lg/eyh;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "video_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object p1

    instance-of v0, p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->p(Z)V

    instance-of p1, p2, Lg/fde;

    if-eqz p1, :cond_1

    check-cast p2, Lg/fde;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    const-string v0, "tt_unmute"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/fde;->d(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/video/d;->p(Z)V

    instance-of p1, p2, Lg/fde;

    if-eqz p1, :cond_1

    check-cast p2, Lg/fde;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    const-string v0, "tt_mute"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p2, p1}, Lg/fde;->d(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->le:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/kk;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->mp:Ljava/util/Map;

    invoke-direct {p0, v0, v3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/util/Map;)V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ig:Ljava/lang/String;

    const-string v3, "ugeno_coin_eCommerce_click_content"

    const/4 v4, 0x0

    invoke-static {p1, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ig:Ljava/lang/String;

    const-string v3, "page_click"

    invoke-static {p1, v0, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->le:Z

    :cond_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    instance-of v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/p;

    if-eqz v0, :cond_5

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->s(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gh()Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;)V

    :cond_5
    invoke-static {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;)V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$7;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$d;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$8;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$8;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)V

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p;->dq(Lcom/bytedance/sdk/openadsdk/core/d/dq/d/p$dq;)I

    return-void

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;Lg/dlv;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/d;)V
    .locals 1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->gh:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/d;)V

    :cond_0
    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->r:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    return-void
.end method

.method public dq(Lg/dlv;)V
    .locals 2

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;

    const-string v1, "shop_page"

    invoke-direct {v0, p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$6;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;Ljava/lang/String;Lg/dlv;)V

    invoke-static {v0}, Lcom/bytedance/sdk/component/o/mn;->d(Lcom/bytedance/sdk/component/o/kk;)V

    return-void
.end method

.method public dq(Ljava/util/Map;)V
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

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->mp:Ljava/util/Map;

    return-void
.end method

.method public dq(Lorg/json/JSONObject;)V
    .locals 7

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/d;->dq(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    const-string v3, "is_slide"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->p()V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-boolean v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->k:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_2

    :goto_0
    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {p1, v0, v3, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONObject;Lcom/bytedance/sdk/openadsdk/iw/dq/dq;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Lorg/json/JSONObject;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lg/co;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->d()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/o;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->wp:Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/iw;->dq(Lorg/json/JSONObject;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/mn;)V

    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public abstract ig()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lg/co;",
            ">;"
        }
    .end annotation
.end method

.method public jy()I
    .locals 2

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->f:I

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->jy:I

    if-ge v0, v1, :cond_0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->fw:I

    sub-int/2addr v1, v0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->fw:I

    sub-int v1, v0, v1

    :goto_0
    const/4 v0, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public mp()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->ig()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->kk:Ljava/util/List;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;)V

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s;->dq(Lcom/bytedance/sdk/openadsdk/core/ugeno/mn/dq;Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/s$dq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->p:Lcom/bytedance/sdk/openadsdk/core/ig/s;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, -0x3

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/core/ig/s;->dq(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->iw:Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/ugeno/s/dq;->dq(I)V

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ugeno/ia/dq;->mn:Lg/dlv;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "interactionWebView"

    invoke-virtual {v0, v2}, Lg/dlv;->ox(Ljava/lang/String;)Lg/dlv;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lg/dlv;->kk()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
