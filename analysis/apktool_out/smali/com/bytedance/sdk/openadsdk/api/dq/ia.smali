.class public Lcom/bytedance/sdk/openadsdk/api/dq/ia;
.super Lcom/bytedance/sdk/openadsdk/api/d;

# interfaces
.implements Lcom/ss/android/download/api/config/OnItemClickListener;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/d;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-void
.end method


# virtual methods
.method public onItemClick(Lcom/ss/android/download/api/download/DownloadModel;Lcom/ss/android/download/api/download/DownloadEventConfig;Lcom/ss/android/download/api/download/DownloadController;)V
    .locals 4

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/api/d;->dq()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object v0

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v1

    iget-object v2, v1, Lg/hat;->c:Landroid/util/SparseArray;

    new-instance v3, Lcom/bytedance/sdk/openadsdk/api/dq/ox;

    invoke-direct {v3, p1}, Lcom/bytedance/sdk/openadsdk/api/dq/ox;-><init>(Lcom/ss/android/download/api/download/DownloadModel;)V

    const p1, 0x367e1

    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/dq/d;

    invoke-direct {p1, p2}, Lcom/bytedance/sdk/openadsdk/api/dq/d;-><init>(Lcom/ss/android/download/api/download/DownloadEventConfig;)V

    const p2, 0x367e2

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/dq/dq;

    invoke-direct {p1, p3}, Lcom/bytedance/sdk/openadsdk/api/dq/dq;-><init>(Lcom/ss/android/download/api/download/DownloadController;)V

    const p2, 0x367e3

    invoke-virtual {v2, p2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v1}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    iput-object p1, v0, Lg/cpq;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/cpq;->h()Lg/gok;

    move-result-object p1

    :goto_0
    const p2, 0x367e0

    invoke-virtual {p0, p2, p1}, Lcom/bytedance/sdk/openadsdk/api/d;->dq(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    return-void
.end method
