.class Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;
.super Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;->dq(Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ir/op;)Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/ir/op;

.field final synthetic dq:Ljava/util/Map;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/core/ir/op;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->dq:Ljava/util/Map;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq/d;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 3

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iget-boolean p1, p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->mn:Z

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/r/j;->fn()Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iget-object v0, p3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->d:Landroid/content/Context;

    iget-object p3, p3, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->ox:Ljava/lang/String;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/core/ir/c;->dq(Ljava/lang/String;)I

    move-result v2

    invoke-direct {p1, v0, v1, p3, v2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;-><init>(Lcom/bytedance/sdk/openadsdk/core/r/j;Landroid/content/Context;Ljava/lang/String;I)V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->p(Z)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/d/dq;->dq(Ljava/util/Map;)Z

    return-void

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->dq:Ljava/util/Map;

    const-string p3, "downloadEventConfig"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of p3, p1, Lcom/ss/android/download/api/download/DownloadEventConfig;

    if-eqz p3, :cond_1

    check-cast p1, Lcom/ss/android/download/api/download/DownloadEventConfig;

    invoke-interface {p1, p2}, Lcom/ss/android/download/api/download/DownloadEventConfig;->setDownloadScene(I)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/ir/op;

    const-string p2, "itemClickListener"

    invoke-virtual {p1, p2}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->ox:Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/dq;->kk:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object p2

    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/ia/dq/dq/dq/mn$3;->d:Lcom/bytedance/sdk/openadsdk/core/ir/op;

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
