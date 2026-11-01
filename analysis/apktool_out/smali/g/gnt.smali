.class public final synthetic Lg/gnt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnMultiChoiceClickListener;


# instance fields
.field public final synthetic a:Lc/e/a;

.field public final synthetic b:Ljava/util/ArrayList;

.field public final synthetic c:[Z


# direct methods
.method public synthetic constructor <init>(Lc/e/a;Ljava/util/ArrayList;[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gnt;->a:Lc/e/a;

    iput-object p2, p0, Lg/gnt;->b:Ljava/util/ArrayList;

    iput-object p3, p0, Lg/gnt;->c:[Z

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;IZ)V
    .locals 5

    iget-object v0, p0, Lg/gnt;->a:Lc/e/a;

    iget-object v1, p0, Lg/gnt;->b:Ljava/util/ArrayList;

    sget v2, Lc/e/a;->d:I

    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ServiceInfo;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    new-instance v4, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v3, v4, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    xor-int/2addr p3, v2

    iget-object v2, p0, Lg/gnt;->c:[Z

    aput-boolean p3, v2, p2

    check-cast p1, Lg/fpl;

    iget-object p1, p1, Lg/fpl;->j:Lg/bgn;

    iget-object p1, p1, Lg/bgn;->s:Landroidx/appcompat/app/AlertController$RecycleListView;

    invoke-virtual {p1, p2, p3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    const-string p1, "SettingActivity"

    const-string p2, "Cannot update quick settings tiles"

    invoke-static {p1, p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const p1, 0x7f1203d2

    invoke-static {v0, p1}, Lg/gm;->f(Landroid/content/Context;I)V

    return-void
.end method
