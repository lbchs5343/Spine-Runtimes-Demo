.class public final synthetic Lg/ld;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/ld;->a:I

    iput-object p2, p0, Lg/ld;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lg/ld;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/ld;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/appcompat/widget/SwitchCompat;

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroidx/appcompat/widget/SwitchCompat;->toggle()V

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    :cond_0
    return-void

    :pswitch_0
    iget-object p1, p0, Lg/ld;->b:Ljava/lang/Object;

    check-cast p1, Lg/gxp;

    iget-object v0, p1, Lg/gxp;->b:Landroid/widget/EditText;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    iget-object v1, p1, Lg/gxp;->b:Landroid/widget/EditText;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v1

    instance-of v1, v1, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lg/gxp;->b:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    goto :goto_0

    :cond_2
    iget-object v1, p1, Lg/gxp;->b:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/PasswordTransformationMethod;->getInstance()Landroid/text/method/PasswordTransformationMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p1, Lg/gxp;->b:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    :cond_3
    invoke-virtual {p1}, Lg/bhb;->ah()V

    :goto_1
    return-void

    :pswitch_1
    iget-object p1, p0, Lg/ld;->b:Ljava/lang/Object;

    check-cast p1, Lg/gas;

    invoke-virtual {p1}, Lg/gas;->ah()V

    const/4 p1, 0x0

    throw p1

    :pswitch_2
    iget-object p1, p0, Lg/ld;->b:Ljava/lang/Object;

    check-cast p1, Lg/ka;

    iget-object p1, p1, Lg/ka;->l:Lg/axs;

    iget-boolean v0, p1, Lg/axs;->g:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lg/axs;->c()V

    :cond_4
    return-void

    :pswitch_3
    iget-object p1, p0, Lg/ld;->b:Ljava/lang/Object;

    check-cast p1, Lg/chp;

    invoke-virtual {p1}, Lg/chp;->al()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lg/ld;->b:Ljava/lang/Object;

    check-cast p1, Lg/azm;

    iget-object v0, p1, Lg/azm;->g:Landroid/widget/EditText;

    if-nez v0, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroid/text/Editable;->clear()V

    :cond_6
    invoke-virtual {p1}, Lg/bhb;->ah()V

    :goto_2
    return-void

    :pswitch_5
    iget-object p1, p0, Lg/ld;->b:Ljava/lang/Object;

    check-cast p1, Lg/efx;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lg/efx;->bo(Z)V

    return-void

    :pswitch_6
    iget-object p1, p0, Lg/ld;->b:Ljava/lang/Object;

    check-cast p1, Lg/fzk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    iget-object p1, p1, Lg/fzk;->l:Lg/ctx;

    new-instance v1, Landroid/content/Intent;

    const-class v2, La/b/b;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p1, v1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    :pswitch_7
    iget-object p1, p0, Lg/ld;->b:Ljava/lang/Object;

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
