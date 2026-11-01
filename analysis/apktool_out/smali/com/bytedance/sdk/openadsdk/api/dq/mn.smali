.class public Lcom/bytedance/sdk/openadsdk/api/dq/mn;
.super Lcom/bytedance/sdk/openadsdk/api/d;

# interfaces
.implements Lcom/ss/android/download/api/config/DownloadMarketInterceptor;


# direct methods
.method public constructor <init>(Lcom/bykv/vk/openvk/api/proto/EventListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/api/d;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/d;->dq:Lcom/bykv/vk/openvk/api/proto/EventListener;

    return-void
.end method


# virtual methods
.method public interceptObmMarket(Ljava/util/Map;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lg/hat;->f()Lg/hat;

    move-result-object v0

    iget-object v1, v0, Lg/hat;->c:Landroid/util/SparseArray;

    const v2, 0x36a9e

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object p1

    invoke-static {}, Lg/cpq;->f()Lg/cpq;

    move-result-object v0

    iput-object p1, v0, Lg/cpq;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Lg/cpq;->h()Lg/gok;

    move-result-object p1

    const v0, 0x36a9d

    invoke-virtual {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/api/d;->dq(ILcom/bykv/vk/openvk/api/proto/Result;)Lcom/bykv/vk/openvk/api/proto/ValueSet;

    move-result-object p1

    if-eqz p1, :cond_0

    const-class v0, Ljava/util/Map;

    invoke-interface {p1, v2, v0}, Lcom/bykv/vk/openvk/api/proto/ValueSet;->objectValue(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
