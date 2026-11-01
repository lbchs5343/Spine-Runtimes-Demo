.class Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/dq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->dq(Lcom/bytedance/sdk/openadsdk/api/dq$d;I)V
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
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/api/dq$d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;Lcom/bytedance/sdk/openadsdk/api/dq$d;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;->d:Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;->dq:Lcom/bytedance/sdk/openadsdk/api/dq$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;->d:Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->p:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->d:Lcom/bytedance/sdk/openadsdk/api/dq$d;

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Lcom/bytedance/sdk/openadsdk/api/dq$ox;Lcom/bytedance/sdk/openadsdk/api/dq$d;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;->d:Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->ox:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/Manager;->createLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;->dq:Lcom/bytedance/sdk/openadsdk/api/dq$d;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;->d:Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/dq$d;->dq(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Manager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;->dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method
