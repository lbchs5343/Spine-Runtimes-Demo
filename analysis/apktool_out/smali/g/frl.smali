.class public final Lg/frl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;ILjava/lang/String;)V
    .locals 0

    iput p2, p0, Lg/frl;->b:I

    iput-object p3, p0, Lg/frl;->c:Ljava/lang/String;

    iput-object p1, p0, Lg/frl;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lg/frl;->b:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lg/frl;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p2

    iget-object v0, p0, Lg/frl;->a:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    :pswitch_0
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lg/frl;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const-string v0, "android.intent.action.VIEW"

    invoke-direct {p1, v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p2

    iget-object v0, p0, Lg/frl;->a:Landroid/app/Activity;

    invoke-virtual {p2, v0, p1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
