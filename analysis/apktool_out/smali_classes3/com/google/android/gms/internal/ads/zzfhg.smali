.class public final enum Lcom/google/android/gms/internal/ads/zzfhg;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lcom/google/android/gms/internal/ads/zzfhg;

.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzfhg;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzfhg;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzfhg;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfhg;

    const-string v1, "Rewarded"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfhg;->zza:Lcom/google/android/gms/internal/ads/zzfhg;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzfhg;

    const-string v3, "Interstitial"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzfhg;->zzb:Lcom/google/android/gms/internal/ads/zzfhg;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzfhg;

    const-string v5, "AppOpen"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzfhg;->zzc:Lcom/google/android/gms/internal/ads/zzfhg;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzfhg;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzfhg;->a:[Lcom/google/android/gms/internal/ads/zzfhg;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzfhg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfhg;->a:[Lcom/google/android/gms/internal/ads/zzfhg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzfhg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzfhg;

    return-object v0
.end method
