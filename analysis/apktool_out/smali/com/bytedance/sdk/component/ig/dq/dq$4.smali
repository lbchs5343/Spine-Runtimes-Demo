.class Lcom/bytedance/sdk/component/ig/dq/dq$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/ig/dq/dq;->d()V
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

    iput-object p1, p0, Lcom/bytedance/sdk/component/ig/dq/dq$4;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$4;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->o(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$4;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->mp()Z

    move-result v0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$4;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->o(Lcom/bytedance/sdk/component/ig/dq/dq;)Lcom/bykv/vk/component/ttvideo/ILivePlayer;

    move-result-object v0

    invoke-interface {v0}, Lcom/bykv/vk/component/ttvideo/ILivePlayer;->play()V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$4;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->no(Lcom/bytedance/sdk/component/ig/dq/dq;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/ig/dq/dq;->dq(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$4;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/component/ig/dq/dq;->s(Lcom/bytedance/sdk/component/ig/dq/dq;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "TTLiveVideoPlayer"

    const-string v2, "play: catch exception"

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/component/ig/dq/dq$4;->dq:Lcom/bytedance/sdk/component/ig/dq/dq;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/ig/dq/dq;->d(Lcom/bytedance/sdk/component/ig/dq/dq;Z)Z

    :cond_2
    return-void
.end method
