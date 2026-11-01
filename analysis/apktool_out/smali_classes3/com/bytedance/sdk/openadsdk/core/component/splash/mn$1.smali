.class Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/f/d/ox/d;Lcom/bytedance/sdk/openadsdk/core/r/nh;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/ox/d<",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;",
        "Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic d(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->p(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->p()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->s(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->ox(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v1

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/r/j;Z)Z

    move-result v0

    const-string v1, "Splash_FullLink"

    if-eqz v0, :cond_4

    const-string v0, "\u5f00\u59cb\u5e76\u53d1\u52a0\u8f7d\u7d20\u6750 "

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    return-void

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u4e32\u884c\u52a0\u8f7d\u7d20\u6750 getReqId "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/dq;->d()Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/r/j;->el()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/iw/dq;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-static {v0, p1, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;)V

    return-void

    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;->s()Z

    move-result v2

    invoke-static {v0, p1, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/iw;ZZ)V

    return-void

    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    const-string v3, "no ad model"

    invoke-direct {v2, v1, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {p1, v2}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void
.end method

.method public dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V
    .locals 2

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;->kk()Z

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Z)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->d(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->mn(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;->iw(Lcom/bytedance/sdk/openadsdk/core/component/splash/mn;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    :cond_3
    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/component/splash/mn$1;->dq(Lcom/bytedance/sdk/openadsdk/core/component/splash/ox/dq/mn;)V

    return-void
.end method
