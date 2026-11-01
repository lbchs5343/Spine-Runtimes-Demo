.class Lcom/bykv/vk/openvk/component/video/dq/d/p$2;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(ZZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Z

.field final synthetic dq:Z

.field final synthetic ox:Ljava/lang/String;

.field final synthetic p:Lcom/bykv/vk/openvk/component/video/dq/d/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/p;Ljava/lang/String;ZZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->p:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    iput-boolean p3, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->dq:Z

    iput-boolean p4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->d:Z

    iput-object p5, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->ox:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->p:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-static {v0}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->p:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Landroid/util/SparseArray;

    move-result-object v1

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->dq:Z

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/d/d;->dq(Z)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-boolean v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->d:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->ox:Ljava/lang/String;

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$2;->ox:Ljava/lang/String;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/api/iw/d;->dq(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/dq/d/d;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq()V

    :cond_2
    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
