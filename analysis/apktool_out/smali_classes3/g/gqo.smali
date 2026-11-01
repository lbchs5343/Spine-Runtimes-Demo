.class public Lg/gqo;
.super Lg/bvl;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public c:Ljava/lang/CharSequence;

.field public d:Landroid/widget/TextView;

.field public e:Lg/du;

.field public f:Landroid/widget/TextView;

.field public g:Lg/fei;

.field public h:I

.field public i:Landroid/content/DialogInterface$OnClickListener;

.field public j:Landroid/widget/TextView;

.field public k:Ljava/lang/CharSequence;

.field public l:Landroid/widget/TextView;

.field public m:I

.field public n:Landroid/content/DialogInterface$OnClickListener;

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:I

.field public r:I

.field public s:Landroid/content/Context;

.field public t:Landroid/content/DialogInterface$OnClickListener;

.field public u:Ljava/lang/CharSequence;

.field public v:I

.field public w:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/gqo;->o:Z

    const/4 v0, -0x1

    iput v0, p0, Lg/gqo;->w:I

    const/16 v1, 0x8

    iput v1, p0, Lg/gqo;->h:I

    iput v0, p0, Lg/gqo;->m:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lg/gqo;->g:Lg/fei;

    invoke-virtual {p1}, Lg/fei;->b()Z

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->o(Landroid/app/Activity;)Lg/aoz;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object p1
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p3

    invoke-virtual {p3}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0c0048

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lg/gqo;->e:Lg/du;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lg/du;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Lg/cqo;->onStart()V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->al(Landroid/app/Dialog;)V

    :cond_0
    return-void
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1, p2}, Lg/bvl;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lg/gqo;->s:Landroid/content/Context;

    const p2, 0x7f090196

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "icon"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/16 v3, 0x8

    if-nez v0, :cond_0

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    const p2, 0x7f090359

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const p2, 0x7f0900d9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/gqo;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "message"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lg/gqo;->p:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "message_is_html"

    invoke-virtual {p2, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lg/gqo;->o:Z

    :cond_3
    iget-object p2, p0, Lg/gqo;->j:Landroid/widget/TextView;

    const-string v0, ""

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    iget-boolean v1, p0, Lg/gqo;->o:Z

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object p2, p0, Lg/gqo;->j:Landroid/widget/TextView;

    iget-object v1, p0, Lg/gqo;->p:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object v1, v0

    :cond_5
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lg/gqo;->p:Ljava/lang/String;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    iget p2, p0, Lg/gqo;->m:I

    if-lez p2, :cond_7

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget v1, p0, Lg/gqo;->m:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    iget-object v1, p0, Lg/gqo;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, p2, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_7
    const p2, 0x7f090282

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iget v1, p0, Lg/gqo;->w:I

    const/4 v4, 0x1

    if-nez v1, :cond_8

    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_3

    :cond_8
    if-ne v1, v4, :cond_9

    invoke-virtual {p2, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :cond_9
    :goto_3
    const p2, 0x7f09024e

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/gqo;->f:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lg/gqo;->c:Ljava/lang/CharSequence;

    const v1, 0x7f120084

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/CharSequence;

    aput-object p2, v6, v2

    aput-object v1, v6, v4

    invoke-static {v6}, Lg/acw;->n([Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_a

    goto :goto_5

    :cond_a
    const/4 p2, 0x0

    :goto_4
    if-ge p2, v5, :cond_c

    aget-object v7, v6, p2

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    goto :goto_6

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_4

    :cond_c
    :goto_5
    move-object v7, v1

    :goto_6
    iget p2, p0, Lg/gqo;->r:I

    iget-object v6, p0, Lg/gqo;->i:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p2, v6, v7}, Lg/gqo;->x(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    const p2, 0x7f090221

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/gqo;->l:Landroid/widget/TextView;

    iget v6, p0, Lg/gqo;->h:I

    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lg/gqo;->k:Ljava/lang/CharSequence;

    iget v6, p0, Lg/gqo;->v:I

    iget-object v7, p0, Lg/gqo;->t:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v6, v7, p2}, Lg/gqo;->z(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    const p2, 0x7f0900b1

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/gqo;->d:Landroid/widget/TextView;

    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lg/gqo;->u:Ljava/lang/CharSequence;

    const v6, 0x7f120082

    invoke-virtual {p0, v6}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/CharSequence;

    aput-object p2, v7, v2

    aput-object v6, v7, v4

    invoke-static {v7}, Lg/acw;->n([Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_d

    goto :goto_8

    :cond_d
    const/4 p2, 0x0

    :goto_7
    if-ge p2, v5, :cond_f

    aget-object v6, v7, p2

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_e

    goto :goto_9

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_7

    :cond_f
    :goto_8
    move-object v6, v1

    :goto_9
    iget p2, p0, Lg/gqo;->q:I

    iget-object v7, p0, Lg/gqo;->n:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p2, v7, v6}, Lg/gqo;->y(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V

    const p2, 0x7f0900db

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, La/v/ScrollViewWithMaxHeight;

    iget-object v6, p0, Lg/gqo;->s:Landroid/content/Context;

    invoke-static {v6}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object v6

    aget v6, v6, v4

    div-int/2addr v6, v5

    invoke-virtual {p2, v6}, La/v/ScrollViewWithMaxHeight;->setMaxHeight(I)La/v/ScrollViewWithMaxHeight;

    invoke-virtual {p2, v2}, Landroid/view/View;->setScrollbarFadingEnabled(Z)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v6, Lg/aat;

    invoke-direct {v6, p2, v4}, Lg/aat;-><init>(La/v/ScrollViewWithMaxHeight;I)V

    const-wide/16 v7, 0x3e8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p2, Lg/fei;

    invoke-direct {p2}, Lg/fei;-><init>()V

    iput-object p2, p0, Lg/gqo;->g:Lg/fei;

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v4, "adUnitId"

    invoke-virtual {p2, v4, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {p0, p1, v1, p2}, Lg/bvl;->b(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lg/bvl;->a:Lg/eo;

    if-eqz p2, :cond_12

    check-cast p2, Lg/eku;

    const v0, 0x7f090063

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    if-nez p1, :cond_10

    goto :goto_b

    :cond_10
    iget-object p2, p2, Lg/eku;->l:Landroid/content/Context;

    invoke-static {p2}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object p2

    invoke-virtual {p2}, Lg/atf;->i()Z

    move-result p2

    if-eqz p2, :cond_11

    goto :goto_a

    :cond_11
    const/16 v2, 0x8

    :goto_a
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    :goto_b
    return-void
.end method

.method public final x(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p3, p0, Lg/gqo;->c:Ljava/lang/CharSequence;

    iput p1, p0, Lg/gqo;->r:I

    iget-object v0, p0, Lg/gqo;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lg/gqo;->f:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-lez p1, :cond_1

    iget-object p3, p0, Lg/gqo;->f:Landroid/widget/TextView;

    iget-object v0, p0, Lg/gqo;->s:Landroid/content/Context;

    invoke-static {v0, p1}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iput-object p2, p0, Lg/gqo;->i:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lg/gqo;->f:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance p3, Lg/fmd;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p2, v0}, Lg/fmd;-><init>(Lg/gqo;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final y(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p3, p0, Lg/gqo;->u:Ljava/lang/CharSequence;

    iput p1, p0, Lg/gqo;->q:I

    iget-object v0, p0, Lg/gqo;->d:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lg/gqo;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-lez p1, :cond_1

    iget-object p3, p0, Lg/gqo;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lg/gqo;->s:Landroid/content/Context;

    invoke-static {v0, p1}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iput-object p2, p0, Lg/gqo;->n:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lg/gqo;->d:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance p3, Lg/fmd;

    const/4 v0, 0x2

    invoke-direct {p3, p0, p2, v0}, Lg/fmd;-><init>(Lg/gqo;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final z(ILandroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p3, p0, Lg/gqo;->k:Ljava/lang/CharSequence;

    iput p1, p0, Lg/gqo;->v:I

    iget-object v0, p0, Lg/gqo;->l:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lg/gqo;->l:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    if-lez p1, :cond_1

    iget-object p3, p0, Lg/gqo;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lg/gqo;->s:Landroid/content/Context;

    invoke-static {v0, p1}, Lg/eyt;->af(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iput-object p2, p0, Lg/gqo;->t:Landroid/content/DialogInterface$OnClickListener;

    iget-object p1, p0, Lg/gqo;->l:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    new-instance p3, Lg/fmd;

    const/4 v0, 0x1

    invoke-direct {p3, p0, p2, v0}, Lg/fmd;-><init>(Lg/gqo;Landroid/content/DialogInterface$OnClickListener;I)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method
