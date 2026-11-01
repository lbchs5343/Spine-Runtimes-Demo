.class Lcom/bykv/vk/openvk/component/video/dq/d/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bykv/vk/openvk/component/video/dq/d/d$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/p;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/component/video/dq/d/d;)V
    .locals 3

    invoke-virtual {p1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->iw()I

    move-result v0

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$1;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->ia:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    return-void

    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
