.class Lcom/bykv/vk/openvk/component/video/dq/d/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/dq/d/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/d/dq;Ljava/io/File;Lcom/bykv/vk/openvk/component/video/dq/d/mn$d;Lcom/bykv/vk/openvk/component/video/dq/d/ig$dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/d/mn;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/d;)V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ox:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    iget-object v0, v0, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->p:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    iget-object v0, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d;->mp:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/d;->mp:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    invoke-static {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/mn;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/mn;)Lcom/bykv/vk/openvk/component/video/dq/d/p;

    move-result-object p1

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/mn$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/mn;

    invoke-virtual {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->mn()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(ZLjava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
