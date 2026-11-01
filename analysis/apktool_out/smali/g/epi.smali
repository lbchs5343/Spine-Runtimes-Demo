.class public abstract Lg/epi;
.super Lg/ghz;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public a:Landroid/widget/SeekBar;

.field public b:F

.field public c:Landroid/view/View;

.field public d:F

.field public e:Landroid/widget/EditText;

.field public f:Lg/dk;

.field public g:F

.field public h:Landroid/widget/Switch;

.field public volatile i:Z

.field public j:Landroid/view/View;

.field public k:Lg/epi;

.field public l:Landroid/view/WindowManager$LayoutParams;

.field public m:Landroid/view/WindowManager;

.field public n:F

.field public o:F

.field public p:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method public static q(FF)V
    .locals 3

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string p0, "%.2f"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p1, v0, v2

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lg/epi;->f:Lg/dk;

    return-object p1
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget v0, p0, Lg/epi;->n:F

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f090393

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    iget p1, p0, Lg/epi;->g:F

    add-float/2addr p1, v0

    invoke-virtual {p0, p1, v2}, Lg/epi;->r(FZ)V

    return-void

    :cond_0
    const v1, 0x7f090135

    if-ne p1, v1, :cond_1

    iget p1, p0, Lg/epi;->g:F

    sub-float/2addr p1, v0

    invoke-virtual {p0, p1, v2}, Lg/epi;->r(FZ)V

    :cond_1
    return-void
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lg/epi;->k:Lg/epi;

    new-instance v0, Lg/dk;

    invoke-direct {v0, p0}, Lg/dk;-><init>(Lg/epi;)V

    iput-object v0, p0, Lg/epi;->f:Lg/dk;

    const-string v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lg/epi;->m:Landroid/view/WindowManager;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lg/epi;->g:F

    return-void
.end method

.method public final onDestroy()V
    .locals 2

    iget-object v0, p0, Lg/epi;->m:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/epi;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/epi;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lg/epi;->m:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lg/epi;->j:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lg/epi;->m:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    :cond_1
    const-class v0, Lg/epi;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lg/epi;->i:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final r(FZ)V
    .locals 3

    iget v0, p0, Lg/epi;->o:F

    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    goto :goto_0

    :cond_0
    iput p1, p0, Lg/epi;->g:F

    iget-object p1, p0, Lg/epi;->h:Landroid/widget/Switch;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lg/epi;->g:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " sp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lg/epi;->e:Landroid/widget/EditText;

    iget v1, p0, Lg/epi;->g:F

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextSize(F)V

    if-eqz p2, :cond_1

    iget-object p1, p0, Lg/epi;->a:Landroid/widget/SeekBar;

    iget p2, p0, Lg/epi;->g:F

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float p2, p2, v1

    div-float/2addr p2, v0

    float-to-int p2, p2

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method
