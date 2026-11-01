.class Lcom/bykv/vk/openvk/component/video/dq/d/p$3;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bykv/vk/openvk/component/video/dq/d/p;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/component/video/dq/d/p;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$3;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$3;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-static {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$3;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$3;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-static {v4}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Landroid/util/SparseArray;

    move-result-object v4

    iget-object v5, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$3;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-static {v5}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->dq(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v4}, Ljava/util/Map;->clear()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/bykv/vk/openvk/component/video/dq/d/p$3;->dq:Lcom/bykv/vk/openvk/component/video/dq/d/p;

    invoke-static {v2}, Lcom/bykv/vk/openvk/component/video/dq/d/p;->d(Lcom/bykv/vk/openvk/component/video/dq/d/p;)Lcom/bykv/vk/openvk/component/video/dq/d/p$d;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->clear()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bykv/vk/openvk/component/video/dq/d/d;

    invoke-virtual {v1}, Lcom/bykv/vk/openvk/component/video/dq/d/dq;->dq()V

    sget-boolean v2, Lcom/bykv/vk/openvk/component/video/dq/d/s;->ox:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto :goto_2

    :cond_3
    return-void

    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
