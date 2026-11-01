.class public Lg/bus;
.super Landroid/app/DialogFragment;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# instance fields
.field public b:Landroid/view/View;

.field public c:Z

.field public d:Landroid/widget/TextView;

.field public e:Z

.field public f:Z

.field public g:Landroid/widget/ScrollView;

.field public h:Z

.field public i:Z

.field public j:Landroid/widget/TextView;

.field public k:Landroid/widget/TextView;

.field public l:Lg/ark;

.field public m:Lg/bro;

.field public n:Landroid/content/Context;

.field public o:Z

.field public final p:Lg/cou;

.field public q:Z

.field public r:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bus;->o:Z

    new-instance v0, Lg/cou;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lg/cou;-><init>(Lg/bus;I)V

    iput-object v0, p0, Lg/bus;->p:Lg/cou;

    return-void
.end method

.method public static s(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 4

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

    const-string v1, "shizuku_authorization"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    new-instance v0, Lg/bus;

    invoke-direct {v0}, Lg/bus;-><init>()V

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v3}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

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

.method public static t(Lg/bus;)V
    .locals 4

    iget-object v0, p0, Lg/bus;->g:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/bus;->g:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lg/bus;->g:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    const v2, 0x3f266666    # 0.65f

    mul-float v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lg/bus;->g:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object p0, p0, Lg/bus;->g:Landroid/widget/ScrollView;

    invoke-virtual {p0}, Landroid/widget/ScrollView;->requestLayout()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static u(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "shizuku_compatibility_mode_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lg/cro;->an(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bus;->o:Z

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setRetainInstance(Z)V

    if-eqz p1, :cond_0

    const-string v1, "permission_denied"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lg/bus;->i:Z

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lg/bus;->n:Landroid/content/Context;

    invoke-static {p1}, Lg/ark;->q(Landroid/content/Context;)Lg/ark;

    move-result-object p1

    iput-object p1, p0, Lg/bus;->l:Lg/ark;

    iget-object v0, p1, Lg/ark;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v1, p0, Lg/bus;->p:Lg/cou;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    iget-object p1, p1, Lg/ark;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lg/ckd;->z(Landroid/content/Context;)Lg/gmn;

    move-result-object p1

    iget-object v0, p1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v0, Lg/die;

    iget-object v0, v0, Lg/die;->i:Landroid/view/ContextThemeWrapper;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0051

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ScrollView;

    iput-object v1, p0, Lg/bus;->g:Landroid/widget/ScrollView;

    const v1, 0x7f0902f6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lg/bus;->j:Landroid/widget/TextView;

    const v1, 0x7f0902f7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lg/bus;->k:Landroid/widget/TextView;

    const v1, 0x7f0902fa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lg/bus;->r:Landroid/view/View;

    const v1, 0x7f0902f9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lg/bus;->d:Landroid/widget/TextView;

    const v1, 0x7f0902f5

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lg/bus;->b:Landroid/view/View;

    iput-object v2, p0, Lg/bus;->m:Lg/bro;

    iget-object v1, p0, Lg/bus;->d:Landroid/widget/TextView;

    new-instance v2, Lg/crx;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lg/crx;-><init>(Lg/bus;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lg/bus;->b:Landroid/view/View;

    new-instance v2, Lg/crx;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lg/crx;-><init>(Lg/bus;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lg/bus;->w()V

    const v1, 0x7f120416

    invoke-virtual {p1, v1}, Lg/gmn;->p(I)V

    invoke-virtual {p1, v0}, Lg/gmn;->v(Landroid/view/View;)V

    invoke-virtual {p1}, Lg/gmn;->r()Lg/fpl;

    move-result-object p1

    return-object p1
.end method

.method public final onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bus;->o:Z

    iget-object v0, p0, Lg/bus;->l:Lg/ark;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/bus;->p:Lg/cou;

    iget-object v0, v0, Lg/ark;->f:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroy()V

    return-void
.end method

.method public final onDestroyView()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getRetainInstance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setDismissMessage(Landroid/os/Message;)V

    :cond_0
    iput-object v1, p0, Lg/bus;->j:Landroid/widget/TextView;

    iput-object v1, p0, Lg/bus;->k:Landroid/widget/TextView;

    iput-object v1, p0, Lg/bus;->r:Landroid/view/View;

    iput-object v1, p0, Lg/bus;->d:Landroid/widget/TextView;

    iput-object v1, p0, Lg/bus;->b:Landroid/view/View;

    iput-object v1, p0, Lg/bus;->g:Landroid/widget/ScrollView;

    invoke-super {p0}, Landroid/app/DialogFragment;->onDestroyView()V

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/bus;->o:Z

    :cond_1
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public final onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/DialogFragment;->onResume()V

    invoke-virtual {p0}, Lg/bus;->w()V

    iget-boolean v0, p0, Lg/bus;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lg/bus;->x()V

    :cond_0
    return-void
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "permission_denied"

    iget-boolean v1, p0, Lg/bus;->i:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final onStart()V
    .locals 3

    invoke-super {p0}, Landroid/app/DialogFragment;->onStart()V

    invoke-virtual {p0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-static {v0}, Lg/ckd;->al(Landroid/app/Dialog;)V

    iget-object v0, p0, Lg/bus;->g:Landroid/widget/ScrollView;

    new-instance v1, Lg/cou;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/cou;-><init>(Lg/bus;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final v()V
    .locals 5

    invoke-static {}, Lg/fgj;->e()Lg/fgj;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "https://shizuku.rikka.app/download/"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Lg/fgj;->f(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120430

    invoke-static {v0, v1}, Lg/gm;->e(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public final w()V
    .locals 10

    iget-object v0, p0, Lg/bus;->l:Lg/ark;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lg/bus;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_12

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
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x1

    goto :goto_0

    :catch_0
    nop

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lg/bus;->l:Lg/ark;

    invoke-virtual {v3}, Lg/ark;->r()Z

    move-result v3

    iget-object v4, p0, Lg/bus;->l:Lg/ark;

    invoke-virtual {v4}, Lg/ark;->w()Z

    move-result v4

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Lg/bus;->u(Landroid/content/Context;)Z

    move-result v5

    if-nez v4, :cond_1

    if-nez v3, :cond_2

    :cond_1
    iput-boolean v1, p0, Lg/bus;->i:Z

    :cond_2
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1a

    if-lt v6, v7, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    :goto_1
    iget-boolean v7, p0, Lg/bus;->h:Z

    if-nez v7, :cond_5

    iget-object v7, p0, Lg/bus;->l:Lg/ark;

    iget-object v7, v7, Lg/ark;->h:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x1

    :goto_3
    iget-boolean v8, p0, Lg/bus;->i:Z

    if-nez v8, :cond_9

    iget-object v8, p0, Lg/bus;->l:Lg/ark;

    invoke-virtual {v8}, Lg/ark;->r()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-virtual {v8}, Lg/ark;->w()Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    :try_start_1
    invoke-static {}, Lg/gwn;->s()Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    nop

    :cond_7
    :goto_4
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_8

    goto :goto_6

    :cond_8
    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v8, 0x1

    :goto_7
    iget-object v9, p0, Lg/bus;->l:Lg/ark;

    iget-boolean v9, v9, Lg/ark;->c:Z

    if-nez v6, :cond_a

    sget-object v3, Lg/bro;->UNSUPPORTED:Lg/bro;

    goto :goto_8

    :cond_a
    if-nez v2, :cond_b

    sget-object v3, Lg/bro;->INSTALL:Lg/bro;

    goto :goto_8

    :cond_b
    if-nez v3, :cond_d

    if-eqz v5, :cond_c

    sget-object v3, Lg/bro;->RESTORE_SERVICE:Lg/bro;

    goto :goto_8

    :cond_c
    sget-object v3, Lg/bro;->START:Lg/bro;

    goto :goto_8

    :cond_d
    if-nez v4, :cond_11

    if-eqz v7, :cond_e

    sget-object v3, Lg/bro;->REQUESTING:Lg/bro;

    goto :goto_8

    :cond_e
    if-eqz v8, :cond_f

    sget-object v3, Lg/bro;->DENIED:Lg/bro;

    goto :goto_8

    :cond_f
    if-eqz v5, :cond_10

    sget-object v3, Lg/bro;->RESTORE_PERMISSION:Lg/bro;

    goto :goto_8

    :cond_10
    sget-object v3, Lg/bro;->AUTHORIZE:Lg/bro;

    goto :goto_8

    :cond_11
    if-eqz v5, :cond_12

    if-eqz v9, :cond_12

    sget-object v3, Lg/bro;->CONNECTING:Lg/bro;

    goto :goto_8

    :cond_12
    sget-object v3, Lg/bro;->READY:Lg/bro;

    :goto_8
    if-eqz v2, :cond_13

    iget-object v2, p0, Lg/bus;->l:Lg/ark;

    invoke-virtual {v2}, Lg/ark;->x()Z

    move-result v2

    if-eqz v2, :cond_13

    const/4 v2, 0x1

    goto :goto_9

    :cond_13
    const/4 v2, 0x0

    :goto_9
    iget-boolean v4, p0, Lg/bus;->q:Z

    if-eqz v4, :cond_14

    sget-object v3, Lg/bro;->CONNECTING:Lg/bro;

    :cond_14
    iget-object v4, p0, Lg/bus;->b:Landroid/view/View;

    const/16 v6, 0x8

    if-eqz v5, :cond_15

    const/4 v5, 0x0

    goto :goto_a

    :cond_15
    const/16 v5, 0x8

    :goto_a
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v4, p0, Lg/bus;->b:Landroid/view/View;

    iget-boolean v5, p0, Lg/bus;->q:Z

    xor-int/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/view/View;->setEnabled(Z)V

    iget-object v4, p0, Lg/bus;->m:Lg/bro;

    if-ne v3, v4, :cond_16

    iget-boolean v4, p0, Lg/bus;->f:Z

    if-ne v2, v4, :cond_16

    iget-boolean v4, p0, Lg/bus;->c:Z

    iget-boolean v5, p0, Lg/bus;->q:Z

    if-ne v4, v5, :cond_16

    goto/16 :goto_12

    :cond_16
    iget-boolean v4, p0, Lg/bus;->q:Z

    iput-boolean v4, p0, Lg/bus;->c:Z

    iput-object v3, p0, Lg/bus;->m:Lg/bro;

    iput-boolean v2, p0, Lg/bus;->f:Z

    sget-object v2, Lg/gtr;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v2, v2, v4

    const v4, 0x7f120418

    const v5, 0x7f120422

    packed-switch v2, :pswitch_data_0

    const v5, 0x7f120428

    const v4, 0x7f120419

    :goto_b
    :pswitch_0
    const/4 v2, 0x0

    :goto_c
    const/4 v7, 0x0

    goto :goto_e

    :pswitch_1
    iget-boolean v2, p0, Lg/bus;->q:Z

    if-eqz v2, :cond_17

    const v2, 0x7f120412

    const v5, 0x7f120412

    goto :goto_d

    :cond_17
    const v2, 0x7f120423

    const v5, 0x7f120423

    :goto_d
    const v4, 0x7f12041a

    goto :goto_b

    :pswitch_2
    const v5, 0x7f120426

    const v4, 0x7f12041f

    goto :goto_b

    :pswitch_3
    const v5, 0x7f12042a

    const v2, 0x7f120414

    const v4, 0x7f120421

    goto :goto_c

    :pswitch_4
    const v5, 0x7f120424

    const v4, 0x7f12041e

    goto :goto_b

    :pswitch_5
    const v2, 0x7f12042b

    goto :goto_c

    :pswitch_6
    const v5, 0x7f120427

    const v4, 0x7f12041d

    const/4 v2, 0x0

    const/4 v7, 0x1

    goto :goto_e

    :pswitch_7
    const v5, 0x7f120425

    const v4, 0x7f12041c

    goto :goto_b

    :goto_e
    iget-boolean v8, p0, Lg/bus;->f:Z

    if-eqz v8, :cond_18

    const v5, 0x7f120429

    const v2, 0x7f12042c

    const v4, 0x7f120420

    const/4 v7, 0x0

    :cond_18
    iget-object v8, p0, Lg/bus;->j:Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(I)V

    iget-object v5, p0, Lg/bus;->k:Landroid/widget/TextView;

    if-nez v2, :cond_19

    const/16 v8, 0x8

    goto :goto_f

    :cond_19
    const/4 v8, 0x0

    :goto_f
    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v2, :cond_1a

    iget-object v5, p0, Lg/bus;->k:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1a
    iget-object v2, p0, Lg/bus;->r:Landroid/view/View;

    if-eqz v7, :cond_1b

    const/4 v6, 0x0

    :cond_1b
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lg/bus;->d:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lg/bus;->d:Landroid/widget/TextView;

    sget-object v4, Lg/bja;->a:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    packed-switch v3, :pswitch_data_1

    sget-object v3, Lg/tg;->NONE:Lg/tg;

    goto :goto_10

    :pswitch_8
    sget-object v3, Lg/tg;->FINISH:Lg/tg;

    goto :goto_10

    :pswitch_9
    sget-object v3, Lg/tg;->USE:Lg/tg;

    goto :goto_10

    :pswitch_a
    sget-object v3, Lg/tg;->REQUEST_PERMISSION:Lg/tg;

    goto :goto_10

    :pswitch_b
    sget-object v3, Lg/tg;->OPEN_MANAGER:Lg/tg;

    goto :goto_10

    :pswitch_c
    sget-object v3, Lg/tg;->INSTALL:Lg/tg;

    :goto_10
    sget-object v4, Lg/tg;->NONE:Lg/tg;

    if-eq v3, v4, :cond_1c

    goto :goto_11

    :cond_1c
    const/4 v0, 0x0

    :goto_11
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lg/bus;->g:Landroid/widget/ScrollView;

    if-eqz v0, :cond_1d

    new-instance v1, Lg/cou;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/cou;-><init>(Lg/bus;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public final x()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-boolean v1, p0, Lg/bus;->o:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lg/bus;->e:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-static {v1}, Lg/cnf;->e(Landroid/app/FragmentManager;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/bus;->e:Z

    iput-boolean v1, p0, Lg/bus;->o:Z

    const-string v1, "shizuku_compatibility_mode_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    const-string v1, "debug_access_method_chosen"

    invoke-static {v0, v1, v2}, Lg/cro;->af(Landroid/content/Context;Ljava/lang/String;Z)Z

    invoke-static {v0}, Lg/yb;->m(Landroid/app/Activity;)V

    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/DialogFragment;->dismiss()V

    invoke-static {v0, v1}, Lg/yb;->k(Landroid/app/Activity;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final y()V
    .locals 5

    iget-boolean v0, p0, Lg/bus;->o:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/bus;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/bus;->q:Z

    invoke-virtual {p0}, Lg/bus;->w()V

    iget-object v0, p0, Lg/bus;->l:Lg/ark;

    new-instance v1, Lg/csg;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0}, Lg/csg;-><init>(ILjava/lang/Object;)V

    iget-object v2, v0, Lg/ark;->m:Landroid/os/Handler;

    new-instance v3, Lg/dsf;

    const/16 v4, 0xa

    invoke-direct {v3, v0, v4, v1}, Lg/dsf;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
