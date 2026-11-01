.class public Lcom/bytedance/sdk/openadsdk/core/EmptyView;
.super Landroid/view/View;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/e$dq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;,
        Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;
    }
.end annotation


# instance fields
.field private volatile d:Z

.field private volatile dq:Z

.field private ia:I

.field private ig:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

.field private iw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final kk:Landroid/os/Handler;

.field private mn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mp:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field private no:I

.field private final o:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ox:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

.field private p:Landroid/view/View;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 p1, 0x3e8

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->no:I

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->p:Landroid/view/View;

    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->d()Lcom/bytedance/sdk/openadsdk/core/bl/mn;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bl/mn;->zc()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->ox()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/utils/ia;->d()Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    new-instance p2, Lcom/bytedance/sdk/component/utils/e;

    invoke-direct {p2, p1, p0}, Lcom/bytedance/sdk/component/utils/e;-><init>(Landroid/os/Looper;Lcom/bytedance/sdk/component/utils/e$dq;)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->kk:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->no:I

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ox:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;->dq()V

    :cond_0
    return-void
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/EmptyView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq:Z

    return p0
.end method

.method public static synthetic d(Lcom/bytedance/sdk/openadsdk/core/EmptyView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Z

    return p1
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/EmptyView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d:Z

    return p0
.end method

.method public static synthetic dq(Lcom/bytedance/sdk/openadsdk/core/EmptyView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq:Z

    return p1
.end method

.method private iw()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->mp:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/r/u;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->mp:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/r/u;->d(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->mp:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/r/u;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;)J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq(Ljava/lang/String;J)Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ig:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ig:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->mp:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->dq(ZLcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_1
    return-void
.end method

.method private mn()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ig:Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;->ox()V

    :cond_0
    return-void
.end method

.method public static synthetic ox(Lcom/bytedance/sdk/openadsdk/core/EmptyView;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->kk:Landroid/os/Handler;

    return-object p0
.end method

.method private ox()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ox:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;->d()V

    :cond_0
    return-void
.end method

.method private p()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->kk:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView$1;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic p(Lcom/bytedance/sdk/openadsdk/core/EmptyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->s()V

    return-void
.end method

.method private s()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->kk:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView$2;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$2;-><init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static synthetic s(Lcom/bytedance/sdk/openadsdk/core/EmptyView;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->p()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->s:Ljava/util/List;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->iw:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->mn:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    return-void
.end method

.method public dq(Landroid/os/Message;)V
    .locals 3

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->dq:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->p:Landroid/view/View;

    const/16 v1, 0x14

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ia:I

    invoke-static {p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/er;->dq(Landroid/view/View;II)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->s()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ox:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->p:Landroid/view/View;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;->dq(Landroid/view/View;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->kk:Landroid/os/Handler;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->no:I

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public dq(Ljava/util/List;Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/core/d/p;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/o;->d(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->p()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->iw()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->s()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ox()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->mn()V

    return-void
.end method

.method public onFinishTemporaryDetach()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->d()V

    return-void
.end method

.method public onStartTemporaryDetach()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ox()V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/view/View;->onWindowFocusChanged(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ox:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;->dq(Z)V

    :cond_0
    return-void
.end method

.method public setAdType(I)V
    .locals 0

    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ia:I

    return-void
.end method

.method public setCallback(Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;)V
    .locals 1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$d;-><init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->ox:Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;

    return-void
.end method

.method public setMaterialMeta(Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->mp:Lcom/bytedance/sdk/openadsdk/core/r/j;

    return-void
.end method

.method public setNeedCheckingShow(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->kk:Landroid/os/Handler;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/EmptyView$3;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/core/EmptyView$3;-><init>(Lcom/bytedance/sdk/openadsdk/core/EmptyView;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setRefClickViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->s:Ljava/util/List;

    return-void
.end method

.method public setRefCreativeViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->iw:Ljava/util/List;

    return-void
.end method

.method public setRefDirectDownloadViews(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/EmptyView;->mn:Ljava/util/List;

    return-void
.end method
