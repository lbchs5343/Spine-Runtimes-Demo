.class Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/iw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const-string v0, "ProxyServer"

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    new-instance v2, Ljava/net/ServerSocket;

    iget-object v3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v3}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->d(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3

    const/4 v4, 0x0

    const/16 v5, 0x32

    invoke-direct {v2, v4, v5, v3}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/iw;Ljava/net/ServerSocket;)Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->p(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/net/ServerSocket;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v2

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/iw;I)I

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->s(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, "socket not bound"

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ox(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->d(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->s(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/o;->dq(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->iw(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->mn(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v5, "run:  state = "

    aput-object v5, v3, v4

    const/4 v6, 0x1

    aput-object v1, v3, v6

    invoke-static {v0, v3}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->mn(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1, v4, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->mn(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v5, v2, v4

    aput-object v1, v2, v6

    invoke-static {v0, v2}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;[Ljava/lang/Object;)V

    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v1, :cond_3

    const-string v1, "proxy server start!"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->mn(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v1, v6, :cond_5

    :try_start_2
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->p(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Ljava/net/ServerSocket;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ia(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;

    invoke-direct {v3}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;-><init>()V

    invoke-virtual {v3, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/ox;)Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->dq(Ljava/net/Socket;)Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;

    move-result-object v1

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->kk(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/mn$ox;)Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn$dq;->dq()Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    move-result-object v1

    new-instance v2, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2$1;

    const-string v3, "ProxyTask"

    const/16 v5, 0xa

    invoke-direct {v2, p0, v3, v5, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2$1;-><init>(Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;Ljava/lang/String;ILcom/bykv/vk/openvk/component/video/dq/d/mn;)V

    invoke-static {}, Lcom/bytedance/sdk/component/o/mn;->dq()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_4
    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/ox/dq;->dq(Ljava/net/Socket;)V

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v2, "accept error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x3

    if-gt v4, v1, :cond_5

    goto :goto_1

    :goto_2
    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "proxy server crashed!  "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "error"

    invoke-static {v2, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    sget-boolean v1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v1, :cond_6

    const-string v1, "proxy server closed!"

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/api/iw/ox;->dq(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ox(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)V

    return-void

    :catch_1
    move-exception v1

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "create ServerSocket error!  "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v0, "create ServerSocket error"

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->dq(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/iw$2;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/iw;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/iw;->ox(Lcom/bykv/vk/openvk/component/video/dq/d/iw;)V

    return-void
.end method
