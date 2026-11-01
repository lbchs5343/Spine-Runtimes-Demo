.class public Lf/a/c;
.super Lg/guy;
.source "SourceFile"

# interfaces
.implements Lg/eha;


# instance fields
.field public d:Lg/aco;

.field public e:Landroid/content/Intent;

.field public f:Lg/epi;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lg/guy;-><init>()V

    return-void
.end method


# virtual methods
.method public final g()Ljava/lang/String;
    .locals 1

    const v0, 0x7f12023e

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .locals 11

    const-string v0, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lf/a/c;->f:Lg/epi;

    if-eqz p1, :cond_4

    iget-boolean v0, p1, Lg/epi;->i:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const-class v1, Lg/epi;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p1, Lg/epi;->i:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v2, v2, 0x2

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v0, v0, 0x2

    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-static {}, Lg/fso;->ah()I

    move-result v6

    const v7, -0x7ffffef8

    const/4 v8, -0x3

    const/4 v4, -0x2

    const/4 v5, -0x2

    invoke-direct/range {v3 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v3, p1, Lg/epi;->l:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x33

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00bf

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lg/epi;->c:Landroid/view/View;

    const v1, 0x7f09012b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lg/gft;

    new-instance v1, Lg/bcr;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1}, Lg/bcr;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p1, Lg/epi;->c:Landroid/view/View;

    const v1, 0x7f0902e4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p1, Lg/epi;->a:Landroid/widget/SeekBar;

    new-instance v1, Lg/bwl;

    invoke-direct {v1, p1}, Lg/bwl;-><init>(Lg/epi;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p1, Lg/epi;->c:Landroid/view/View;

    const v1, 0x7f0900f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p1, Lg/epi;->h:Landroid/widget/Switch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p1, Lg/epi;->g:F

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, " sp"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lg/epi;->c:Landroid/view/View;

    const v1, 0x7f090393

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lg/epi;->c:Landroid/view/View;

    const v1, 0x7f090135

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lg/epi;->m:Landroid/view/WindowManager;

    iget-object v1, p1, Lg/epi;->c:Landroid/view/View;

    iget-object v3, p1, Lg/epi;->l:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v3}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v3, 0x7f0700cc

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    new-instance v5, Landroid/view/WindowManager$LayoutParams;

    const/16 v9, 0x20

    const/4 v10, -0x2

    const/4 v6, -0x2

    const/4 v7, -0x2

    const/16 v8, 0x7da

    invoke-direct/range {v5 .. v10}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v5, p1, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    iput v4, v5, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v4, 0x1a

    invoke-static {v4}, Lg/dyd;->bp(I)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p1, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x7f6

    iput v5, v4, Landroid/view/WindowManager$LayoutParams;->type:I

    :cond_1
    iget-object v4, p1, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p1, Lg/epi;->l:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    sub-int/2addr v0, v3

    iget-object v1, p1, Lg/epi;->k:Lg/epi;

    const/high16 v3, 0x41800000    # 16.0f

    invoke-static {v1, v3}, Lg/fso;->al(Landroid/content/Context;F)F

    move-result v1

    float-to-int v1, v1

    sub-int/2addr v0, v1

    iput v0, v4, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c00dc

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lg/epi;->j:Landroid/view/View;

    const v1, 0x7f0900c7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lg/dt;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lg/dt;-><init>(Lg/epi;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p1, Lg/epi;->j:Landroid/view/View;

    const v1, 0x7f09033f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p1, Lg/epi;->e:Landroid/widget/EditText;

    new-instance v1, Lg/dt;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lg/dt;-><init>(Lg/epi;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/16 v0, 0x13

    invoke-static {v0}, Lg/dyd;->bp(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lg/epi;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lg/epi;->m:Landroid/view/WindowManager;

    iget-object v1, p1, Lg/epi;->j:Landroid/view/View;

    iget-object p1, p1, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lg/epi;->m:Landroid/view/WindowManager;

    iget-object v1, p1, Lg/epi;->j:Landroid/view/View;

    iget-object p1, p1, Lg/epi;->p:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p1}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lg/dms;->onCreate(Landroid/os/Bundle;)V

    iput-object p0, p0, Lg/guy;->k:Lg/guy;

    new-instance p1, Lg/aco;

    const/4 v0, 0x1

    invoke-direct {p1, v0, p0}, Lg/aco;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lf/a/c;->d:Lg/aco;

    new-instance p1, Landroid/content/Intent;

    const-class v0, Lf/a/b;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lf/a/c;->e:Landroid/content/Intent;

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object p1, p0, Lf/a/c;->e:Landroid/content/Intent;

    iget-object v0, p0, Lf/a/c;->d:Lg/aco;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public final onDenied(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lg/guy;->k:Lg/guy;

    const-string v0, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {p1, v0}, Lg/fyt;->d(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onDestroy()V
    .locals 1

    iget-object v0, p0, Lf/a/c;->f:Lg/epi;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lg/epi;->i:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lf/a/c;->d:Lg/aco;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    iget-object v0, p0, Lf/a/c;->e:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_1
    invoke-super {p0}, Lg/dms;->onDestroy()V

    return-void
.end method
