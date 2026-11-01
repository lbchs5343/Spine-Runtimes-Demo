.class Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;
.super Lcom/bytedance/sdk/component/o/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/q/p/dq;->dq(Landroid/webkit/WebView;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic dq:Landroid/graphics/Bitmap;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/q/p/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/q/p/dq;Ljava/lang/String;Landroid/graphics/Bitmap;Lcom/bytedance/sdk/openadsdk/core/r/j;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/q/p/dq;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->dq:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/o/kk;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->ox:Lcom/bytedance/sdk/openadsdk/core/q/p/dq;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->dq:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->d:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/q/p/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/q/p/dq;Landroid/graphics/Bitmap;Lcom/bytedance/sdk/openadsdk/core/r/j;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->dq:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->dq:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->dq:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->dq:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    :cond_0
    return-void

    :catchall_2
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->dq:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/q/p/dq$1;->dq:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    :cond_1
    throw v0
.end method
