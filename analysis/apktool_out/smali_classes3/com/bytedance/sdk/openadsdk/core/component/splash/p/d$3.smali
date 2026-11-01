.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;
.super Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;FF)V
    .locals 1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    cmpl-float p2, p2, p1

    if-lez p2, :cond_2

    cmpl-float p1, p3, p1

    if-lez p1, :cond_2

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ir:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-direct {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;-><init>(ZLcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setComplianceBarVisibility(I)V

    :cond_0
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->i()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/kk;->dq(Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->wp:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object v0, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->setExpressView(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Ljava/lang/ref/WeakReference;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;Ljava/lang/ref/WeakReference;)V

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_1
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    invoke-interface {p2, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;->d(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->s(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;

    move-result-object p1

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/TsView;->getEasyPlayableLayout()Landroid/widget/FrameLayout;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;)Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p3

    invoke-virtual {p3}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->getVideoContainer()Landroid/view/ViewGroup;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/ugeno/component/interact/p;->dq(Landroid/view/ViewGroup;Landroid/view/ViewGroup;)V

    return-void

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string p2, "render splash view error"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-wide v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q:J

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(JLcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p2, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/f/d/d/d;)V

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ig()V

    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    const-string p1, "onRenderFail:"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "splash"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->d(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string p2, "render splash express fail"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->dq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/d;

    iget-object p2, p2, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->k:Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/p;->dq(Ljava/lang/Object;)V

    return-void
.end method
