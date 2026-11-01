.class Lcom/bytedance/sdk/openadsdk/core/o/ox/o$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Ljava/util/Map;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/util/Map;

.field final synthetic dq:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$3;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$3;->dq:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$3;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$3;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$3;->dq:Lcom/ss/android/download/api/config/IDownloadButtonClickListener;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$3;->d:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->dq(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Lcom/ss/android/download/api/config/IDownloadButtonClickListener;Ljava/util/Map;)V

    return-void
.end method
