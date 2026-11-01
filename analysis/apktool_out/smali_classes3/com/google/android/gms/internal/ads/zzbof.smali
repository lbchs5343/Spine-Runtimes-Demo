.class public final Lcom/google/android/gms/internal/ads/zzbof;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final zza:Lcom/google/android/gms/internal/ads/zzboc;

.field public static final zzb:Lcom/google/android/gms/internal/ads/zzboa;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbof;->a:Ljava/nio/charset/Charset;

    new-instance v0, Lg/cfg;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lg/cfg;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbof;->zza:Lcom/google/android/gms/internal/ads/zzboc;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbod;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbod;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbof;->zzb:Lcom/google/android/gms/internal/ads/zzboa;

    return-void
.end method
