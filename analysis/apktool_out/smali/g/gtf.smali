.class public final synthetic Lg/gtf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lg/gtf;->a:I

    iput-object p1, p0, Lg/gtf;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lg/gtf;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lg/gtf;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lg/afo;->ao(Landroid/content/Context;Z)Z

    return-void

    :pswitch_0
    iget-object v0, p0, Lg/gtf;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201d7

    invoke-static {v0, v1}, Lg/gm;->e(Landroid/content/Context;I)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lg/gtf;->b:Landroid/content/Context;

    invoke-static {v0}, Lg/cro;->ad(Landroid/content/Context;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Lg/gtf;->b:Landroid/content/Context;

    invoke-static {v0}, Lg/dkn;->r(Landroid/content/Context;)V

    return-void

    :pswitch_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x21

    if-lt v0, v2, :cond_3

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "androidx.appcompat.app.AppLocalesMetadataHolderService"

    iget-object v5, p0, Lg/gtf;->b:Landroid/content/Context;

    invoke-direct {v3, v5, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v1, :cond_3

    if-lt v0, v2, :cond_0

    invoke-static {}, Lg/dkn;->n()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lg/bgl;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    move-result-object v0

    new-instance v2, Lg/azt;

    new-instance v4, Lg/cdt;

    invoke-direct {v4, v0}, Lg/cdt;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v4}, Lg/azt;-><init>(Lg/cmn;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lg/dkn;->c:Lg/azt;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    sget-object v2, Lg/azt;->a:Lg/azt;

    :goto_0
    iget-object v0, v2, Lg/azt;->b:Lg/cmn;

    invoke-interface {v0}, Lg/cmn;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v5}, Lg/egh;->ak(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "locale"

    invoke-virtual {v5, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v0}, Lg/gko;->a(Ljava/lang/String;)Landroid/os/LocaleList;

    move-result-object v0

    invoke-static {v2, v0}, Lg/bgl;->b(Ljava/lang/Object;Landroid/os/LocaleList;)V

    :cond_2
    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v1}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    :cond_3
    sput-boolean v1, Lg/dkn;->i:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
