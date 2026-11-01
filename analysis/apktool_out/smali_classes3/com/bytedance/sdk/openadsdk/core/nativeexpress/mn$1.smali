.class Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/nativeexpress/d/dq$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/p/kk$dq;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dq/d/dq;
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn$1;->dq:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/mn;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lcom/bytedance/sdk/component/adexpress/dq/d/d;->dq(Ljava/lang/String;Lcom/bytedance/sdk/component/adexpress/p/kk$dq;Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/component/adexpress/dq/d/dq;

    move-result-object p1

    return-object p1
.end method

.method public dq()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
