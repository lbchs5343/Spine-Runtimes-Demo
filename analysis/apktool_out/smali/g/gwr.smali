.class public final Lg/gwr;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/gkb;


# direct methods
.method public constructor <init>(Lg/gkb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gwr;->b:Lg/gkb;

    iput p2, p0, Lg/gwr;->a:I

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object p1, p0, Lg/gwr;->b:Lg/gkb;

    invoke-virtual {p1}, Lg/gkb;->getFrame()I

    move-result v0

    iget v1, p0, Lg/gwr;->a:I

    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_0

    invoke-virtual {p1}, Lg/gkb;->getFrame()I

    move-result v0

    add-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lg/gkb;->getFrame()I

    invoke-virtual {p1, p0}, Lg/gkb;->d(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1}, Lg/gkb;->mn()V

    :cond_0
    return-void
.end method
