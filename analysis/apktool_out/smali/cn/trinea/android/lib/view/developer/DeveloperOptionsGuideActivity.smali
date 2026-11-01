.class public Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;
.super Lg/dms;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final STATE_WAITING_FOR_ENABLE:Ljava/lang/String; = "waitingForEnable"


# instance fields
.field private final checkEnabled:Ljava/lang/Runnable;

.field private demo:Lg/cf;

.field private final handler:Landroid/os/Handler;

.field private waitingForEnable:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lg/ub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lg/byd;

    const/4 v1, 0x7

    invoke-direct {v0, v1, p0}, Lg/byd;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->checkEnabled:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic d(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->lambda$onCreate$2(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic e(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->waitingForEnable:Z

    return-void
.end method

.method public static bridge synthetic f(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic g(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->waitingForEnable:Z

    return p0
.end method

.method public static synthetic h(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->lambda$onCreate$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->lambda$onCreate$0(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$onCreate$0(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    const/4 p0, 0x1

    return p0
.end method

.method private synthetic lambda$onCreate$1(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private lambda$onCreate$2(Landroid/view/View;)V
    .locals 3

    invoke-static {p0}, Lg/afo;->ak(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lg/afo;->ao(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lg/afo;->ak(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->waitingForEnable:Z

    iget-object p1, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->checkEnabled:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->checkEnabled:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-static {p0}, Lg/afo;->ai(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-static {p0}, Lg/afo;->ak(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "waitingForEnable"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    :goto_0
    iput-boolean p1, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->waitingForEnable:Z

    const p1, 0x7f0c0020

    invoke-virtual {p0, p1}, Lg/dms;->setContentView(I)V

    const p1, 0x7f09017e

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lg/fnp;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0}, Lg/fnp;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, " -> "

    const/4 v4, 0x2

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p1

    array-length v3, p1

    if-le v3, v1, :cond_2

    const v3, 0x7f1201ce

    goto :goto_1

    :cond_2
    const v3, 0x7f1201cd

    :goto_1
    const v5, 0x7f090189

    invoke-virtual {p0, v5}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    array-length v6, p1

    const v7, 0x7f1201c6

    if-le v6, v1, :cond_3

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget-object v7, p1, v0

    aget-object p1, p1, v1

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v6, v8, v0

    aput-object v7, v8, v1

    aput-object p1, v8, v4

    invoke-virtual {p0, v3, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aget-object p1, p1, v0

    new-array v7, v4, [Ljava/lang/Object;

    aput-object v6, v7, v0

    aput-object p1, v7, v1

    invoke-virtual {p0, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f09018a

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    new-array v3, v1, [Ljava/lang/Object;

    aput-object v2, v3, v0

    const v2, 0x7f1201cf

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090186

    const v2, 0x7f090187

    filled-new-array {p1, v2}, [I

    move-result-object p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v4, :cond_4

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lg/dyd;->ap(Landroid/view/View;)V

    new-instance v5, Lg/hcj;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v3, v5}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    new-instance p1, Lg/cf;

    const v2, 0x1020002

    invoke-virtual {p0, v2}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p1, v3}, Lg/cf;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->demo:Lg/cf;

    invoke-virtual {p0, v2}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lg/dyd;->ao(Landroid/view/View;)V

    const p1, 0x7f090184

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v2, Lg/ght;

    invoke-direct {v2, p0, v0}, Lg/ght;-><init>(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;I)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p1, 0x7f09017d

    invoke-virtual {p0, p1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lg/ght;

    invoke-direct {v0, p0, v1}, Lg/ght;-><init>(Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    iget-object v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lg/dms;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    iget-object v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->demo:Lg/cf;

    invoke-virtual {v0}, Lg/cf;->n()V

    invoke-super {p0}, Landroidx/fragment/app/u;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lg/dms;->onResume()V

    iget-object v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->checkEnabled:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->checkEnabled:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->demo:Lg/cf;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lg/cf;->m(J)V

    invoke-static {p0}, Lg/afo;->ak(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f090185

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const v2, 0x7f1201c4

    goto :goto_0

    :cond_1
    const v2, 0x7f1201c7

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f090184

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_2

    const v2, 0x7f1201c0

    goto :goto_1

    :cond_2
    const v2, 0x7f1201c8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f09017d

    invoke-virtual {p0, v1}, Lg/ub;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    if-eqz v0, :cond_3

    const v0, 0x7f1201cb

    goto :goto_2

    :cond_3
    const v0, 0x7f1201c6

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "waitingForEnable"

    iget-boolean v1, p0, Lcn/trinea/android/lib/view/developer/DeveloperOptionsGuideActivity;->waitingForEnable:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
