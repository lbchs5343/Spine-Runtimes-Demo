.class Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ss/android/download/api/config/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/o/ox/o;->d(Lcom/ss/android/download/api/config/IDownloadButtonClickListener;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ir/op;

.field final synthetic dq:Ljava/util/Map;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/o/ox/o;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ir/op;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->dq:Ljava/util/Map;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->d:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 6

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->fw:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fn()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->ae()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v2, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->s:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->iw:Ljava/lang/String;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object v4, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->iw:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/wn;->dq(Landroid/content/Context;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/r/j;ILjava/lang/String;Ljava/util/Map;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->dq:Ljava/util/Map;

    const-string p2, "downloadEventConfig"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p2, p1, Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz p2, :cond_1

    check-cast p1, Lcom/ss/android/download/api/download/DownloadEventConfig;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/ss/android/download/api/download/DownloadEventConfig;->setDownloadScene(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->d:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    const-string p2, "itemClickListener"

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->ox:Lcom/bytedance/sdk/openadsdk/core/o/ox/o;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/o/ox/ia;->wp:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/o/ox/o$4;->d:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    iget-object v0, p2, Lg/hat;->c:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {p2}, Lg/hat;->k()Lg/cpo;

    move-result-object p2

    const-class p3, Ljava/lang/Void;

    const/16 v0, 0x11

    invoke-interface {p1, v0, p2, p3}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    :cond_1
    return-void
.end method
