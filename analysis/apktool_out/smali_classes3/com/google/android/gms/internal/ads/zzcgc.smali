.class public final Lcom/google/android/gms/internal/ads/zzcgc;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcfk;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final b:Lcom/google/android/gms/internal/ads/zzcfk;

.field public final c:Lcom/google/android/gms/internal/ads/zzcbu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfk;)V
    .locals 2

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcbu;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzE()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lcom/google/android/gms/internal/ads/zzcbu;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/google/android/gms/internal/ads/zzcfk;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->c:Lcom/google/android/gms/internal/ads/zzcbu;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final canGoBack()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public final destroy()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgc;->zzQ()Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    sget-object v2, Lg/esy;->a:Lg/gfx;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcga;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzcga;-><init>(Lcom/google/android/gms/internal/ads/zzeew;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-static {v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfy;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzcfy;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzfc:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v3, v1

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzfe:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgc;->zzP()Lcom/google/android/gms/internal/ads/zzeeu;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v1, Lg/esy;->a:Lg/gfx;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzcgb;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzcgb;-><init>(Lcom/google/android/gms/internal/ads/zzcgc;Lcom/google/android/gms/internal/ads/zzeeu;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzcfk;->destroy()V

    return-void
.end method

.method public final goBack()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->goBack()V

    return-void
.end method

.method public final loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v0, "text/html"

    invoke-interface {p2, p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzcfk;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    const/4 v5, 0x0

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v1, p1

    move-object v2, p2

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcfk;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public final onPause()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->c:Lcom/google/android/gms/internal/ads/zzcbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbu;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->onPause()V

    return-void
.end method

.method public final onResume()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->onResume()V

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public final zzA(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzccf;->zzA(I)V

    return-void
.end method

.method public final zzB(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->c:Lcom/google/android/gms/internal/ads/zzcbu;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcbu;->zzg(I)V

    return-void
.end method

.method public final zzC(Lcom/google/android/gms/internal/ads/zzcgm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzC(Lcom/google/android/gms/internal/ads/zzcgm;)V

    return-void
.end method

.method public final zzD()Lcom/google/android/gms/internal/ads/zzfet;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzD()Lcom/google/android/gms/internal/ads/zzfet;

    move-result-object v0

    return-object v0
.end method

.method public final zzE()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzE()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final zzF()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public final zzG()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v0, Landroid/webkit/WebView;

    return-object v0
.end method

.method public final zzH()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzH()Landroid/webkit/WebViewClient;

    move-result-object v0

    return-object v0
.end method

.method public final zzI()Lcom/google/android/gms/internal/ads/zzavc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzI()Lcom/google/android/gms/internal/ads/zzavc;

    move-result-object v0

    return-object v0
.end method

.method public final zzJ()Lcom/google/android/gms/internal/ads/zzazz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzJ()Lcom/google/android/gms/internal/ads/zzazz;

    move-result-object v0

    return-object v0
.end method

.method public final zzK()Lcom/google/android/gms/internal/ads/zzbfm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzK()Lcom/google/android/gms/internal/ads/zzbfm;

    move-result-object v0

    return-object v0
.end method

.method public final zzL()Lg/cwg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzL()Lg/cwg;

    move-result-object v0

    return-object v0
.end method

.method public final zzM()Lg/cwg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzM()Lg/cwg;

    move-result-object v0

    return-object v0
.end method

.method public final zzN()Lcom/google/android/gms/internal/ads/zzchc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v0, Lcom/google/android/gms/internal/ads/v;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/v;->an:Lcom/google/android/gms/internal/ads/zzcfs;

    return-object v0
.end method

.method public final zzO()Lcom/google/android/gms/internal/ads/zzche;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v0

    return-object v0
.end method

.method public final zzP()Lcom/google/android/gms/internal/ads/zzeeu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzP()Lcom/google/android/gms/internal/ads/zzeeu;

    move-result-object v0

    return-object v0
.end method

.method public final zzQ()Lcom/google/android/gms/internal/ads/zzeew;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzQ()Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v0

    return-object v0
.end method

.method public final zzR()Lcom/google/android/gms/internal/ads/zzfew;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzR()Lcom/google/android/gms/internal/ads/zzfew;

    move-result-object v0

    return-object v0
.end method

.method public final zzS()Lcom/google/android/gms/internal/ads/zzffs;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzS()Lcom/google/android/gms/internal/ads/zzffs;

    move-result-object v0

    return-object v0
.end method

.method public final zzT()Lg/dcy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzT()Lg/dcy;

    move-result-object v0

    return-object v0
.end method

.method public final zzU()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzU()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzV()Ljava/util/List;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eq v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final zzW(Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzW(Lcom/google/android/gms/internal/ads/zzfet;Lcom/google/android/gms/internal/ads/zzfew;)V

    return-void
.end method

.method public final zzX()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->c:Lcom/google/android/gms/internal/ads/zzcbu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcbu;->zze()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzX()V

    return-void
.end method

.method public final zzY()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzY()V

    return-void
.end method

.method public final zzZ(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzZ(I)V

    return-void
.end method

.method public final zza(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v0, Lcom/google/android/gms/internal/ads/v;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/v;->be(Ljava/lang/String;)V

    return-void
.end method

.method public final zzaA(Ljava/lang/String;Lg/aqj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaA(Ljava/lang/String;Lg/aqj;)V

    return-void
.end method

.method public final zzaB()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaB()Z

    move-result v0

    return v0
.end method

.method public final zzaC()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaC()Z

    move-result v0

    return v0
.end method

.method public final zzaD(ZI)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzaT:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object v3, v0

    check-cast v3, Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaD(ZI)Z

    return v2
.end method

.method public final zzaE()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaE()Z

    move-result v0

    return v0
.end method

.method public final zzaF()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaF()Z

    move-result v0

    return v0
.end method

.method public final zzaG()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->a:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public final zzaH()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaH()Z

    move-result v0

    return v0
.end method

.method public final zzaJ(Lg/etg;ZZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaJ(Lg/etg;ZZ)V

    return-void
.end method

.method public final zzaK(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    const/16 v0, 0xe

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaK(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final zzaL(ZIZ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaL(ZIZ)V

    return-void
.end method

.method public final zzaM(ZILjava/lang/String;Ljava/lang/String;Z)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaM(ZILjava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final zzaN(ZILjava/lang/String;ZZ)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzcgu;->zzaN(ZILjava/lang/String;ZZ)V

    return-void
.end method

.method public final zzaa()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaa()V

    return-void
.end method

.method public final zzab()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzab()V

    return-void
.end method

.method public final zzac(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzac(Z)V

    return-void
.end method

.method public final zzad()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzad()V

    return-void
.end method

.method public final zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    const/4 v0, 0x0

    invoke-interface {p3, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzae(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzaf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaf()V

    return-void
.end method

.method public final zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzag(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method

.method public final zzah()V
    .locals 5

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v2, v1, Lg/ti;->z:Lg/esy;

    iget-object v2, v1, Lg/ti;->ab:Lcom/google/android/gms/internal/ads/zzbzz;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbzz;->zze()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_0

    const v3, 0x7f1203ed

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "Test Ad"

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v2, 0x41700000    # 15.0f

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    const v3, -0xbbbbbc

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v3, 0x41000000    # 8.0f

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    const/16 v4, 0x31

    invoke-direct {v2, v3, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {p0, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->bringChildToFront(Landroid/view/View;)V

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzfe:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v4, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgc;->zzP()Lcom/google/android/gms/internal/ads/zzeeu;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/google/android/gms/internal/ads/zzeeu;->zza(Landroid/view/View;)V

    return-void

    :cond_2
    :goto_1
    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzfd:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzcgc;->zzQ()Lcom/google/android/gms/internal/ads/zzeew;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeew;->zzb()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, v1, Lg/ti;->aa:Lcom/google/android/gms/internal/ads/zzeeq;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzeew;->zza()Lcom/google/android/gms/internal/ads/zzfmw;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzeer;->zzg(Lcom/google/android/gms/internal/ads/zzfmw;Landroid/view/View;)V

    :cond_3
    return-void
.end method

.method public final zzai(Lg/cwg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzai(Lg/cwg;)V

    return-void
.end method

.method public final zzaj(Lcom/google/android/gms/internal/ads/zzche;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaj(Lcom/google/android/gms/internal/ads/zzche;)V

    return-void
.end method

.method public final zzak(Lcom/google/android/gms/internal/ads/zzazz;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzak(Lcom/google/android/gms/internal/ads/zzazz;)V

    return-void
.end method

.method public final zzal(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzal(Z)V

    return-void
.end method

.method public final zzam()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->setBackgroundColor(I)V

    return-void
.end method

.method public final zzan(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzan(Landroid/content/Context;)V

    return-void
.end method

.method public final zzao(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzao(Z)V

    return-void
.end method

.method public final zzap(Lcom/google/android/gms/internal/ads/zzbfk;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzap(Lcom/google/android/gms/internal/ads/zzbfk;)V

    return-void
.end method

.method public final zzaq(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaq(Z)V

    return-void
.end method

.method public final zzar(Lcom/google/android/gms/internal/ads/zzbfm;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzar(Lcom/google/android/gms/internal/ads/zzbfm;)V

    return-void
.end method

.method public final zzas(Lcom/google/android/gms/internal/ads/zzeeu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzas(Lcom/google/android/gms/internal/ads/zzeeu;)V

    return-void
.end method

.method public final zzat(Lcom/google/android/gms/internal/ads/zzeew;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzat(Lcom/google/android/gms/internal/ads/zzeew;)V

    return-void
.end method

.method public final zzau(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzau(I)V

    return-void
.end method

.method public final zzav(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzav(Z)V

    return-void
.end method

.method public final zzaw(Lg/cwg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaw(Lg/cwg;)V

    return-void
.end method

.method public final zzax(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzax(Z)V

    return-void
.end method

.method public final zzay(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzay(Z)V

    return-void
.end method

.method public final zzaz(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzaz(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbjr;)V

    return-void
.end method

.method public final zzb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    const-string v0, "window.inspectorInfo"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbmy;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzd(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbmm;->zzd(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final zzdG()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdel;->zzdG()V

    :cond_0
    return-void
.end method

.method public final zzdf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdel;->zzdf()V

    :cond_0
    return-void
.end method

.method public final zzdg()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzdg()V

    return-void
.end method

.method public final zzdh()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzdh()V

    return-void
.end method

.method public final zzdi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccf;->zzdi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzdp(Lcom/google/android/gms/internal/ads/zzayl;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzaym;->zzdp(Lcom/google/android/gms/internal/ads/zzayl;)V

    return-void
.end method

.method public final zze(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzbmm;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public final zzf()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccf;->zzf()I

    move-result v0

    return v0
.end method

.method public final zzg()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzdV:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final zzh()I
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbcn;->zzdV:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v1, Lg/edt;->a:Lg/edt;

    iget-object v1, v1, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getMeasuredWidth()I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final zzi()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final zzj()Lg/gfo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzj()Lg/gfo;

    move-result-object v0

    return-object v0
.end method

.method public final zzk()Lcom/google/android/gms/internal/ads/zzbcz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccf;->zzk()Lcom/google/android/gms/internal/ads/zzbcz;

    move-result-object v0

    return-object v0
.end method

.method public final zzl(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    check-cast v0, Lcom/google/android/gms/internal/ads/v;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/v;->zzb(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zzbda;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzm()Lcom/google/android/gms/internal/ads/zzbda;

    move-result-object v0

    return-object v0
.end method

.method public final zzn()Lg/akx;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzn()Lg/akx;

    move-result-object v0

    return-object v0
.end method

.method public final zzo()Lcom/google/android/gms/internal/ads/zzcbu;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->c:Lcom/google/android/gms/internal/ads/zzcbu;

    return-object v0
.end method

.method public final zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcdr;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzccf;->zzp(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzcdr;

    move-result-object p1

    return-object p1
.end method

.method public final zzq()Lcom/google/android/gms/internal/ads/zzcgm;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzcfk;->zzq()Lcom/google/android/gms/internal/ads/zzcgm;

    move-result-object v0

    return-object v0
.end method

.method public final zzr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccf;->zzr()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcdr;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzcfk;->zzt(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcdr;)V

    return-void
.end method

.method public final zzu()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccf;->zzu()V

    return-void
.end method

.method public final zzv(ZJ)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzccf;->zzv(ZJ)V

    return-void
.end method

.method public final zzw()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzccf;->zzw()V

    return-void
.end method

.method public final zzx(I)V
    .locals 0

    return-void
.end method

.method public final zzy(I)V
    .locals 0

    return-void
.end method

.method public final zzz(Z)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcgc;->b:Lcom/google/android/gms/internal/ads/zzcfk;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzccf;->zzz(Z)V

    return-void
.end method
