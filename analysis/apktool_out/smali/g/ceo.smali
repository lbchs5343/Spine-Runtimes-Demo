.class public final Lg/ceo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lg/hcn;

.field public final synthetic b:I

.field public final synthetic c:Landroid/widget/Switch;


# direct methods
.method public synthetic constructor <init>(Lg/hcn;Landroid/widget/Switch;I)V
    .locals 0

    iput p3, p0, Lg/ceo;->b:I

    iput-object p1, p0, Lg/ceo;->a:Lg/hcn;

    iput-object p2, p0, Lg/ceo;->c:Landroid/widget/Switch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget p1, p0, Lg/ceo;->b:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/ceo;->c:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    iget-object v1, p0, Lg/ceo;->a:Lg/hcn;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lg/hcn;->c:Landroid/app/Activity;

    const-string v2, "setting_sns"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    :cond_0
    iget-object v0, v1, Lg/hcn;->c:Landroid/app/Activity;

    const-string v2, "al_or_ways"

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-static {v0, v2, p1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    invoke-virtual {v1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lg/fzn;->q(Landroid/content/Intent;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/ceo;->a:Lg/hcn;

    iget-object v0, p1, Lg/hcn;->c:Landroid/app/Activity;

    iget-object v1, p0, Lg/ceo;->c:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    const-string v2, "immature"

    invoke-static {v0, v2, v1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lg/fzn;->l(Landroid/content/Context;)Lg/fzn;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "finish"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lg/fzn;->q(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/ceo;->a:Lg/hcn;

    iget-object p1, p1, Lg/hcn;->c:Landroid/app/Activity;

    iget-object v0, p0, Lg/ceo;->c:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    const-string v1, "datetrinea"

    invoke-static {p1, v1, v0}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
