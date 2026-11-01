.class Lcom/bytedance/sdk/openadsdk/ig/dq$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/ig/dq;

.field final synthetic dq:Landroid/webkit/WebResourceRequest;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/ig/dq;Landroid/webkit/WebResourceRequest;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$1;->d:Lcom/bytedance/sdk/openadsdk/ig/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$1;->dq:Landroid/webkit/WebResourceRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$1;->d:Lcom/bytedance/sdk/openadsdk/ig/dq;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/wp;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$1;->d:Lcom/bytedance/sdk/openadsdk/ig/dq;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/ig/dq;->mn:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/ig/dq$1;->dq:Landroid/webkit/WebResourceRequest;

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/ig/dq;->dq(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    return-void
.end method
