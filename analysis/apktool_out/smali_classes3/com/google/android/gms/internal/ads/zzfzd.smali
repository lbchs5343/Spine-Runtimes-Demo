.class public abstract Lcom/google/android/gms/internal/ads/zzfzd;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/gkg;

.field public static final b:Lg/bzf;

.field public static final c:Lg/bzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gkg;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzd;->a:Lg/gkg;

    new-instance v0, Lg/bzf;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lg/bzf;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzd;->b:Lg/bzf;

    new-instance v0, Lg/bzf;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lg/bzf;-><init>(I)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfzd;->c:Lg/bzf;

    return-void
.end method

.method public static zzj()Lcom/google/android/gms/internal/ads/zzfzd;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfzd;->a:Lg/gkg;

    return-object v0
.end method


# virtual methods
.method public abstract zza()I
.end method

.method public abstract zzb(II)Lcom/google/android/gms/internal/ads/zzfzd;
.end method

.method public abstract zzc(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lcom/google/android/gms/internal/ads/zzfzd;
.end method

.method public abstract zzd(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;
.end method

.method public abstract zze(ZZ)Lcom/google/android/gms/internal/ads/zzfzd;
.end method
