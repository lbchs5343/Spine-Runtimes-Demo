.class public final synthetic Lcom/google/android/gms/internal/ads/zzxf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxv;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzyb;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzxp;

.field public final synthetic zzc:Z

.field public final synthetic zzd:[I


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzyb;Lcom/google/android/gms/internal/ads/zzxp;Z[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzxf;->zza:Lcom/google/android/gms/internal/ads/zzyb;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzb:Lcom/google/android/gms/internal/ads/zzxp;

    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzc:Z

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:[I

    return-void
.end method


# virtual methods
.method public final zza(ILcom/google/android/gms/internal/ads/zzbw;[I)Ljava/util/List;
    .locals 9

    new-instance v7, Lcom/google/android/gms/internal/ads/zzxc;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zza:Lcom/google/android/gms/internal/ads/zzyb;

    invoke-direct {v7, v0}, Lcom/google/android/gms/internal/ads/zzxc;-><init>(Lcom/google/android/gms/internal/ads/zzyb;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzd:[I

    aget v0, v0, p1

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v8}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzbw;->zza:I

    if-ge v3, v0, :cond_0

    iget-boolean v6, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzc:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzxf;->zzb:Lcom/google/android/gms/internal/ads/zzxp;

    new-instance v0, Lg/bdq;

    aget v5, p3, v3

    move v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lg/bdq;-><init>(ILcom/google/android/gms/internal/ads/zzbw;ILcom/google/android/gms/internal/ads/zzxp;IZLcom/google/android/gms/internal/ads/zzxc;)V

    invoke-virtual {v8, v0}, Lcom/google/android/gms/internal/ads/zzfzl;->zzf(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    return-object p1
.end method
