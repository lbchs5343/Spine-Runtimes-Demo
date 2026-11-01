.class public abstract Lcom/google/android/gms/internal/ads/zzhw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzln;
.implements Lcom/google/android/gms/internal/ads/zzlq;


# instance fields
.field public bw:I

.field public bx:Lcom/google/android/gms/internal/ads/zzbv;

.field public by:Lcom/google/android/gms/internal/ads/zzdc;

.field public bz:Z

.field public ca:[Lcom/google/android/gms/internal/ads/zzad;

.field public final cb:Lcom/google/android/gms/internal/ads/zzkj;

.field public cc:J

.field public cd:J

.field public ce:Lcom/google/android/gms/internal/ads/zzlr;

.field public cf:I

.field public final cg:Ljava/lang/Object;

.field public ch:Lcom/google/android/gms/internal/ads/zzwg;

.field public final ci:I

.field public cj:Z

.field public ck:Lcom/google/android/gms/internal/ads/zzlp;

.field public cl:J

.field public cm:Lcom/google/android/gms/internal/ads/zzoj;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cg:Ljava/lang/Object;

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->ci:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzkj;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzkj;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cb:Lcom/google/android/gms/internal/ads/zzkj;

    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->bx:Lcom/google/android/gms/internal/ads/zzbv;

    return-void
.end method


# virtual methods
.method public an(JZ)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public aw()V
    .locals 0

    return-void
.end method

.method public ay([Lcom/google/android/gms/internal/ads/zzad;JJLcom/google/android/gms/internal/ads/zzur;)V
    .locals 0

    return-void
.end method

.method public ba()V
    .locals 0

    return-void
.end method

.method public bm()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public bn()V
    .locals 0

    return-void
.end method

.method public bo(ZZ)V
    .locals 0

    return-void
.end method

.method public bs()V
    .locals 0

    return-void
.end method

.method public final cn()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->ce:Lcom/google/android/gms/internal/ads/zzlr;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final co(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;I)I
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->ch:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzwg;->zza(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;I)I

    move-result p3

    const/4 v0, -0x4

    if-ne p3, v0, :cond_2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhg;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1

    const-wide/high16 p1, -0x8000000000000000L

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cj:Z

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, -0x3

    return p1

    :cond_1
    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhm;->zze:J

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->cd:J

    add-long/2addr v0, v2

    iput-wide v0, p2, Lcom/google/android/gms/internal/ads/zzhm;->zze:J

    iget-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    return p3

    :cond_2
    const/4 p2, -0x5

    if-ne p3, p2, :cond_3

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzad;->zzt:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object p3

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->cd:J

    add-long/2addr v1, v3

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzad(J)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p3

    iput-object p3, p1, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    return p2

    :cond_3
    return p3
.end method

.method public final cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;
    .locals 9

    const/4 v0, 0x4

    if-eqz p2, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->bz:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->bz:Z

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzlq;->zzY(Lcom/google/android/gms/internal/ads/zzad;)I

    move-result v0
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzig; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v0, v0, 0x7

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->bz:Z

    move v6, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p1, v0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->bz:Z

    throw p1

    :catch_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->bz:Z

    :cond_0
    const/4 v6, 0x4

    :goto_0
    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzln;->zzU()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzhw;->cf:I

    move-object v2, p1

    move-object v5, p2

    move v7, p3

    move v8, p4

    invoke-static/range {v2 .. v8}, Lcom/google/android/gms/internal/ads/zzig;->zzb(Ljava/lang/Throwable;Ljava/lang/String;ILcom/google/android/gms/internal/ads/zzad;IZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object p1

    return-object p1
.end method

.method public final zzG()V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->ba()V

    return-void
.end method

.method public final zzH([Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzwg;JJLcom/google/android/gms/internal/ads/zzur;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cj:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->ch:Lcom/google/android/gms/internal/ads/zzwg;

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->ca:[Lcom/google/android/gms/internal/ads/zzad;

    iput-wide p5, p0, Lcom/google/android/gms/internal/ads/zzhw;->cd:J

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p3

    move-wide v4, p5

    move-object v6, p7

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhw;->ay([Lcom/google/android/gms/internal/ads/zzad;JJLcom/google/android/gms/internal/ads/zzur;)V

    return-void
.end method

.method public final zzI()V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cb:Lcom/google/android/gms/internal/ads/zzkj;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->bn()V

    return-void
.end method

.method public final zzJ(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cj:Z

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cc:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/zzhw;->an(JZ)V

    return-void
.end method

.method public final zzK()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cj:Z

    return-void
.end method

.method public final zzL(Lcom/google/android/gms/internal/ads/zzlp;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->ck:Lcom/google/android/gms/internal/ads/zzlp;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public synthetic zzM(FF)V
    .locals 0

    return-void
.end method

.method public final zzN(Lcom/google/android/gms/internal/ads/zzbv;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->bx:Lcom/google/android/gms/internal/ads/zzbv;

    invoke-static {v0, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->bx:Lcom/google/android/gms/internal/ads/zzbv;

    :cond_0
    return-void
.end method

.method public final zzO()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->bs()V

    return-void
.end method

.method public final zzP()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->aw()V

    return-void
.end method

.method public final zzQ()Z
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzR()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cj:Z

    return v0
.end method

.method public final zzb()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->ci:I

    return v0
.end method

.method public final zzcV()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    return v0
.end method

.method public final zzcX()J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    return-wide v0
.end method

.method public zze()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public zzl()Lcom/google/android/gms/internal/ads/zzkp;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final zzm()Lcom/google/android/gms/internal/ads/zzlq;
    .locals 0

    return-object p0
.end method

.method public final zzp()Lcom/google/android/gms/internal/ads/zzwg;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->ch:Lcom/google/android/gms/internal/ads/zzwg;

    return-object v0
.end method

.method public final zzq()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cg:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->ck:Lcom/google/android/gms/internal/ads/zzlp;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final zzr()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cb:Lcom/google/android/gms/internal/ads/zzkj;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->ch:Lcom/google/android/gms/internal/ads/zzwg;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhw;->ca:[Lcom/google/android/gms/internal/ads/zzad;

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cj:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->bm()V

    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzlr;[Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzwg;JZZJJLcom/google/android/gms/internal/ads/zzur;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    iget p5, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    const/4 v8, 0x0

    const/4 v0, 0x1

    if-nez p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    :goto_0
    invoke-static {p5}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->ce:Lcom/google/android/gms/internal/ads/zzlr;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->bw:I

    move/from16 p1, p7

    invoke-virtual {p0, p6, p1}, Lcom/google/android/gms/internal/ads/zzhw;->bo(ZZ)V

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-wide/from16 v3, p8

    move-wide/from16 v5, p10

    move-object/from16 v7, p12

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzhw;->zzH([Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzwg;JJLcom/google/android/gms/internal/ads/zzur;)V

    iput-boolean v8, p0, Lcom/google/android/gms/internal/ads/zzhw;->cj:Z

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->cc:J

    iput-wide v3, p0, Lcom/google/android/gms/internal/ads/zzhw;->cl:J

    invoke-virtual {p0, v3, v4, p6}, Lcom/google/android/gms/internal/ads/zzhw;->an(JZ)V

    return-void
.end method

.method public synthetic zzt()V
    .locals 0

    return-void
.end method

.method public zzu(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    return-void
.end method

.method public final zzv(ILcom/google/android/gms/internal/ads/zzoj;Lcom/google/android/gms/internal/ads/zzdc;)V
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cf:I

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhw;->cm:Lcom/google/android/gms/internal/ads/zzoj;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhw;->by:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method

.method public final zzw()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->ch:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwg;->zzd()V

    return-void
.end method
