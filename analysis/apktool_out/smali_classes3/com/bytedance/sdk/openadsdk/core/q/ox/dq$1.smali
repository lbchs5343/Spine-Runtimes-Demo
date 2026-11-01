.class Lcom/bytedance/sdk/openadsdk/core/q/ox/dq$1;
.super Landroid/util/LruCache;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/LruCache<",
        "Ljava/lang/String;",
        "Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    invoke-direct {p0, p2}, Landroid/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public dq(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/util/LruCache;->entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq$1;->dq:Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/q/ox/dq;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public synthetic entryRemoved(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    check-cast p4, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq$1;->dq(ZLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)V

    return-void
.end method

.method public synthetic sizeOf(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/q/ox/dq$1;->dq(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/q/ox/ox;)I

    move-result p1

    return p1
.end method
