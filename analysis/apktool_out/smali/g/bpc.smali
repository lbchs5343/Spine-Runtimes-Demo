.class public final Lg/bpc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Lg/dac;

.field public final synthetic c:Lg/gkb;


# direct methods
.method public constructor <init>(Lg/gkb;FLg/dac;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bpc;->c:Lg/gkb;

    iput p2, p0, Lg/bpc;->a:F

    iput-object p3, p0, Lg/bpc;->b:Lg/dac;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Float;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget v0, p0, Lg/bpc;->a:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget-object p1, p0, Lg/bpc;->c:Lg/gkb;

    invoke-virtual {p1, p0}, Lg/gkb;->d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-static {p1}, Lg/gkb;->kk(Lg/gkb;)Lg/bdg;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lg/gkb;->kk(Lg/gkb;)Lg/bdg;

    move-result-object p1

    iget-object v0, p0, Lg/bpc;->b:Lg/dac;

    iget-object v1, v0, Lg/dac;->d:Ljava/lang/String;

    iget-object v0, v0, Lg/dac;->g:Lorg/json/JSONArray;

    check-cast p1, Lg/eie;

    invoke-virtual {p1, v1, v0}, Lg/eie;->n(Ljava/lang/String;Lorg/json/JSONArray;)V

    :cond_0
    return-void
.end method
