.class Lcom/bytedance/msdk/ox/p/no$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/msdk/ox/p/no$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/msdk/ox/p/no$3;


# direct methods
.method public constructor <init>(Lcom/bytedance/msdk/ox/p/no$3;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/msdk/ox/p/no;)I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->iw(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->iw(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/p/no;->mn(Lcom/bytedance/msdk/ox/p/no;)Ljava/lang/ref/SoftReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/bytedance/msdk/ox/p/iw;->dq(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/p/no;->iw(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/msdk/ox/p/no;->dq(Lcom/bytedance/msdk/ox/p/no;Lcom/bytedance/msdk/ox/p/iw;)V

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/p/no;->ia(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v1, v1, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v1}, Lcom/bytedance/msdk/ox/p/no;->ia(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/core/views/RefreshableBannerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/msdk/core/views/RefreshableBannerView;->dq(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->o(Lcom/bytedance/msdk/ox/p/no;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/bytedance/msdk/ox/p/no$3$1$1;

    invoke-direct {v1, p0}, Lcom/bytedance/msdk/ox/p/no$3$1$1;-><init>(Lcom/bytedance/msdk/ox/p/no$3$1;)V

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->iw(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->iw(Lcom/bytedance/msdk/ox/p/no;)Lcom/bytedance/msdk/ox/p/iw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/msdk/ox/p/iw;->dq()V

    :cond_3
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->d(Lcom/bytedance/msdk/ox/p/no;)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/msdk/ox/p/no$3$1;->dq:Lcom/bytedance/msdk/ox/p/no$3;

    iget-object v0, v0, Lcom/bytedance/msdk/ox/p/no$3;->dq:Lcom/bytedance/msdk/ox/p/no;

    invoke-static {v0}, Lcom/bytedance/msdk/ox/p/no;->ox(Lcom/bytedance/msdk/ox/p/no;)V

    :cond_4
    :goto_1
    return-void
.end method
