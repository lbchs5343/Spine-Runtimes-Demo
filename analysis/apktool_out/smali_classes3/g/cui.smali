.class public final Lg/cui;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzbux;

.field public final b:Landroid/content/Context;

.field public c:Z

.field public final d:Lcom/google/android/gms/internal/ads/zzbyh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbyh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cui;->b:Landroid/content/Context;

    iput-object p2, p0, Lg/cui;->d:Lcom/google/android/gms/internal/ads/zzbyh;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbux;

    const/4 p2, 0x0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-direct {p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzbux;-><init>(ZLjava/util/List;)V

    iput-object p1, p0, Lg/cui;->a:Lcom/google/android/gms/internal/ads/zzbux;

    return-void
.end method


# virtual methods
.method public final e(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lg/cui;->a:Lcom/google/android/gms/internal/ads/zzbux;

    iget-object v1, p0, Lg/cui;->d:Lcom/google/android/gms/internal/ads/zzbyh;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzbyh;->zza()Lcom/google/android/gms/internal/ads/zzbye;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/android/gms/internal/ads/zzbye;->zzf:Z

    if-nez v2, :cond_1

    :cond_0
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzbux;->zza:Z

    if-eqz v2, :cond_5

    :cond_1
    const-string v2, ""

    if-nez p1, :cond_2

    move-object p1, v2

    :cond_2
    if-eqz v1, :cond_3

    const/4 v0, 0x0

    const/4 v2, 0x3

    invoke-interface {v1, p1, v0, v2}, Lcom/google/android/gms/internal/ads/zzbyh;->zzd(Ljava/lang/String;Ljava/util/Map;I)V

    return-void

    :cond_3
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbux;->zza:Z

    if-eqz v1, :cond_5

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbux;->zzb:Ljava/util/List;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "{NAVIGATION_URL}"

    invoke-virtual {v1, v4, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lg/ti;->a:Lg/ti;

    iget-object v3, v3, Lg/ti;->z:Lg/esy;

    iget-object v3, p0, Lg/cui;->b:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lg/esy;->ah(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final f()Z
    .locals 1

    iget-object v0, p0, Lg/cui;->d:Lcom/google/android/gms/internal/ads/zzbyh;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbyh;->zza()Lcom/google/android/gms/internal/ads/zzbye;

    move-result-object v0

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbye;->zzf:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lg/cui;->a:Lcom/google/android/gms/internal/ads/zzbux;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbux;->zza:Z

    if-eqz v0, :cond_3

    :cond_1
    iget-boolean v0, p0, Lg/cui;->c:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
