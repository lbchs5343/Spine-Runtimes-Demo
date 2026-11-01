.class Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;->iw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:I

.field final synthetic dq:I

.field final synthetic ox:I

.field final synthetic p:I

.field final synthetic s:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;IIII)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->s:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->dq:I

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->d:I

    iput p4, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->ox:I

    iput p5, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->p:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->dq:I

    int-to-float v1, v0

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->d:I

    sub-int/2addr v2, v0

    int-to-float v0, v2

    mul-float v0, v0, p1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->ox:I

    int-to-float v2, v1

    iget v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->p:I

    sub-int/2addr v3, v1

    int-to-float v1, v3

    mul-float v1, v1, p1

    add-float/2addr v1, v2

    float-to-int p1, v1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->s:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->s:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer$3;->s:Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;

    invoke-virtual {v3, v0, p1, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/playable/PlayableVideoContainer;->dq(IIII)V

    return-void
.end method
