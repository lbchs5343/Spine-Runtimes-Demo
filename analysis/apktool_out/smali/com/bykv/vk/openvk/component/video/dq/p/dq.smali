.class public abstract Lcom/bykv/vk/openvk/component/video/dq/p/dq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/dq/p/ox;


# instance fields
.field private d:Lcom/bykv/vk/openvk/component/video/dq/p/ox$s;

.field protected dq:Z

.field private ia:Lcom/bykv/vk/openvk/component/video/dq/p/ox$p;

.field private iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox$mn;

.field private mn:Lcom/bykv/vk/openvk/component/video/dq/p/ox$ox;

.field private ox:Lcom/bykv/vk/openvk/component/video/dq/p/ox$d;

.field private p:Lcom/bykv/vk/openvk/component/video/dq/p/ox$dq;

.field private s:Lcom/bykv/vk/openvk/component/video/dq/p/ox$iw;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->dq:Z

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/p/ox$s;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox$s;->d(Lcom/bykv/vk/openvk/component/video/dq/p/ox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnPrepared error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final d(II)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->ia:Lcom/bykv/vk/openvk/component/video/dq/p/ox$p;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/p/ox$p;->d(Lcom/bykv/vk/openvk/component/video/dq/p/ox;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return v0

    :goto_0
    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnInfo error: "

    invoke-static {p2, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public dq()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/p/ox$s;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->p:Lcom/bykv/vk/openvk/component/video/dq/p/ox$dq;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/p/ox$d;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->s:Lcom/bykv/vk/openvk/component/video/dq/p/ox$iw;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox$mn;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->mn:Lcom/bykv/vk/openvk/component/video/dq/p/ox$ox;

    iput-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->ia:Lcom/bykv/vk/openvk/component/video/dq/p/ox$p;

    return-void
.end method

.method public final dq(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->p:Lcom/bykv/vk/openvk/component/video/dq/p/ox$dq;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/bykv/vk/openvk/component/video/dq/p/ox$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v0, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnBufferingUpdate error: "

    invoke-static {v0, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final dq(IIII)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox$mn;

    if-eqz v0, :cond_0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/bykv/vk/openvk/component/video/dq/p/ox$mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string p2, "AbstractMediaPlayer"

    const-string p3, "AbstractMediaPlayer.notifyOnVideoSizeChanged error: "

    invoke-static {p2, p3, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/p/ox$d;

    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->p:Lcom/bykv/vk/openvk/component/video/dq/p/ox$dq;

    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->s:Lcom/bykv/vk/openvk/component/video/dq/p/ox$iw;

    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->iw:Lcom/bykv/vk/openvk/component/video/dq/p/ox$mn;

    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$ox;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->mn:Lcom/bykv/vk/openvk/component/video/dq/p/ox$ox;

    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$p;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->ia:Lcom/bykv/vk/openvk/component/video/dq/p/ox$p;

    return-void
.end method

.method public final dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox$s;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->d:Lcom/bykv/vk/openvk/component/video/dq/p/ox$s;

    return-void
.end method

.method public dq(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->dq:Z

    return-void
.end method

.method public final dq(II)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->mn:Lcom/bykv/vk/openvk/component/video/dq/p/ox$ox;

    if-eqz v1, :cond_0

    invoke-interface {v1, p0, p1, p2}, Lcom/bykv/vk/openvk/component/video/dq/p/ox$ox;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox;II)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    return v0

    :goto_0
    const-string p2, "AbstractMediaPlayer"

    const-string v1, "AbstractMediaPlayer.notifyOnError error: "

    invoke-static {p2, v1, p1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v0
.end method

.method public final ox()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->ox:Lcom/bykv/vk/openvk/component/video/dq/p/ox$d;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox$d;->dq(Lcom/bykv/vk/openvk/component/video/dq/p/ox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnCompletion error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final p()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/p/dq;->s:Lcom/bykv/vk/openvk/component/video/dq/p/ox$iw;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/bykv/vk/openvk/component/video/dq/p/ox$iw;->ox(Lcom/bykv/vk/openvk/component/video/dq/p/ox;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    const-string v1, "AbstractMediaPlayer"

    const-string v2, "AbstractMediaPlayer.notifyOnSeekComplete error: "

    invoke-static {v1, v2, v0}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
