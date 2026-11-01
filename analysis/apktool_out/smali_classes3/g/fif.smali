.class public final Lg/fif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public final synthetic a:Landroid/widget/Button;

.field public final synthetic b:Lg/fdh;


# direct methods
.method public constructor <init>(Lg/fdh;Landroid/widget/Button;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fif;->b:Lg/fdh;

    iput-object p2, p0, Lg/fif;->a:Landroid/widget/Button;

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object v0, p0, Lg/fif;->a:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/fif;->b:Lg/fdh;

    iget-object v1, v1, Lg/fdh;->a:Lg/ade;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lg/ade;->h(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
