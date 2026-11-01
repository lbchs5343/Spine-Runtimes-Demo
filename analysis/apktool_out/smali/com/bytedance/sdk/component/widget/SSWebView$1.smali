.class Lcom/bytedance/sdk/component/widget/SSWebView$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/widget/SSWebView;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/widget/SSWebView;

.field final synthetic dq:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/SSWebView$1;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    iput-object p2, p0, Lcom/bytedance/sdk/component/widget/SSWebView$1;->dq:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/SSWebView$1;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/SSWebView$1;->dq:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Landroid/content/Context;)Landroid/webkit/WebView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/webkit/WebView;)Landroid/webkit/WebView;

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/SSWebView$1;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {v2}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/SSWebView$1;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    iget-object v3, p0, Lcom/bytedance/sdk/component/widget/SSWebView$1;->dq:Landroid/content/Context;

    invoke-static {v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/bytedance/sdk/component/widget/SSWebView$1;->d:Lcom/bytedance/sdk/component/widget/SSWebView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/component/widget/SSWebView;->dq(Lcom/bytedance/sdk/component/widget/SSWebView;J)J

    return-void
.end method
