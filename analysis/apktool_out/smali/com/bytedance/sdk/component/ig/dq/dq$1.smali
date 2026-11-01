.class Lcom/bytedance/sdk/component/ig/dq/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/ig/dq/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/component/ig/dq/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/ig/dq/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->gh()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Lcom/bytedance/sdk/component/ig/dq/dq;)J

    move-result-wide v3

    iget-object v5, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v5}, Lcom/bytedance/sdk/component/ig/dq/dq;->d(Lcom/bytedance/sdk/component/ig/dq/dq;)I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Lcom/bytedance/sdk/component/ig/dq/dq;J)J

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ig/dq/dq;->cd()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ig/dq/dq;->ox(Lcom/bytedance/sdk/component/ig/dq/dq;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/bykv/vk/openvk/component/video/api/ox;->p()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "run: lastCur = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v3}, Lcom/bytedance/sdk/component/ig/dq/dq;->ox(Lcom/bytedance/sdk/component/ig/dq/dq;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "  currentPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TTLiveVideoPlayer"

    invoke-static {v3, v2}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-virtual {v2}, Lcom/bytedance/sdk/component/ig/dq/dq;->cd()J

    move-result-wide v3

    invoke-static {v2, v0, v1, v3, v4}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Lcom/bytedance/sdk/component/ig/dq/dq;JJ)V

    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v2, v0, v1}, Lcom/bytedance/sdk/component/ig/dq/dq;->d(Lcom/bytedance/sdk/component/ig/dq/dq;J)J

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->gh()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v2}, Lcom/bytedance/sdk/component/ig/dq/dq;->p(Lcom/bytedance/sdk/component/ig/dq/dq;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-ltz v4, :cond_3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Lcom/bytedance/sdk/component/ig/dq/dq;Z)Z

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->s()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->s(Lcom/bytedance/sdk/component/ig/dq/dq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/api/dq$dq;

    iget-object v2, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-interface {v1, v2}, Lcom/bykv/vk/openvk/component/video/api/dq$dq;->dq(Lcom/bykv/vk/openvk/component/video/api/dq;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->iw(Lcom/bytedance/sdk/component/ig/dq/dq;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->mn(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->mn(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bytedance/sdk/component/utils/e;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v1}, Lcom/bytedance/sdk/component/ig/dq/dq;->d(Lcom/bytedance/sdk/component/ig/dq/dq;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->cd()J

    move-result-wide v1

    iget-object v3, p0, Lcom/bytedance/sdk/component/ig/dq/dq$1;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-virtual {v3}, Lcom/bytedance/sdk/component/ig/dq/dq;->cd()J

    move-result-wide v3

    invoke-static {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Lcom/bytedance/sdk/component/ig/dq/dq;JJ)V

    return-void
.end method
