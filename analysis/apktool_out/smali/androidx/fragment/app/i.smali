.class public final Landroidx/fragment/app/i;
.super Landroidx/fragment/app/n;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lg/gtb;

.field public c:Z


# virtual methods
.method public final d(Landroid/content/Context;)Lg/gtb;
    .locals 8

    iget-boolean v0, p0, Landroidx/fragment/app/i;->a:Z

    if-eqz v0, :cond_0

    iget-object p1, p0, Landroidx/fragment/app/i;->b:Lg/gtb;

    return-object p1

    :cond_0
    iget-object v0, p0, Landroidx/fragment/app/n;->e:Landroidx/fragment/app/a;

    iget-object v1, v0, Landroidx/fragment/app/a;->g:Landroidx/fragment/app/Fragment;

    iget-object v0, v0, Landroidx/fragment/app/a;->d:Lg/gdn;

    sget-object v2, Lg/gdn;->VISIBLE:Lg/gdn;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-boolean v2, p0, Landroidx/fragment/app/i;->c:Z

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getNextTransition()I

    move-result v5

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopEnterAnim()I

    move-result v2

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getPopExitAnim()I

    move-result v2

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getEnterAnim()I

    move-result v2

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getExitAnim()I

    move-result v2

    :goto_1
    invoke-virtual {v1, v3, v3, v3, v3}, Landroidx/fragment/app/Fragment;->setAnimations(IIII)V

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    if-eqz v3, :cond_5

    const v7, 0x7f0903a9

    invoke-virtual {v3, v7}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v7, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_5
    iget-object v3, v1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v3

    if-eqz v3, :cond_6

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v1, v5, v0, v2}, Landroidx/fragment/app/Fragment;->onCreateAnimation(IZI)Landroid/view/animation/Animation;

    move-result-object v3

    if-eqz v3, :cond_7

    new-instance v6, Lg/gtb;

    const/4 p1, 0x6

    const/4 v0, 0x0

    invoke-direct {v6, v3, p1, v0}, Lg/gtb;-><init>(Ljava/lang/Object;IZ)V

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v1, v5, v0, v2}, Landroidx/fragment/app/Fragment;->onCreateAnimator(IZI)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_8

    new-instance v6, Lg/gtb;

    invoke-direct {v6, v1}, Lg/gtb;-><init>(Landroid/animation/Animator;)V

    goto/16 :goto_5

    :cond_8
    if-nez v2, :cond_13

    if-eqz v5, :cond_13

    const/16 v1, 0x1001

    if-eq v5, v1, :cond_11

    const/16 v1, 0x2002

    if-eq v5, v1, :cond_f

    const/16 v1, 0x2005

    if-eq v5, v1, :cond_d

    const/16 v1, 0x1003

    if-eq v5, v1, :cond_b

    const/16 v1, 0x1004

    if-eq v5, v1, :cond_9

    const/4 v0, -0x1

    const/4 v2, -0x1

    goto :goto_3

    :cond_9
    if-eqz v0, :cond_a

    const v0, 0x10100b8

    invoke-static {p1, v0}, Lg/gs;->aw(Landroid/content/Context;I)I

    move-result v0

    :goto_2
    move v2, v0

    goto :goto_3

    :cond_a
    const v0, 0x10100b9

    invoke-static {p1, v0}, Lg/gs;->aw(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_b
    if-eqz v0, :cond_c

    const v0, 0x7f020007

    const v2, 0x7f020007

    goto :goto_3

    :cond_c
    const v0, 0x7f020008

    const v2, 0x7f020008

    goto :goto_3

    :cond_d
    if-eqz v0, :cond_e

    const v0, 0x10100ba

    invoke-static {p1, v0}, Lg/gs;->aw(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_e
    const v0, 0x10100bb

    invoke-static {p1, v0}, Lg/gs;->aw(Landroid/content/Context;I)I

    move-result v0

    goto :goto_2

    :cond_f
    if-eqz v0, :cond_10

    const v0, 0x7f020005

    const v2, 0x7f020005

    goto :goto_3

    :cond_10
    const v0, 0x7f020006

    const v2, 0x7f020006

    goto :goto_3

    :cond_11
    if-eqz v0, :cond_12

    const v0, 0x7f020009

    const v2, 0x7f020009

    goto :goto_3

    :cond_12
    const v0, 0x7f02000a

    const v2, 0x7f02000a

    :cond_13
    :goto_3
    if-eqz v2, :cond_16

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "anim"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    :try_start_0
    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v3, Lg/gtb;

    const/4 v5, 0x6

    const/4 v7, 0x0

    invoke-direct {v3, v1, v5, v7}, Lg/gtb;-><init>(Ljava/lang/Object;IZ)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    move-object v6, v3

    goto :goto_5

    :catch_0
    move-exception p1

    throw p1

    :catch_1
    :cond_14
    :try_start_1
    invoke-static {p1, v2}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    if-eqz v1, :cond_16

    new-instance v3, Lg/gtb;

    invoke-direct {v3, v1}, Lg/gtb;-><init>(Landroid/animation/Animator;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_4

    :catch_2
    move-exception v1

    if-nez v0, :cond_15

    invoke-static {p1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    if-eqz p1, :cond_16

    new-instance v6, Lg/gtb;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-direct {v6, p1, v0, v1}, Lg/gtb;-><init>(Ljava/lang/Object;IZ)V

    goto :goto_5

    :cond_15
    throw v1

    :cond_16
    :goto_5
    iput-object v6, p0, Landroidx/fragment/app/i;->b:Lg/gtb;

    iput-boolean v4, p0, Landroidx/fragment/app/i;->a:Z

    return-object v6
.end method
