.class Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/o/ox/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Lcom/bytedance/sdk/openadsdk/core/r/ox;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;Ljava/util/Map;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

.field final synthetic dq:Ljava/util/Map;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Ljava/util/Map;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->dq:Ljava/util/Map;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->d:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->d(Z)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->dq:Ljava/util/Map;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->d:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Ljava/util/Map;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->d:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$8;->dq:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;Ljava/util/Map;)V

    return-void
.end method
