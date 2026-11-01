.class public final Lg/czs;
.super Lcom/google/android/gms/internal/ads/zzbah;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/google/android/gms/internal/ads/zzflw;

.field public final synthetic b:Lcom/google/android/gms/internal/ads/zzgfa;

.field public final synthetic c:Lg/ghd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzflw;Lcom/google/android/gms/internal/ads/zzgfa;Lg/ghd;)V
    .locals 0

    iput-object p2, p0, Lg/czs;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    iput-object p3, p0, Lg/czs;->c:Lg/ghd;

    iput-object p1, p0, Lg/czs;->a:Lcom/google/android/gms/internal/ads/zzflw;

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbah;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(I)V
    .locals 0

    return-void
.end method

.method public final zzc(Lg/abz;)V
    .locals 4

    invoke-virtual {p1}, Lg/abz;->zzb()Lg/bfi;

    move-result-object v0

    invoke-virtual {v0}, Lg/bfi;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/czs;->c:Lg/ghd;

    iget-object v1, v1, Lg/ghd;->zza:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load app open ad with error parcel: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for ad unit: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/agd;->b(Ljava/lang/String;)V

    new-instance v0, Lg/zp;

    iget-object v1, p0, Lg/czs;->a:Lcom/google/android/gms/internal/ads/zzflw;

    iget-object v2, p0, Lg/czs;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-direct {v0, v1, v2}, Lg/zp;-><init>(Lcom/google/android/gms/internal/ads/zzfmo;Lcom/google/android/gms/internal/ads/zzgfa;)V

    invoke-virtual {v0, p1}, Lg/zp;->c(Lg/abz;)V

    return-void
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzbaf;)V
    .locals 3

    new-instance v0, Lg/zp;

    iget-object v1, p0, Lg/czs;->a:Lcom/google/android/gms/internal/ads/zzflw;

    iget-object v2, p0, Lg/czs;->b:Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-direct {v0, v1, v2}, Lg/zp;-><init>(Lcom/google/android/gms/internal/ads/zzfmo;Lcom/google/android/gms/internal/ads/zzgfa;)V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzflu;->zzb(Ljava/lang/Object;)V

    return-void
.end method
