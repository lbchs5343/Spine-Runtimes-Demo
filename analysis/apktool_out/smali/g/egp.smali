.class public final Lg/egp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final a:Lg/gcu;

.field public b:Lg/anp;


# direct methods
.method public constructor <init>(Landroid/view/View;Lg/gcu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/egp;->a:Lg/gcu;

    invoke-static {p1}, Lg/goi;->u(Landroid/view/View;)Lg/anp;

    move-result-object p1

    if-eqz p1, :cond_4

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p2, v0, :cond_0

    new-instance p2, Lg/bru;

    invoke-direct {p2, p1}, Lg/bru;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f

    if-lt p2, v0, :cond_1

    new-instance p2, Lg/ghh;

    invoke-direct {p2, p1}, Lg/ghh;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x1e

    if-lt p2, v0, :cond_2

    new-instance p2, Lg/yd;

    invoke-direct {p2, p1}, Lg/yd;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_2
    const/16 v0, 0x1d

    if-lt p2, v0, :cond_3

    new-instance p2, Lg/bbb;

    invoke-direct {p2, p1}, Lg/bbb;-><init>(Lg/anp;)V

    goto :goto_0

    :cond_3
    new-instance p2, Lg/gjd;

    invoke-direct {p2, p1}, Lg/gjd;-><init>(Lg/anp;)V

    :goto_0
    invoke-virtual {p2}, Lg/ecs;->g()Lg/anp;

    move-result-object p1

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iput-object p1, p0, Lg/egp;->b:Lg/anp;

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    invoke-virtual {v6}, Landroid/view/View;->isLaidOut()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static/range {p1 .. p2}, Lg/anp;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;

    move-result-object v1

    iput-object v1, v0, Lg/egp;->b:Lg/anp;

    invoke-static/range {p1 .. p2}, Lg/cuo;->p(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :cond_0
    invoke-static/range {p1 .. p2}, Lg/anp;->c(Landroid/view/View;Landroid/view/WindowInsets;)Lg/anp;

    move-result-object v3

    iget-object v1, v3, Lg/anp;->b:Lg/dif;

    iget-object v2, v0, Lg/egp;->b:Lg/anp;

    if-nez v2, :cond_1

    invoke-static {v6}, Lg/goi;->u(Landroid/view/View;)Lg/anp;

    move-result-object v2

    iput-object v2, v0, Lg/egp;->b:Lg/anp;

    :cond_1
    iget-object v2, v0, Lg/egp;->b:Lg/anp;

    if-nez v2, :cond_2

    iput-object v3, v0, Lg/egp;->b:Lg/anp;

    invoke-static/range {p1 .. p2}, Lg/cuo;->p(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :cond_2
    invoke-static {v6}, Lg/cuo;->q(Landroid/view/View;)Lg/gcu;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v2, Lg/gcu;->a:Ljava/lang/Object;

    check-cast v2, Lg/anp;

    invoke-static {v2, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static/range {p1 .. p2}, Lg/cuo;->p(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :cond_3
    const/4 v2, 0x1

    new-array v4, v2, [I

    new-array v5, v2, [I

    iget-object v7, v0, Lg/egp;->b:Lg/anp;

    const/4 v8, 0x1

    :goto_0
    const/16 v9, 0x200

    if-gt v8, v9, :cond_a

    invoke-virtual {v1, v8}, Lg/dif;->i(I)Lg/oi;

    move-result-object v9

    iget-object v11, v7, Lg/anp;->b:Lg/dif;

    invoke-virtual {v11, v8}, Lg/dif;->i(I)Lg/oi;

    move-result-object v11

    iget v12, v9, Lg/oi;->c:I

    iget v13, v9, Lg/oi;->b:I

    iget v14, v9, Lg/oi;->e:I

    iget v9, v9, Lg/oi;->d:I

    iget v15, v11, Lg/oi;->c:I

    iget v2, v11, Lg/oi;->b:I

    const/16 v16, 0x0

    iget v10, v11, Lg/oi;->e:I

    iget v11, v11, Lg/oi;->d:I

    if-gt v12, v15, :cond_5

    if-gt v9, v11, :cond_5

    if-gt v14, v10, :cond_5

    if-le v13, v2, :cond_4

    goto :goto_1

    :cond_4
    move-object/from16 v17, v4

    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    :goto_1
    move-object/from16 v17, v4

    const/4 v4, 0x1

    :goto_2
    if-lt v12, v15, :cond_7

    if-lt v9, v11, :cond_7

    if-lt v14, v10, :cond_7

    if-ge v13, v2, :cond_6

    goto :goto_3

    :cond_6
    const/4 v2, 0x0

    goto :goto_4

    :cond_7
    :goto_3
    const/4 v2, 0x1

    :goto_4
    if-eq v4, v2, :cond_9

    if-eqz v4, :cond_8

    aget v2, v17, v16

    or-int/2addr v2, v8

    aput v2, v17, v16

    goto :goto_5

    :cond_8
    aget v2, v5, v16

    or-int/2addr v2, v8

    aput v2, v5, v16

    :cond_9
    :goto_5
    shl-int/lit8 v8, v8, 0x1

    move-object/from16 v4, v17

    const/4 v2, 0x1

    goto :goto_0

    :cond_a
    move-object/from16 v17, v4

    const/16 v16, 0x0

    aget v2, v17, v16

    aget v4, v5, v16

    or-int v5, v2, v4

    if-nez v5, :cond_b

    iput-object v3, v0, Lg/egp;->b:Lg/anp;

    invoke-static/range {p1 .. p2}, Lg/cuo;->p(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    :cond_b
    iget-object v7, v0, Lg/egp;->b:Lg/anp;

    and-int/lit8 v8, v2, 0x8

    if-eqz v8, :cond_c

    sget-object v2, Lg/cuo;->j:Landroid/view/animation/PathInterpolator;

    goto :goto_6

    :cond_c
    and-int/lit8 v8, v4, 0x8

    if-eqz v8, :cond_d

    sget-object v2, Lg/cuo;->k:Lg/fca;

    goto :goto_6

    :cond_d
    and-int/lit16 v2, v2, 0x207

    if-eqz v2, :cond_e

    sget-object v2, Lg/cuo;->l:Landroid/view/animation/DecelerateInterpolator;

    goto :goto_6

    :cond_e
    and-int/lit16 v2, v4, 0x207

    if-eqz v2, :cond_f

    sget-object v2, Lg/cuo;->i:Landroid/view/animation/AccelerateInterpolator;

    goto :goto_6

    :cond_f
    const/4 v2, 0x0

    :goto_6
    new-instance v4, Lg/cer;

    and-int/lit8 v8, v5, 0x8

    if-eqz v8, :cond_10

    const-wide/16 v8, 0xa0

    goto :goto_7

    :cond_10
    const-wide/16 v8, 0xfa

    :goto_7
    invoke-direct {v4, v5, v2, v8, v9}, Lg/cer;-><init>(ILandroid/view/animation/Interpolator;J)V

    iget-object v2, v4, Lg/cer;->a:Lg/bzb;

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Lg/bzb;->e(F)V

    const/4 v8, 0x2

    new-array v2, v8, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iget-object v9, v4, Lg/cer;->a:Lg/bzb;

    invoke-virtual {v9}, Lg/bzb;->f()J

    move-result-wide v9

    invoke-virtual {v2, v9, v10}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v9

    invoke-virtual {v1, v5}, Lg/dif;->i(I)Lg/oi;

    move-result-object v1

    iget-object v2, v7, Lg/anp;->b:Lg/dif;

    invoke-virtual {v2, v5}, Lg/dif;->i(I)Lg/oi;

    move-result-object v2

    iget v10, v1, Lg/oi;->c:I

    iget v11, v2, Lg/oi;->c:I

    invoke-static {v10, v11}, Ljava/lang/Math;->min(II)I

    move-result v10

    iget v11, v1, Lg/oi;->d:I

    iget v12, v2, Lg/oi;->d:I

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v13

    iget v14, v1, Lg/oi;->e:I

    iget v15, v2, Lg/oi;->e:I

    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v8

    move-object/from16 v17, v4

    iget v4, v1, Lg/oi;->b:I

    move/from16 v18, v5

    iget v5, v2, Lg/oi;->b:I

    move-object/from16 v19, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v10, v13, v8, v7}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object v7

    iget v1, v1, Lg/oi;->c:I

    iget v2, v2, Lg/oi;->c:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v14, v15}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v2, v8, v4}, Lg/oi;->g(IIII)Lg/oi;

    move-result-object v1

    new-instance v8, Lg/akj;

    const/16 v2, 0x10

    invoke-direct {v8, v7, v2, v1}, Lg/akj;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v6, v3, v1}, Lg/cuo;->o(Landroid/view/View;Lg/anp;Z)V

    new-instance v1, Lg/bam;

    move-object/from16 v2, v17

    move/from16 v5, v18

    move-object/from16 v4, v19

    invoke-direct/range {v1 .. v6}, Lg/bam;-><init>(Lg/cer;Lg/anp;Lg/anp;ILandroid/view/View;)V

    invoke-virtual {v9, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lg/gno;

    const/4 v4, 0x2

    invoke-direct {v1, v2, v6, v4}, Lg/gno;-><init>(Ljava/lang/Object;Landroid/view/View;I)V

    invoke-virtual {v9, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lg/eax;

    invoke-direct {v1, v6, v2, v8, v9}, Lg/eax;-><init>(Landroid/view/View;Lg/cer;Lg/akj;Landroid/animation/ValueAnimator;)V

    invoke-static {v6, v1}, Lg/azx;->d(Landroid/view/View;Ljava/lang/Runnable;)V

    iput-object v3, v0, Lg/egp;->b:Lg/anp;

    invoke-static/range {p1 .. p2}, Lg/cuo;->p(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    return-object v1

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
