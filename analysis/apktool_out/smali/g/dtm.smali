.class public final Lg/dtm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lg/dms;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lg/dtm;->b:I

    iput-object p1, p0, Lg/dtm;->a:Ljava/lang/Object;

    iput-object p2, p0, Lg/dtm;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, Lg/dtm;->b:I

    iput-object p1, p0, Lg/dtm;->c:Ljava/lang/Object;

    iput-object p3, p0, Lg/dtm;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    iget p1, p0, Lg/dtm;->b:I

    const/4 p2, 0x2

    iget-object v0, p0, Lg/dtm;->a:Ljava/lang/Object;

    iget-object v1, p0, Lg/dtm;->c:Ljava/lang/Object;

    packed-switch p1, :pswitch_data_0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v1, Landroid/webkit/JsPromptResult;

    invoke-virtual {v1, p1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V

    return-void

    :pswitch_0
    check-cast v1, Lg/gfk;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->z:Lg/esy;

    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.SEND"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "text/plain"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "android.intent.extra.TEXT"

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "Share via"

    invoke-static {p1, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    iget-object p2, v1, Lg/gfk;->f:Landroid/content/Context;

    invoke-static {p2, p1}, Lg/esy;->ad(Landroid/content/Context;Landroid/content/Intent;)V

    return-void

    :pswitch_1
    check-cast v0, Lg/edx;

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {v0, p1}, Lg/edx;->am(Lg/edx;Landroid/text/Editable;)V

    return-void

    :pswitch_2
    check-cast v1, Landroid/app/Activity;

    new-instance p1, Lg/cc;

    invoke-direct {p1, p2, p0}, Lg/cc;-><init>(ILandroid/content/DialogInterface$OnClickListener;)V

    const-string p2, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-static {v1, p2, p1}, Lg/fyt;->g(Landroid/app/Activity;Ljava/lang/String;Lg/cbi;)V

    return-void

    :pswitch_3
    check-cast v1, Landroidx/appcompat/widget/SwitchCompat;

    const/4 p1, 0x1

    invoke-virtual {v1, p1}, Landroidx/appcompat/widget/SwitchCompat;->setChecked(Z)V

    check-cast v0, Lc/e/b;

    iget-object v1, v0, Lc/e/b;->i:Lc/e/b;

    sget v2, Lc/b/b;->d:I

    const-string v2, "op_update_freq"

    invoke-static {v1, p2, v2}, Lg/cro;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v3

    invoke-static {v1, v3, v2}, Lg/byh;->av(Landroid/content/Context;ILjava/lang/String;)I

    move-result v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x3

    if-ne v1, p2, :cond_1

    const/4 p2, 0x3

    goto :goto_1

    :cond_1
    const/4 v3, 0x4

    if-ne v1, p1, :cond_2

    :goto_0
    const/4 p2, 0x4

    goto :goto_1

    :cond_2
    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p1, v0, Lc/e/b;->i:Lc/e/b;

    invoke-static {p1, p2, v2}, Lg/byh;->bb(Landroid/content/Context;ILjava/lang/String;)V

    iget-object p1, v0, Lc/e/b;->i:Lc/e/b;

    const-string p2, "c.t.d.o.p.u.t"

    invoke-static {p1, p2}, Lc/b/b;->l(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lc/e/b;->o()V

    return-void

    :pswitch_4
    check-cast v0, Lc/b/b;

    check-cast v1, Landroid/view/MenuItem;

    sget p1, Lc/b/b;->d:I

    invoke-virtual {v0, v1}, Lc/b/b;->ac(Landroid/view/MenuItem;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
