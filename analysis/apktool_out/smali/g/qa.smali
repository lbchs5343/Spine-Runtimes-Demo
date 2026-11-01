.class public final Lg/qa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/aix;


# direct methods
.method public synthetic constructor <init>(Lg/aix;I)V
    .locals 0

    iput p2, p0, Lg/qa;->a:I

    iput-object p1, p0, Lg/qa;->b:Lg/aix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    iget p1, p0, Lg/qa;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/qa;->b:Lg/aix;

    iget-object v0, p1, Lg/aix;->b:Lg/dqe;

    iget-object p1, p1, Lg/aix;->a:Lg/fjv;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lg/dqe;->n(Lg/fjv;Z)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/qa;->b:Lg/aix;

    iget-object v0, p1, Lg/aix;->b:Lg/dqe;

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Lg/aix;->a:Lg/fjv;

    invoke-virtual {p1}, Lg/fjv;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, ""

    invoke-static {v1, v4, v2, v3}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v1

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p1}, Lg/fjv;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p1, 0x10000000

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Lg/fgj;->h(Landroid/content/Context;Landroid/content/Intent;Z)V

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120558

    invoke-static {p1, v0}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/qa;->b:Lg/aix;

    iget-object v0, p1, Lg/aix;->b:Lg/dqe;

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lg/dyd;->bi(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lg/aix;->a:Lg/fjv;

    invoke-virtual {v0}, Lg/fjv;->isUpdateByDownload()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lg/aix;->b:Lg/dqe;

    iget-object p1, p1, Lg/aix;->a:Lg/fjv;

    invoke-virtual {v0, p1, v1}, Lg/dqe;->n(Lg/fjv;Z)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p1, Lg/aix;->b:Lg/dqe;

    invoke-static {v0}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p1, Lg/aix;->a:Lg/fjv;

    invoke-virtual {v2}, Lg/fjv;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lg/aix;->b:Lg/dqe;

    invoke-static {p1}, Lg/dqe;->l(Lg/dqe;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg/eyt;->ax(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, v2, p1, v1}, Lg/eyt;->ag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
