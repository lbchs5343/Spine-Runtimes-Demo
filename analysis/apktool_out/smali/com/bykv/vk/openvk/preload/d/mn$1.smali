.class final Lcom/bykv/vk/openvk/preload/d/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/preload/d/mn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/Object;

.field final synthetic dq:Lcom/bykv/vk/openvk/preload/d/d;

.field final synthetic iw:Lcom/bykv/vk/openvk/preload/d/mn;

.field final synthetic ox:Ljava/util/List;

.field final synthetic p:Ljava/util/List;

.field final synthetic s:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/preload/d/mn;Lcom/bykv/vk/openvk/preload/d/d;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->iw:Lcom/bykv/vk/openvk/preload/d/mn;

    iput-object p2, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->dq:Lcom/bykv/vk/openvk/preload/d/d;

    iput-object p3, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->d:Ljava/lang/Object;

    iput-object p4, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->ox:Ljava/util/List;

    iput-object p5, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->p:Ljava/util/List;

    iput-object p6, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->s:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->dq:Lcom/bykv/vk/openvk/preload/d/d;

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->d:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/bykv/vk/openvk/preload/d/d;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->ox:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/bykv/vk/openvk/preload/d/kk$dq; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    iget-object v0, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->s:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_2

    :goto_1
    :try_start_1
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->iw:Lcom/bykv/vk/openvk/preload/d/mn;

    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/preload/d/p;->dq(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception v0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->p:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->iw:Lcom/bykv/vk/openvk/preload/d/mn;

    invoke-virtual {v1, v0}, Lcom/bykv/vk/openvk/preload/d/p;->dq(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_3
    iget-object v1, p0, Lcom/bykv/vk/openvk/preload/d/mn$1;->s:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
