.class public final Lcom/google/android/gms/internal/ads/zzeyy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhfx;


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzeyv;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzeyv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyy;->a:Lcom/google/android/gms/internal/ads/zzeyv;

    return-void
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzeyv;)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzeyv;->a:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbvx;->zzl:Z

    return p0
.end method


# virtual methods
.method public final zza()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyy;->a:Lcom/google/android/gms/internal/ads/zzeyv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyv;->a:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzbvx;->zzl:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeyy;->zza()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
