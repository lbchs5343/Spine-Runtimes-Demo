.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d;
.super Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d$dq;
    }
.end annotation


# instance fields
.field public d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d$dq;

.field public dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

.field public ox:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d$dq;ILcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;-><init>(Lcom/bykv/vk/openvk/api/proto/Bridge;)V

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d$dq;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d;->ox:I

    return-void
.end method


# virtual methods
.method public d(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;->d(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;FF)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d;->d:Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d$dq;

    if-eqz p1, :cond_0

    iget p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d;->ox:I

    invoke-interface {p1, p2}, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d$dq;->dq(I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/onepointfive/d;->dq:Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/dq/d/dq/d;->dq(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public dq(Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    return-void
.end method
