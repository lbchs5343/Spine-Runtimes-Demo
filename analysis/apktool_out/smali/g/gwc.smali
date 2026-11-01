.class public final Lg/gwc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Dialog;

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Landroid/app/Dialog;I)V
    .locals 0

    iput p4, p0, Lg/gwc;->c:I

    iput-object p1, p0, Lg/gwc;->b:Ljava/lang/Object;

    iput-object p2, p0, Lg/gwc;->d:Ljava/lang/Object;

    iput-object p3, p0, Lg/gwc;->a:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lg/gwc;->c:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/gwc;->d:Ljava/lang/Object;

    check-cast p1, Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lg/gwc;->b:Ljava/lang/Object;

    check-cast v0, Lg/fdh;

    iget-object v0, v0, Lg/fdh;->a:Lg/ade;

    invoke-virtual {v0, p1}, Lg/ade;->h(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, v0, Lg/ade;->g:Lg/cuz;

    if-eqz v0, :cond_1

    check-cast v0, Lg/ero;

    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lg/cuz;->o:Ljava/lang/Object;

    check-cast v2, Ljava/io/File;

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, v1, p1}, Lg/ero;->bc(Ljava/io/File;Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/u;

    move-result-object p1

    const v0, 0x7f120352

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lg/gm;->i(Landroid/content/Context;II)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lg/gwc;->a:Landroid/app/Dialog;

    check-cast p1, Lg/fpl;

    invoke-virtual {p1}, Lg/aoz;->dismiss()V

    :cond_2
    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.SEND"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lg/gwc;->d:Ljava/lang/Object;

    check-cast v0, Lg/gek;

    iget-object v1, p0, Lg/gwc;->b:Ljava/lang/Object;

    check-cast v1, Lg/fdp;

    iget-object v2, v1, Lg/fdp;->q:Lg/fdp;

    invoke-virtual {v0, v2}, Lg/gek;->m(Lg/fdp;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "text/plain"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    iget-object v2, v1, Lg/fdp;->q:Lg/fdp;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f12040e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    iget-object p1, p0, Lg/gwc;->a:Landroid/app/Dialog;

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/gwc;->b:Ljava/lang/Object;

    check-cast p1, Lg/fdp;

    iget-object p1, p1, Lg/fdp;->q:Lg/fdp;

    iget-object v0, p0, Lg/gwc;->d:Ljava/lang/Object;

    check-cast v0, Lg/gek;

    invoke-virtual {v0, p1}, Lg/gek;->m(Lg/fdp;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "color"

    invoke-static {p1, v2, v0, v1}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    iget-object p1, p0, Lg/gwc;->a:Landroid/app/Dialog;

    check-cast p1, Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
