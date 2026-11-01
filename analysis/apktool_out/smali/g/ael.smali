.class public final synthetic Lg/ael;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# instance fields
.field public final synthetic a:Lg/fpl;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lg/fpl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ael;->a:Lg/fpl;

    iput-object p2, p0, Lg/ael;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 p1, -0x2

    const/4 v0, -0x3

    const/4 v1, -0x1

    filled-new-array {v1, p1, v0}, [I

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lg/ael;->a:Lg/fpl;

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v5, 0x3

    if-ge v1, v5, :cond_0

    aget v5, p1, v1

    invoke-virtual {v2, v5}, Lg/fpl;->l(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const p1, 0x7f090064

    invoke-virtual {v2, p1}, Lg/aoz;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg/ma;

    iget-object v1, p0, Lg/ael;->b:Landroid/view/View;

    invoke-direct {v0, v2, v1}, Lg/ma;-><init>(Lg/fpl;Landroid/view/View;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Lg/dsf;

    const/4 v3, 0x7

    invoke-direct {v0, v2, v3, v1}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
