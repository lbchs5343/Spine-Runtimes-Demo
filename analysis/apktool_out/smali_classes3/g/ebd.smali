.class public final synthetic Lg/ebd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lg/axl;

.field public final synthetic b:Landroid/view/View;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Landroid/widget/TextView;

.field public final synthetic e:Lg/awy;

.field public final synthetic f:Ljava/util/ArrayList;

.field public final synthetic g:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lg/awy;Ljava/util/ArrayList;Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Ljava/util/ArrayList;Lg/axl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ebd;->e:Lg/awy;

    iput-object p2, p0, Lg/ebd;->f:Ljava/util/ArrayList;

    iput-object p3, p0, Lg/ebd;->b:Landroid/view/View;

    iput-object p4, p0, Lg/ebd;->c:Landroid/widget/TextView;

    iput-object p5, p0, Lg/ebd;->d:Landroid/widget/TextView;

    iput-object p6, p0, Lg/ebd;->g:Ljava/util/ArrayList;

    iput-object p7, p0, Lg/ebd;->a:Lg/axl;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    if-ltz p2, :cond_2

    iget-object p1, p0, Lg/ebd;->f:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lg/ebd;->g:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lg/ebd;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lg/ebd;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object v0, v2, v1

    iget-object v0, p0, Lg/ebd;->e:Lg/awy;

    const v4, 0x7f12040d

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lg/ebd;->b:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object p2, p0, Lg/ebd;->a:Lg/axl;

    iget v0, p2, Lg/axl;->a:I

    const-string v2, "follow_system"

    iget-object p2, p2, Lg/axl;->b:Lg/awy;

    packed-switch v0, :pswitch_data_0

    iget-object p2, p2, Lg/awy;->p:Lg/awy;

    if-eqz p1, :cond_2

    const-string v0, "dark_mode"

    invoke-static {p2, v0, v2}, Lg/byh;->ax(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {p2, v0, p1}, Lg/byh;->ay(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    invoke-static {p1}, Lg/ckd;->af(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_0
    iget-object p2, p2, Lg/awy;->p:Lg/awy;

    if-eqz p1, :cond_2

    const-string v0, "app_language"

    invoke-static {p2, v0, v2}, Lg/cro;->ak(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {p2, v0, p1}, Lg/acw;->au(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-object p1, Lg/azt;->a:Lg/azt;

    invoke-static {p1}, Lg/dkn;->m(Lg/azt;)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lg/eg;->ab(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p1

    new-array p2, v1, [Ljava/util/Locale;

    aput-object p1, p2, v3

    invoke-static {p2}, Lg/azt;->c([Ljava/util/Locale;)Lg/azt;

    move-result-object p1

    invoke-static {p1}, Lg/dkn;->m(Lg/azt;)V

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
