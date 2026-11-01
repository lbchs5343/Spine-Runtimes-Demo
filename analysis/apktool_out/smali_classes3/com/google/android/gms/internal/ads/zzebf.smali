.class public final Lcom/google/android/gms/internal/ads/zzebf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzbob;


# instance fields
.field public final zzb:Lcom/google/android/gms/internal/ads/zzebt;

.field public final zzc:Lorg/json/JSONObject;

.field public final zzd:Lcom/google/android/gms/internal/ads/zzbvz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cfg;

    const/16 v1, 0x15

    invoke-direct {v0, v1}, Lg/cfg;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzebf;->zza:Lcom/google/android/gms/internal/ads/zzbob;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzebt;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/zzbvz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzebf;->zzb:Lcom/google/android/gms/internal/ads/zzebt;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzebf;->zzc:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzebf;->zzd:Lcom/google/android/gms/internal/ads/zzbvz;

    return-void
.end method
