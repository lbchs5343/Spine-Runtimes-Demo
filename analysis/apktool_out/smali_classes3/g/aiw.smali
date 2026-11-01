.class public final Lg/aiw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lg/eso;

.field public final synthetic b:I

.field public final synthetic c:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lg/eso;Landroid/net/Uri;I)V
    .locals 0

    iput p3, p0, Lg/aiw;->b:I

    iput-object p1, p0, Lg/aiw;->a:Lg/eso;

    iput-object p2, p0, Lg/aiw;->c:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 10

    iget p1, p0, Lg/aiw;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/aiw;->c:Landroid/net/Uri;

    const/4 v0, 0x1

    iget-object v1, p0, Lg/aiw;->a:Lg/eso;

    if-eqz p2, :cond_2

    if-eq p2, v0, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v1}, Lg/eso;->d(Lg/eso;)Landroid/content/Context;

    move-result-object p2

    invoke-static {v1}, Lg/eso;->d(Lg/eso;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lg/baf;->bo(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {p2, v1, p1, v0}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    goto/16 :goto_0

    :cond_1
    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "text/plain"

    invoke-static {v2, v3}, Lg/baf;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {p2, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p1

    invoke-static {v1}, Lg/eso;->d(Lg/eso;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lg/ub;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f12040e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0

    :cond_2
    new-instance v5, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {v5, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v9, "*/*"

    invoke-static {v2, v9}, Lg/baf;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v5, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v3

    invoke-static {v1}, Lg/eso;->d(Lg/eso;)Landroid/content/Context;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v9}, Lg/baf;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p1

    invoke-static {v1}, Lg/eso;->d(Lg/eso;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_3
    :goto_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/aiw;->c:Landroid/net/Uri;

    const/4 v0, 0x1

    iget-object v1, p0, Lg/aiw;->a:Lg/eso;

    if-eqz p2, :cond_5

    if-eq p2, v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-static {v1}, Lg/eso;->d(Lg/eso;)Landroid/content/Context;

    move-result-object p2

    invoke-static {v1}, Lg/eso;->d(Lg/eso;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lg/baf;->bo(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-static {p2, v1, p1, v0}, Lg/fso;->ae(Landroid/content/Context;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    goto :goto_1

    :cond_5
    new-instance v4, Landroid/content/Intent;

    const-string p2, "android.intent.action.VIEW"

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v8, "*/*"

    invoke-static {v2, v8}, Lg/baf;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, p1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v2

    invoke-static {v1}, Lg/eso;->d(Lg/eso;)Landroid/content/Context;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v5, 0x0

    invoke-virtual/range {v2 .. v7}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    move-result v2

    if-nez v2, :cond_6

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v8}, Lg/baf;->ak(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object p1

    invoke-static {v1}, Lg/eso;->d(Lg/eso;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2, v2}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_6
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
