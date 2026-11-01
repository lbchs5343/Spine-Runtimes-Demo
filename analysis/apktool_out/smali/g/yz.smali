.class public final Lg/yz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/gkb;


# direct methods
.method public synthetic constructor <init>(Lg/gkb;I)V
    .locals 0

    iput p2, p0, Lg/yz;->a:I

    iput-object p1, p0, Lg/yz;->b:Lg/gkb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final c(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final d(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final e(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final f(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final g(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method private final h(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lg/yz;->a:I

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lg/yz;->a:I

    return-void
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    iget p1, p0, Lg/yz;->a:I

    return-void
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 9

    iget p1, p0, Lg/yz;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/yz;->b:Lg/gkb;

    invoke-virtual {p1, p0}, Lg/gkb;->d(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p1}, Lg/gkb;->ox(Lg/gkb;)V

    invoke-static {p1}, Lg/gkb;->p(Lg/gkb;)V

    return-void

    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object p1, p0, Lg/yz;->b:Lg/gkb;

    invoke-static {p1}, Lg/gkb;->o(Lg/gkb;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, p0}, Lg/gkb;->d(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {p1}, Lg/gkb;->no(Lg/gkb;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {p1}, Lg/gkb;->ig(Lg/gkb;)Lg/fts;

    move-result-object v3

    iget-object v3, v3, Lg/fts;->h:Lg/dpc;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Lg/dpc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    invoke-static {p1}, Lg/gkb;->o(Lg/gkb;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_1

    invoke-static {p1}, Lg/gkb;->o(Lg/gkb;)J

    move-result-wide v3

    int-to-long v7, v2

    add-long/2addr v3, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v3, v7

    const-string v2, "--==-- lottie delayed time: "

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    cmp-long v2, v3, v5

    if-lez v2, :cond_1

    invoke-virtual {p1}, Lg/gkb;->mn()V

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-static {p1}, Lg/gkb;->mp(Lg/gkb;)Landroid/os/Handler;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1, v2}, Lg/gkb;->dq(Lg/gkb;Landroid/os/Handler;)Landroid/os/Handler;

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_1

    :cond_0
    :goto_0
    invoke-static {p1}, Lg/gkb;->mp(Lg/gkb;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-static {p1}, Lg/gkb;->mp(Lg/gkb;)Landroid/os/Handler;

    move-result-object v2

    new-instance v5, Lg/axi;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v0, v1, v6}, Lg/axi;-><init>(Ljava/lang/Object;JI)V

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    invoke-static {p1, v0, v1}, Lg/gkb;->dq(Lg/gkb;J)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
