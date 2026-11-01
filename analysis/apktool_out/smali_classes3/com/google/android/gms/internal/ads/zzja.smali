.class public final synthetic Lcom/google/android/gms/internal/ads/zzja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lg/ij;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzke;


# direct methods
.method public synthetic constructor <init>(Lg/ij;Lcom/google/android/gms/internal/ads/zzke;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzja;->zza:Lg/ij;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzja;->zzb:Lcom/google/android/gms/internal/ads/zzke;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzja;->zza:Lg/ij;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzja;->zzb:Lcom/google/android/gms/internal/ads/zzke;

    iget v2, v0, Lg/ij;->ae:I

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzke;->zzb:I

    sub-int/2addr v2, v3

    iput v2, v0, Lg/ij;->ae:I

    iget-boolean v3, v1, Lcom/google/android/gms/internal/ads/zzke;->zzc:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iget v3, v1, Lcom/google/android/gms/internal/ads/zzke;->zzd:I

    iput v3, v0, Lg/ij;->o:I

    iput-boolean v4, v0, Lg/ij;->s:Z

    :cond_0
    if-nez v2, :cond_a

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    iget-object v2, v2, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iget-object v3, v0, Lg/ij;->i:Lg/gzx;

    iget-object v3, v3, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, -0x1

    iput v3, v0, Lg/ij;->f:I

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lg/ij;->ah:J

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v3

    const/4 v5, 0x0

    if-nez v3, :cond_3

    move-object v3, v2

    check-cast v3, Lg/aqw;

    iget-object v3, v3, Lg/aqw;->r:[Lcom/google/android/gms/internal/ads/zzbv;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    iget-object v7, v0, Lg/ij;->m:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v6, v7, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, v0, Lg/ij;->m:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lg/dty;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzbv;

    iput-object v8, v7, Lg/dty;->b:Lcom/google/android/gms/internal/ads/zzbv;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    iget-boolean v3, v0, Lg/ij;->s:Z

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_9

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    iget-object v3, v3, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-object v8, v0, Lg/ij;->i:Lg/gzx;

    iget-object v8, v8, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v3, v8}, Lcom/google/android/gms/internal/ads/zzur;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    iget-wide v8, v3, Lg/gzx;->f:J

    iget-object v3, v0, Lg/ij;->i:Lg/gzx;

    iget-wide v10, v3, Lg/gzx;->t:J

    cmp-long v3, v8, v10

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :cond_5
    :goto_2
    if-eqz v4, :cond_8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzbv;->zzo()Z

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    iget-object v3, v3, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzur;->zzb()Z

    move-result v3

    if-eqz v3, :cond_6

    goto :goto_3

    :cond_6
    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    iget-object v6, v3, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v7, v3, Lg/gzx;->f:J

    iget-object v3, v6, Lcom/google/android/gms/internal/ads/zzur;->zza:Ljava/lang/Object;

    iget-object v6, v0, Lg/ij;->e:Lcom/google/android/gms/internal/ads/zzbt;

    invoke-virtual {v2, v3, v6}, Lcom/google/android/gms/internal/ads/zzbv;->zzn(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzbt;)Lcom/google/android/gms/internal/ads/zzbt;

    move-wide v6, v7

    goto :goto_4

    :cond_7
    :goto_3
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    iget-wide v2, v2, Lg/gzx;->f:J

    move-wide v6, v2

    :cond_8
    :goto_4
    move v3, v4

    goto :goto_5

    :cond_9
    const/4 v3, 0x0

    :goto_5
    iput-boolean v5, v0, Lg/ij;->s:Z

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzke;->zza:Lg/gzx;

    iget v4, v0, Lg/ij;->o:I

    move-wide v5, v6

    const/4 v7, -0x1

    const/4 v2, 0x1

    invoke-virtual/range {v0 .. v7}, Lg/ij;->ap(Lg/gzx;IZIJI)V

    :cond_a
    return-void
.end method
