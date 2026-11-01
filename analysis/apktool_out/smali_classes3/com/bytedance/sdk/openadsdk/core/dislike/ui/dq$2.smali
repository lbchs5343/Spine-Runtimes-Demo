.class Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/dislike/d/ox;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;->dq()V

    :cond_0
    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->d(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V

    return-void
.end method

.method public dq(ILcom/bytedance/sdk/openadsdk/f/d/d/iw;)V
    .locals 4

    const-string v0, "TTAdDislikeImpl"

    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, ""

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;->p()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->p(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/d;

    move-result-object v3

    invoke-interface {v2, p2, v1, v3}, Lcom/bytedance/sdk/openadsdk/core/dislike/d/dq;->dq(Lcom/bytedance/sdk/openadsdk/f/d/d/iw;Ljava/lang/String;Landroid/app/Dialog;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "click feedback :"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->dq()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->iw()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->iw(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ox/d;->ia()Z

    move-result v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

    move-result-object v2

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3, v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;->dq(ILjava/lang/String;Z)V

    :cond_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->mn(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ia(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ia(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/TTDislikeToast;->dq()V

    :cond_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->kk(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)V

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onDislikeSelected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/f/d/d/iw;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :goto_2
    const-string p2, "dislike callback selected error: "

    invoke-static {v0, p2, p1}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public ox()V
    .locals 3

    const-string v0, "onDislikeHide: "

    const-string v1, "TTAdDislikeImpl"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->ox()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;->s(Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq;)Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/dislike/ui/dq$dq;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v2, "dislike callback cancel error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ig;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
