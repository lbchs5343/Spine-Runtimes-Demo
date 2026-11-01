.class public final Lg/fye;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/fye;->a:I

    iput-object p2, p0, Lg/fye;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget p1, p0, Lg/fye;->a:I

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lg/fye;->b:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/JsPromptResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/fye;->b:Ljava/lang/Object;

    check-cast p1, Landroid/webkit/JsResult;

    invoke-virtual {p1}, Landroid/webkit/JsResult;->cancel()V

    return-void

    :pswitch_1
    iget-object p1, p0, Lg/fye;->b:Ljava/lang/Object;

    check-cast p1, Lg/gfk;

    invoke-virtual {p1}, Lg/gfk;->p()V

    return-void

    :pswitch_2
    iget-object p1, p0, Lg/fye;->b:Ljava/lang/Object;

    check-cast p1, Landroidx/fragment/app/b;

    invoke-static {p1}, Landroidx/fragment/app/b;->access$000(Landroidx/fragment/app/b;)Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroidx/fragment/app/b;->access$000(Landroidx/fragment/app/b;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/b;->onCancel(Landroid/content/DialogInterface;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
