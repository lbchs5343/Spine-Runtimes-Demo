.class public final Lcom/google/android/gms/internal/ads/zzdib;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzdhw;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzdhw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdib;->a:Lcom/google/android/gms/internal/ads/zzdhw;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdoc;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzdhw;->zza()Lcom/google/android/gms/internal/ads/zzdoc;

    move-result-object p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhgf;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method


# virtual methods
.method public final zza()Lcom/google/android/gms/internal/ads/zzdoc;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->a:Lcom/google/android/gms/internal/ads/zzdhw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdib;->zzc(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdoc;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic zzb()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdib;->a:Lcom/google/android/gms/internal/ads/zzdhw;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdib;->zzc(Lcom/google/android/gms/internal/ads/zzdhw;)Lcom/google/android/gms/internal/ads/zzdoc;

    move-result-object v0

    return-object v0
.end method
