.class public abstract Lcom/google/android/gms/internal/ads/zzhfg;
.super Lcom/google/android/gms/internal/ads/zzhfe;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzarc;


# instance fields
.field public r:I


# virtual methods
.method public final zzg()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhfe;->o:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhfe;->zzf()V

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhfg;->r:I

    return v0
.end method
