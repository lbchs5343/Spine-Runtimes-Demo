.class public final Lcom/google/android/gms/internal/ads/zzqw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzpu;


# static fields
.field public static a:I

.field public static b:Ljava/util/concurrent/ScheduledExecutorService;

.field public static final c:Ljava/lang/Object;


# instance fields
.field public aa:Z

.field public ab:Lg/bw;

.field public ac:Landroid/os/Handler;

.field public ad:Lcom/google/android/gms/internal/ads/zzbj;

.field public final ae:Lg/gy;

.field public af:Ljava/nio/ByteBuffer;

.field public ag:Lg/gmy;

.field public ah:Landroid/media/AudioTrack;

.field public ai:Lg/gqn;

.field public aj:J

.field public ak:Lcom/google/android/gms/internal/ads/zzh;

.field public final al:Lg/gra;

.field public final am:Lg/gcx;

.field public an:Landroid/os/Looper;

.field public final ao:Lg/gra;

.field public ap:Lcom/google/android/gms/internal/ads/zzop;

.field public aq:J

.field public ar:Lcom/google/android/gms/internal/ads/zzg;

.field public as:J

.field public at:I

.field public au:Z

.field public final av:Lg/ckj;

.field public aw:I

.field public ax:Z

.field public ay:Z

.field public final az:Ljava/util/ArrayDeque;

.field public ba:Lcom/google/android/gms/internal/ads/zzov;

.field public final bb:Lcom/google/android/gms/internal/ads/zzqc;

.field public d:J

.field public e:Lg/alq;

.field public f:Lcom/google/android/gms/internal/ads/zzoj;

.field public g:Ljava/nio/ByteBuffer;

.field public h:Z

.field public i:Lcom/google/android/gms/internal/ads/zzcj;

.field public j:J

.field public k:Lg/fqp;

.field public l:Z

.field public m:F

.field public n:J

.field public o:Lg/gqn;

.field public final p:Lcom/google/android/gms/internal/ads/zzfzo;

.field public q:J

.field public r:Lcom/google/android/gms/internal/ads/zzpr;

.field public final s:Lcom/google/android/gms/internal/ads/zzfzo;

.field public t:J

.field public final u:Landroid/content/Context;

.field public v:Lg/bw;

.field public w:Z

.field public x:I

.field public y:Z

