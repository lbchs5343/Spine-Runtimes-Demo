.class Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/component/utils/d$dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Ljava/lang/String;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->ox:Lcom/bytedance/sdk/openadsdk/core/widget/dq/p;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dq()V
    .locals 3

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->d:Ljava/lang/String;

    const-string v2, "lp_openurl"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->d:Ljava/lang/String;

    const-string v2, "lp_deeplink_success_realtime"

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public dq(Ljava/lang/Throwable;)V
    .locals 2

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->d:Ljava/lang/String;

    const-string v1, "lp_openurl_failed"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->dq:Lcom/bytedance/sdk/openadsdk/core/r/j;

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/dq/p$1;->d:Ljava/lang/String;

    const-string v1, "lp_deeplink_fail_realtime"

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/core/ig/ox;->p(Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
