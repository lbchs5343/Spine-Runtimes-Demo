.class public final Lcom/google/android/gms/internal/ads/zzbsj;
.super Lcom/google/android/gms/internal/ads/zzbsk;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbjr;


# instance fields
.field public a:F

.field public b:I

.field public c:I

.field public d:I

.field public final e:Landroid/content/Context;

.field public f:I

.field public final g:Landroid/view/WindowManager;

.field public final h:Lcom/google/android/gms/internal/ads/zzbbv;

.field public i:I

.field public j:I

.field public k:I

.field public final l:Lcom/google/android/gms/internal/ads/zzcfk;

.field public m:Landroid/util/DisplayMetrics;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcfk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbbv;)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbsk;-><init>(Lcom/google/android/gms/internal/ads/zzcfk;Ljava/lang/String;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->j:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->k:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->f:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->i:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->d:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->c:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->l:Lcom/google/android/gms/internal/ads/zzcfk;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->e:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbsj;->h:Lcom/google/android/gms/internal/ads/zzbbv;

    const-string p1, "window"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->g:Landroid/view/WindowManager;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 10

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcfk;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->m:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->g:Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->m:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, p2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->m:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->a:F

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->b:I

    sget-object p1, Lg/cbv;->a:Lg/cbv;

    iget-object p1, p1, Lg/cbv;->d:Lg/mx;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->m:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p2, p2

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->j:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->m:Landroid/util/DisplayMetrics;

    iget p2, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float p2, p2

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->k:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->l:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzi()Landroid/app/Activity;

    move-result-object p2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->z:Lg/esy;

    invoke-static {p2}, Lg/esy;->ae(Landroid/app/Activity;)[I

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->m:Landroid/util/DisplayMetrics;

    aget v3, p2, v2

    int-to-float v3, v3

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->f:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->m:Landroid/util/DisplayMetrics;

    aget p2, p2, v1

    int-to-float p2, p2

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->i:I

    goto :goto_1

    :cond_1
    :goto_0
    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->j:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->f:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->k:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->i:I

    :goto_1
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzche;->zzi()Z

    move-result p2

    if-eqz p2, :cond_2

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->j:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->d:I

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->k:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->c:I

    goto :goto_2

    :cond_2
    invoke-interface {p1, v2, v2}, Lcom/google/android/gms/internal/ads/zzcfk;->measure(II)V

    :goto_2
    iget v4, p0, Lcom/google/android/gms/internal/ads/zzbsj;->j:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzbsj;->k:I

    iget v6, p0, Lcom/google/android/gms/internal/ads/zzbsj;->f:I

    iget v7, p0, Lcom/google/android/gms/internal/ads/zzbsj;->i:I

    iget v8, p0, Lcom/google/android/gms/internal/ads/zzbsj;->a:F

    iget v9, p0, Lcom/google/android/gms/internal/ads/zzbsj;->b:I

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzbsk;->zzj(IIIIFI)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzbsi;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzbsi;-><init>()V

    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.intent.action.DIAL"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "tel:"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzbsj;->h:Lcom/google/android/gms/internal/ads/zzbbv;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbbv;->zza(Landroid/content/Intent;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbsi;->zze(Z)Lcom/google/android/gms/internal/ads/zzbsi;

    new-instance v0, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v5, "sms:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzbbv;->zza(Landroid/content/Intent;)Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbsi;->zzc(Z)Lcom/google/android/gms/internal/ads/zzbsi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbbv;->zzb()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbsi;->zza(Z)Lcom/google/android/gms/internal/ads/zzbsi;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzbbv;->zzc()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbsi;->zzd(Z)Lcom/google/android/gms/internal/ads/zzbsi;

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/zzbsi;->zzb(Z)Lcom/google/android/gms/internal/ads/zzbsi;

    iget-boolean v0, p2, Lcom/google/android/gms/internal/ads/zzbsi;->c:Z

    iget-boolean v4, p2, Lcom/google/android/gms/internal/ads/zzbsi;->d:Z

    iget-boolean v5, p2, Lcom/google/android/gms/internal/ads/zzbsi;->e:Z

    iget-boolean v6, p2, Lcom/google/android/gms/internal/ads/zzbsi;->a:Z

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzbsi;->b:Z

    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string v8, "sms"

    invoke-virtual {v7, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v7, "tel"

    invoke-virtual {v0, v7, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "calendar"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "storePicture"

    invoke-virtual {v0, v4, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v4, "inlineVideo"

    invoke-virtual {v0, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object p2, v0

    const-string v0, "Error occurred while obtaining the MRAID capabilities."

    invoke-static {v0, p2}, Lg/agd;->f(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    :goto_3
    const-string v0, "onDeviceFeaturesReceived"

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzbmm;->zze(Ljava/lang/String;Lorg/json/JSONObject;)V

    const/4 p2, 0x2

    new-array v0, p2, [I

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzcfk;->getLocationOnScreen([I)V

    sget-object v4, Lg/cbv;->a:Lg/cbv;

    iget-object v5, v4, Lg/cbv;->d:Lg/mx;

    aget v2, v0, v2

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzbsj;->e:Landroid/content/Context;

    invoke-virtual {v5, v6, v2}, Lg/mx;->s(Landroid/content/Context;I)I

    move-result v2

    iget-object v4, v4, Lg/cbv;->d:Lg/mx;

    aget v0, v0, v1

    invoke-virtual {v4, v6, v0}, Lg/mx;->s(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/internal/ads/zzbsj;->zzb(II)V

    invoke-static {p2}, Lg/agd;->i(I)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "Dispatching Ready Event."

    invoke-static {p2}, Lg/agd;->k(Ljava/lang/String;)V

    :cond_3
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzcfk;->zzn()Lg/akx;

    move-result-object p1

    iget-object p1, p1, Lg/akx;->afmaVersion:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzbsk;->zzi(Ljava/lang/String;)V

    return-void
.end method

.method public final zzb(II)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->e:Landroid/content/Context;

    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->z:Lg/esy;

    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lg/esy;->r(Landroid/app/Activity;)[I

    move-result-object v1

    aget v1, v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbsj;->l:Lcom/google/android/gms/internal/ads/zzcfk;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzche;->zzi()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_1
    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->getWidth()I

    move-result v4

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->getHeight()I

    move-result v5

    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzaa:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v7, Lg/edt;->a:Lg/edt;

    iget-object v7, v7, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_4

    if-nez v4, :cond_3

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v4

    iget v4, v4, Lcom/google/android/gms/internal/ads/zzche;->zzb:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :cond_3
    :goto_1
    if-nez v5, :cond_4

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzO()Lcom/google/android/gms/internal/ads/zzche;

    move-result-object v2

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzche;->zza:I

    goto :goto_2

    :cond_4
    move v2, v5

    :cond_5
    :goto_2
    sget-object v5, Lg/cbv;->a:Lg/cbv;

    iget-object v6, v5, Lg/cbv;->d:Lg/mx;

    invoke-virtual {v6, v0, v4}, Lg/mx;->s(Landroid/content/Context;I)I

    move-result v4

    iput v4, p0, Lcom/google/android/gms/internal/ads/zzbsj;->d:I

    iget-object v4, v5, Lg/cbv;->d:Lg/mx;

    invoke-virtual {v4, v0, v2}, Lg/mx;->s(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbsj;->c:I

    :cond_6
    sub-int v0, p2, v1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbsj;->d:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzbsj;->c:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbsk;->zzg(IIII)V

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzcfk;->zzN()Lcom/google/android/gms/internal/ads/zzchc;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchc;->zzC(II)V

    return-void
.end method
