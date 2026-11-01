.class public final Lg/ded;
.super Lg/czu;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lg/fwx;

.field public final synthetic d:Lg/cgs;

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Lg/cgs;Lg/fwx;I)V
    .locals 0

    iput p3, p0, Lg/ded;->e:I

    iput-object p1, p0, Lg/ded;->d:Lg/cgs;

    iput-object p2, p0, Lg/ded;->c:Lg/fwx;

    invoke-direct {p0}, Lg/czu;-><init>()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    iget v0, p0, Lg/ded;->e:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/ded;->d:Lg/cgs;

    iget-object v0, v0, Lg/cgs;->am:Lg/ctx;

    iget-object v1, p0, Lg/ded;->c:Lg/fwx;

    invoke-virtual {v1}, Lg/fwx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lg/fwx;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lg/eyt;->ag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/ded;->d:Lg/cgs;

    iget-object v0, v0, Lg/cgs;->am:Lg/ctx;

    iget-object v1, p0, Lg/ded;->c:Lg/fwx;

    invoke-virtual {v1}, Lg/fwx;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lg/fwx;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v0, v2, v1, v3}, Lg/eyt;->ag(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/ded;->d:Lg/cgs;

    iget-object v0, v0, Lg/cgs;->am:Lg/ctx;

    iget-object v1, p0, Lg/ded;->c:Lg/fwx;

    invoke-virtual {v1}, Lg/fwx;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
