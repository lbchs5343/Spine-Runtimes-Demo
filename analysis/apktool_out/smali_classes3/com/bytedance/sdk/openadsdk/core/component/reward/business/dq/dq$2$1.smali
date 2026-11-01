.class Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;->dq(Lcom/bytedance/sdk/component/iw/no;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;

.field final synthetic dq:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2$1;->dq:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;)Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->d(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;)Landroid/widget/LinearLayout;

    move-result-object v0

    const-string v1, "#66000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2$1;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/business/dq/dq$2$1;->dq:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method
