.class Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/d$dq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

.field final synthetic dq:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

.field final synthetic ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s;Lcom/bytedance/sdk/openadsdk/core/widget/mn;Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s$2;->ox:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s$2;->dq:Lcom/bytedance/sdk/openadsdk/core/widget/mn;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/s$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/ox/o;->ox()V

    :cond_0
    return-void
.end method
