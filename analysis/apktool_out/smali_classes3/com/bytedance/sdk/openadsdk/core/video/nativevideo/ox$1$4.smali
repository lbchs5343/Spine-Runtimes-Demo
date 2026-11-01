.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;Lcom/bykv/vk/openvk/component/video/api/ox/d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->dq()I

    move-result v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->d()I

    move-result v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->dq:Lcom/bykv/vk/openvk/component/video/api/ox/d;

    invoke-virtual {v2}, Lcom/bykv/vk/openvk/component/video/api/ox/d;->ox()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v3, v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;IILjava/lang/String;)V

    const-string v2, "CALLBACK_ON_ERROR\u3001\u3001before isVideoPlaying\u3001\u3001\u3001\u3001\u3001"

    const-string v3, "NativeVideoController"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->by()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, -0x3ec

    if-eq v1, v2, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u51fa\u9519\u540e errorcode,extra\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->dq(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;II)Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->r(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v5, :cond_6

    const/16 v2, -0x13

    if-eq v1, v2, :cond_2

    const/16 v2, -0x26

    if-ne v1, v2, :cond_6

    :cond_2
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ji(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->kx(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->h(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v5

    invoke-virtual {v2, v3, v5, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/ref/WeakReference;Z)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string v2, "\u51fa\u9519\u540e\u5c55\u793a\u7ed3\u679c\u9875\u3001\u3001\u3001\u3001\u3001\u3001\u3001"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/component/utils/ig;->p(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->i(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->wp(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->le(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/r/j;

    move-result-object v3

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v6, v6, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->k(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v6

    invoke-virtual {v2, v3, v6, v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->dq(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/ref/WeakReference;Z)V

    :cond_4
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-virtual {v2, v5}, Lcom/bytedance/sdk/openadsdk/core/video/dq/dq;->ox(Z)V

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->o()V

    :cond_6
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->bl(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->n(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/s;->d()V

    :cond_7
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->op(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v3, v3, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->ir(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v5, v5, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->u(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J

    move-result-wide v5

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v7, v7, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Lcom/bykv/vk/openvk/component/video/dq/s/dq;->dq(JJ)I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Lcom/bykv/vk/openvk/component/video/api/p/ox$dq;->d(JI)V

    :cond_8
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->by()Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1$4;->d:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox$1;->dq:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;->jy(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/ox;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bykv/vk/openvk/component/video/api/p/ox$p;

    invoke-interface {v2, v0, v1}, Lcom/bykv/vk/openvk/component/video/api/p/ox$p;->dq(II)V

    :cond_9
    :goto_2
    return-void
.end method
