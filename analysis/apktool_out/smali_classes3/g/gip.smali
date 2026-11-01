.class public final Lg/gip;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field public a:J

.field public b:Landroid/net/Uri;

.field public final c:Lcom/google/android/gms/internal/ads/zzfy;

.field public final d:J

.field public final e:Lcom/google/android/gms/internal/ads/zzgd;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfy;ILcom/google/android/gms/internal/ads/zzgd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gip;->c:Lcom/google/android/gms/internal/ads/zzfy;

    int-to-long p1, p2

    iput-wide p1, p0, Lg/gip;->d:J

    iput-object p3, p0, Lg/gip;->e:Lcom/google/android/gms/internal/ads/zzgd;

    return-void
.end method


# virtual methods
.method public final zza([BII)I
    .locals 10

    iget-wide v0, p0, Lg/gip;->a:J

    iget-wide v2, p0, Lg/gip;->d:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    int-to-long v4, p3

    sub-long v0, v2, v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v1, v0

    iget-object v0, p0, Lg/gip;->c:Lcom/google/android/gms/internal/ads/zzfy;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzn;->zza([BII)I

    move-result v0

    iget-wide v4, p0, Lg/gip;->a:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    iput-wide v4, p0, Lg/gip;->a:J

    move-wide v8, v4

    move v4, v0

    move-wide v0, v8

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    cmp-long v5, v0, v2

    if-ltz v5, :cond_1

    sub-int/2addr p3, v4

    iget-object v0, p0, Lg/gip;->e:Lcom/google/android/gms/internal/ads/zzgd;

    add-int/2addr p2, v4

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzn;->zza([BII)I

    move-result p1

    add-int/2addr v4, p1

    iget-wide p2, p0, Lg/gip;->a:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lg/gip;->a:J

    :cond_1
    return v4
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgi;)J
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    iput-object v2, v0, Lg/gip;->b:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzgi;->zze:J

    const/4 v2, 0x0

    const-wide/16 v10, -0x1

    iget-wide v12, v0, Lg/gip;->d:J

    cmp-long v3, v5, v12

    if-ltz v3, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzgi;->zzf:J

    sub-long v7, v12, v5

    cmp-long v9, v3, v10

    if-eqz v9, :cond_1

    invoke-static {v3, v4, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_1
    new-instance v3, Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    :goto_0
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzgi;->zzf:J

    cmp-long v6, v4, v10

    if-eqz v6, :cond_2

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzgi;->zze:J

    add-long/2addr v6, v4

    cmp-long v4, v6, v12

    if-gtz v4, :cond_2

    goto :goto_2

    :cond_2
    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzgi;->zze:J

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v16

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzgi;->zzf:J

    cmp-long v2, v4, v10

    if-eqz v2, :cond_3

    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzgi;->zze:J

    add-long/2addr v6, v4

    sub-long/2addr v6, v12

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    move-wide/from16 v18, v4

    goto :goto_1

    :cond_3
    move-wide/from16 v18, v10

    :goto_1
    new-instance v14, Lcom/google/android/gms/internal/ads/zzgi;

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    const/16 v20, 0x0

    invoke-direct/range {v14 .. v20}, Lcom/google/android/gms/internal/ads/zzgi;-><init>(Landroid/net/Uri;JJLjava/lang/String;)V

    move-object v2, v14

    :goto_2
    const-wide/16 v4, 0x0

    if-eqz v3, :cond_4

    iget-object v6, v0, Lg/gip;->c:Lcom/google/android/gms/internal/ads/zzfy;

    invoke-interface {v6, v3}, Lcom/google/android/gms/internal/ads/zzgd;->zzb(Lcom/google/android/gms/internal/ads/zzgi;)J

    move-result-wide v6

    goto :goto_3

    :cond_4
    move-wide v6, v4

    :goto_3
    if-eqz v2, :cond_5

    iget-object v3, v0, Lg/gip;->e:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzgd;->zzb(Lcom/google/android/gms/internal/ads/zzgi;)J

    move-result-wide v4

    :cond_5
    iget-wide v1, v1, Lcom/google/android/gms/internal/ads/zzgi;->zze:J

    iput-wide v1, v0, Lg/gip;->a:J

    cmp-long v1, v6, v10

    if-eqz v1, :cond_7

    cmp-long v1, v4, v10

    if-nez v1, :cond_6

    goto :goto_4

    :cond_6
    add-long/2addr v6, v4

    return-wide v6

    :cond_7
    :goto_4
    return-wide v10
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lg/gip;->b:Landroid/net/Uri;

    return-object v0
.end method

.method public final zzd()V
    .locals 1

    iget-object v0, p0, Lg/gip;->c:Lcom/google/android/gms/internal/ads/zzfy;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zzd()V

    iget-object v0, p0, Lg/gip;->e:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zzd()V

    return-void
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzr;->zzd()Lcom/google/android/gms/internal/ads/zzfzr;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 0

    return-void
.end method
