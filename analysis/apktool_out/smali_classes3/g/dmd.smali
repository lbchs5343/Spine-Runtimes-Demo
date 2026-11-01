.class public final Lg/dmd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgyl;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:I

.field public final d:Lcom/google/android/gms/internal/ads/zzhca;


# direct methods
.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzhca;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/dmd;->c:I

    iput-object p2, p0, Lg/dmd;->d:Lcom/google/android/gms/internal/ads/zzhca;

    iput-boolean p3, p0, Lg/dmd;->a:Z

    iput-boolean p4, p0, Lg/dmd;->b:Z

    return-void
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lg/dmd;

    iget p1, p1, Lg/dmd;->c:I

    iget v0, p0, Lg/dmd;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final zza()I
    .locals 1

    iget v0, p0, Lg/dmd;->c:I

    return v0
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzhca;
    .locals 1

    iget-object v0, p0, Lg/dmd;->d:Lcom/google/android/gms/internal/ads/zzhca;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhcb;
    .locals 1

    iget-object v0, p0, Lg/dmd;->d:Lcom/google/android/gms/internal/ads/zzhca;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhca;->zza()Lcom/google/android/gms/internal/ads/zzhcb;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()Z
    .locals 1

    iget-boolean v0, p0, Lg/dmd;->b:Z

    return v0
.end method

.method public final zze()Z
    .locals 1

    iget-boolean v0, p0, Lg/dmd;->a:Z

    return v0
.end method
