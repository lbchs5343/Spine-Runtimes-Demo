.class Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/fw/kk;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->o()V

    return-void
.end method

.method public dq()V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/endcard/dq;->mn:Lcom/bytedance/sdk/component/widget/SSWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/bytedance/sdk/component/widget/SSWebView;->ia()V

    return-void
.end method
