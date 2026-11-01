.class public Lg/dsu;
.super Lg/ajw;
.source "SourceFile"


# virtual methods
.method public final g(Landroid/media/AudioManager;)I
    .locals 0

    invoke-static {p1}, Lg/agk;->v(Landroid/media/AudioManager;)I

    move-result p1

    return p1
.end method

.method public final h(Landroid/app/Activity;)V
    .locals 4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzbm:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbzz;->zzi()Lg/gil;

    move-result-object v0

    check-cast v0, Lg/cmo;

    invoke-virtual {v0}, Lg/cmo;->bd()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lg/o;->m(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lg/agk;->g(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    const/4 v3, 0x1

    if-eq v3, v2, :cond_0

    invoke-static {v1, v3}, Lg/agk;->p(Landroid/view/WindowManager$LayoutParams;I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lg/btf;

    invoke-direct {v1, p1}, Lg/btf;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_1
    return-void
.end method
