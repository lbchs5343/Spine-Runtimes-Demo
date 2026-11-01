.class Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->dq(ILjava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:Ljava/util/Map;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/q;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;Ljava/util/Map;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/q;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;->dq:Ljava/util/Map;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/q;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->o(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Lcom/ss/android/download/api/download/DownloadEventConfig;

    move-result-object p1

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/ss/android/download/api/download/DownloadEventConfig;->setDownloadScene(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;->dq:Ljava/util/Map;

    const-string p2, "itemClickListener"

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/q;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/q;->no(Lcom/bytedance/sdk/openadsdk/core/o/ox/q;)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;->d:I

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/q$6;->dq:Ljava/util/Map;

    iget-object v1, p3, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p3}, Lg/hat;->k()Lg/cpo;

    move-result-object p3

    const-class v0, Ljava/lang/Void;

    invoke-interface {p1, p2, p3, v0}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method
