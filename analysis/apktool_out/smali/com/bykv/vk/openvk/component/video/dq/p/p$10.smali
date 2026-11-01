.class Lcom/bykv/vk/openvk/component/video/dq/p/p$10;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/p/p;->k()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/p/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    new-instance v1, Lcom/bykv/vk/openvk/component/video/dq/p/d;

    invoke-direct {v1}, Lcom/bykv/vk/openvk/component/video/dq/p/d;-><init>()V

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;Lcom/bykv/vk/openvk/component/video/dq/p/ox;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CSJ_VIDEO_MEDIA"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->ox(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$s;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$d;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$ox;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$dq;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$iw;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$p;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$mn;)V

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/p;)Lcom/bykv/vk/openvk/component/video/dq/p/ox;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox;->ox(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/p$10;->dq:Lcom/bykv/vk/openvk/component/video/dq/p/p;

    invoke-static {v1, v0}, Lcom/bykv/vk/openvk/component/video/dq/p/p;->d(Lcom/bykv/vk/openvk/component/video/dq/p/p;Z)Z

    :cond_1
    :goto_1
    return-void
.end method
