.class public final Lg/cxx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lg/gkb;

.field public final synthetic b:I

.field public final synthetic c:I

.field public final synthetic d:I


# direct methods
.method public constructor <init>(Lg/gkb;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cxx;->a:Lg/gkb;

    iput p2, p0, Lg/cxx;->b:I

    iput p3, p0, Lg/cxx;->c:I

    iput p4, p0, Lg/cxx;->d:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p1, p0, Lg/cxx;->a:Lg/gkb;

    invoke-virtual {p1}, Lg/gkb;->getFrame()I

    move-result v0

    iget v1, p0, Lg/cxx;->b:I

    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Lg/gkb;->getFrame()I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_1

    invoke-virtual {p1}, Lg/gkb;->getFrame()I

    invoke-virtual {p1, p0}, Lg/gkb;->d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget v0, p0, Lg/cxx;->c:I

    if-ltz v0, :cond_0

    iget v0, p0, Lg/cxx;->d:I

    if-ltz v0, :cond_0

    invoke-static {p1}, Lg/gkb;->jy(Lg/gkb;)V

    :cond_0
    invoke-virtual {p1}, Lg/gkb;->mn()V

    :cond_1
    return-void
.end method
