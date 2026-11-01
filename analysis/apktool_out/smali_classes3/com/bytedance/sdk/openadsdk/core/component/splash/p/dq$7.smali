.class Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->cd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->mp:Z

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->dn()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-wide v1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-wide v3, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q:J

    sub-long v3, v1, v3

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v3, v4, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->dq(JLcom/bytedance/sdk/openadsdk/core/r/j;)V

    :cond_1
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/r/cv;->fw(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->kk(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;)V

    :cond_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-wide v1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q:J

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->d(JLcom/bytedance/sdk/openadsdk/core/r/j;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object v1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;I)I

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iput-boolean v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->o:Z

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    invoke-virtual {v2, p1, v0}, Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/d;I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->ia:Lcom/bytedance/sdk/openadsdk/p/dq/d/dq/dq;

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->op:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-virtual {p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->dq(Z)V

    :cond_4
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq$7;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/p/dq;->q()V

    return-void
.end method
