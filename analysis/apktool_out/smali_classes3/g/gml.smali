.class public final synthetic Lg/gml;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/gml;->a:I

    iput-object p1, p0, Lg/gml;->b:Ljava/lang/Object;

    iput-object p3, p0, Lg/gml;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget p1, p0, Lg/gml;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/gml;->b:Ljava/lang/Object;

    check-cast p1, Lg/emr;

    iget-object p1, p1, Lg/emr;->n:Ljava/lang/Object;

    check-cast p1, Lg/hp;

    iget-object p1, p1, Lg/hp;->g:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/gml;->b:Ljava/lang/Object;

    check-cast p1, Lg/glg;

    iget-object v0, p0, Lg/gml;->c:Ljava/lang/Object;

    check-cast v0, Lg/dzw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lg/dzw;->ab(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lg/dzw;->u:I

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
