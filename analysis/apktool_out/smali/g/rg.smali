.class public final synthetic Lg/rg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lc/e/a;


# direct methods
.method public synthetic constructor <init>(Lc/e/a;I)V
    .locals 0

    iput p2, p0, Lg/rg;->a:I

    iput-object p1, p0, Lg/rg;->b:Lc/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget p1, p0, Lg/rg;->a:I

    const/4 v0, 0x1

    iget-object v1, p0, Lg/rg;->b:Lc/e/a;

    packed-switch p1, :pswitch_data_0

    sget p1, Lc/e/a;->d:I

    sget p1, Lg/bus;->a:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-static {v1, p1}, Lg/bus;->s(Landroid/app/Activity;Landroid/os/Bundle;)Z

    return-void

    :pswitch_0
    sget p1, Lc/e/a;->d:I

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget p1, Lg/yb;->a:I

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "settings"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {v1, p1}, Lg/yb;->i(Landroid/app/Activity;Landroid/os/Bundle;)Z

    return-void

    :pswitch_1
    sget p1, Lc/e/a;->d:I

    const p1, 0x7f1202bb

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const v2, 0x7f1202ba

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/String;

    move-result-object p1

    iget-object v2, v1, Lg/awy;->p:Lg/awy;

    sget v3, Lg/efx;->aj:I

    const-string v3, "applist_grid_mode"

    invoke-static {v2, v3, v0}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v1}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v3

    const v4, 0x7f1202b9

    invoke-virtual {v3, v4}, Lg/gmn;->p(I)V

    new-instance v4, Lg/aip;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v1}, Lg/aip;-><init>(ILjava/lang/Object;)V

    iget-object v1, v3, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/die;

    iput-object p1, v1, Lg/die;->o:[Ljava/lang/CharSequence;

    iput-object v4, v1, Lg/die;->y:Landroid/content/DialogInterface$OnClickListener;

    iput v2, v1, Lg/die;->w:I

    iput-boolean v0, v1, Lg/die;->l:Z

    invoke-virtual {v3}, Lg/gqc;->ak()Lg/fpl;

    return-void

    :pswitch_2
    sget p1, Lc/e/a;->d:I

    invoke-virtual {v1}, Lg/awy;->r()V

    return-void

    :pswitch_3
    sget p1, Lc/e/a;->d:I

    new-instance p1, Landroid/content/Intent;

    iget-object v0, v1, Lg/awy;->p:Lg/awy;

    const-class v2, Lc/e/c;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_4
    sget p1, Lc/e/a;->d:I

    new-instance p1, Landroid/content/Intent;

    iget-object v0, v1, Lg/awy;->p:Lg/awy;

    const-class v2, Lc/e/b;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_5
    sget p1, Lc/e/a;->d:I

    :try_start_0
    invoke-static {v1}, Lg/baf;->bm(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ServiceInfo;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v1, v9}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v7

    if-nez v7, :cond_0

    iget-boolean v6, v6, Landroid/content/pm/ServiceInfo;->enabled:Z

    goto :goto_1

    :cond_0
    if-ne v7, v0, :cond_1

    const/4 v6, 0x1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    aput-boolean v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_2
    invoke-static {v1}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object v4

    const v5, 0x7f1203d1

    invoke-virtual {v4, v5}, Lg/gmn;->p(I)V

    new-instance v5, Lg/gnt;

    invoke-direct {v5, v1, p1, v3}, Lg/gnt;-><init>(Lc/e/a;Ljava/util/ArrayList;[Z)V

    iget-object p1, v4, Lg/gqc;->z:Ljava/lang/Object;

    check-cast p1, Lg/die;

    iput-object v2, p1, Lg/die;->o:[Ljava/lang/CharSequence;

    iput-object v5, p1, Lg/die;->d:Lg/gnt;

    iput-object v3, p1, Lg/die;->j:[Z

    iput-boolean v0, p1, Lg/die;->k:Z

    const p1, 0x104000a

    const/4 v0, 0x0

    invoke-virtual {v4, p1, v0}, Lg/gmn;->s(ILandroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v4}, Lg/gqc;->ak()Lg/fpl;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string v0, "SettingActivity"

    const-string v2, "Cannot update quick settings tiles"

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p1, 0x7f1203d2

    invoke-static {v1, p1}, Lg/gm;->f(Landroid/content/Context;I)V

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
