.class public final synthetic Lg/eom;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/cyz;


# direct methods
.method public synthetic constructor <init>(Lg/cyz;I)V
    .locals 0

    iput p2, p0, Lg/eom;->a:I

    iput-object p1, p0, Lg/eom;->b:Lg/cyz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 17

    move-object/from16 v0, p0

    iget v1, v0, Lg/eom;->a:I

    iget-object v2, v0, Lg/eom;->b:Lg/cyz;

    packed-switch v1, :pswitch_data_0

    const v1, 0x7f1203ce

    invoke-virtual {v2, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, v2, Lg/cyz;->af:Landroid/widget/TextView;

    iget-object v4, v2, Lg/cyz;->aa:Landroid/widget/TextView;

    iget-object v5, v2, Lg/cyz;->i:Landroid/widget/TextView;

    iget-object v6, v2, Lg/cyz;->ae:Landroid/widget/TextView;

    iget-object v7, v2, Lg/cyz;->z:Landroid/widget/TextView;

    iget-object v8, v2, Lg/cyz;->h:Landroid/widget/TextView;

    iget-object v9, v2, Lg/cyz;->y:Landroid/widget/TextView;

    const/4 v10, 0x7

    new-array v11, v10, [Landroid/widget/TextView;

    const/4 v12, 0x0

    aput-object v3, v11, v12

    const/4 v3, 0x1

    aput-object v4, v11, v3

    const/4 v4, 0x2

    aput-object v5, v11, v4

    const/4 v4, 0x3

    aput-object v6, v11, v4

    const/4 v5, 0x4

    aput-object v7, v11, v5

    const/4 v5, 0x5

    aput-object v8, v11, v5

    const/4 v5, 0x6

    aput-object v9, v11, v5

    iget-object v5, v2, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v5}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v5

    iget-object v6, v5, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v6, Lg/die;

    iget-object v7, v6, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    new-instance v8, Landroid/widget/LinearLayout;

    invoke-direct {v8, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v8, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v13, 0x7f0700b6

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    div-int/lit8 v13, v9, 0x2

    invoke-virtual {v8, v13, v12, v13, v12}, Landroid/view/View;->setPadding(IIII)V

    const/4 v14, 0x0

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_0

    new-instance v15, Landroid/widget/TextView;

    invoke-direct {v15, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v15, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 p1, 0x3

    const v4, 0x7f04011f

    invoke-static {v4, v8}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v4

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextColor(I)V

    const/high16 v4, 0x41600000    # 14.0f

    invoke-virtual {v15, v4}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual {v15, v12, v12, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    invoke-virtual {v8, v15}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/16 p1, 0x3

    :goto_0
    iput-object v1, v6, Lg/die;->f:Ljava/lang/CharSequence;

    const v1, 0x7f12011a

    invoke-virtual {v5, v1, v14}, Lg/gmn;->y(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v5}, Lg/gmn;->r()Lg/fpl;

    move-result-object v1

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v10, :cond_3

    aget-object v5, v11, v4

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v15, 0x8

    if-eq v6, v15, :cond_2

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    :cond_1
    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, v7}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v15, 0x41800000    # 16.0f

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextSize(F)V

    const v15, 0x7f04011d

    invoke-static {v15, v8}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v15, v15, Landroid/util/DisplayMetrics;->density:F

    const/high16 v16, 0x42400000    # 48.0f

    mul-float v15, v15, v16

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setMinHeight(I)V

    const/16 v15, 0x10

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setGravity(I)V

    div-int/lit8 v15, v9, 0x3

    invoke-virtual {v6, v13, v15, v13, v15}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v15, Landroid/util/TypedValue;

    invoke-direct {v15}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v7}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v10

    const v14, 0x101030e

    invoke-virtual {v10, v14, v15, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v10, v15, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v10}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v6, v3}, Landroid/view/View;->setFocusable(Z)V

    const v10, 0x7f08010a

    invoke-static {v7, v10}, Lg/fso;->ai(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v2}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v14

    iget v14, v14, Landroid/util/DisplayMetrics;->density:F

    const/high16 v15, 0x41a00000    # 20.0f

    mul-float v14, v14, v15

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    invoke-virtual {v10, v12, v12, v14, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v14, 0x0

    invoke-virtual {v6, v14, v14, v10, v14}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v13}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    new-instance v10, Lg/ld;

    invoke-direct {v10, v12, v5}, Lg/ld;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v10, -0x1

    const/4 v15, -0x2

    invoke-direct {v5, v10, v15}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v8, v6, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v10, 0x7

    goto/16 :goto_1

    :cond_3
    new-instance v3, Landroid/widget/ScrollView;

    invoke-direct {v3, v7}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v8}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    iget-object v4, v1, Lg/fpl;->j:Lg/bgn;

    iput-object v3, v4, Lg/bgn;->ag:Landroid/view/View;

    iput v12, v4, Lg/bgn;->b:I

    iput-boolean v12, v4, Lg/bgn;->w:Z

    iget-object v2, v2, Lg/cyz;->k:Landroid/app/Activity;

    invoke-static {v2, v1}, Lg/eyt;->ay(Landroid/content/Context;Lg/fpl;)V

    return-void

    :pswitch_0
    invoke-virtual {v2}, Lg/cyz;->an()V

    return-void

    :pswitch_1
    iget-object v1, v2, Lg/cyz;->j:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/view/View;->callOnClick()Z

    return-void

    :pswitch_2
    invoke-virtual {v2}, Lg/cyz;->am()Z

    return-void

    :pswitch_3
    invoke-virtual {v2}, Lg/cyz;->am()Z

    return-void

    :pswitch_4
    invoke-virtual {v2}, Lg/cqo;->dismiss()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
