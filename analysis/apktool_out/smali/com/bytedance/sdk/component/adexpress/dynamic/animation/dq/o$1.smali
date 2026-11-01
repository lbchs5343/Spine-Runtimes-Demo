.class Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o;->dq()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o;

.field final synthetic dq:I


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o;I)V
    .locals 0

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o;

    iput p2, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o$1;->dq:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o$1;->d:Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o;

    invoke-static {p1}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o;->dq(Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o;)Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o$dq;

    move-result-object p1

    iget v0, p0, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o$1;->dq:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/adexpress/dynamic/animation/dq/o$dq;->dq(I)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;Z)V
    .locals 0

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;Z)V
    .locals 0

    return-void
.end method
