.class Lcom/bytedance/sdk/openadsdk/api/dq$ox$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/api/dq$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/dq$ox;->getExtra(Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;
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
.field final synthetic d:Landroid/os/Bundle;

.field final synthetic dq:Ljava/lang/Class;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/api/dq$ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq$ox;Ljava/lang/Class;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$4;->ox:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$4;->dq:Ljava/lang/Class;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$4;->d:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$4;->ox:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Lcom/bytedance/sdk/openadsdk/api/dq$ox;)Lcom/bykv/vk/openvk/api/proto/Manager;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$4;->dq:Ljava/lang/Class;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$4;->d:Landroid/os/Bundle;

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Lcom/bykv/vk/openvk/api/proto/Manager;Ljava/lang/Class;Landroid/os/Bundle;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic dq(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/bykv/vk/openvk/api/proto/Manager;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox$4;->dq(Lcom/bykv/vk/openvk/api/proto/Manager;)V

    return-void
.end method
