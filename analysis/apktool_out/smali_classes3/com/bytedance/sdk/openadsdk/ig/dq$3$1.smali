.class Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ig/dq$3;->dq(ZLjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:Z

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/ig/dq$3;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ig/dq$3;ZLjava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;->ox:Lcom/bytedance/sdk/openadsdk/ig/dq$3;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;->dq:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    :try_start_0
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;->dq:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;->ox:Lcom/bytedance/sdk/openadsdk/ig/dq$3;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->iw:Lcom/bytedance/sdk/openadsdk/ig/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/ig/dq;->ox:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;->ox:Lcom/bytedance/sdk/openadsdk/ig/dq$3;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->iw:Lcom/bytedance/sdk/openadsdk/ig/dq;

    iget-object v2, v0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->dq:Landroid/content/Context;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->d:Ljava/lang/String;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->ox:Landroid/webkit/WebResourceRequest;

    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->p:Landroid/util/Pair;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Landroid/webkit/WebResourceResponse;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/ig/dq$3;->s:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lcom/bytedance/sdk/component/d/dq/o;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$3$1;->d:Ljava/util/Map;

    invoke-virtual/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;Lcom/bytedance/sdk/component/d/dq/o;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
