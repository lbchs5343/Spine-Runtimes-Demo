.class public Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;
.super Lcom/bytedance/msdk/d/s;

# interfaces
.implements Lcom/bykv/vk/openvk/api/proto/Bridge;


# instance fields
.field private d:Lcom/bytedance/msdk/core/no/no;

.field private dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field private ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

.field private p:Lcom/bytedance/msdk/api/dq/d;

.field private s:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/msdk/core/dq/dq/d/dq;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 1

    invoke-direct {p0}, Lcom/bytedance/msdk/d/s;-><init>()V

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->s:Landroid/content/Context;

    iput-object p3, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    iput-object p2, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    iget-object p1, p2, Lcom/bytedance/msdk/core/dq/dq/d/dq;->d:Lcom/bytedance/msdk/core/no/no;

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    iget-object p1, p2, Lcom/bytedance/msdk/core/dq/dq/d/dq;->dq:Lcom/bytedance/msdk/api/dq/d;

    iput-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->p:Lcom/bytedance/msdk/api/dq/d;

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->td()V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->jb()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->i(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->iu()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->le(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ml()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->d(J)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ml()J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {p0, p2}, Lcom/bytedance/msdk/d/s;->i(I)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->hz()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->k(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->xq()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->wp(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->sp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->xn()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->no(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->vk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->n(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ne()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->op(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->ji(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->gv()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->kx(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->uo()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->h(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->hg()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->gh(I)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->fa()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->gh(I)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->el()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->dq(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->kr()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->p(D)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->vk()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->ir(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dn()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->ia(Z)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->gn()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/msdk/d/s;->dq(D)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->u()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ax()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->mp(Ljava/lang/String;)V

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ps()I

    move-result p1

    const/4 p2, 0x2

    const/4 p3, 0x4

    const/4 v0, 0x3

    if-ne p1, p2, :cond_2

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->ig(I)V

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ps()I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_5

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ps()I

    move-result p1

    if-ne p1, p3, :cond_3

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ps()I

    move-result p1

    if-ne p1, v0, :cond_4

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->ig(I)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->ig(I)V

    goto :goto_2

    :cond_5
    :goto_1
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->ig(I)V

    :goto_2
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dn()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, p3}, Lcom/bytedance/msdk/d/s;->mp(I)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v0}, Lcom/bytedance/msdk/d/s;->mp(I)V

    :goto_3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/bytedance/msdk/d/s;->mn(Z)V

    return-void
.end method

.method private ax()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->yj()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->fg()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private az()I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const-class v3, Ljava/lang/Integer;

    const v4, 0x9c43

    invoke-interface {v0, v4, v2, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    return v0
.end method

.method public static synthetic d(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)I
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->az()I

    move-result p0

    return p0
.end method

.method private d(Landroid/content/Context;)Landroid/view/ViewGroup;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Landroid/view/ViewGroup;

    const v2, 0x9c77

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private d(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ix()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private dn()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const v3, 0x9c74

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)I
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->kf()I

    move-result p0

    return p0
.end method

.method private dq(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Landroid/widget/FrameLayout;

    const v2, 0x9c79

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private dq(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Landroid/widget/FrameLayout$LayoutParams;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const/16 v1, 0x2710

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    const p1, 0xc35d

    invoke-virtual {v0, p1, p2}, Lg/hat;->m(ILjava/lang/Object;)V

    const p1, 0xc361

    invoke-virtual {v0, p1, p3}, Lg/hat;->m(ILjava/lang/Object;)V

    const p1, 0xc362

    invoke-virtual {v0, p1, p4}, Lg/hat;->m(ILjava/lang/Object;)V

    const p1, 0xc363

    invoke-virtual {v0, p1, p5}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const/4 p3, 0x0

    const p4, 0x9c78

    invoke-interface {p1, p4, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private dq(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .locals 3

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    iget v0, p3, Lcom/bytedance/msdk/api/p/dq/mn/no;->mn:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->yo()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq(Landroid/widget/FrameLayout;)V

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ix()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p3, Lcom/bytedance/msdk/api/p/dq/mn/no;->p:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox(Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method private dq(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            ")V"
        }
    .end annotation

    if-eqz p5, :cond_1

    if-nez p4, :cond_0

    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p4, p5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    move-object v5, p4

    iget-object p4, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/bytedance/msdk/core/no/no;->n()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->az()I

    move-result p4

    invoke-direct {p0, p4}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->wp(I)V

    :cond_2
    if-nez p1, :cond_3

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    :cond_3
    move-object v1, p1

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const-string p4, "tt_gdt_developer_view"

    const/4 p5, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p2, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-ge p5, v0, :cond_6

    invoke-virtual {p1, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_5

    sget v2, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tt_mediation_gdt_developer_view_tag_key:I

    invoke-virtual {v0, v2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_4

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    move-object v2, p1

    goto :goto_3

    :cond_7
    invoke-direct {p0, v1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->d(Landroid/content/Context;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_6

    sget v0, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tt_mediation_gdt_developer_view_root_tag_key:I

    const-string v2, "tt_gdt_developer_view_root"

    invoke-virtual {p1, v0, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_2
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_8

    invoke-virtual {p2, p5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    sget v2, Lcom/bytedance/sdk/openadsdk/adhost/R$id;->tt_mediation_gdt_developer_view_tag_key:I

    invoke-virtual {v0, v2, p4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_8
    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 p4, -0x1

    invoke-virtual {p2, p1, p4, p4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_1

    :goto_3
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dr()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/widget/FrameLayout$LayoutParams;Ljava/util/List;Ljava/util/List;)V

    if-eqz p6, :cond_9

    invoke-direct {p0, v1, p2, p6}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    goto :goto_4

    :cond_9
    invoke-direct {p0, v5}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->d(Ljava/util/List;)V

    :goto_4
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ri()V

    return-void
.end method

.method private dq(Landroid/widget/FrameLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_1

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc35d

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->p:Lcom/bytedance/msdk/api/dq/d;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->p:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {p1}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object p1

    const-string v1, "key_gdt_video_option"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const v1, 0xc364

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x9c7a

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->e(I)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq(Landroid/widget/FrameLayout;)V

    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->iw(Ljava/util/Map;)V

    return-void
.end method

.method private dr()Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->p:Lcom/bytedance/msdk/api/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->p:Lcom/bytedance/msdk/api/dq/d;

    invoke-virtual {v0}, Lcom/bytedance/msdk/api/dq/d;->wn()Ljava/util/Map;

    move-result-object v0

    const-string v1, "key_gdt_native_logo_params"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private e(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc357

    invoke-virtual {v0, v1, p1}, Lg/hat;->o(II)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x9c4d

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private el()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const v2, 0x9c72

    const-class v3, Ljava/util/List;

    invoke-interface {v0, v2, v1, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0

    :cond_0
    return-object v1
.end method

.method private ez()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c7d

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private fa()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    const v3, 0x9c71

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private fg()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c44

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private fn()I
    .locals 5

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$7;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$7;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private gn()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->fn()I

    move-result v0

    :goto_0
    int-to-double v0, v0

    return-wide v0

    :cond_1
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->az()I

    move-result v0

    goto :goto_0
.end method

.method private gv()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c6e

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private hg()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    const v3, 0x9c70

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private hz()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c69

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic ia(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->lm()V

    return-void
.end method

.method private iu()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c67

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic iw(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->rv()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private iw(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc35a

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x9c4e

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ix()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c6d

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private iy()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c80

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private jb()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c66

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private ju()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 4

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$11;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$11;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method private kf()I
    .locals 5

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    const/4 v1, 0x1

    if-eqz v0, :cond_7

    const/4 v2, 0x0

    const-class v3, Ljava/lang/Integer;

    const v4, 0x9c75

    invoke-interface {v0, v4, v2, v3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x6

    return v0

    :cond_1
    const/16 v2, 0x8

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    return v2

    :cond_2
    const/4 v4, 0x4

    if-ne v0, v4, :cond_3

    return v3

    :cond_3
    if-ne v0, v2, :cond_4

    const/4 v0, 0x5

    return v0

    :cond_4
    const/16 v2, 0x10

    if-ne v0, v2, :cond_5

    return v4

    :cond_5
    const/16 v2, 0x20

    if-ne v0, v2, :cond_6

    const/4 v0, 0x3

    return v0

    :cond_6
    const/16 v2, 0x40

    if-ne v0, v2, :cond_7

    const/4 v0, 0x7

    return v0

    :cond_7
    return v1
.end method

.method private kj()Ljava/lang/String;
    .locals 4

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$2;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$2;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1f4

    invoke-interface {v0, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic kk(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->nm()V

    return-void
.end method

.method private kr()D
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    const v3, 0x9c73

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-double v0, v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private lm()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c7e

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private mj()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c4b

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ml()J
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Long;

    const v3, 0x9c68

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static synthetic mn(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ez()V

    return-void
.end method

.method private ne()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c61

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private nm()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c7f

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static synthetic o(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->iy()V

    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ax()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private ox(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc365

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    const v2, 0x9c7b

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ox(Landroid/view/View;)Z
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc35d

    invoke-virtual {v0, v1, p1}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    const v2, 0x9c76

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic p(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ru()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object p0

    return-object p0
.end method

.method private ps()I
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Integer;

    const v3, 0x9c55

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ri()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Void;

    const v3, 0x9c7c

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private ru()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const v3, 0x9c4a

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0

    :cond_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;->AD_IS_NOT_READY:Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    return-object v0
.end method

.method private rv()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/util/Map;

    const v3, 0x9c4f

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    const-string v1, "request_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public static synthetic s(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->mj()V

    return-void
.end method

.method private sp()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c6b

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private td()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc359

    invoke-virtual {v0, v1, p0}, Lg/hat;->m(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v2, 0x0

    const v3, 0x9c49

    invoke-interface {v1, v3, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private u()I
    .locals 5

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$1;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$1;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    const/4 v1, 0x1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-interface {v0, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method private uo()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c6f

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private vk()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c60

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private wp(I)V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    const v1, 0xc357

    invoke-virtual {v0, v1, p1}, Lg/hat;->o(II)V

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x9c47

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private xn()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c6c

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private xq()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/String;

    const v3, 0x9c6a

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method private yj()Ljava/lang/String;
    .locals 5

    const-string v0, ""

    new-instance v1, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$8;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$8;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v1}, Lcom/bytedance/msdk/dq/s/iw;->dq(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v1

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1f4

    invoke-interface {v1, v3, v4, v2}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/bykv/vk/openvk/api/proto/ValueSet;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    const p3, 0xea72

    const/4 v0, 0x0

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->uh()V

    goto/16 :goto_0

    :cond_0
    const p3, 0xea73

    if-ne p1, p3, :cond_1

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->xz()V

    goto :goto_0

    :cond_1
    const p3, 0xea74

    if-ne p1, p3, :cond_2

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->yy()V

    goto :goto_0

    :cond_2
    const p3, 0xea65

    if-ne p1, p3, :cond_3

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->v()V

    goto :goto_0

    :cond_3
    const p3, 0xea6a

    if-ne p1, p3, :cond_4

    const p1, 0xc356

    const-class p3, Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-interface {p2, p1, p3}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Bridge;

    new-instance p2, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;

    invoke-direct {p2, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->mn:Lcom/bytedance/msdk/api/p/dq/mn/kk;

    if-eqz p1, :cond_6

    new-instance p3, Lcom/bytedance/msdk/api/dq;

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;->dq()I

    move-result v1

    invoke-virtual {p2}, Lcom/bytedance/msdk/core/dq/dq/d/dq/iw/d;->d()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, v1, p2}, Lcom/bytedance/msdk/api/dq;-><init>(ILjava/lang/String;)V

    invoke-interface {p1, p3}, Lcom/bytedance/msdk/api/p/dq/mn/kk;->dq(Lcom/bytedance/msdk/api/dq;)V

    goto :goto_0

    :cond_4
    const p2, 0xea64

    if-ne p1, p2, :cond_5

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz p1, :cond_6

    invoke-interface {p1, v0}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq(Landroid/view/View;)V

    goto :goto_0

    :cond_5
    const p2, 0xea69

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcom/bytedance/msdk/d/s;->no:Lcom/bytedance/msdk/api/p/dq/ox/d;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Lcom/bytedance/msdk/api/p/dq/ox/d;->dq()V

    :cond_6
    :goto_0
    return-object v0
.end method

.method public cd()I
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->u()I

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->kf()I

    move-result v0

    return v0
.end method

.method public ce()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$4;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$4;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->lm()V

    return-void
.end method

.method public d(Ljava/util/Map;)V
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

    iget-object p1, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result p1

    if-nez p1, :cond_1

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/msdk/d/s;->dk()D

    move-result-wide v0

    double-to-int p1, v0

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$13;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$13;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;I)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->e(I)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/msdk/api/p/dq/mn/no;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-super/range {p0 .. p7}, Lcom/bytedance/msdk/d/s;->dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;Ljava/util/List;)V

    move-object v1, p0

    iget-object p7, v1, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz p7, :cond_0

    invoke-virtual {p7}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result p7

    if-eqz p7, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$9;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$9;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/msdk/api/p/dq/mn/no;)V

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

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->d:Lcom/bytedance/msdk/core/no/no;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/msdk/core/no/no;->op()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$14;

    invoke-direct {v0, p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$14;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;Ljava/util/Map;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->p(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->iw(Ljava/util/Map;)V

    return-void
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public er()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$3;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$3;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ez()V

    return-void
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$6;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$6;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->iy()V

    return-void
.end method

.method public gh()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/dq;->dq(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->s:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$10;

    invoke-direct {v2, p0, v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$10;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;Landroid/widget/FrameLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public iw()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->kj()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->rv()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jy()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$5;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$5;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->nm()V

    return-void
.end method

.method public kx()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ox:Lcom/bytedance/msdk/core/dq/dq/d/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/msdk/core/dq/dq/d/dq;->ox()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ju()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->ru()Lcom/bytedance/sdk/openadsdk/mediation/MediationConstant$AdIsReadyStatus;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 1

    invoke-super {p0}, Lcom/bytedance/msdk/d/s;->p()V

    new-instance v0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$12;

    invoke-direct {v0, p0}, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d$12;-><init>(Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;)V

    invoke-static {v0}, Lcom/bytedance/msdk/dq/s/iw;->ox(Ljava/lang/Runnable;)V

    return-void
.end method

.method public s()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/core/dq/dq/d/dq/d/d;->dq:Lcom/bykv/vk/openvk/api/proto/Bridge;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-class v2, Ljava/lang/Boolean;

    const v3, 0x9c4c

    invoke-interface {v0, v3, v1, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public values()Lcom/bykv/vk/openvk/api/proto/ValueSet;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
