.class public final Lg/fft;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:[F

.field public final synthetic b:[F


# direct methods
.method public constructor <init>([F[F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fft;->a:[F

    iput-object p2, p0, Lg/fft;->b:[F

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget-object v1, p0, Lg/fft;->a:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    sub-float/2addr v0, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    const/4 v4, 0x1

    aget v5, v1, v4

    sub-float/2addr v3, v5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v5

    iget-object v6, p0, Lg/fft;->b:[F

    if-eqz v5, :cond_1

    if-eq v5, v4, :cond_0

    const/4 p2, 0x2

    if-eq v5, p2, :cond_0

    goto :goto_0

    :cond_0
    aget p2, v6, v2

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationX(F)V

    aget p2, v6, v4

    add-float/2addr p2, v3

    invoke-virtual {p1, p2}, Landroid/view/View;->setTranslationY(F)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    aput v0, v1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    aput p2, v1, v4

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p2

    aput p2, v6, v2

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    aput p1, v6, v4

    :goto_0
    return v4
.end method
