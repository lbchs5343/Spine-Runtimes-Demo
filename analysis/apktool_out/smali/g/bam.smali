.class public final Lg/bam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Lg/cer;

.field public final synthetic d:Lg/anp;

.field public final synthetic e:Lg/anp;


# direct methods
.method public constructor <init>(Lg/cer;Lg/anp;Lg/anp;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bam;->c:Lg/cer;

    iput-object p2, p0, Lg/bam;->d:Lg/anp;

    iput-object p3, p0, Lg/bam;->e:Lg/anp;

    iput p4, p0, Lg/bam;->a:I

    iput-object p5, p0, Lg/bam;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 14

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget-object v0, p0, Lg/bam;->c:Lg/cer;

    iget-object v1, v0, Lg/cer;->a:Lg/bzb;

    invoke-virtual {v1, p1}, Lg/bzb;->e(F)V

    iget-object p1, p0, Lg/bam;->d:Lg/anp;

    iget-object v1, p1, Lg/anp;->b:Lg/dif;

    iget-object v2, v0, Lg/cer;->a:Lg/bzb;

    invoke-virtual {v2}, Lg/bzb;->g()F

    move-result v2

    sget-object v3, Lg/cuo;->j:Landroid/view/animation/PathInterpolator;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x22

    if-lt v3, v4, :cond_0

    new-instance v3, Lg/bru;

    invoke-direct {v3, p1}, Lg/bru;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x1f

    if-lt v3, v4, :cond_1

    new-instance v3, Lg/ghh;

    invoke-direct {v3, p1}, Lg/ghh;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x1e

    if-lt v3, v4, :cond_2

    new-instance v3, Lg/yd;

    invoke-direct {v3, p1}, Lg/yd;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x1d

    if-lt v3, v4, :cond_3

    new-instance v3, Lg/bbb;

    invoke-direct {v3, p1}, Lg/bbb;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_3
    new-instance v3, Lg/gjd;

    invoke-direct {v3, p1}, Lg/gjd;-><init>(Lg/anp;)V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    const/16 v4, 0x200

    if-gt p1, v4, :cond_5

    iget v4, p0, Lg/bam;->a:I

    and-int/2addr v4, p1

    if-nez v4, :cond_4

    invoke-virtual {v1, p1}, Lg/dif;->i(I)Lg/oi;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lg/ecs;->a(ILg/oi;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v1, p1}, Lg/dif;->i(I)Lg/oi;

    move-result-object v4

    iget-object v5, p0, Lg/bam;->e:Lg/anp;

    iget-object v5, v5, Lg/anp;->b:Lg/dif;

    invoke-virtual {v5, p1}, Lg/dif;->i(I)Lg/oi;

    move-result-object v5

    iget v6, v4, Lg/oi;->c:I

    iget v7, v5, Lg/oi;->c:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v7, v2

    mul-float v6, v6, v7

    float-to-double v8, v6

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v10

    double-to-int v6, v8

    iget v8, v4, Lg/oi;->d:I

    iget v9, v5, Lg/oi;->d:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    mul-float v8, v8, v7

    float-to-double v8, v8

    add-double/2addr v8, v10

    double-to-int v8, v8

    iget v9, v4, Lg/oi;->e:I

    iget v12, v5, Lg/oi;->e:I

    sub-int/2addr v9, v12

    int-to-float v9, v9

    mul-float v9, v9, v7

    float-to-double v12, v9

    add-double/2addr v12, v10

    double-to-int v9, v12

    iget v12, v4, Lg/oi;->b:I

    iget v5, v5, Lg/oi;->b:I

    sub-int/2addr v12, v5

    int-to-float v5, v12

    mul-float v5, v5, v7

    float-to-double v12, v5

    add-double/2addr v12, v10

    double-to-int v5, v12

    invoke-static {v4, v6, v8, v9, v5}, Lg/anp;->d(Lg/oi;IIII)Lg/oi;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lg/ecs;->a(ILg/oi;)V

    :goto_2
    shl-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lg/ecs;->g()Lg/anp;

    move-result-object p1

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lg/bam;->b:Landroid/view/View;

    invoke-static {v1, p1, v0}, Lg/cuo;->r(Landroid/view/View;Lg/anp;Ljava/util/List;)V

    return-void
.end method
