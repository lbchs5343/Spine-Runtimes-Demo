.class public final Lg/fdh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lg/ade;


# direct methods
.method public constructor <init>(Lg/ade;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fdh;->a:Lg/ade;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 4

    check-cast p1, Lg/fpl;

    const v0, 0x7f090147

    invoke-virtual {p1, v0}, Lg/aoz;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_2

    new-instance v1, Lg/get;

    const/16 v2, 0xb

    invoke-direct {v1, v2, p1}, Lg/get;-><init>(ILjava/lang/Object;)V

    const/4 v2, -0x2

    invoke-virtual {p1, v2}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    new-instance v2, Lg/gwc;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v0, p1, v3}, Lg/gwc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/app/Dialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    new-instance p1, Lg/fif;

    invoke-direct {p1, p0, v1}, Lg/fif;-><init>(Lg/fdh;Landroid/widget/Button;)V

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Could not find an edit text in the dialog"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
