.class public abstract Lcom/google/android/gms/internal/ads/zzfsh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/gms/internal/ads/zzfsh;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lg/cmm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsg;-><init>()V

    const-string v1, ""

    iput-object v1, v0, Lg/cmm;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lg/cmm;->zzb(Z)Lcom/google/android/gms/internal/ads/zzfsg;

    iput-boolean v2, v0, Lg/cmm;->c:Z

    iget-byte v3, v0, Lg/cmm;->d:B

    or-int/lit8 v3, v3, 0x2

    int-to-byte v3, v3

    iput-byte v3, v0, Lg/cmm;->d:B

    const/4 v3, 0x1

    iput v3, v0, Lg/cmm;->a:I

    invoke-virtual {v0}, Lg/cmm;->zzd()Lcom/google/android/gms/internal/ads/zzfsh;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfsh;->zza:Lcom/google/android/gms/internal/ads/zzfsh;

    new-instance v0, Lg/cmm;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzfsg;-><init>()V

    iput-object v1, v0, Lg/cmm;->b:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lg/cmm;->zzb(Z)Lcom/google/android/gms/internal/ads/zzfsg;

    iput-boolean v3, v0, Lg/cmm;->c:Z

    iget-byte v1, v0, Lg/cmm;->d:B

    or-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    iput-byte v1, v0, Lg/cmm;->d:B

    iput v3, v0, Lg/cmm;->a:I

    invoke-virtual {v0}, Lg/cmm;->zzd()Lcom/google/android/gms/internal/ads/zzfsh;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract zza()Lcom/google/android/gms/internal/ads/zzfrw;
.end method

.method public abstract zzb()Lcom/google/android/gms/internal/ads/zzfrx;
.end method

.method public abstract zzc()Ljava/lang/String;
.end method

.method public abstract zzd()Z
.end method

.method public abstract zze()Z
.end method

.method public abstract zzf()I
.end method
