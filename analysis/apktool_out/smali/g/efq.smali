.class public final Lg/efq;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/edx;


# direct methods
.method public synthetic constructor <init>(Lg/edx;I)V
    .locals 0

    iput p2, p0, Lg/efq;->a:I

    iput-object p1, p0, Lg/efq;->b:Lg/edx;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget v0, p0, Lg/efq;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p2, p0, Lg/efq;->b:Lg/edx;

    iget-object v0, p2, Lg/edx;->p:Lc/b/ab;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p2, Lg/eib;->ba:Z

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lg/edx;->ab()V

    invoke-virtual {p2}, Lg/edx;->an()Z

    const/4 v0, 0x0

    iput-boolean v0, p2, Lg/eib;->ba:Z

    invoke-static {p2}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object v0

    iget-object v1, p2, Lg/edx;->n:Lg/efq;

    invoke-virtual {v0, v1}, Lg/fzn;->u(Landroid/content/BroadcastReceiver;)V

    iget-boolean v0, p2, Lg/eib;->az:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lg/bfc;->ac(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Lg/edx;->at()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    const-string p2, "inspector_close"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    iget-object v1, p0, Lg/efq;->b:Lg/edx;

    if-eqz p2, :cond_3

    iput-boolean v0, v1, Lg/edx;->af:Z

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_1

    :cond_3
    const-string p2, "inspector_refresh"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    iget p1, v1, Lg/edx;->s:I

    add-int/2addr p1, v0

    iput p1, v1, Lg/edx;->s:I

    const/4 p1, 0x0

    iput-boolean p1, v1, Lg/edx;->u:Z

    iget-object p1, v1, Lg/edx;->p:Lc/b/ab;

    invoke-static {v0, v0}, Lg/ka;->z(ZZ)Lg/he;

    move-result-object p2

    iput-object p2, v1, Lg/edx;->m:Lg/he;

    invoke-virtual {p1, p2}, Lg/jt;->s(Lg/he;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, v1, Lg/edx;->ae:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_4
    const-string p2, "find"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lg/edx;->al(Lg/edx;)V

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
