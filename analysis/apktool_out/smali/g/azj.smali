.class public final Lg/azj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/baq;


# direct methods
.method public synthetic constructor <init>(Lg/baq;I)V
    .locals 0

    iput p2, p0, Lg/azj;->a:I

    iput-object p1, p0, Lg/azj;->b:Lg/baq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lg/azj;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lg/cc;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lg/cc;-><init>(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p2, p0, Lg/azj;->b:Lg/baq;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-static {p2, v0, p1}, Lg/fyt;->g(Landroid/app/Activity;Ljava/lang/String;Lg/cbi;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/azj;->b:Lg/baq;

    iget-object p2, p1, Lg/eib;->bc:Lg/eib;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p2, v0}, Lg/fyt;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/baq;->z()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
