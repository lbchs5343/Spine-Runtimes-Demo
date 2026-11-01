.class public final synthetic Lg/esm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/app/Activity;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Lg/esm;->a:I

    iput-object p1, p0, Lg/esm;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget p1, p0, Lg/esm;->a:I

    iget-object p2, p0, Lg/esm;->b:Landroid/app/Activity;

    packed-switch p1, :pswitch_data_0

    invoke-static {p2}, Lg/fyt;->i(Landroid/content/Context;)V

    return-void

    :pswitch_0
    sget p1, Lg/bus;->a:I

    const/4 p1, 0x0

    const-string v0, "shizuku_compatibility_mode_enabled"

    invoke-static {p2, v0, p1}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {p2}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object p1

    iget-object v0, p1, Lg/ark;->m:Landroid/os/Handler;

    new-instance v1, Lg/hdk;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lg/hdk;-><init>(Lg/ark;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const p1, 0x7f12042f

    invoke-static {p2, p1}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void

    :pswitch_1
    invoke-static {p2}, Lg/fyt;->i(Landroid/content/Context;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
