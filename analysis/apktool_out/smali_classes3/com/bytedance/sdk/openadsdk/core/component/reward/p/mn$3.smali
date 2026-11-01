.class Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$3;
.super Lcom/bytedance/sdk/openadsdk/core/d/dq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/bytedance/sdk/openadsdk/core/d/dq;-><init>(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/r/j;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/core/d/d;->dq(Landroid/view/View;Lcom/bytedance/sdk/openadsdk/core/r/o;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn$3;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/p/mn;)Lcom/bytedance/sdk/openadsdk/core/component/reward/view/d;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method
