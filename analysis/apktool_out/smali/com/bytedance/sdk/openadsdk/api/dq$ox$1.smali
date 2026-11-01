.class Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;
.super Lcom/bytedance/sdk/openadsdk/api/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/api/dq$ox;->createAdNative(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/TTAdNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/api/dq$dq<",
        "Lcom/bykv/vk/openvk/api/proto/Loader;",
        ">;"
    }
.end annotation


# instance fields
.field final d:Lcom/bytedance/sdk/openadsdk/api/dq$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/openadsdk/api/dq$d<",
            "Lcom/bykv/vk/openvk/api/proto/Manager;",
            ">;"
        }
    .end annotation
.end field

.field dq:Lcom/bykv/vk/openvk/api/proto/Loader;

.field final synthetic ox:Ljava/lang/ref/SoftReference;

.field final synthetic p:Lcom/bytedance/sdk/openadsdk/api/dq$ox;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/api/dq$ox;Ljava/lang/ref/SoftReference;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->p:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->ox:Ljava/lang/ref/SoftReference;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq$dq;-><init>(Lcom/bytedance/sdk/openadsdk/api/dq$1;)V

    new-instance p1, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$1;

    invoke-direct {p1, p0}, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$1;-><init>(Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->d:Lcom/bytedance/sdk/openadsdk/api/dq$d;

    return-void
.end method


# virtual methods
.method public dq(Lcom/bytedance/sdk/openadsdk/api/dq$d;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/api/dq$d<",
            "Lcom/bykv/vk/openvk/api/proto/Loader;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->dq:Lcom/bykv/vk/openvk/api/proto/Loader;

    if-eqz v0, :cond_0

    invoke-interface {p1, v0}, Lcom/bytedance/sdk/openadsdk/api/dq$d;->dq(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;->p:Lcom/bytedance/sdk/openadsdk/api/dq$ox;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;

    invoke-direct {v1, p0, p1}, Lcom/bytedance/sdk/openadsdk/api/dq$ox$1$2;-><init>(Lcom/bytedance/sdk/openadsdk/api/dq$ox$1;Lcom/bytedance/sdk/openadsdk/api/dq$d;)V

    add-int/lit16 p2, p2, 0x2710

    invoke-static {v0, v1, p2}, Lcom/bytedance/sdk/openadsdk/api/dq$ox;->dq(Lcom/bytedance/sdk/openadsdk/api/dq$ox;Lcom/bytedance/sdk/openadsdk/api/dq$d;I)V

    return-void
.end method
