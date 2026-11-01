.class public Lg/yb;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public final b:Lg/fvi;

.field public c:Lcom/google/android/material/card/MaterialCardView;

.field public d:Lg/fpl;

.field public e:Landroid/widget/TextView;

.field public f:I

.field public g:Lcom/google/android/material/card/MaterialCardView;

.field public h:Lg/ark;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/yb;->f:I

    new-instance v0, Lg/fvi;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lg/fvi;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lg/yb;->b:Lg/fvi;

    return-void
.end method

.method public static i(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-static {v0}, Lg/cnf;->e(Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "debug_access_choice"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Lg/yb;

    invoke-direct {v0}, Lg/yb;-><init>()V

    invoke-virtual {v0, p1}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    return v2

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static j(Landroid/app/Activity;Landroid/content/Intent;Z)Z
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string p1, "target"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p1, "recreate"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-static {p0, v0}, Lg/yb;->l(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static k(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 7

    if-eqz p1, :cond_6

    const-string v0, "settings"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    const-string v0, "recreate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->recreate()V

    return-void

    :cond_1
    const-string v0, "target"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/Intent;

    const-string v0, "tool"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    invoke-static {v3}, Lg/cro;->aj(Landroid/content/Intent;)Lg/cgg;

    move-result-object p1

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lg/cgg;->isTrial()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p1, 0x1

    const/4 v6, 0x1

    :goto_1
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lg/fgj;->g(Landroid/content/Context;Landroid/content/Intent;ZZZ)Z

    return-void

    :cond_4
    move-object v2, p0

    if-eqz p1, :cond_6

    invoke-static {v2, p1}, Lg/acr;->ae(Landroid/content/Context;Ljava/lang/String;)Lg/ert;

    move-result-object p0

    if-eqz p0, :cond_5

    iget-object p1, p0, Lg/ert;->r:Lg/hdb;

    if-eqz p1, :cond_5

    invoke-interface {p1, v2, p0}, Lg/hdb;->_bz(Landroid/content/Context;Lg/ert;)Z

    return-void

    :cond_5
    const p0, 0x7f120459

    invoke-static {v2, p0}, Lg/gm;->e(Landroid/content/Context;I)V

    :cond_6
    :goto_2
    return-void
.end method

.method public static l(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v2, "debug_access_choice"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v3, "shizuku_authorization"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_2

    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-ge v0, v3, :cond_2

    goto :goto_3

    :cond_2
    if-lt v0, v3, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    :goto_0
    sget-boolean v3, Lg/byh;->k:Z

    if-eqz v3, :cond_4

    sget-boolean v3, Lg/byh;->f:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    const-string v3, "debug_access_method_chosen"

    const-string v4, "TrineaAndroidCommon"

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    invoke-interface {v5, v3, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "shizuku_compatibility_mode_enabled"

    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4, v5, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v0, :cond_6

    if-eqz v2, :cond_6

    if-nez v3, :cond_6

    if-nez v4, :cond_6

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lg/fl;->c(Landroid/content/pm/PackageManager;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_6

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_6

    invoke-static {p0, p1}, Lg/yb;->i(Landroid/app/Activity;Landroid/os/Bundle;)Z

    move-result p0

    return p0

    :cond_5
    :goto_2
    return v2

    :catch_0
    :cond_6
    :goto_3
    return v1
.end method

.method public static m(Landroid/app/Activity;)V
    .locals 1

    instance-of v0, p0, Lg/erp;

    if-eqz v0, :cond_0

    check-cast p0, Lg/erp;

    check-cast p0, Lc/e/a;

    invoke-virtual {p0}, Lc/e/a;->n()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final n()V
    .locals 5

    iget-object v0, p0, Lg/yb;->g:Lcom/google/android/material/card/MaterialCardView;

    iget v1, p0, Lg/yb;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v4, 0x7f09010b

    invoke-virtual {p0, v0, v4, v1}, Lg/yb;->p(Lcom/google/android/material/card/MaterialCardView;IZ)V

    iget-object v0, p0, Lg/yb;->c:Lcom/google/android/material/card/MaterialCardView;

    iget v1, p0, Lg/yb;->f:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const v4, 0x7f090101

    invoke-virtual {p0, v0, v4, v1}, Lg/yb;->p(Lcom/google/android/material/card/MaterialCardView;IZ)V

    iget-object v0, p0, Lg/yb;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget v1, p0, Lg/yb;->f:I

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_4
    return-void
.end method

.method public final o()V
    .locals 8

    iget-object v0, p0, Lg/yb;->g:Lcom/google/android/material/card/MaterialCardView;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lg/yb;->c:Lcom/google/android/material/card/MaterialCardView;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "moe.shizuku.privileged.api"

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    nop

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lg/yb;->h:Lg/ark;

    invoke-virtual {v3}, Lg/ark;->r()Z

    move-result v3

    iget-object v4, p0, Lg/yb;->h:Lg/ark;

    invoke-virtual {v4}, Lg/ark;->x()Z

    move-result v4

    iget-object v5, p0, Lg/yb;->h:Lg/ark;

    invoke-virtual {v5}, Lg/ark;->w()Z

    move-result v5

    if-nez v2, :cond_2

    sget-object v2, Lg/alr;->INSTALL:Lg/alr;

    goto :goto_1

    :cond_2
    if-eqz v4, :cond_3

    sget-object v2, Lg/alr;->UPDATE:Lg/alr;

    goto :goto_1

    :cond_3
    if-nez v3, :cond_4

    sget-object v2, Lg/alr;->START:Lg/alr;

    goto :goto_1

    :cond_4
    if-eqz v5, :cond_5

    sget-object v2, Lg/alr;->AUTHORIZED:Lg/alr;

    goto :goto_1

    :cond_5
    sget-object v2, Lg/alr;->AUTHORIZE:Lg/alr;

    :goto_1
    sget-object v3, Lg/epb;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const v4, 0x7f12018a

    const v5, 0x7f120185

    if-eq v3, v0, :cond_9

    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    const/4 v6, 0x3

    if-eq v3, v6, :cond_7

    const/4 v6, 0x4

    if-eq v3, v6, :cond_6

    const v3, 0x7f120185

    goto :goto_2

    :cond_6
    const v3, 0x7f12018a

    goto :goto_2

    :cond_7
    const v3, 0x7f120188

    goto :goto_2

    :cond_8
    const v3, 0x7f120187

    goto :goto_2

    :cond_9
    const v3, 0x7f120186

    :goto_2
    iget-object v6, p0, Lg/yb;->g:Lcom/google/android/material/card/MaterialCardView;

    const v7, 0x7f09010d

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    sget-object v7, Lg/alr;->AUTHORIZED:Lg/alr;

    if-ne v2, v7, :cond_a

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v6, v0}, Landroid/view/View;->setActivated(Z)V

    iget-object v0, p0, Lg/yb;->h:Lg/ark;

    invoke-virtual {v0}, Lg/ark;->ab()Z

    move-result v0

    iget-object v1, p0, Lg/yb;->c:Lcom/google/android/material/card/MaterialCardView;

    const v2, 0x7f090103

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_b

    goto :goto_4

    :cond_b
    const v4, 0x7f120185

    :goto_4
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setActivated(Z)V

    invoke-virtual {p0}, Lg/yb;->n()V

    :cond_c
    :goto_5
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object v1

    iput-object v1, p0, Lg/yb;->h:Lg/ark;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lg/bus;->u(Landroid/content/Context;)Z

    move-result v1

    iget-object v2, p0, Lg/yb;->h:Lg/ark;

    invoke-virtual {v2}, Lg/ark;->w()Z

    move-result v2

    iget-object v3, p0, Lg/yb;->h:Lg/ark;

    invoke-virtual {v3}, Lg/ark;->ab()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez v1, :cond_2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    xor-int/lit8 v1, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz p1, :cond_3

    const-string v2, "selection"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    :cond_3
    move p1, v1

    :goto_2
    iput p1, p0, Lg/yb;->f:I

    if-eqz p1, :cond_4

    if-eq p1, v4, :cond_4

    iput v1, p0, Lg/yb;->f:I

    :cond_4
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object p1

    iget-object v1, p1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v1, Lg/die;

    iget-object v1, v1, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0c004c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f09010c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    iput-object v2, p0, Lg/yb;->g:Lcom/google/android/material/card/MaterialCardView;

    const v2, 0x7f090102

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/card/MaterialCardView;

    iput-object v2, p0, Lg/yb;->c:Lcom/google/android/material/card/MaterialCardView;

    const v2, 0x7f090108

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lg/yb;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const v0, 0x104000a

    goto :goto_3

    :cond_5
    const v0, 0x7f120182

    :goto_3
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lg/yb;->e:Landroid/widget/TextView;

    new-instance v2, Lg/cvx;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/cvx;-><init>(Lg/yb;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090106

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v2, Lg/cvx;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lg/cvx;-><init>(Lg/yb;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lg/yb;->g:Lcom/google/android/material/card/MaterialCardView;

    const v2, 0x7f09010b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    new-instance v3, Lg/cjy;

    invoke-direct {v3, p0, v4}, Lg/cjy;-><init>(Lg/yb;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lg/bbe;

    invoke-direct {v2, p0, v4}, Lg/bbe;-><init>(Lg/yb;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    iget-object v0, p0, Lg/yb;->c:Lcom/google/android/material/card/MaterialCardView;

    const v2, 0x7f090101

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    new-instance v3, Lg/cjy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lg/cjy;-><init>(Lg/yb;I)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v2, Lg/bbe;

    invoke-direct {v2, p0, v4}, Lg/bbe;-><init>(Lg/yb;I)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    const v0, 0x7f12018d

    invoke-virtual {p1, v0}, Lg/gmn;->p(I)V

    invoke-virtual {p1, v1}, Lg/gmn;->v(Landroid/view/View;)V

    invoke-virtual {p1}, Lg/gmn;->r()Lg/fpl;

    move-result-object p1

    iput-object p1, p0, Lg/yb;->d:Lg/fpl;

    invoke-virtual {p0}, Lg/yb;->o()V

    iget-object p1, p0, Lg/yb;->h:Lg/ark;

    iget-object v0, p1, Lg/ark;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lg/yb;->b:Lg/fvi;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lg/ark;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lg/yb;->d:Lg/fpl;

    return-object p1
.end method

.method public final onDestroyView()V
    .locals 2

    iget-object v0, p0, Lg/yb;->h:Lg/ark;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/yb;->b:Lg/fvi;

    iget-object v0, v0, Lg/ark;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lg/yb;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lg/yb;->g:Lcom/google/android/material/card/MaterialCardView;

    iput-object v0, p0, Lg/yb;->c:Lcom/google/android/material/card/MaterialCardView;

    iput-object v0, p0, Lg/yb;->d:Lg/fpl;

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public final onResume()V
    .locals 0

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-virtual {p0}, Lg/yb;->o()V

    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "selection"

    iget v1, p0, Lg/yb;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final onStart()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->al(Landroid/app/Dialog;)V

    return-void
.end method

.method public final p(Lcom/google/android/material/card/MaterialCardView;IZ)V
    .locals 4

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    invoke-virtual {v0, p3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setSelected(Z)V

    const p3, 0x7f09010b

    if-ne p2, p3, :cond_0

    const v0, 0x7f09010f

    goto :goto_0

    :cond_0
    const v0, 0x7f090105

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-ne p2, p3, :cond_1

    const v1, 0x7f09010e

    goto :goto_1

    :cond_1
    const v1, 0x7f090104

    :goto_1
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-ne p2, p3, :cond_2

    const p2, 0x7f09010d

    goto :goto_2

    :cond_2
    const p2, 0x7f090103

    :goto_2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x2

    new-array v2, p3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p2, v2, v1

    const p2, 0x7f120189

    invoke-virtual {p0, p2, v2}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    new-array p3, p3, [Ljava/lang/Object;

    aput-object v0, p3, v3

    aput-object v2, p3, v1

    invoke-virtual {p0, p2, p3}, Landroid/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
