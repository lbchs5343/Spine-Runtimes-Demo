.class Lcom/bytedance/sdk/openadsdk/api/dq$s$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/dq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/dq$s;->ia(Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/api/dq$d<",
        "Lcom/bykv/vk/openvk/api/proto/Loader;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bykv/vk/openvk/api/proto/Bridge;

.field final synthetic dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/api/dq$s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq$s;Lcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/Bridge;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$s$10;->ox:Lcom/bytedance/sdk/openadsdk/api/dq$s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$s$10;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/dq$s$10;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/api/proto/Loader;)V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$s$10;->dq:Lcom/bykv/vk/openvk/api/proto/ValueSet;

    invoke-static {v0}, Lg/hat;->e(Lcom/bykv/vk/openvk/api/proto/ValueSet;)Lg/hat;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lg/hat;->i(IZ)V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$s$10;->d:Lcom/bykv/vk/openvk/api/proto/Bridge;

    iget-object v3, v0, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x9

    invoke-interface {p1, v2, v0, v1}, Lcom/bykv/vk/openvk/api/proto/Loader;->load(ILcom/bykv/vk/openvk/api/proto/ValueSet;Lcom/bykv/vk/openvk/api/proto/EventListener;)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq$s$10;->dq(Lcom/bykv/vk/openvk/api/proto/Loader;)V

    return-void
.end method
