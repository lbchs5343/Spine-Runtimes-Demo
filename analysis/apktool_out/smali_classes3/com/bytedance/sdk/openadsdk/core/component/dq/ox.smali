.class public Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;
.super Lcom/bytedance/sdk/openadsdk/f/d/d;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/api/d/dq;
.implements Lcom/bykv/vk/openvk/component/video/api/p/ox$ox;
.implements Lcom/bykv/vk/openvk/component/video/api/p/ox$p;
.implements Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;


# instance fields
.field d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

.field protected dq:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

.field private ia:Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

.field private ig:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;

.field private iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

.field private jy:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

.field private kk:Z

.field private mn:I

.field private volatile mp:I

.field private no:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private volatile o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;",
            ">;"
        }
    .end annotation
.end field

.field ox:I

.field private p:[I

.field private volatile q:Z

.field private s:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/f/d/ox/d;)V
    .locals 6

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/i/ox;

    const/4 v5, 0x1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/i/ox;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ILcom/bytedance/sdk/openadsdk/f/d/ox/d;Z)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/f/d/d;-><init>(Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->p:[I

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->kk:Z

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->no:Ljava/lang/ref/WeakReference;

    new-instance p2, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$4;

    invoke-direct {p2, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$4;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->jy:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d;->ir()Lcom/bytedance/sdk/openadsdk/f/d/d/q;

    move-result-object p1

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/i/ox;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->p()Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/openadsdk/core/k;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ox:I

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    invoke-direct {p1}, Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->kk(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->mn:I

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->jy:Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    return-void
.end method

.method private c()[I
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result v0

    const/16 v1, 0xa6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->mp(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->ig(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    filled-new-array {v1, v0}, [I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->mx()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->jn()I

    move-result v0

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->jy(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->o()[I

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->q(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bykv/vk/openvk/component/video/api/ox/ox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/ox;->o()[I

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private ce()Z
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ig:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->by()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method private d(JJ)V
    .locals 6

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ce()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->q:Z

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->by()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    const-wide/16 v2, 0x3a98

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    const-wide/16 v2, 0x7530

    goto :goto_0

    :cond_3
    const-wide/16 v2, 0x0

    :goto_0
    const-wide/16 v4, 0x3e8

    cmp-long v0, p3, v2

    if-gtz v0, :cond_4

    sub-long/2addr p3, p1

    div-long/2addr p3, v4

    long-to-int p1, p3

    goto :goto_1

    :cond_4
    sub-long/2addr v2, p1

    div-long/2addr v2, v4

    long-to-int p1, v2

    :goto_1
    if-gez p1, :cond_5

    const/4 p1, 0x0

    :cond_5
    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->mp:I

    if-ne p1, p2, :cond_6

    :goto_2
    return-void

    :cond_6
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->mp:I

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->mp:I

    if-nez p1, :cond_7

    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->q:Z

    :cond_7
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ig:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->mp:I

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;->dq(I)V

    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->kk:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Lcom/bytedance/sdk/openadsdk/core/i/ox;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    return-object p0
.end method

.method private dq(I)V
    .locals 3

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->mn(I)I

    move-result p1

    const/4 v0, 0x3

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Z)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v2, p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->s(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->iw(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Z)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v1, p1, :cond_4

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->d(Z)V

    return-void

    :cond_4
    const/4 v1, 0x5

    if-ne v1, p1, :cond_6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->p(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/q;->iw(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Z)V

    :cond_6
    return-void
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->kk:Z

    return p1
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private u()Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->no:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ox:I

    const/16 v4, 0x9

    if-ne v3, v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/live/EcMallWebView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;I)V

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->no:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public J_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    :cond_0
    return-void
.end method

.method public K_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    :cond_0
    return-void
.end method

.method public L_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;->ox(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    :cond_0
    return-void
.end method

.method public M_()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;->p(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    :cond_0
    return-void
.end method

.method public N_()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;->s(Lcom/bytedance/sdk/openadsdk/f/d/d/no;)V

    :cond_0
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ce()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->q:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ig:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;->dq(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->q:Z

    :cond_1
    return-void
.end method

.method public bl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->kk:Z

    return v0
.end method

.method public d()Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ia:Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    if-nez v0, :cond_1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ia:Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ia:Lcom/bytedance/sdk/openadsdk/le/dq/d/d/dq;

    return-object v0
.end method

.method public dq()D
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/h/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/pa;->iw(Lcom/bytedance/sdk/openadsdk/core/r/j;)D

    move-result-wide v0

    return-wide v0
.end method

.method public dq(Z)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;
    .locals 10

    if-eqz p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeDrawVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v4

    iget p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ox:I

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->d(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v9}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;ZZLjava/lang/String;ZZ)V

    move-object p1, v2

    :goto_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Ljava/lang/ref/WeakReference;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq()V

    return-object p1
.end method

.method public dq(II)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;->dq(II)V

    :cond_0
    return-void
.end method

.method public dq(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;->dq(JJ)V

    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->d(JJ)V

    return-void
.end method

.method public dq(Landroid/app/Activity;Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;)V
    .locals 9
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
            "Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;",
            "Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;",
            ")V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v8, p6

    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/f/d/d;->dq(Landroid/view/ViewGroup;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/View;Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/dq;)V

    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->ig()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 p3, -0x1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d;->iw()Landroid/graphics/Bitmap;

    move-result-object p4

    if-eqz p4, :cond_1

    const/4 p4, 0x0

    invoke-virtual {p1, p4}, Landroid/view/View;->setVisibility(I)V

    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_0

    move-object p4, p1

    check-cast p4, Landroid/view/ViewGroup;

    invoke-virtual {p4}, Landroid/view/ViewGroup;->removeAllViews()V

    new-instance p4, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p5

    invoke-direct {p4, p5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d;->iw()Landroid/graphics/Bitmap;

    move-result-object p5

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p5, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p4, p5}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p5

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    const/high16 v0, 0x42180000    # 38.0f

    invoke-static {p6, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result p6

    iput p6, p5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p6

    invoke-static {p6, v0}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ox(Landroid/content/Context;F)I

    move-result p6

    iput p6, p5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1, p4, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_2

    :cond_0
    instance-of p4, p1, Landroid/widget/ImageView;

    if-eqz p4, :cond_1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d;->iw()Landroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    :goto_0
    invoke-virtual/range {p7 .. p7}, Lcom/bytedance/sdk/openadsdk/mediation/ad/dq/d/dq/p;->mn()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->i()Landroid/view/View;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/ir/ce;->ia(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {p1, p2, p3, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    return-void

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ig:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/d;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->s:Lcom/bytedance/sdk/openadsdk/le/dq/d/dq/dq;

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/d;)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->dq(Lcom/bytedance/sdk/openadsdk/wp/dq/d/dq/d;)V

    :cond_0
    return-void
.end method

.method public e()Lcom/bytedance/sdk/openadsdk/mediation/manager/dq/d/dq/s;
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/mediation/MediationNativeManagerDefault;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/mediation/MediationNativeManagerDefault;-><init>()V

    return-object v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ox:I

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 6

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/live/p/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->u()Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->n()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-eqz v0, :cond_2

    return-object v0

    :catch_0
    nop

    goto :goto_2

    :cond_2
    invoke-virtual {p0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq(Z)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdClickListenerTTNativeAd(Lcom/bytedance/sdk/openadsdk/f/d/d/q;)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$1;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setAdCreativeClickListener(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$dq;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/no;->ia()Lcom/bytedance/sdk/openadsdk/core/no;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual {v3, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/no;->dq(J)V

    new-instance v3, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$2;

    invoke-direct {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;)V

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setControllerStatusCallBack(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$ox;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdLoadListener(Lcom/bykv/vk/openvk/component/video/api/p/ox$p;)V

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/bykv/vk/openvk/component/video/api/p/ox$ox;)V

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ox:I

    const/4 v4, 0x5

    if-ne v4, v3, :cond_4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->ji()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->d:Lcom/bytedance/sdk/openadsdk/f/d/ox/d;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/f/d/ox/d;->ia()Z

    move-result v3

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->h()Z

    move-result v3

    :goto_0
    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->h()Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsAutoPlay(Z)V

    :goto_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->mn:I

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->p(I)Z

    move-result v3

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->setIsQuiet(Z)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->p()Lcom/bytedance/sdk/openadsdk/core/k;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/core/k;->dq()Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v3

    if-eqz v3, :cond_6

    invoke-interface {v3, p0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq$dq;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :cond_5
    :goto_2
    move-object v0, v1

    :cond_6
    :goto_3
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq()Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->ox:I

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->dq(I)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    move-result-object v3

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->mn:I

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/core/iw/p;->d(I)Lcom/bytedance/sdk/openadsdk/core/iw/p;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->n()Z

    move-result v3

    if-eqz v3, :cond_8

    if-eqz v0, :cond_8

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    invoke-virtual {v0, v3, v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->dq(JZZ)Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_4

    :cond_7
    return-object v0

    :cond_8
    :goto_4
    return-object v1
.end method

.method public ji()I
    .locals 1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->mn:I

    return v0
.end method

.method public kx()Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public le()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->le()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ur()Lcom/bytedance/sdk/openadsdk/core/r/vf;

    move-result-object v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ur()Lcom/bytedance/sdk/openadsdk/core/r/vf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/vf;->p()Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "group_info"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ap()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->po()I

    move-result v2

    const-string v3, "live_support_saas_live"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/core/live/d;->ox()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq()Lcom/bytedance/sdk/openadsdk/core/live/d;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/live/d;->dq(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->gv()I

    move-result v1

    const/16 v2, 0xa6

    if-eq v1, v2, :cond_4

    return-object v0

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/ce;->s(Lcom/bytedance/sdk/openadsdk/core/r/j;)I

    move-result v2

    if-nez v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_5
    const-string v3, "live_author_follower_count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "live_watch_count"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->iw:Lcom/bytedance/sdk/openadsdk/core/i/ox;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/i/ox;->kx()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/j;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v0

    return v0
.end method

.method public op()Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->dq:Lcom/bytedance/sdk/openadsdk/core/multipro/d/dq;

    return-object v0
.end method

.method public ox()I
    .locals 4

    const/16 v0, 0x500

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->p:[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->c()[I

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->p:[I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->p:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    aget v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return v0

    :goto_2
    const-string v2, "TTFeedAdImpl"

    const-string v3, "getAdViewWidth error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public p()I
    .locals 4

    const/16 v0, 0x2d0

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->p:[I

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->c()[I

    move-result-object v1

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->p:[I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->p:[I

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    aget v0, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    return v0

    :goto_2
    const-string v2, "TTFeedAdImpl"

    const-string v3, "getAdViewHeight error"

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public wp()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/dq/ox;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView;->gh()V

    :cond_0
    invoke-super {p0}, Lcom/bytedance/sdk/openadsdk/f/d/d;->wp()V

    return-void
.end method
