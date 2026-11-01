.class public Lg/ajf;
.super Lg/cqo;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Lg/fei;

.field public b:Landroid/view/inputmethod/InputMethodManager;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/widget/EditText;

.field public g:Landroid/widget/TextView;

.field public h:Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public final i(Z)V
    .locals 3

    iget-object v0, p0, Lg/ajf;->f:Landroid/widget/EditText;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lg/ajf;->h:Landroid/app/Activity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v1

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-nez p1, :cond_3

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    const v0, 0x7f1203b3

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void

    :cond_2
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x20

    if-ne p1, v1, :cond_3

    const-string p1, "5a"

    invoke-virtual {v0, p1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object p1, p0, Lg/ajf;->f:Landroid/widget/EditText;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget-object v0, p0, Lg/ajf;->a:Lg/fei;

    invoke-virtual {v0}, Lg/fei;->b()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lg/ajf;->g:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1203a5

    const-string v2, ""

    const/4 v3, 0x0

    const-string v4, "pud"

    const/4 v5, 0x1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0a0007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lg/acr;->bh(Landroid/app/Activity;)V

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    const v0, 0x7f12015a

    invoke-static {p1, v0}, Lg/gm;->c(Landroid/content/Context;I)V

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-static {p1, v4, v5}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :cond_1
    iget-object v7, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v6

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, "com.eg.android.AlipayGphone"

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v6 .. v11}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result p1

    const v0, 0x7f120159

    const-string v6, "trinea.cn@gmail.com"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-static {p1, v2, v6, v3}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-static {p1, v0, v1}, Lg/gm;->h(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-static {p1, v4, v5}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :cond_2
    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_3
    iget-object v0, p0, Lg/ajf;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-static {p1}, Lg/acr;->br(Landroid/app/Activity;)Z

    move-result p1

    const v0, 0x7f12015b

    const-string v6, "TimeMeasurer"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-static {p1, v2, v6, v3}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-static {p1, v0, v1}, Lg/gm;->h(Landroid/content/Context;I[Ljava/lang/Object;)V

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-static {p1, v4, v5}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    :cond_4
    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v6, v1, v3

    invoke-virtual {p0, v0, v1}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v5}, Lg/gm;->d(Landroid/content/Context;Ljava/lang/CharSequence;I)V

    return-void

    :cond_5
    iget-object v0, p0, Lg/ajf;->d:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_a

    iget-object p1, p0, Lg/ajf;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_7

    instance-of v1, v0, Lg/cgm;

    if-eqz v1, :cond_7

    check-cast v0, Lg/cgm;

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_8

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    const v0, 0x7f1203bc

    invoke-static {p1, v0, v5}, Lg/gm;->i(Landroid/content/Context;II)V

    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    const-string v0, "p able is null in ADialogFragment"

    invoke-static {v0, p1}, Lg/erl;->ai(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_8
    invoke-interface {v0, p1}, Lg/cgm;->h(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/cqo;->dismiss()V

    return-void

    :cond_9
    :goto_1
    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v3

    const v0, 0x7f12011b

    invoke-static {p1, v0, v1}, Lg/gm;->g(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void

    :cond_a
    iget-object v0, p0, Lg/ajf;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    if-ne p1, v0, :cond_b

    invoke-virtual {p0, v3}, Lg/ajf;->i(Z)V

    :cond_b
    :goto_2
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->o(Landroid/app/Activity;)Lg/aoz;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    :cond_0
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

    const p3, 0x7f0c004a

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lg/ajf;->i(Z)V

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
    .locals 10

    invoke-super {p0, p1, p2}, Landroid/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    iput-object p2, p0, Lg/ajf;->h:Landroid/app/Activity;

    const-string v0, "input_method"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lg/ajf;->b:Landroid/view/inputmethod/InputMethodManager;

    const p2, 0x7f0900c9

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lg/ajf;->f:Landroid/widget/EditText;

    new-instance v0, Lg/get;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lg/get;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lg/ajf;->f:Landroid/widget/EditText;

    new-instance v0, Lg/gsu;

    invoke-direct {v0, p0}, Lg/gsu;-><init>(Lg/ajf;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const p2, 0x7f0902a7

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/ajf;->g:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0902a8

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/ajf;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090057

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/ajf;->d:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f09028f

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lg/ajf;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f090120

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-static {v0}, Lg/atf;->g(Landroid/content/Context;)Lg/atf;

    move-result-object v0

    invoke-virtual {v0}, Lg/atf;->l()Lg/fxe$b;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lg/atf;->l()Lg/fxe$b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, v0, Lg/fxe$b;->isPromotion:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Lg/dlb;->b:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4, v2}, Lg/dlb;->d(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lg/fxe$b;->beginDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_1

    iget-object v0, v0, Lg/fxe$b;->endDate:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_1

    iget-object v0, v1, Lg/fxe$b;->price:Ljava/lang/String;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, v1, Lg/fxe$b;->normalPrice:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Lg/eyt;->bq(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const-string v0, "29"

    :cond_4
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const v0, 0x7f1201ff

    invoke-virtual {p0, v0, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f090122

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, La/v/ScrollViewWithMaxHeight;

    iget-object p2, p0, Lg/ajf;->h:Landroid/app/Activity;

    invoke-static {p2}, Lg/fso;->ag(Landroid/content/Context;)[I

    move-result-object p2

    aget v0, p2, v3

    aget p2, p2, v1

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    if-le v0, p2, :cond_5

    int-to-double v6, p2

    const-wide/high16 v8, 0x4004000000000000L    # 2.5

    :goto_2
    mul-double v6, v6, v8

    div-double/2addr v6, v4

    double-to-int p2, v6

    goto :goto_3

    :cond_5
    int-to-double v6, p2

    const-wide/high16 v8, 0x4012000000000000L    # 4.5

    goto :goto_2

    :goto_3
    invoke-virtual {p1, p2}, La/v/ScrollViewWithMaxHeight;->setMaxHeight(I)La/v/ScrollViewWithMaxHeight;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    new-instance p1, Lg/fei;

    invoke-direct {p1}, Lg/fei;-><init>()V

    iput-object p1, p0, Lg/ajf;->a:Lg/fei;

    iget-object p1, p0, Lg/ajf;->h:Landroid/app/Activity;

    const-string p2, "pud"

    invoke-static {p1, p2, v3}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lg/ajf;->b:Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lg/ajf;->b:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 v0, 0x2

    invoke-virtual {p1, p2, v0}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_6
    iget-object p1, p0, Lg/ajf;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-void

    :cond_7
    iget-object p1, p0, Lg/ajf;->f:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method
