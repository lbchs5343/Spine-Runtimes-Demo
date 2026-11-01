.class public final enum Lcom/google/android/gms/internal/ads/zzdux;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic a:[Lcom/google/android/gms/internal/ads/zzdux;

.field public static final enum zza:Lcom/google/android/gms/internal/ads/zzdux;

.field public static final enum zzb:Lcom/google/android/gms/internal/ads/zzdux;

.field public static final enum zzc:Lcom/google/android/gms/internal/ads/zzdux;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/google/android/gms/internal/ads/zzdux;

    const-string v1, "AD_REQUESTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzdux;->zza:Lcom/google/android/gms/internal/ads/zzdux;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzdux;

    const-string v3, "AD_LOADED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/android/gms/internal/ads/zzdux;->zzb:Lcom/google/android/gms/internal/ads/zzdux;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzdux;

    const-string v5, "AD_LOAD_FAILED"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/android/gms/internal/ads/zzdux;->zzc:Lcom/google/android/gms/internal/ads/zzdux;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/google/android/gms/internal/ads/zzdux;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    sput-object v5, Lcom/google/android/gms/internal/ads/zzdux;->a:[Lcom/google/android/gms/internal/ads/zzdux;

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/zzdux;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzdux;->a:[Lcom/google/android/gms/internal/ads/zzdux;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/zzdux;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/zzdux;

    return-object v0
.end method
