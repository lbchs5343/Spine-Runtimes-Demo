.class Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/EmptyView$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/r/j;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->kk()V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->o(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V

    return-void
.end method

.method public dq(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->mp(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->mp(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/Queue;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;Lcom/bytedance/sdk/openadsdk/core/r/j;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->no(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ig(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->q(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v1, v3, v0, v4}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/util/Map;Ljava/lang/Double;)V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->dq()Lcom/bytedance/sdk/openadsdk/core/kx/dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/kx/dq;->p()V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->jy(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->s:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->y()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/dq;->d(Landroid/view/View;I)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ia(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->cd()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/dq;->getCurView()Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->f()V

    :cond_3
    return-void
.end method

.method public dq(Z)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/o/d/ox;->ia()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->d(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)Lcom/bytedance/sdk/openadsdk/core/o/d/ox;

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->ia(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->kk(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;)V

    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->ox:Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;->dq(Lcom/bytedance/sdk/openadsdk/core/bannerexpress/d;ZLcom/bytedance/sdk/openadsdk/core/r/j;)V

    return-void
.end method
