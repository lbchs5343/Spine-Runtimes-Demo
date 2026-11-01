.class public final Lg/ii;
.super Lg/emg;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:J

.field public final c:Lg/sq;

.field public final f:Ljava/lang/Boolean;

.field public final g:Lcom/google/android/gms/internal/ads/zzdsr;

.field public final h:Z


# direct methods
.method public constructor <init>(Lg/sq;ZILjava/lang/Boolean;Lcom/google/android/gms/internal/ads/zzdsr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ii;->c:Lg/sq;

    iput-boolean p2, p0, Lg/ii;->h:Z

    iput p3, p0, Lg/ii;->a:I

    iput-object p4, p0, Lg/ii;->f:Ljava/lang/Boolean;

    iput-object p5, p0, Lg/ii;->g:Lcom/google/android/gms/internal/ads/zzdsr;

    sget-object p1, Lg/ti;->a:Lg/ti;

    iget-object p1, p1, Lg/ti;->v:Lg/czz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lg/ii;->b:J

    return-void
.end method

.method public static i()J
    .locals 4

    sget-object v0, Lg/ti;->a:Lg/ti;

    iget-object v0, v0, Lg/ti;->v:Lg/czz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzbcn;->zzjz:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    add-long/2addr v2, v0

    return-wide v2
.end method


# virtual methods
.method public final d(Ljava/lang/String;)V
    .locals 14

    new-instance v0, Landroid/util/Pair;

    const-string v1, "sgf_reason"

    invoke-direct {v0, v1, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    const-string v2, "se"

    const-string v3, "query_g"

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    sget-object v3, Lg/bme;->BANNER:Lg/bme;

    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ad_format"

    invoke-direct {v2, v4, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Landroid/util/Pair;

    const/4 v4, 0x6

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "rtype"

    invoke-direct {v3, v6, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    const-string v6, "scar"

    const-string v7, "true"

    invoke-direct {v5, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    sget-object v7, Lg/ti;->a:Lg/ti;

    iget-object v7, v7, Lg/ti;->v:Lg/czz;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-wide v9, p0, Lg/ii;->b:J

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    const-string v8, "lat_ms"

    invoke-direct {v6, v8, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const-string v8, "sgpc_rn"

    iget v9, p0, Lg/ii;->a:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/util/Pair;

    const-string v9, "sgpc_lsu"

    iget-object v10, p0, Lg/ii;->f:Ljava/lang/Boolean;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Landroid/util/Pair;

    const/4 v10, 0x1

    iget-boolean v11, p0, Lg/ii;->h:Z

    if-eq v10, v11, :cond_0

    const-string v12, "0"

    goto :goto_0

    :cond_0
    const-string v12, "1"

    :goto_0
    const-string v13, "tpc"

    invoke-direct {v9, v13, v12}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v12, 0x9

    new-array v12, v12, [Landroid/util/Pair;

    const/4 v13, 0x0

    aput-object v0, v12, v13

    aput-object v1, v12, v10

    const/4 v0, 0x2

    aput-object v2, v12, v0

    const/4 v0, 0x3

    aput-object v3, v12, v0

    const/4 v0, 0x4

    aput-object v5, v12, v0

    const/4 v0, 0x5

    aput-object v6, v12, v0

    aput-object v7, v12, v4

    const/4 v0, 0x7

    aput-object v8, v12, v0

    const/16 v0, 0x8

    aput-object v9, v12, v0

    iget-object v0, p0, Lg/ii;->g:Lcom/google/android/gms/internal/ads/zzdsr;

    const-string v1, "sgpcf"

    invoke-static {v0, v1, v12}, Lg/dzm;->z(Lcom/google/android/gms/internal/ads/zzdsr;Ljava/lang/String;[Landroid/util/Pair;)V

    new-instance v2, Lg/gai;

    invoke-static {}, Lg/ii;->i()J

    move-result-wide v5

    iget v7, p0, Lg/ii;->a:I

    const/4 v3, 0x0

    move-object v4, p1

    invoke-direct/range {v2 .. v7}, Lg/gai;-><init>(Lg/emr;Ljava/lang/String;JI)V

    iget-object p1, p0, Lg/ii;->c:Lg/sq;

    invoke-virtual {p1, v11, v2}, Lg/sq;->h(ZLg/gai;)V

    return-void
.end method

.method public final e(Lg/emr;)V
    .locals 13

    new-instance v0, Landroid/util/Pair;

    const-string v1, "se"

    const-string v2, "query_g"

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Landroid/util/Pair;

    sget-object v2, Lg/bme;->BANNER:Lg/bme;

    invoke-virtual {v2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ad_format"

    invoke-direct {v1, v3, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Landroid/util/Pair;

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "rtype"

    invoke-direct {v2, v5, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v4, Landroid/util/Pair;

    const-string v5, "scar"

    const-string v6, "true"

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v5, Landroid/util/Pair;

    sget-object v6, Lg/ti;->a:Lg/ti;

    iget-object v6, v6, Lg/ti;->v:Lg/czz;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lg/ii;->b:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v6

    const-string v7, "lat_ms"

    invoke-direct {v5, v7, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Landroid/util/Pair;

    const-string v7, "sgpc_rn"

    iget v8, p0, Lg/ii;->a:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v7, Landroid/util/Pair;

    const-string v8, "sgpc_lsu"

    iget-object v9, p0, Lg/ii;->f:Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v8, Landroid/util/Pair;

    const/4 v9, 0x1

    iget-boolean v10, p0, Lg/ii;->h:Z

    if-eq v9, v10, :cond_0

    const-string v11, "0"

    goto :goto_0

    :cond_0
    const-string v11, "1"

    :goto_0
    const-string v12, "tpc"

    invoke-direct {v8, v12, v11}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v11, 0x8

    new-array v11, v11, [Landroid/util/Pair;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    aput-object v1, v11, v9

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v4, v11, v0

    const/4 v0, 0x4

    aput-object v5, v11, v0

    const/4 v0, 0x5

    aput-object v6, v11, v0

    aput-object v7, v11, v3

    const/4 v0, 0x7

    aput-object v8, v11, v0

    iget-object v0, p0, Lg/ii;->g:Lcom/google/android/gms/internal/ads/zzdsr;

    const-string v1, "sgpcs"

    invoke-static {v0, v1, v11}, Lg/dzm;->z(Lcom/google/android/gms/internal/ads/zzdsr;Ljava/lang/String;[Landroid/util/Pair;)V

    new-instance v2, Lg/gai;

    invoke-static {}, Lg/ii;->i()J

    move-result-wide v5

    iget v7, p0, Lg/ii;->a:I

    const-string v4, ""

    move-object v3, p1

    invoke-direct/range {v2 .. v7}, Lg/gai;-><init>(Lg/emr;Ljava/lang/String;JI)V

    iget-object p1, p0, Lg/ii;->c:Lg/sq;

    invoke-virtual {p1, v10, v2}, Lg/sq;->h(ZLg/gai;)V

    return-void
.end method
