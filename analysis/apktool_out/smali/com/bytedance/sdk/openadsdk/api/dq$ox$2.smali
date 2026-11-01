.class Lcom/bytedance/sdk/openadsdk/api/dq$ox$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/dq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/dq$ox;->register(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bytedance/sdk/openadsdk/api/dq$d<",
        "Lcom/bykv/vk/openvk/api/proto/Manager;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

.field final synthetic dq:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq$ox;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$2;->d:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$2;->dq:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 5

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$2;->d:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$2;->dq:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Lg/hat;->g(I)Lg/hat;

    move-result-object v2

    const/16 v3, 0x8

    iget-object v4, v2, Lg/hat;->c:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v2}, Lg/hat;->k()Lg/cpo;

    move-result-object v0

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/Manager;->getBridge(I)Lcom/bykv/vk/openvk/api/proto/Bridge;

    move-result-object p1

    const/4 v1, 0x4

    const-class v2, Ljava/lang/Void;

    invoke-interface {p1, v1, v0, v2}, Lcom/bykv/vk/openvk/api/proto/Caller;->call(ILcom/bykv/vk/openvk/api/proto/ValueSet;Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Manager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox$2;->dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method
