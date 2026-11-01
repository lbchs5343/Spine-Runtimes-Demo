.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/f/d/d/f;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;Lcom/bytedance/sdk/openadsdk/f/d/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->dq:Lcom/bytedance/sdk/openadsdk/f/d/d/f;

    instance-of v1, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox(Z)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->iw(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->mn(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d(I)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->ox(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->d(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->ia(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->p(Z)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v2

    invoke-interface {v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox;->dq(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->s()V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->kk(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    const-string v1, "\u5f53\u524d\u65e0\u65b0\u89c6\u9891\uff0c\u8bf7\u70b9\u51fb\u91cd\u8bd5"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->p(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/d;)Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/d/dq$dq;->dq(ILcom/bytedance/sdk/openadsdk/widget/TTProgressBar;)V

    return-void
.end method
