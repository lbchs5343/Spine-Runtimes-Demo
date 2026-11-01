.class Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2;->dq(Lcom/bytedance/sdk/component/iw/no;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2;

.field final synthetic dq:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2$1;->dq:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2;->dq:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->mn:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/mn$2$1;->dq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method
