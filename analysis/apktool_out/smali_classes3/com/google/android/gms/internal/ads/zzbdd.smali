.class public final Lcom/google/android/gms/internal/ads/zzbdd;
.super Lcom/google/android/gms/internal/ads/zzbde;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lg/bmo;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lg/bmo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbde;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdd;->b:Lg/bmo;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbdd;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbdd;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final zzb()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdd;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final zzc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdd;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final zzd(Lg/bjq;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lg/bpp;->b(Lg/bjq;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdd;->b:Lg/bmo;

    invoke-interface {v0, p1}, Lg/bmo;->zza(Landroid/view/View;)V

    return-void
.end method

.method public final zze()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdd;->b:Lg/bmo;

    invoke-interface {v0}, Lg/bmo;->zzb()V

    return-void
.end method

.method public final zzf()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdd;->b:Lg/bmo;

    invoke-interface {v0}, Lg/bmo;->zzc()V

    return-void
.end method
