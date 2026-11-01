.class Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

.field final synthetic dq:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;->dq:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->dq(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;Z)Z

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const-string v0, "tt_mute"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/d;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/activity/TTBaseVideoActivity;

    const-string v0, "tt_unmute"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/r;->ox(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;->dq:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->ox(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;

    move-result-object p1

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq$7;->d:Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;->s(Lcom/bytedance/sdk/openadsdk/core/component/reward/layout/dq;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/ugeno/o/d;->ox(Z)V

    return-void
.end method
