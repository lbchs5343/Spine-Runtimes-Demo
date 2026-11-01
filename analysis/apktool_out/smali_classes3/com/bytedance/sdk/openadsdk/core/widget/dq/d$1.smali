.class Lcom/bytedance/sdk/openadsdk/core/widget/dq/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Lcom/bytedance/sdk/component/mp/dq;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

.field final synthetic dq:Lcom/bytedance/sdk/component/mp/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;Lcom/bytedance/sdk/component/mp/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d$1;->dq:Lcom/bytedance/sdk/component/mp/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d$1;->d:Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d$1;->dq:Lcom/bytedance/sdk/component/mp/dq;

    invoke-interface {v1}, Lcom/bytedance/sdk/component/mp/dq;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/widget/dq/d;->dq(Landroid/webkit/WebView;)V

    return-void
.end method
