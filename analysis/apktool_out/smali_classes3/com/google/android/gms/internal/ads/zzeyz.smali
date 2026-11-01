.class public final Lcom/google/android/gms/internal/ads/zzeyz;
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

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeyz;->a:Lcom/google/android/gms/internal/ads/zzeyv;

    return-void
.end method


# virtual methods
.method public final zza()Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeyz;->a:Lcom/google/android/gms/internal/ads/zzeyv;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzeyv;->a:Lcom/google/android/gms/internal/ads/zzbvx;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbvx;->zza:Landroid/os/Bundle;

    const-string v1, "is_gbid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic zzb()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzeyz;->zza()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