.field public final z:Lcom/google/android/gms/internal/ads/zzqm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzqw;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzqk;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzqk;->c:Landroid/content/Context;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->u:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzg;->zza:Lcom/google/android/gms/internal/ads/zzg;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ar:Lcom/google/android/gms/internal/ads/zzg;

    if-eqz v0, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzop;->zza:Lcom/google/android/gms/internal/ads/zzop;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzop;->e(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)Lcom/google/android/gms/internal/ads/zzop;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzqk;->e:Lcom/google/android/gms/internal/ads/zzop;

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ap:Lcom/google/android/gms/internal/ads/zzop;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzqk;->b:Lcom/google/android/gms/internal/ads/zzqm;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->z:Lcom/google/android/gms/internal/ads/zzqm;

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzqk;->d:Lcom/google/android/gms/internal/ads/zzqc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->bb:Lcom/google/android/gms/internal/ads/zzqc;

    new-instance p1, Lg/gy;

    new-instance v0, Lg/ccp;

    const/4 v1, 0x5

    invoke-direct {v0, v1, p0}, Lg/ccp;-><init>(ILjava/lang/Object;)V

    invoke-direct {p1, v0}, Lg/gy;-><init>(Lg/ccp;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    new-instance p1, Lg/gcx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcn;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->am:Lg/gcx;

    new-instance v0, Lg/ckj;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcn;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzen;->zzf:[B

    iput-object v1, v0, Lg/ckj;->l:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->av:Lg/ckj;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzcq;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzcq;-><init>()V

    invoke-static {v1, p1, v0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzq(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->p:Lcom/google/android/gms/internal/ads/zzfzo;

    new-instance p1, Lg/gef;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzcn;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->s:Lcom/google/android/gms/internal/ads/zzfzo;

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->m:F

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->at:I

    new-instance v0, Lcom/google/android/gms/internal/ads/zzh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzh;-><init>(IF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ak:Lcom/google/android/gms/internal/ads/zzh;

    new-instance v2, Lg/bw;

    sget-object v3, Lcom/google/android/gms/internal/ads/zzbj;->zza:Lcom/google/android/gms/internal/ads/zzbj;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    invoke-direct/range {v2 .. v7}, Lg/bw;-><init>(Lcom/google/android/gms/internal/ads/zzbj;JJ)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->ab:Lg/bw;

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->ad:Lcom/google/android/gms/internal/ads/zzbj;

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ay:Z

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->az:Ljava/util/ArrayDeque;

    new-instance p1, Lg/gra;

    invoke-direct {p1}, Lg/gra;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->al:Lg/gra;

    new-instance p1, Lg/gra;

    invoke-direct {p1}, Lg/gra;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ao:Lg/gra;

    return-void
.end method

.method public static bc(Landroid/media/AudioTrack;)Z
    .locals 2

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    invoke-static {p0}, Lg/avm;->n(Landroid/media/AudioTrack;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic zzG(Lcom/google/android/gms/internal/ads/zzqw;)V
    .locals 5

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->n:J

    const-wide/32 v2, 0x493e0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    check-cast v0, Lg/fge;

    iget-object v0, v0, Lg/fge;->a:Lcom/google/android/gms/internal/ads/zzrc;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzrc;->a:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->n:J

    :cond_0
    return-void
.end method


# virtual methods
.method public final bd()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zzh()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->be()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zzd()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bl()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zzg()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public final be()V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ao:Lg/gra;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v1, v0, Lg/gra;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Exception;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/google/android/gms/internal/ads/zzqw;->c:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget v4, Lcom/google/android/gms/internal/ads/zzqw;->a:I

    if-lez v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, v0, Lg/gra;->d:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_4

    goto/16 :goto_4

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    invoke-virtual {v4, v5, v1, v3}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/google/android/gms/internal/ads/zzqw;->aj:J

    if-gez v4, :cond_c

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v5, 0x18

    if-lt v1, v5, :cond_5

    const/4 v1, -0x6

    if-eq v4, v1, :cond_6

    :cond_5
    const/16 v1, -0x20

    if-ne v4, v1, :cond_9

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bj()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-lez v1, :cond_8

    :cond_7
    :goto_2
    const/4 v2, 0x1

    goto :goto_3

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bc(Landroid/media/AudioTrack;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v1, v1, Lg/gqn;->h:I

    if-ne v1, v3, :cond_7

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->au:Z

    goto :goto_2

    :cond_9
    :goto_3
    new-instance v1, Lcom/google/android/gms/internal/ads/zzpt;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget-object v3, v3, Lg/gqn;->d:Lcom/google/android/gms/internal/ads/zzad;

    invoke-direct {v1, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzpt;-><init>(ILcom/google/android/gms/internal/ads/zzad;Z)V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v2, :cond_a

    invoke-interface {v2, v1}, Lcom/google/android/gms/internal/ads/zzpr;->zza(Ljava/lang/Exception;)V

    :cond_a
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzpt;->zzb:Z

    if-nez v2, :cond_b

    invoke-virtual {v0, v1}, Lg/gra;->e(Ljava/lang/Exception;)V

    return-void

    :cond_b
    sget-object v0, Lcom/google/android/gms/internal/ads/zzop;->zza:Lcom/google/android/gms/internal/ads/zzop;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ap:Lcom/google/android/gms/internal/ads/zzop;

    throw v1

    :cond_c
    const/4 v5, 0x0

    iput-object v5, v0, Lg/gra;->a:Ljava/lang/Object;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v6, v0, Lg/gra;->c:J

    iput-wide v6, v0, Lg/gra;->d:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqw;->bc(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->l:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v0, :cond_d

    if-ge v4, v1, :cond_d

    check-cast v0, Lg/fge;

    :cond_d
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v0, v0, Lg/gqn;->h:I

    if-nez v0, :cond_e

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqw;->aq:J

    int-to-long v8, v4

    add-long/2addr v6, v8

    iput-wide v6, p0, Lcom/google/android/gms/internal/ads/zzqw;->aq:J

    :cond_e
    if-ne v4, v1, :cond_11

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    if-ne v0, v1, :cond_f

    const/4 v2, 0x1

    :cond_f
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->q:J

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->x:I

    int-to-long v2, v2

    iget v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->aw:I

    int-to-long v6, v4

    mul-long v2, v2, v6

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->q:J

    :cond_10
    iput-object v5, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    :cond_11
    :goto_4
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final bf()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ba:Lcom/google/android/gms/internal/ads/zzov;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->u:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->an:Landroid/os/Looper;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzov;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzqf;

    invoke-direct {v2, p0}, Lcom/google/android/gms/internal/ads/zzqf;-><init>(Lcom/google/android/gms/internal/ads/zzqw;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->ar:Lcom/google/android/gms/internal/ads/zzg;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->k:Lg/fqp;

    invoke-direct {v1, v0, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzov;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzqf;Lcom/google/android/gms/internal/ads/zzg;Lg/fqp;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ba:Lcom/google/android/gms/internal/ads/zzov;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzov;->zzc()Lcom/google/android/gms/internal/ads/zzop;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ap:Lcom/google/android/gms/internal/ads/zzop;

    :cond_0
    return-void
.end method

.method public final bg()J
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v1, v0, Lg/gqn;->h:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->j:J

    iget v0, v0, Lg/gqn;->g:I

    int-to-long v3, v0

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->d:J

    return-wide v0
.end method

.method public final bh()V
    .locals 5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->h:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->h:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bj()J

    move-result-wide v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    invoke-virtual {v2}, Lg/gy;->ah()J

    move-result-wide v3

    iput-wide v3, v2, Lg/gy;->a:J

    iget-object v3, v2, Lg/gy;->f:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v3

    iput-wide v3, v2, Lg/gy;->ae:J

    iput-wide v0, v2, Lg/gy;->z:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqw;->bc(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->y:Z

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    :cond_1
    return-void
.end method

.method public final bi()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bj()J
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v1, v0, Lg/gqn;->h:I

    if-nez v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->aq:J

    iget v0, v0, Lg/gqn;->b:I

    int-to-long v3, v0

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    add-long/2addr v1, v3

    const-wide/16 v5, -0x1

    add-long/2addr v1, v5

    div-long/2addr v1, v3

    return-wide v1

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->q:J

    return-wide v0
.end method

.method public final bk(J)V
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v0, v0, Lg/gqn;->h:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->z:Lcom/google/android/gms/internal/ads/zzqm;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ad:Lcom/google/android/gms/internal/ads/zzbj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzc(Lcom/google/android/gms/internal/ads/zzbj;)Lcom/google/android/gms/internal/ads/zzbj;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/ads/zzbj;->zza:Lcom/google/android/gms/internal/ads/zzbj;

    goto :goto_0

    :goto_1
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->ad:Lcom/google/android/gms/internal/ads/zzbj;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v0, v0, Lg/gqn;->h:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ay:Z

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzqm;->zzd(Z)Z

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ay:Z

    new-instance v2, Lg/bw;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bj()J

    move-result-wide v0

    iget p1, p1, Lg/gqn;->c:I

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v6

    invoke-direct/range {v2 .. v7}, Lg/bw;-><init>(Lcom/google/android/gms/internal/ads/zzbj;JJ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->az:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget-object p1, p1, Lg/gqn;->f:Lcom/google/android/gms/internal/ads/zzcj;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcj;->zzc()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzqw;->ay:Z

    check-cast p1, Lg/fge;

    iget-object p1, p1, Lg/fge;->a:Lcom/google/android/gms/internal/ads/zzrc;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpm;->zzw(Z)V

    :cond_2
    return-void
.end method

.method public final bl()V
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->be()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    goto :goto_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zzh()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zzg()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zzb()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->be()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    goto :goto_4

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzcj;->zze(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_6

    const/4 v1, 0x1

    :cond_6
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->be()V

    :cond_8
    :goto_4
    return-void
.end method

.method public final zzA(Lcom/google/android/gms/internal/ads/zzad;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzqw;->zza(Lcom/google/android/gms/internal/ads/zzad;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzJ(Lcom/google/android/gms/internal/ads/zzop;)V
    .locals 5

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->an:Landroid/os/Looper;

    if-eq v1, v0, :cond_2

    if-nez v1, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez v0, :cond_1

    const-string v0, "null"

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Current looper ("

    const-string v3, ") is not the playback looper ("

    const-string v4, ")"

    invoke-static {v2, v0, v3, p1, v4}, Lg/tn;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ap:Lcom/google/android/gms/internal/ads/zzop;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzop;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ap:Lcom/google/android/gms/internal/ads/zzop;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz p1, :cond_3

    check-cast p1, Lg/fge;

    iget-object p1, p1, Lg/fge;->a:Lcom/google/android/gms/internal/ads/zzrc;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhw;->cg:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzhw;->ck:Lcom/google/android/gms/internal/ads/zzlp;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzlp;->zza(Lcom/google/android/gms/internal/ads/zzln;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzad;)I
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bf()V

    const-string v0, "audio/raw"

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzE:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzad;->zzE:I

    const-string v0, "Invalid PCM encoding: "

    const-string v2, "DefaultAudioSink"

    invoke-static {p1, v0, v2}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    iget p1, p1, Lcom/google/android/gms/internal/ads/zzad;->zzE:I

    if-eq p1, v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ap:Lcom/google/android/gms/internal/ads/zzop;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->ar:Lcom/google/android/gms/internal/ads/zzg;

    invoke-virtual {v0, p1, v3}, Lcom/google/android/gms/internal/ads/zzop;->zzb(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzg;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public final zzb(Z)J
    .locals 6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ax:Z

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    invoke-virtual {v0, p1}, Lg/gy;->ai(Z)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bj()J

    move-result-wide v2

    iget p1, p1, Lg/gqn;->c:I

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->az:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/bw;

    iget-wide v2, v2, Lg/bw;->c:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->remove()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/bw;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ab:Lg/bw;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->ab:Lg/bw;

    iget-wide v2, v2, Lg/bw;->c:J

    sub-long v2, v0, v2

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v4

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqw;->z:Lcom/google/android/gms/internal/ads/zzqm;

    if-eqz v4, :cond_2

    invoke-virtual {v5, v2, v3}, Lcom/google/android/gms/internal/ads/zzqm;->zza(J)J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ab:Lg/bw;

    iget-wide v2, p1, Lg/bw;->b:J

    add-long/2addr v2, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayDeque;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/bw;

    iget-wide v2, p1, Lg/bw;->c:J

    sub-long/2addr v2, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ab:Lg/bw;

    iget-object v0, v0, Lg/bw;->a:Lcom/google/android/gms/internal/ads/zzbj;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzbj;->zzb:F

    invoke-static {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzq(JF)J

    move-result-wide v0

    iget-wide v2, p1, Lg/bw;->b:J

    sub-long/2addr v2, v0

    :goto_1
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzqm;->zzb()J

    move-result-wide v0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget p1, p1, Lg/gqn;->c:I

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v4

    add-long/2addr v4, v2

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->t:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_4

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget p1, p1, Lg/gqn;->c:I

    sub-long v2, v0, v2

    invoke-static {v2, v3, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->t:J

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->n:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->n:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ac:Landroid/os/Handler;

    if-nez p1, :cond_3

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ac:Landroid/os/Handler;

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ac:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ac:Landroid/os/Handler;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqe;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzqe;-><init>(Lcom/google/android/gms/internal/ads/zzqw;)V

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-wide v4

    :cond_5
    :goto_2
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ad:Lcom/google/android/gms/internal/ads/zzbj;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzoz;
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->au:Z

    if-eqz v0, :cond_0

    sget-object p1, Lcom/google/android/gms/internal/ads/zzoz;->zza:Lcom/google/android/gms/internal/ads/zzoz;

    return-object p1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->bb:Lcom/google/android/gms/internal/ads/zzqc;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ar:Lcom/google/android/gms/internal/ads/zzg;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzqc;->zza(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzg;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object p1

    return-object p1
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzad;I[I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpp;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bf()V

    const-string v0, "audio/raw"

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, -0x1

    if-eqz v0, :cond_1

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzad;->zzE:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzJ(I)Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iget v0, v3, Lcom/google/android/gms/internal/ads/zzad;->zzE:I

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzk(I)I

    move-result v0

    mul-int v0, v0, v5

    new-instance v5, Lcom/google/android/gms/internal/ads/zzfzl;

    invoke-direct {v5}, Lcom/google/android/gms/internal/ads/zzfzl;-><init>()V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->p:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfzl;->zzh(Ljava/lang/Iterable;)Lcom/google/android/gms/internal/ads/zzfzl;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->z:Lcom/google/android/gms/internal/ads/zzqm;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzqm;->zze()[Lcom/google/android/gms/internal/ads/zzcm;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzfzl;->zzg([Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzl;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzfzl;->zzi()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v5

    invoke-direct {v6, v5}, Lcom/google/android/gms/internal/ads/zzcj;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;)V

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzcj;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    :cond_0
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzad;->zzF:I

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzad;->zzG:I

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->av:Lg/ckj;

    iput v5, v8, Lg/ckj;->i:I

    iput v7, v8, Lg/ckj;->n:I

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzqw;->am:Lg/gcx;

    move-object/from16 v7, p3

    iput-object v7, v5, Lg/gcx;->i:[I

    new-instance v5, Lcom/google/android/gms/internal/ads/zzck;

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzad;->zzE:I

    invoke-direct {v5, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzck;-><init>(III)V

    :try_start_0
    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzcj;->zza(Lcom/google/android/gms/internal/ads/zzck;)Lcom/google/android/gms/internal/ads/zzck;

    move-result-object v5
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzcl; {:try_start_0 .. :try_end_0} :catch_0

    iget v7, v5, Lcom/google/android/gms/internal/ads/zzck;->zzd:I

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzck;->zzb:I

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzck;->zzc:I

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzen;->zzi(I)I

    move-result v9

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzen;->zzk(I)I

    move-result v10

    mul-int v10, v10, v5

    move-object v11, v6

    move v6, v10

    const/4 v5, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lcom/google/android/gms/internal/ads/zzpp;

    invoke-direct {v2, v0, v3}, Lcom/google/android/gms/internal/ads/zzpp;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzad;)V

    throw v2

    :cond_1
    new-instance v6, Lcom/google/android/gms/internal/ads/zzcj;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/google/android/gms/internal/ads/zzcj;-><init>(Lcom/google/android/gms/internal/ads/zzfzo;)V

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzoz;->zza:Lcom/google/android/gms/internal/ads/zzoz;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->ap:Lcom/google/android/gms/internal/ads/zzop;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzqw;->ar:Lcom/google/android/gms/internal/ads/zzg;

    invoke-virtual {v0, v3, v5}, Lcom/google/android/gms/internal/ads/zzop;->zzb(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzg;)Landroid/util/Pair;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    const/4 v0, 0x2

    move-object v11, v6

    const/4 v0, -0x1

    const/4 v5, 0x2

    const/4 v6, -0x1

    :goto_0
    const-string v10, ") for: "

    if-eqz v7, :cond_c

    if-eqz v9, :cond_b

    iget v10, v3, Lcom/google/android/gms/internal/ads/zzad;->zzj:I

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const-string v13, "audio/vnd.dts.hd;profile=lbr"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    if-ne v10, v4, :cond_2

    const v10, 0xbb800

    :cond_2
    invoke-static {v8, v9, v7}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v12

    const/4 v13, -0x2

    const/4 v14, 0x1

    if-eq v12, v13, :cond_3

    const/4 v13, 0x1

    goto :goto_1

    :cond_3
    const/4 v13, 0x0

    :goto_1
    invoke-static {v13}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    if-eq v6, v4, :cond_4

    move v13, v6

    goto :goto_2

    :cond_4
    const/4 v13, 0x1

    :goto_2
    const v15, 0x3d090

    const-wide/32 v16, 0xf4240

    if-eqz v5, :cond_9

    if-eq v5, v14, :cond_8

    const/4 v14, 0x5

    const/16 v2, 0x8

    if-ne v7, v14, :cond_5

    const v15, 0x7a120

    goto :goto_3

    :cond_5
    if-ne v7, v2, :cond_6

    const v15, 0xf4240

    const/16 v7, 0x8

    :cond_6
    :goto_3
    if-eq v10, v4, :cond_7

    sget-object v14, Ljava/math/RoundingMode;->CEILING:Ljava/math/RoundingMode;

    invoke-static {v10, v2, v14}, Lcom/google/android/gms/internal/ads/zzgck;->zzb(IILjava/math/RoundingMode;)I

    move-result v2

    goto :goto_4

    :cond_7
    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzqy;->a(I)I

    move-result v2

    :goto_4
    int-to-long v14, v15

    move/from16 p3, v5

    const/16 v18, -0x1

    int-to-long v4, v2

    mul-long v14, v14, v4

    div-long v14, v14, v16

    invoke-static {v14, v15}, Lcom/google/android/gms/internal/ads/zzgcr;->zzb(J)I

    move-result v2

    goto :goto_5

    :cond_8
    move/from16 p3, v5

    const/16 v18, -0x1

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzqy;->a(I)I

    move-result v2

    int-to-long v4, v2

    const-wide/32 v14, 0x2faf080

    mul-long v4, v4, v14

    div-long v4, v4, v16

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzgcr;->zzb(J)I

    move-result v2

    goto :goto_5

    :cond_9
    move/from16 p3, v5

    const/16 v18, -0x1

    mul-int/lit8 v2, v12, 0x4

    int-to-long v4, v15

    int-to-long v14, v8

    mul-long v4, v4, v14

    move-wide/from16 v19, v4

    int-to-long v3, v13

    mul-long v19, v19, v3

    div-long v19, v19, v16

    invoke-static/range {v19 .. v20}, Lcom/google/android/gms/internal/ads/zzgcr;->zzb(J)I

    move-result v5

    const v10, 0xb71b0

    move-wide/from16 v19, v3

    int-to-long v3, v10

    mul-long v3, v3, v14

    mul-long v3, v3, v19

    div-long v3, v3, v16

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzgcr;->zzb(J)I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :goto_5
    int-to-double v2, v2

    double-to-int v2, v2

    invoke-static {v12, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v13

    add-int/lit8 v2, v2, -0x1

    div-int/2addr v2, v13

    mul-int v10, v2, v13

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->au:Z

    new-instance v2, Lg/gqn;

    move v3, v9

    move v9, v7

    move v7, v8

    move v8, v3

    move-object/from16 v3, p1

    move/from16 v5, p3

    move v4, v0

    invoke-direct/range {v2 .. v11}, Lg/gqn;-><init>(Lcom/google/android/gms/internal/ads/zzad;IIIIIIILcom/google/android/gms/internal/ads/zzcj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v0

    if-eqz v0, :cond_a

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->ai:Lg/gqn;

    return-void

    :cond_a
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    return-void

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpp;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Invalid output channel config (mode="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;)V

    throw v0

    :cond_c
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpp;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "Invalid output encoding (mode="

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;)V

    throw v0

    :cond_d
    new-instance v0, Lcom/google/android/gms/internal/ads/zzpp;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "Unable to configure passthrough for: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzpp;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;)V

    throw v0
.end method

.method public final zzf()V
    .locals 14

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_6

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->j:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->d:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->aq:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->q:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->x:I

    new-instance v4, Lg/bw;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqw;->ad:Lcom/google/android/gms/internal/ads/zzbj;

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v4 .. v9}, Lg/bw;-><init>(Lcom/google/android/gms/internal/ads/zzbj;JJ)V

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->ab:Lg/bw;

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->as:J

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->v:Lg/bw;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->az:Ljava/util/ArrayDeque;

    invoke-virtual {v4}, Ljava/util/ArrayDeque;->clear()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->aw:I

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->af:Ljava/nio/ByteBuffer;

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->h:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->aa:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->y:Z

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->av:Lg/ckj;

    iput-wide v2, v4, Lg/ckj;->k:J

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget-object v4, v4, Lg/gqn;->f:Lcom/google/android/gms/internal/ads/zzcj;

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzcj;->zzc()V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    iget-object v4, v4, Lg/gy;->ac:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-virtual {v4}, Landroid/media/AudioTrack;->pause()V

    :cond_0
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzqw;->bc(Landroid/media/AudioTrack;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->e:Lg/alq;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-virtual {v4, v5}, Lg/alq;->e(Landroid/media/AudioTrack;)V

    :cond_1
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v5, v4, Lg/gqn;->h:I

    new-instance v6, Lcom/google/android/gms/internal/ads/zzpo;

    const/4 v13, 0x1

    if-ne v5, v13, :cond_2

    const/4 v11, 0x1

    goto :goto_0

    :cond_2
    const/4 v11, 0x0

    :goto_0
    iget v9, v4, Lg/gqn;->e:I

    iget v8, v4, Lg/gqn;->c:I

    iget v7, v4, Lg/gqn;->i:I

    const/4 v10, 0x0

    iget v12, v4, Lg/gqn;->a:I

    invoke-direct/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzpo;-><init>(IIIZZI)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->ai:Lg/gqn;

    if-eqz v4, :cond_3

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ai:Lg/gqn;

    :cond_3
    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    iput-wide v2, v4, Lg/gy;->c:J

    iput v0, v4, Lg/gy;->q:I

    iput v0, v4, Lg/gy;->p:I

    iput-wide v2, v4, Lg/gy;->j:J

    iput-wide v2, v4, Lg/gy;->o:J

    iput-wide v2, v4, Lg/gy;->ab:J

    iput-boolean v0, v4, Lg/gy;->x:Z

    iput-object v1, v4, Lg/gy;->ac:Landroid/media/AudioTrack;

    iput-object v1, v4, Lg/gy;->k:Lg/crj;

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v4, 0x18

    if-lt v0, v4, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ag:Lg/gmy;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lg/gmy;->e()V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ag:Lg/gmy;

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v7, Lcom/google/android/gms/internal/ads/zzqw;->c:Ljava/lang/Object;

    monitor-enter v7

    :try_start_0
    sget-object v8, Lcom/google/android/gms/internal/ads/zzqw;->b:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v8, :cond_5

    const-string v8, "ExoPlayer:AudioTrackReleaseThread"

    new-instance v9, Lcom/google/android/gms/internal/ads/zzem;

    invoke-direct {v9, v8}, Lcom/google/android/gms/internal/ads/zzem;-><init>(Ljava/lang/String;)V

    invoke-static {v9}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v8

    sput-object v8, Lcom/google/android/gms/internal/ads/zzqw;->b:Ljava/util/concurrent/ScheduledExecutorService;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_5
    :goto_1
    sget v8, Lcom/google/android/gms/internal/ads/zzqw;->a:I

    add-int/2addr v8, v13

    sput v8, Lcom/google/android/gms/internal/ads/zzqw;->a:I

    sget-object v8, Lcom/google/android/gms/internal/ads/zzqw;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzqd;

    invoke-direct {v9, v0, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzqd;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzpr;Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpo;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x14

    invoke-interface {v8, v9, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    goto :goto_3

    :goto_2
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    :goto_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ao:Lg/gra;

    iput-object v1, v0, Lg/gra;->a:Ljava/lang/Object;

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v4, v0, Lg/gra;->c:J

    iput-wide v4, v0, Lg/gra;->d:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->al:Lg/gra;

    iput-object v1, v0, Lg/gra;->a:Ljava/lang/Object;

    iput-wide v4, v0, Lg/gra;->c:J

    iput-wide v4, v0, Lg/gra;->d:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->t:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->n:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ac:Landroid/os/Handler;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_7
    return-void
.end method

.method public final zzg()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->w:Z

    return-void
.end method

.method public final zzh()V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->l:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lg/gy;->c:J

    iput v0, v1, Lg/gy;->q:I

    iput v0, v1, Lg/gy;->p:I

    iput-wide v2, v1, Lg/gy;->j:J

    iput-wide v2, v1, Lg/gy;->o:J

    iput-wide v2, v1, Lg/gy;->ab:J

    iput-boolean v0, v1, Lg/gy;->x:Z

    iget-wide v2, v1, Lg/gy;->ae:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    iget-object v1, v1, Lg/gy;->k:Lg/crj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v0}, Lg/crj;->g(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lg/gy;->ah()J

    move-result-wide v2

    iput-wide v2, v1, Lg/gy;->a:J

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqw;->bc(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->pause()V

    :cond_1
    return-void
.end method

.method public final zzi()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->l:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    iget-wide v1, v0, Lg/gy;->ae:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    iget-object v1, v0, Lg/gy;->f:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzs(J)J

    move-result-wide v1

    iput-wide v1, v0, Lg/gy;->ae:J

    :cond_0
    iget-object v0, v0, Lg/gy;->k:Lg/crj;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lg/crj;->g(I)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    :cond_1
    return-void
.end method

.method public final zzj()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpt;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->aa:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bd()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bh()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->aa:Z

    :cond_0
    return-void
.end method

.method public final zzk()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ba:Lcom/google/android/gms/internal/ads/zzov;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzov;->zzi()V

    :cond_0
    return-void
.end method

.method public final zzl()V
    .locals 5

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->p:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcm;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->s:Lcom/google/android/gms/internal/ads/zzfzo;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzcm;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzcm;->zzf()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->i:Lcom/google/android/gms/internal/ads/zzcj;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcj;->zzf()V

    :cond_2
    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->l:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzqw;->au:Z

    return-void
.end method

.method public final zzm(Lcom/google/android/gms/internal/ads/zzg;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ar:Lcom/google/android/gms/internal/ads/zzg;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzg;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ar:Lcom/google/android/gms/internal/ads/zzg;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ba:Lcom/google/android/gms/internal/ads/zzov;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzov;->zzg(Lcom/google/android/gms/internal/ads/zzg;)V

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    return-void
.end method

.method public final zzn(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->at:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->at:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    :cond_0
    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzh;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ak:Lcom/google/android/gms/internal/ads/zzh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzh;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ak:Lcom/google/android/gms/internal/ads/zzh;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzh;->zza:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ak:Lcom/google/android/gms/internal/ads/zzh;

    return-void
.end method

.method public final zzp(Lcom/google/android/gms/internal/ads/zzdc;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    iput-object p1, v0, Lg/gy;->f:Lcom/google/android/gms/internal/ads/zzdc;

    return-void
.end method

.method public final zzq(Lcom/google/android/gms/internal/ads/zzpr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    return-void
.end method

.method public final zzr(II)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzqw;->bc(Landroid/media/AudioTrack;)Z

    :cond_0
    return-void
.end method

.method public final zzs(Lcom/google/android/gms/internal/ads/zzbj;)V
    .locals 9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbj;

    iget v1, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzb:F

    const/high16 v2, 0x41000000    # 8.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const v3, 0x3dcccccd    # 0.1f

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p1, Lcom/google/android/gms/internal/ads/zzbj;->zzc:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbj;-><init>(FF)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ad:Lcom/google/android/gms/internal/ads/zzbj;

    new-instance v3, Lg/bw;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v5

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lg/bw;-><init>(Lcom/google/android/gms/internal/ads/zzbj;JJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->v:Lg/bw;

    return-void

    :cond_0
    iput-object v3, p0, Lcom/google/android/gms/internal/ads/zzqw;->ab:Lg/bw;

    return-void
.end method

.method public final zzt(Lcom/google/android/gms/internal/ads/zzoj;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->f:Lcom/google/android/gms/internal/ads/zzoj;

    return-void
.end method

.method public final zzu(Landroid/media/AudioDeviceInfo;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/fqp;

    invoke-direct {v0, p1}, Lg/fqp;-><init>(Landroid/media/AudioDeviceInfo;)V

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->k:Lg/fqp;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ba:Lcom/google/android/gms/internal/ads/zzov;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzov;->zzh(Landroid/media/AudioDeviceInfo;)V

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->k:Lg/fqp;

    invoke-static {p1, v0}, Lg/cto;->a(Landroid/media/AudioTrack;Lg/fqp;)V

    :cond_2
    return-void
.end method

.method public final zzv(Z)V
    .locals 6

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ay:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ad:Lcom/google/android/gms/internal/ads/zzbj;

    new-instance v0, Lg/bw;

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lg/bw;-><init>(Lcom/google/android/gms/internal/ads/zzbj;JJ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->v:Lg/bw;

    return-void

    :cond_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ab:Lg/bw;

    return-void
.end method

.method public final zzw(F)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->m:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->m:F

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->m:F

    invoke-virtual {p1, v0}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_0
    return-void
.end method

.method public final zzx(Ljava/nio/ByteBuffer;JI)Z
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzpq;,
            Lcom/google/android/gms/internal/ads/zzpt;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    move/from16 v5, p4

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->al:Lg/gra;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    if-ne v2, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->ai:Lg/gqn;

    const/4 v10, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bd()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_21

    :cond_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->ai:Lg/gqn;

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v12, v11, Lg/gqn;->h:I

    iget v13, v0, Lg/gqn;->h:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lg/gqn;->i:I

    iget v13, v0, Lg/gqn;->i:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lg/gqn;->c:I

    iget v13, v0, Lg/gqn;->c:I

    if-ne v12, v13, :cond_4

    iget v12, v11, Lg/gqn;->e:I

    iget v13, v0, Lg/gqn;->e:I

    if-ne v12, v13, :cond_4

    iget v11, v11, Lg/gqn;->b:I

    iget v12, v0, Lg/gqn;->b:I

    if-ne v11, v12, :cond_4

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iput-object v10, v1, Lcom/google/android/gms/internal/ads/zzqw;->ai:Lg/gqn;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqw;->bc(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bh()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->zzy()Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    :cond_6
    :goto_2
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqw;->bk(J)V

    :cond_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v8, v10

    goto/16 :goto_e

    :cond_8
    :try_start_0
    iget-object v0, v7, Lg/gra;->a:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Exception;

    if-nez v0, :cond_9

    move-object/from16 v16, v10

    goto :goto_5

    :cond_9
    sget-object v13, Lcom/google/android/gms/internal/ads/zzqw;->c:Ljava/lang/Object;

    monitor-enter v13
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    sget v0, Lcom/google/android/gms/internal/ads/zzqw;->a:I

    if-lez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    :goto_3
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_b

    move-object/from16 v16, v10

    goto :goto_4

    :cond_b
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    move-object/from16 v16, v10

    iget-wide v9, v7, Lg/gra;->d:J
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_2 .. :try_end_2} :catch_2

    cmp-long v0, v13, v9

    if-gez v0, :cond_c

    :goto_4
    const/4 v0, 0x1

    goto :goto_6

    :cond_c
    :goto_5
    const/4 v0, 0x0

    :goto_6
    if-eqz v0, :cond_d

    goto :goto_1

    :cond_d
    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;
    :try_end_3
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_f

    :try_start_4
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->ar:Lcom/google/android/gms/internal/ads/zzg;

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzqw;->at:I

    invoke-virtual {v0, v9, v10}, Lg/gqn;->j(Lcom/google/android/gms/internal/ads/zzg;I)Landroid/media/AudioTrack;

    move-result-object v0
    :try_end_4
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_a

    :catch_0
    move-exception v0

    :try_start_5
    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-nez v9, :cond_e

    goto :goto_7

    :cond_e
    invoke-interface {v9, v0}, Lcom/google/android/gms/internal/ads/zzpr;->zza(Ljava/lang/Exception;)V

    :goto_7
    throw v0

    :goto_8
    move-object v9, v0

    goto :goto_9

    :cond_f
    throw v16
    :try_end_5
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_5 .. :try_end_5} :catch_1

    :catch_1
    move-exception v0

    goto :goto_8

    :goto_9
    :try_start_6
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v10, v0, Lg/gqn;->a:I

    const v13, 0xf4240

    if-le v10, v13, :cond_38

    new-instance v17, Lg/gqn;

    iget-object v10, v0, Lg/gqn;->d:Lcom/google/android/gms/internal/ads/zzad;

    iget v13, v0, Lg/gqn;->g:I

    iget v14, v0, Lg/gqn;->h:I

    iget v15, v0, Lg/gqn;->b:I

    iget v8, v0, Lg/gqn;->c:I

    iget v12, v0, Lg/gqn;->e:I

    iget v11, v0, Lg/gqn;->i:I

    iget-object v0, v0, Lg/gqn;->f:Lcom/google/android/gms/internal/ads/zzcj;

    const v25, 0xf4240

    move-object/from16 v26, v0

    move/from16 v22, v8

    move-object/from16 v18, v10

    move/from16 v24, v11

    move/from16 v23, v12

    move/from16 v19, v13

    move/from16 v20, v14

    move/from16 v21, v15

    invoke-direct/range {v17 .. v26}, Lg/gqn;-><init>(Lcom/google/android/gms/internal/ads/zzad;IIIIIIILcom/google/android/gms/internal/ads/zzcj;)V
    :try_end_6
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v0, v17

    :try_start_7
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->ar:Lcom/google/android/gms/internal/ads/zzg;

    iget v10, v1, Lcom/google/android/gms/internal/ads/zzqw;->at:I

    invoke-virtual {v0, v8, v10}, Lg/gqn;->j(Lcom/google/android/gms/internal/ads/zzg;I)Landroid/media/AudioTrack;

    move-result-object v8
    :try_end_7
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_7 .. :try_end_7} :catch_4

    :try_start_8
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;
    :try_end_8
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_8 .. :try_end_8} :catch_3

    move-object v0, v8

    :goto_a
    :try_start_9
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzqw;->bc(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->e:Lg/alq;

    if-nez v8, :cond_10

    new-instance v8, Lg/alq;

    invoke-direct {v8, v1}, Lg/alq;-><init>(Lcom/google/android/gms/internal/ads/zzqw;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->e:Lg/alq;

    goto :goto_b

    :catch_2
    move-exception v0

    goto/16 :goto_24

    :cond_10
    :goto_b
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->e:Lg/alq;

    invoke-virtual {v8, v0}, Lg/alq;->d(Landroid/media/AudioTrack;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_11
    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v8, 0x1f

    if-lt v0, v8, :cond_12

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->f:Lcom/google/android/gms/internal/ads/zzoj;

    if-eqz v8, :cond_12

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-static {v9, v8}, Lg/eij;->a(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzoj;)V

    :cond_12
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-virtual {v8}, Landroid/media/AudioTrack;->getAudioSessionId()I

    move-result v8

    iput v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->at:I

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v11, v8, Lg/gqn;->h:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_13

    const/4 v11, 0x1

    goto :goto_c

    :cond_13
    const/4 v11, 0x0

    :goto_c
    iget v12, v8, Lg/gqn;->i:I

    iget v13, v8, Lg/gqn;->b:I

    iget v14, v8, Lg/gqn;->a:I

    invoke-virtual/range {v9 .. v14}, Lg/gy;->aj(Landroid/media/AudioTrack;ZIII)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    iget v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->m:F

    invoke-virtual {v8, v9}, Landroid/media/AudioTrack;->setVolume(F)I

    :cond_14
    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->ak:Lcom/google/android/gms/internal/ads/zzh;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzh;->zza:I

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->k:Lg/fqp;

    if-eqz v8, :cond_15

    const/16 v9, 0x17

    if-lt v0, v9, :cond_15

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-static {v9, v8}, Lg/cto;->a(Landroid/media/AudioTrack;Lg/fqp;)V

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->ba:Lcom/google/android/gms/internal/ads/zzov;

    if-eqz v8, :cond_15

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->k:Lg/fqp;

    iget-object v9, v9, Lg/fqp;->a:Landroid/media/AudioDeviceInfo;

    invoke-virtual {v8, v9}, Lcom/google/android/gms/internal/ads/zzov;->zzh(Landroid/media/AudioDeviceInfo;)V

    :cond_15
    const/16 v8, 0x18

    if-lt v0, v8, :cond_16

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->ba:Lcom/google/android/gms/internal/ads/zzov;

    if-eqz v0, :cond_16

    new-instance v8, Lg/gmy;

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-direct {v8, v9, v0}, Lg/gmy;-><init>(Landroid/media/AudioTrack;Lcom/google/android/gms/internal/ads/zzov;)V

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->ag:Lg/gmy;

    :cond_16
    const/4 v8, 0x1

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->ax:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v0, :cond_18

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v10, v9, Lg/gqn;->h:I

    new-instance v17, Lcom/google/android/gms/internal/ads/zzpo;

    if-ne v10, v8, :cond_17

    const/16 v22, 0x1

    goto :goto_d

    :cond_17
    const/16 v22, 0x0

    :goto_d
    iget v8, v9, Lg/gqn;->e:I

    iget v10, v9, Lg/gqn;->c:I

    iget v11, v9, Lg/gqn;->i:I

    iget v9, v9, Lg/gqn;->a:I

    const/16 v21, 0x0

    move/from16 v20, v8

    move/from16 v23, v9

    move/from16 v19, v10

    move/from16 v18, v11

    invoke-direct/range {v17 .. v23}, Lcom/google/android/gms/internal/ads/zzpo;-><init>(IIIZZI)V

    move-object/from16 v8, v17

    check-cast v0, Lg/fge;

    iget-object v0, v0, Lg/fge;->a:Lcom/google/android/gms/internal/ads/zzrc;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {v0, v8}, Lcom/google/android/gms/internal/ads/zzpm;->zzc(Lcom/google/android/gms/internal/ads/zzpo;)V
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_9 .. :try_end_9} :catch_2

    :cond_18
    move-object/from16 v8, v16

    :goto_e
    iput-object v8, v7, Lg/gra;->a:Ljava/lang/Object;

    const-wide v8, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v8, v7, Lg/gra;->c:J

    iput-wide v8, v7, Lg/gra;->d:J

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->ax:Z

    const-wide/16 v10, 0x0

    if-eqz v0, :cond_19

    invoke-static {v10, v11, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    iput-wide v12, v1, Lcom/google/android/gms/internal/ads/zzqw;->as:J

    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzqw;->w:Z

    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzqw;->ax:Z

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqw;->bk(J)V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->l:Z

    if-eqz v0, :cond_19

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->zzi()V

    :cond_19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bj()J

    move-result-wide v12

    iget-object v0, v6, Lg/gy;->ac:Landroid/media/AudioTrack;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getPlayState()I

    move-result v0

    iget-boolean v7, v6, Lg/gy;->af:Z

    if-eqz v7, :cond_1b

    const/4 v7, 0x2

    if-ne v0, v7, :cond_1a

    const/4 v15, 0x0

    iput-boolean v15, v6, Lg/gy;->d:Z

    goto/16 :goto_1

    :cond_1a
    const/4 v7, 0x1

    if-ne v0, v7, :cond_1b

    invoke-virtual {v6}, Lg/gy;->ah()J

    move-result-wide v17

    cmp-long v0, v17, v10

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :cond_1b
    iget-boolean v7, v6, Lg/gy;->d:Z

    invoke-virtual {v6, v12, v13}, Lg/gy;->ak(J)Z

    move-result v12

    iput-boolean v12, v6, Lg/gy;->d:Z

    if-eqz v7, :cond_1c

    if-nez v12, :cond_1c

    const/4 v7, 0x1

    if-eq v0, v7, :cond_1c

    iget-object v0, v6, Lg/gy;->l:Lg/ccp;

    iget v7, v6, Lg/gy;->h:I

    iget-wide v12, v6, Lg/gy;->b:J

    invoke-static {v12, v13}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v12

    invoke-virtual {v0, v7, v12, v13}, Lg/ccp;->zze(IJ)V

    :cond_1c
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_35

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->order()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v7, :cond_1d

    const/4 v0, 0x1

    goto :goto_f

    :cond_1d
    const/4 v0, 0x0

    :goto_f
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1e

    const/16 v27, 0x1

    goto/16 :goto_1c

    :cond_1e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v7, v0, Lg/gqn;->h:I

    if-eqz v7, :cond_2d

    iget v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->x:I

    if-nez v7, :cond_2d

    iget v0, v0, Lg/gqn;->i:I

    const/16 v7, 0x14

    if-eq v0, v7, :cond_2b

    const/16 v7, 0x1e

    const/4 v12, -0x2

    const/4 v13, -0x1

    const/16 v14, 0x400

    if-eq v0, v7, :cond_24

    packed-switch v0, :pswitch_data_0

    const/16 v7, 0x10

    packed-switch v0, :pswitch_data_1

    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Unexpected audio encoding: "

    invoke-static {v0, v3}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    move-wide/from16 v18, v8

    goto/16 :goto_16

    :pswitch_1
    new-array v0, v7, [B

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v12

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-instance v12, Lcom/google/android/gms/internal/ads/zzec;

    invoke-direct {v12, v0, v7}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzabu;->zza(Lcom/google/android/gms/internal/ads/zzec;)Lcom/google/android/gms/internal/ads/zzabs;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzabs;->zzc:I

    :goto_10
    move-wide/from16 v18, v8

    :goto_11
    const/16 v27, 0x1

    goto/16 :goto_1b

    :pswitch_2
    move-wide/from16 v18, v8

    :goto_12
    const/16 v0, 0x400

    goto :goto_11

    :pswitch_3
    const/16 v0, 0x200

    goto :goto_10

    :pswitch_4
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {v2}, Ljava/nio/Buffer;->limit()I

    move-result v14

    add-int/lit8 v14, v14, -0xa

    move v7, v0

    const/16 v17, 0x10

    :goto_13
    if-gt v7, v14, :cond_20

    move-wide/from16 v18, v8

    add-int/lit8 v8, v7, 0x4

    invoke-static {v2, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzj(Ljava/nio/ByteBuffer;I)I

    move-result v8

    and-int/2addr v8, v12

    const v9, -0x78d9046

    if-ne v8, v9, :cond_1f

    sub-int/2addr v7, v0

    goto :goto_14

    :cond_1f
    add-int/lit8 v7, v7, 0x1

    move-wide/from16 v8, v18

    goto :goto_13

    :cond_20
    move-wide/from16 v18, v8

    const/4 v7, -0x1

    :goto_14
    if-ne v7, v13, :cond_21

    const/4 v0, 0x0

    goto :goto_11

    :cond_21
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v0

    add-int/2addr v0, v7

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v8

    add-int/2addr v8, v7

    const/16 v7, 0xbb

    if-ne v0, v7, :cond_22

    const/16 v0, 0x9

    goto :goto_15

    :cond_22
    const/16 v0, 0x8

    :goto_15
    add-int/2addr v8, v0

    invoke-virtual {v2, v8}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    shr-int/lit8 v0, v0, 0x4

    and-int/lit8 v0, v0, 0x7

    const/16 v7, 0x28

    shl-int v0, v7, v0

    mul-int/lit8 v0, v0, 0x10

    goto :goto_11

    :pswitch_5
    move-wide/from16 v18, v8

    const/16 v0, 0x800

    goto :goto_11

    :pswitch_6
    move-wide/from16 v18, v8

    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-static {v2, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzj(Ljava/nio/ByteBuffer;I)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzadk;->zzc(I)I

    move-result v0

    if-eq v0, v13, :cond_23

    goto :goto_11

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_24
    :pswitch_7
    move-wide/from16 v18, v8

    const/4 v15, 0x0

    goto :goto_17

    :goto_16
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzabr;->zza(Ljava/nio/ByteBuffer;)I

    move-result v0

    goto/16 :goto_11

    :goto_17
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v7, -0xde4bec0

    if-eq v0, v7, :cond_2a

    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v7, -0x17bd3b8f

    if-ne v0, v7, :cond_25

    goto/16 :goto_12

    :cond_25
    invoke-virtual {v2, v15}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v0

    const v7, 0x25205864

    if-ne v0, v7, :cond_26

    const/16 v0, 0x1000

    goto/16 :goto_11

    :cond_26
    invoke-virtual {v2}, Ljava/nio/Buffer;->position()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    if-eq v7, v12, :cond_29

    if-eq v7, v13, :cond_28

    const/16 v8, 0x1f

    if-eq v7, v8, :cond_27

    add-int/lit8 v7, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    const/16 v27, 0x1

    and-int/lit8 v7, v7, 0x1

    shl-int/lit8 v7, v7, 0x6

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    and-int/lit16 v0, v0, 0xfc

    const/16 v28, 0x2

    :goto_18
    shr-int/lit8 v0, v0, 0x2

    or-int/2addr v0, v7

    const/16 v27, 0x1

    goto :goto_1a

    :cond_27
    const/16 v28, 0x2

    add-int/lit8 v7, v0, 0x5

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    :goto_19
    and-int/lit8 v0, v0, 0x3c

    goto :goto_18

    :cond_28
    const/16 v28, 0x2

    add-int/lit8 v7, v0, 0x4

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit8 v7, v7, 0x7

    shl-int/lit8 v7, v7, 0x4

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    goto :goto_19

    :cond_29
    const/16 v28, 0x2

    add-int/lit8 v7, v0, 0x4

    add-int/lit8 v0, v0, 0x5

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    const/16 v27, 0x1

    and-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x6

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xfc

    shr-int/lit8 v7, v7, 0x2

    or-int/2addr v0, v7

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x20

    goto :goto_1b

    :cond_2a
    const/16 v27, 0x1

    const/16 v0, 0x400

    goto :goto_1b

    :cond_2b
    move-wide/from16 v18, v8

    const/16 v27, 0x1

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadm;->zzb(Ljava/nio/ByteBuffer;)I

    move-result v0

    :goto_1b
    iput v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->x:I

    if-eqz v0, :cond_2c

    goto :goto_1d

    :cond_2c
    :goto_1c
    return v27

    :cond_2d
    move-wide/from16 v18, v8

    :goto_1d
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->v:Lg/bw;

    if-eqz v0, :cond_2f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bd()Z

    move-result v0

    if-nez v0, :cond_2e

    goto/16 :goto_1

    :cond_2e
    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqw;->bk(J)V

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->v:Lg/bw;

    :cond_2f
    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->as:J

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bg()J

    move-result-wide v12

    iget-object v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->av:Lg/ckj;

    move-wide/from16 v20, v10

    iget-wide v10, v9, Lg/ckj;->k:J

    sub-long/2addr v12, v10

    iget-object v0, v0, Lg/gqn;->d:Lcom/google/android/gms/internal/ads/zzad;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    invoke-static {v12, v13, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzt(JI)J

    move-result-wide v9

    add-long/2addr v9, v7

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->w:Z

    if-nez v0, :cond_31

    sub-long v7, v9, v3

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(J)J

    move-result-wide v7

    const-wide/32 v11, 0x30d40

    cmp-long v0, v7, v11

    if-lez v0, :cond_31

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v0, :cond_30

    new-instance v7, Lcom/google/android/gms/internal/ads/zzps;

    invoke-direct {v7, v3, v4, v9, v10}, Lcom/google/android/gms/internal/ads/zzps;-><init>(JJ)V

    invoke-interface {v0, v7}, Lcom/google/android/gms/internal/ads/zzpr;->zza(Ljava/lang/Exception;)V

    :cond_30
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->w:Z

    :cond_31
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->w:Z

    if-eqz v0, :cond_33

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bd()Z

    move-result v0

    if-nez v0, :cond_32

    goto/16 :goto_1

    :cond_32
    sub-long v7, v3, v9

    iget-wide v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->as:J

    add-long/2addr v9, v7

    iput-wide v9, v1, Lcom/google/android/gms/internal/ads/zzqw;->as:J

    const/4 v15, 0x0

    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzqw;->w:Z

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzqw;->bk(J)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-eqz v0, :cond_33

    cmp-long v3, v7, v20

    if-eqz v3, :cond_33

    check-cast v0, Lg/fge;

    iget-object v0, v0, Lg/fge;->a:Lcom/google/android/gms/internal/ads/zzrc;

    const/4 v7, 0x1

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzrc;->e:Z

    :cond_33
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v0, v0, Lg/gqn;->h:I

    if-nez v0, :cond_34

    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzqw;->j:J

    invoke-virtual {v2}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v7, v0

    add-long/2addr v3, v7

    iput-wide v3, v1, Lcom/google/android/gms/internal/ads/zzqw;->j:J

    goto :goto_1e

    :cond_34
    iget-wide v3, v1, Lcom/google/android/gms/internal/ads/zzqw;->d:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->x:I

    int-to-long v7, v0

    int-to-long v9, v5

    mul-long v7, v7, v9

    add-long/2addr v7, v3

    iput-wide v7, v1, Lcom/google/android/gms/internal/ads/zzqw;->d:J

    :goto_1e
    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzqw;->aw:I

    goto :goto_1f

    :cond_35
    move-wide/from16 v18, v8

    move-wide/from16 v20, v10

    :goto_1f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bl()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_36

    const/4 v8, 0x0

    iput-object v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->g:Ljava/nio/ByteBuffer;

    const/4 v15, 0x0

    iput v15, v1, Lcom/google/android/gms/internal/ads/zzqw;->aw:I

    :goto_20
    const/16 v27, 0x1

    return v27

    :cond_36
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->bj()J

    move-result-wide v2

    iget-wide v4, v6, Lg/gy;->e:J

    cmp-long v0, v4, v18

    if-eqz v0, :cond_2

    cmp-long v0, v2, v20

    if-lez v0, :cond_2

    iget-object v0, v6, Lg/gy;->f:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v2

    iget-wide v4, v6, Lg/gy;->e:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0xc8

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const-string v0, "DefaultAudioSink"

    const-string v2, "Resetting stalled audio track"

    invoke-static {v0, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzqw;->zzf()V

    goto :goto_20

    :goto_21
    return v15

    :catch_3
    move-exception v0

    goto :goto_23

    :catch_4
    move-exception v0

    :try_start_a
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzqw;->r:Lcom/google/android/gms/internal/ads/zzpr;

    if-nez v2, :cond_37

    goto :goto_22

    :cond_37
    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zzpr;->zza(Ljava/lang/Exception;)V

    :goto_22
    throw v0
    :try_end_a
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_a .. :try_end_a} :catch_3

    :goto_23
    :try_start_b
    invoke-virtual {v9, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_38
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzqw;->o:Lg/gqn;

    iget v0, v0, Lg/gqn;->h:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_39

    iput-boolean v8, v1, Lcom/google/android/gms/internal/ads/zzqw;->au:Z

    :cond_39
    throw v9
    :try_end_b
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_b .. :try_end_b} :catch_2

    :catchall_0
    move-exception v0

    :try_start_c
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    throw v0
    :try_end_d
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_d .. :try_end_d} :catch_2

    :goto_24
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzpq;->zzb:Z

    if-nez v2, :cond_3a

    invoke-virtual {v7, v0}, Lg/gra;->e(Ljava/lang/Exception;)V

    const/4 v15, 0x0

    return v15

    :cond_3a
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_2
        :pswitch_5
        :pswitch_5
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xe
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzy()Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ah:Landroid/media/AudioTrack;

    invoke-static {v0}, Lg/avm;->n(Landroid/media/AudioTrack;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->y:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->ae:Lg/gy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bj()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lg/gy;->ak(J)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final zzz()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->bi()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzqw;->aa:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzqw;->zzy()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
