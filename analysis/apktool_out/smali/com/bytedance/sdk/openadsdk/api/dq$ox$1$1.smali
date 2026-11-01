.class Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/dq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;
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
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$1;->dq:Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->ox:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-interface {p1, v1}, Lcom/bykv/vk/openvk/api/proto/Manager;->createLoader(Landroid/content/Context;)Lcom/bykv/vk/openvk/api/proto/Loader;

    move-result-object p1

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Manager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$1;->dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method
