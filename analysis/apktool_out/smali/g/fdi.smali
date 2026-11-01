.class public final Lg/fdi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lg/edx;


# direct methods
.method public synthetic constructor <init>(Lg/edx;I)V
    .locals 0

    iput p2, p0, Lg/fdi;->a:I

    iput-object p1, p0, Lg/fdi;->b:Lg/edx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lg/fdi;->a:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lg/cc;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0}, Lg/cc;-><init>(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object p2, p0, Lg/fdi;->b:Lg/edx;

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-static {p2, v0, p1}, Lg/fyt;->g(Landroid/app/Activity;Ljava/lang/String;Lg/cbi;)V

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/fdi;->b:Lg/edx;

    iget-object p2, p1, Lg/eib;->bc:Lg/eib;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p2, v0}, Lg/fyt;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lg/edx;->z()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
