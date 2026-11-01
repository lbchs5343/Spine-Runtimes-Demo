.class public final Lg/ddp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/a/a;


# direct methods
.method public synthetic constructor <init>(Lc/a/a;I)V
    .locals 0

    iput p2, p0, Lg/ddp;->a:I

    iput-object p1, p0, Lg/ddp;->b:Lc/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget p1, p0, Lg/ddp;->a:I

    iget-object p2, p0, Lg/ddp;->b:Lc/a/a;

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lg/cc;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lg/cc;-><init>(ILandroid/content/DialogInterface$OnClickListener;)V

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-static {p2, v0, p1}, Lg/fyt;->g(Landroid/app/Activity;Ljava/lang/String;Lg/cbi;)V

    return-void

    :pswitch_0
    sget-object p1, Lc/a/a;->d:Ljava/lang/String;

    iget-object p1, p2, Lg/eib;->bc:Lg/eib;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p1, v0}, Lg/fyt;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2}, Lc/a/a;->z()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
