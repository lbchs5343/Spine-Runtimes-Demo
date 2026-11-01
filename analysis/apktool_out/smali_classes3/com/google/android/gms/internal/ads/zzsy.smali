.class public abstract Lcom/google/android/gms/internal/ads/zzsy;
.super Lcom/google/android/gms/internal/ads/zzhw;
.source "SourceFile"


# static fields
.field public static final cq:[B


# instance fields
.field public cr:J

.field public cs:Z

.field public ct:Z

.field public cu:Lcom/google/android/gms/internal/ads/zzrq;

.field public cv:Z

.field public final cw:F

.field public cx:Z

.field public cy:Ljava/util/ArrayDeque;

.field public cz:Z

.field public final da:Landroid/media/MediaCodec$BufferInfo;

.field public final db:Lcom/google/android/gms/internal/ads/zzhm;

.field public dc:I

.field public dd:F

.field public de:Lcom/google/android/gms/internal/ads/zzlm;

.field public df:I

.field public dg:Lcom/google/android/gms/internal/ads/zzad;

.field public dh:Z

.field public di:Z

.field public final dj:Lcom/google/android/gms/internal/ads/zzhm;

.field public dk:F

.field public final dl:Lcom/google/android/gms/internal/ads/zzta;

.field public dm:Z

.field public dn:F

.field public do:Lg/akm;

.field public dp:J

.field public dq:Z

.field public dr:I

.field public ds:Z

.field public final dt:Lcom/google/android/gms/internal/ads/zzsl;

.field public du:Lcom/google/android/gms/internal/ads/zzrq;

.field public dv:Landroid/media/MediaFormat;

.field public final dw:Ljava/util/ArrayDeque;

.field public final dx:Lg/ehy;

.field public dy:Z

.field public dz:Z

.field public ea:Z

.field public eb:J

.field public ec:Z

.field public ed:Lcom/google/android/gms/internal/ads/zzad;

.field public ee:I

.field public ef:Z

.field public final eg:Lcom/google/android/gms/internal/ads/zzhm;

.field public eh:Lcom/google/android/gms/internal/ads/zzsu;

.field public ei:I

.field public ej:Z

.field public final ek:Lcom/google/android/gms/internal/ads/zzrd;

.field public el:Z

.field public em:J

.field public en:Lcom/google/android/gms/internal/ads/zzsq;

.field public eo:Z

.field public ep:Ljava/nio/ByteBuffer;

.field public eq:Lcom/google/android/gms/internal/ads/zzad;

.field public er:Z

.field public es:I

.field public et:Lcom/google/android/gms/internal/ads/zzsn;

.field public eu:Lcom/google/android/gms/internal/ads/zzhx;

.field public ev:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzsy;->cq:[B

    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x67t
        0x42t
        -0x40t
        0xbt
        -0x26t
        0x25t
        -0x70t
        0x0t
        0x0t
        0x1t
        0x68t
        -0x32t
        0xft
        0x13t
        0x20t
        0x0t
        0x0t
        0x1t
        0x65t
        -0x78t
        -0x7ct
        0xdt
        -0x32t
        0x71t
        0x18t
        -0x60t
        0x0t
        0x2ft
        -0x41t
        0x1ct
        0x31t
        -0x3dt
        0x27t
        0x5dt
        0x78t
    .end array-data
.end method

.method public constructor <init>(ILcom/google/android/gms/internal/ads/zzsl;Lcom/google/android/gms/internal/ads/zzta;ZF)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzhw;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dt:Lcom/google/android/gms/internal/ads/zzsl;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->dl:Lcom/google/android/gms/internal/ads/zzta;

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzsy;->cw:F

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhm;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhm;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dj:Lcom/google/android/gms/internal/ads/zzhm;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhm;

    invoke-direct {p1, p2, p2}, Lcom/google/android/gms/internal/ads/zzhm;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->db:Lcom/google/android/gms/internal/ads/zzhm;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhm;

    const/4 p3, 0x2

    invoke-direct {p1, p3, p2}, Lcom/google/android/gms/internal/ads/zzhm;-><init>(II)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->eg:Lcom/google/android/gms/internal/ads/zzhm;

    new-instance p1, Lg/ehy;

    const/4 p4, 0x0

    invoke-direct {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzhm;-><init>(II)V

    const/16 p3, 0x20

    iput p3, p1, Lg/ehy;->f:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dx:Lg/ehy;

    new-instance p3, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p3}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->da:Landroid/media/MediaCodec$BufferInfo;

    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->dn:F

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->dk:F

    new-instance p3, Ljava/util/ArrayDeque;

    invoke-direct {p3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->dw:Ljava/util/ArrayDeque;

    sget-object p3, Lg/akm;->a:Lg/akm;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->do:Lg/akm;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzhm;->zzj(I)V

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzrd;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzrd;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->ek:Lcom/google/android/gms/internal/ads/zzrd;

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dd:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->df:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->ee:I

    const-wide p3, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->eb:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->dp:J

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->cr:J

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    return-void
.end method


# virtual methods
.method public _b()V
    .locals 0

    return-void
.end method

.method public _c(Lcom/google/android/gms/internal/ads/zzad;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public an(JZ)V
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->ea:Z

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->ef:Z

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dx:Lg/ehy;

    invoke-virtual {p2}, Lg/ehy;->zzb()V

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->eg:Lcom/google/android/gms/internal/ads/zzhm;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->er:Z

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->ek:Lcom/google/android/gms/internal/ads/zzrd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzrd;->zzb()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fb()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ez()V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->do:Lg/akm;

    iget-object p1, p1, Lg/akm;->b:Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzej;->zza()I

    move-result p2

    if-lez p2, :cond_2

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dz:Z

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzej;->zze()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dw:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    return-void
.end method

.method public abstract ao(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;F)Lcom/google/android/gms/internal/ads/zzsk;
.end method

.method public ap(Lcom/google/android/gms/internal/ads/zzhm;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ar(J)V
    .locals 4

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->cr:J

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dw:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/akm;

    iget-wide v1, v1, Lg/akm;->c:J

    cmp-long v3, p1, v1

    if-ltz v3, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/akm;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzsy;->fh(Lg/akm;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->as()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public as()V
    .locals 0

    return-void
.end method

.method public at(JJLjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ax(F[Lcom/google/android/gms/internal/ads/zzad;)F
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public ay([Lcom/google/android/gms/internal/ads/zzad;JJLcom/google/android/gms/internal/ads/zzur;)V
    .locals 12

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->do:Lg/akm;

    iget-wide v0, p1, Lg/akm;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    new-instance v4, Lg/akm;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, p2

    move-wide/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lg/akm;-><init>(JJJ)V

    invoke-virtual {p0, v4}, Lcom/google/android/gms/internal/ads/zzsy;->fh(Lg/akm;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dw:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/zzsy;->cr:J

    cmp-long v6, v4, v2

    if-eqz v6, :cond_3

    cmp-long v6, v4, v0

    if-ltz v6, :cond_3

    :cond_1
    new-instance v5, Lg/akm;

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lg/akm;-><init>(JJJ)V

    invoke-virtual {p0, v5}, Lcom/google/android/gms/internal/ads/zzsy;->fh(Lg/akm;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->do:Lg/akm;

    iget-wide v0, p1, Lg/akm;->e:J

    cmp-long p1, v0, v2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->as()V

    :cond_2
    return-void

    :cond_3
    new-instance v5, Lg/akm;

    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    move-wide v8, p2

    move-wide/from16 v10, p4

    invoke-direct/range {v5 .. v11}, Lg/akm;-><init>(JJJ)V

    invoke-virtual {p1, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public az()V
    .locals 0

    return-void
.end method

.method public bb(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzhy;
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract bc(Lcom/google/android/gms/internal/ads/zzta;Lcom/google/android/gms/internal/ads/zzad;)I
.end method

.method public bd(Ljava/lang/Exception;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public bf(Lcom/google/android/gms/internal/ads/zzsq;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public bh(Lcom/google/android/gms/internal/ads/zzhm;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bi()V
    .locals 3

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->db:Lcom/google/android/gms/internal/ads/zzhm;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ee:I

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->ep:Ljava/nio/ByteBuffer;

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->eb:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dh:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dq:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->ds:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->eo:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->cs:Z

    iput-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->ej:Z

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dp:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cr:J

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ec:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    return-void
.end method

.method public bj()V
    .locals 0

    return-void
.end method

.method public bk(Ljava/lang/IllegalStateException;Lcom/google/android/gms/internal/ads/zzsq;)Lcom/google/android/gms/internal/ads/zzsp;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsp;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsp;-><init>(Ljava/lang/Throwable;Lcom/google/android/gms/internal/ads/zzsq;)V

    return-object v0
.end method

.method public bl(Lcom/google/android/gms/internal/ads/zzad;Landroid/media/MediaFormat;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public bm()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    sget-object v0, Lg/akm;->a:Lg/akm;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzsy;->fh(Lg/akm;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dw:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fb()Z

    return-void
.end method

.method public bn()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fg()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fi()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    return-void

    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    throw v1
.end method

.method public bo(ZZ)V
    .locals 0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzhx;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhx;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    return-void
.end method

.method public bp(Lcom/google/android/gms/internal/ads/zzad;)V
    .locals 0

    return-void
.end method

.method public bq(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract br(JJLcom/google/android/gms/internal/ads/zzsn;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzad;)Z
.end method

.method public abstract bu(Lcom/google/android/gms/internal/ads/zzta;Lcom/google/android/gms/internal/ads/zzad;)Ljava/util/List;
.end method

.method public bv(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzhy;
    .locals 11

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dz:Z

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_14

    const-string v4, "video/av01"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzad;->zzr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzM(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v1

    :cond_0
    move-object v8, v1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ev:Z

    return-object v4

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-nez p1, :cond_2

    iput-object v4, p0, Lcom/google/android/gms/internal/ads/zzsy;->cy:Ljava/util/ArrayDeque;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ez()V

    return-object v4

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->en:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, p0, Lcom/google/android/gms/internal/ads/zzsy;->eq:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->du:Lcom/google/android/gms/internal/ads/zzrq;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    if-ne v2, v4, :cond_13

    if-eq v4, v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    sget v4, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v5, 0x17

    if-lt v4, v5, :cond_5

    :cond_4
    const/4 v4, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-virtual {p0, v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzsy;->bb(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzhy;

    move-result-object v4

    iget v5, v4, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    const/4 v6, 0x3

    if-eqz v5, :cond_10

    const/16 v9, 0x10

    const/4 v10, 0x2

    if-eq v5, v0, :cond_c

    if-eq v5, v10, :cond_8

    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzsy;->fa(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v0

    if-nez v0, :cond_6

    :goto_2
    const/16 v10, 0x10

    goto/16 :goto_5

    :cond_6
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsy;->eq:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ex()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    :goto_3
    const/4 v10, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzsy;->fa(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ec:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzsy;->df:I

    if-eq v5, v10, :cond_b

    if-ne v5, v0, :cond_a

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    if-ne v5, v9, :cond_a

    iget v5, v8, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    iget v9, v7, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    if-ne v5, v9, :cond_a

    goto :goto_4

    :cond_a
    const/4 v0, 0x0

    :cond_b
    :goto_4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ds:Z

    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsy;->eq:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v2, :cond_7

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ex()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_c
    invoke-virtual {p0, v8}, Lcom/google/android/gms/internal/ads/zzsy;->fa(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v5

    if-nez v5, :cond_d

    goto :goto_2

    :cond_d
    iput-object v8, p0, Lcom/google/android/gms/internal/ads/zzsy;->eq:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ex()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_e
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dq:Z

    if-eqz v2, :cond_7

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->ct:Z

    if-eqz v2, :cond_f

    iput v6, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    goto :goto_5

    :cond_f
    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    goto :goto_3

    :cond_10
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ey()V

    goto :goto_3

    :goto_5
    iget v0, v4, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-ne v0, p1, :cond_11

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    if-ne p1, v6, :cond_12

    :cond_11
    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzhy;

    const/4 v9, 0x0

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzhy;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzad;II)V

    return-object v5

    :cond_12
    return-object v4

    :cond_13
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ey()V

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzhy;

    const/4 v9, 0x0

    const/16 v10, 0x80

    invoke-direct/range {v5 .. v10}, Lcom/google/android/gms/internal/ads/zzhy;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzad;II)V

    return-object v5

    :cond_14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sample MIME type is null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xfa5

    invoke-virtual {p0, p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzhw;->cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object p1

    throw p1
.end method

.method public final ew(JJ)Z
    .locals 4

    const/4 v0, 0x0

    cmp-long v1, p3, p1

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const-string v3, "audio/opus"

    invoke-static {v1, v3}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzadm;->zzf(JJ)Z

    move-result p1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    return v2

    :cond_1
    return v0
.end method

.method public final ex()Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dq:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ct:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    return v1

    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    return v2

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->du:Lcom/google/android/gms/internal/ads/zzrq;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    return v2
.end method

.method public final ey()V
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dq:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fi()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ez()V

    return-void
.end method

.method public final ez()V
    .locals 28

    move-object/from16 v1, p0

    const-string v7, "MediaCodecRenderer"

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-nez v0, :cond_48

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    if-nez v0, :cond_48

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    if-nez v8, :cond_0

    goto/16 :goto_1b

    :cond_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    const/4 v9, 0x1

    if-nez v0, :cond_2

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzsy;->_c(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fg()V

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const-string v2, "audio/mp4a-latm"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzsy;->dx:Lg/ehy;

    if-nez v2, :cond_1

    const-string v2, "audio/mpeg"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "audio/opus"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iput v9, v3, Lg/ehy;->f:I

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    iput v0, v3, Lg/ehy;->f:I

    :goto_0
    iput-boolean v9, v1, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    return-void

    :cond_2
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->du:Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v0, :cond_3

    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->du:Lcom/google/android/gms/internal/ads/zzrq;

    sget-boolean v2, Lcom/google/android/gms/internal/ads/zzrr;->zza:Z

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrq;->zza()Lcom/google/android/gms/internal/ads/zzri;

    :cond_3
    const/4 v10, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->du:Lcom/google/android/gms/internal/ads/zzrq;

    if-eqz v0, :cond_4

    iget-object v0, v8, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catch_0
    move-exception v0

    goto/16 :goto_1a

    :cond_4
    :goto_1
    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v12, 0x0

    if-eqz v11, :cond_47

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->cy:Ljava/util/ArrayDeque;
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzsu; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_6

    :try_start_1
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dl:Lcom/google/android/gms/internal/ads/zzta;

    invoke-virtual {v1, v0, v11}, Lcom/google/android/gms/internal/ads/zzsy;->bu(Lcom/google/android/gms/internal/ads/zzta;Lcom/google/android/gms/internal/ads/zzad;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    new-instance v2, Ljava/util/ArrayDeque;

    invoke-direct {v2}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->cy:Ljava/util/ArrayDeque;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->cy:Ljava/util/ArrayDeque;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v2, v0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_2
    iput-object v12, v1, Lcom/google/android/gms/internal/ads/zzsy;->eh:Lcom/google/android/gms/internal/ads/zzsu;
    :try_end_1
    .catch Lcom/google/android/gms/internal/ads/zztf; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzsu; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    :goto_3
    :try_start_2
    new-instance v2, Lcom/google/android/gms/internal/ads/zzsu;

    const v3, -0xc34e

    invoke-direct {v2, v11, v0, v10, v3}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Lcom/google/android/gms/internal/ads/zzad;Ljava/lang/Throwable;ZI)V

    throw v2

    :cond_6
    :goto_4
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->cy:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->cy:Ljava/util/ArrayDeque;

    if-eqz v13, :cond_45

    :goto_5
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-nez v0, :cond_44

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v14, :cond_43

    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzsy;->bf(Lcom/google/android/gms/internal/ads/zzsq;)Z

    move-result v0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzsu; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_48

    :try_start_3
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v0, :cond_40

    iget-object v6, v14, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v3, 0x17

    if-ge v2, v3, :cond_7

    const/high16 v5, -0x40800000    # -1.0f

    goto :goto_6

    :cond_7
    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dk:F

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzhw;->ca:[Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v5, v15}, Lcom/google/android/gms/internal/ads/zzsy;->ax(F[Lcom/google/android/gms/internal/ads/zzad;)F

    move-result v5

    :goto_6
    iget v15, v1, Lcom/google/android/gms/internal/ads/zzsy;->cw:F

    cmpg-float v15, v5, v15

    if-gtz v15, :cond_8

    const/high16 v5, -0x40800000    # -1.0f

    :cond_8
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsy;->bp(Lcom/google/android/gms/internal/ads/zzad;)V

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzhw;->by:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v15}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v15

    const/high16 v17, -0x40800000    # -1.0f

    invoke-virtual {v1, v14, v0, v5}, Lcom/google/android/gms/internal/ads/zzsy;->ao(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;F)Lcom/google/android/gms/internal/ads/zzsk;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    const/16 v18, 0x1

    const/16 v9, 0x1f

    if-lt v2, v9, :cond_9

    :try_start_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhw;->cm:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, Lg/fpq;->a(Lcom/google/android/gms/internal/ads/zzsk;Lcom/google/android/gms/internal/ads/zzoj;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v21, v12

    goto/16 :goto_18

    :cond_9
    :goto_7
    :try_start_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "createCodec:"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dt:Lcom/google/android/gms/internal/ads/zzsl;

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzsl;->zzd(Lcom/google/android/gms/internal/ads/zzsk;)Lcom/google/android/gms/internal/ads/zzsn;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    new-instance v4, Lg/cdg;

    invoke-direct {v4, v1}, Lg/cdg;-><init>(Lcom/google/android/gms/internal/ads/zzsy;)V

    invoke-interface {v2, v4}, Lcom/google/android/gms/internal/ads/zzsn;->zzs(Lcom/google/android/gms/internal/ads/zzsm;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzhw;->by:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v19

    invoke-virtual {v14, v0}, Lcom/google/android/gms/internal/ads/zzsq;->zze(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v2

    if-nez v2, :cond_31

    const-string v2, ","

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "id="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzad;->zza:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", mimeType="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzad;->zzn:Ljava/lang/String;

    if-eqz v9, :cond_a

    const-string v9, ", container="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzad;->zzn:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzad;->zzj:I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    move-object/from16 v21, v12

    const/4 v12, -0x1

    if-eq v9, v12, :cond_b

    :try_start_7
    const-string v9, ", bitrate="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v0, Lcom/google/android/gms/internal/ads/zzad;->zzj:I

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_8

    :catch_3
    move-exception v0

    goto/16 :goto_18

    :cond_b
    :goto_8
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzad;->zzk:Ljava/lang/String;

    if-eqz v9, :cond_c

    const-string v9, ", codecs="

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzad;->zzk:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzad;->zzs:Lcom/google/android/gms/internal/ads/zzw;

    if-eqz v9, :cond_13

    new-instance v9, Ljava/util/LinkedHashSet;

    invoke-direct {v9}, Ljava/util/LinkedHashSet;-><init>()V

    :goto_9
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzs:Lcom/google/android/gms/internal/ads/zzw;

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzw;->zzb:I

    if-ge v10, v12, :cond_12

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzw;->zza(I)Lcom/google/android/gms/internal/ads/zzv;

    move-result-object v3

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzv;->zza:Ljava/util/UUID;

    sget-object v12, Lcom/google/android/gms/internal/ads/zzj;->zzb:Ljava/util/UUID;

    invoke-virtual {v3, v12}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    const-string v3, "cenc"

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_a
    move/from16 v24, v10

    goto :goto_b

    :cond_d
    sget-object v12, Lcom/google/android/gms/internal/ads/zzj;->zzc:Ljava/util/UUID;

    invoke-virtual {v3, v12}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v3, "clearkey"

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_e
    sget-object v12, Lcom/google/android/gms/internal/ads/zzj;->zze:Ljava/util/UUID;

    invoke-virtual {v3, v12}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_f

    const-string v3, "playready"

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_f
    sget-object v12, Lcom/google/android/gms/internal/ads/zzj;->zzd:Ljava/util/UUID;

    invoke-virtual {v3, v12}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string v3, "widevine"

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_10
    sget-object v12, Lcom/google/android/gms/internal/ads/zzj;->zza:Ljava/util/UUID;

    invoke-virtual {v3, v12}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_11

    const-string v3, "universal"

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v10

    const-string v10, "unknown ("

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v9, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_b
    add-int/lit8 v10, v24, 0x1

    const/4 v12, -0x1

    goto :goto_9

    :cond_12
    const-string v3, ", drm=["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4, v9, v2}, Lcom/google/android/gms/internal/ads/zzfwi;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x5d

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_13
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    const/4 v9, -0x1

    if-eq v3, v9, :cond_14

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    if-eq v3, v9, :cond_14

    const-string v3, ", res="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzu:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "x"

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzv:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzB:Lcom/google/android/gms/internal/ads/zzm;

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzm;->zze()Z

    move-result v9

    if-nez v9, :cond_15

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzm;->zzf()Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    const-string v3, ", color="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzB:Lcom/google/android/gms/internal/ads/zzm;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzm;->zzd()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_16
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzw:F

    cmpl-float v3, v3, v17

    if-eqz v3, :cond_17

    const-string v3, ", fps="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzw:F

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_17
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    const/4 v9, -0x1

    if-eq v3, v9, :cond_18

    const-string v3, ", channels="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_18
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    const/4 v9, -0x1

    if-eq v3, v9, :cond_19

    const-string v3, ", sample_rate="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_19
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/lang/String;

    if-eqz v3, :cond_1a

    const-string v3, ", language="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzc:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const-string v9, "]"

    if-nez v3, :cond_1b

    :try_start_8
    const-string v3, ", labels=["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzc:Ljava/util/List;

    new-instance v10, Lcom/google/android/gms/internal/ads/zzaa;

    invoke-direct {v10}, Lcom/google/android/gms/internal/ads/zzaa;-><init>()V

    invoke-static {v3, v10}, Lcom/google/android/gms/internal/ads/zzgae;->zzb(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzfwh;)Ljava/util/List;

    move-result-object v3

    invoke-static {v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzfwi;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1b
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zze:I

    if-eqz v3, :cond_1e

    const-string v3, ", selectionFlags=["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zze:I

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v12, v3, 0x1

    if-eqz v12, :cond_1c

    const-string v12, "default"

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1c
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1d

    const-string v3, "forced"

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1d
    invoke-static {v4, v10, v2}, Lcom/google/android/gms/internal/ads/zzfwi;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1e
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    if-eqz v3, :cond_2f

    const-string v3, ", roleFlags=["

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v17, v3, 0x1

    if-eqz v17, :cond_1f

    const v17, 0x8000

    const-string v10, "main"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_1f
    const v17, 0x8000

    :goto_c
    and-int/lit8 v10, v3, 0x2

    if-eqz v10, :cond_20

    const-string v10, "alt"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    and-int/lit8 v10, v3, 0x4

    if-eqz v10, :cond_21

    const-string v10, "supplementary"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_21
    and-int/lit8 v10, v3, 0x8

    if-eqz v10, :cond_22

    const-string v10, "commentary"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_22
    and-int/lit8 v10, v3, 0x10

    if-eqz v10, :cond_23

    const-string v10, "dub"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    and-int/lit8 v10, v3, 0x20

    if-eqz v10, :cond_24

    const-string v10, "emergency"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_24
    and-int/lit8 v10, v3, 0x40

    if-eqz v10, :cond_25

    const-string v10, "caption"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_25
    and-int/lit16 v10, v3, 0x80

    if-eqz v10, :cond_26

    const-string v10, "subtitle"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    and-int/lit16 v10, v3, 0x100

    if-eqz v10, :cond_27

    const-string v10, "sign"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_27
    and-int/lit16 v10, v3, 0x200

    if-eqz v10, :cond_28

    const-string v10, "describes-video"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_28
    and-int/lit16 v10, v3, 0x400

    if-eqz v10, :cond_29

    const-string v10, "describes-music"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    and-int/lit16 v10, v3, 0x800

    if-eqz v10, :cond_2a

    const-string v10, "enhanced-intelligibility"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2a
    and-int/lit16 v10, v3, 0x1000

    if-eqz v10, :cond_2b

    const-string v10, "transcribes-dialog"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2b
    and-int/lit16 v10, v3, 0x2000

    if-eqz v10, :cond_2c

    const-string v10, "easy-read"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    and-int/lit16 v10, v3, 0x4000

    if-eqz v10, :cond_2d

    const-string v10, "trick-play"

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2d
    and-int v3, v3, v17

    if-eqz v3, :cond_2e

    const-string v3, "auxiliary"

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2e
    invoke-static {v4, v12, v2}, Lcom/google/android/gms/internal/ads/zzfwi;->zzb(Ljava/lang/StringBuilder;Ljava/lang/Iterable;Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_2f
    const v17, 0x8000

    :goto_d
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    and-int v2, v2, v17

    if-eqz v2, :cond_30

    const-string v2, ", auxiliaryTrackType="

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "undefined"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Format exceeds selected codec\'s capabilities ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e

    :cond_31
    move-object/from16 v21, v12

    :goto_e
    iput-object v14, v1, Lcom/google/android/gms/internal/ads/zzsy;->en:Lcom/google/android/gms/internal/ads/zzsq;

    iput v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dd:F

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->eq:Lcom/google/android/gms/internal/ads/zzad;

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v2, 0x19

    const/4 v3, 0x2

    if-gt v0, v2, :cond_33

    const-string v4, "OMX.Exynos.avc.dec.secure"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    sget-object v4, Lcom/google/android/gms/internal/ads/zzen;->zzd:Ljava/lang/String;

    const-string v5, "SM-T585"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    const-string v5, "SM-A510"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    const-string v5, "SM-A520"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_32

    const-string v5, "SM-J700"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_32
    const/4 v4, 0x2

    goto :goto_10

    :cond_33
    const/16 v4, 0x18

    if-ge v0, v4, :cond_34

    const-string v4, "OMX.Nvidia.h264.decode"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_35

    const-string v4, "OMX.Nvidia.h264.decode.secure"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    goto :goto_f

    :cond_34
    const/4 v4, 0x0

    goto :goto_10

    :cond_35
    :goto_f
    const-string v4, "flounder"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string v4, "flounder_lte"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string v4, "grouper"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_36

    const-string v4, "tilapia"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_34

    :cond_36
    const/4 v4, 0x1

    :goto_10
    iput v4, v1, Lcom/google/android/gms/internal/ads/zzsy;->df:I

    const/16 v4, 0x1d

    if-ne v0, v4, :cond_37

    const-string v5, "c2.android.aac.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v5, 0x1

    goto :goto_11

    :cond_37
    const/4 v5, 0x0

    :goto_11
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->cv:Z

    const/16 v5, 0x17

    if-gt v0, v5, :cond_38

    const-string v5, "OMX.google.vorbis.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, 0x1

    goto :goto_12

    :cond_38
    const/4 v5, 0x0

    :goto_12
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->ct:Z

    const/16 v5, 0x15

    if-ne v0, v5, :cond_39

    const-string v5, "OMX.google.aac.decoder"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_39

    const/4 v5, 0x1

    goto :goto_13

    :cond_39
    const/4 v5, 0x0

    :goto_13
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->el:Z

    iget-object v5, v14, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    if-gt v0, v2, :cond_3b

    const-string v2, "OMX.rk.video_decoder.avc"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3a

    goto :goto_15

    :cond_3a
    :goto_14
    const/4 v0, 0x1

    goto :goto_16

    :cond_3b
    :goto_15
    if-gt v0, v4, :cond_3c

    const-string v0, "OMX.broadcom.video_decoder.tunnel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.broadcom.video_decoder.tunnel.secure"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.bcm.vdec.avc.tunnel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.bcm.vdec.avc.tunnel.secure"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.bcm.vdec.hevc.tunnel"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    const-string v0, "OMX.bcm.vdec.hevc.tunnel.secure"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3a

    :cond_3c
    const-string v0, "Amazon"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzen;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    const-string v0, "AFTS"

    sget-object v2, Lcom/google/android/gms/internal/ads/zzen;->zzd:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-boolean v0, v14, Lcom/google/android/gms/internal/ads/zzsq;->zzf:Z

    if-eqz v0, :cond_3d

    goto :goto_14

    :cond_3d
    const/4 v0, 0x0

    :goto_16
    iput-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->cx:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-eqz v0, :cond_3f

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhw;->zzcV()I

    move-result v0

    if-ne v0, v3, :cond_3e

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhw;->by:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->eb:J

    :cond_3e
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhx;->zza:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhx;->zza:I

    sub-long v4, v19, v15

    move-wide/from16 v2, v19

    invoke-virtual/range {v1 .. v6}, Lcom/google/android/gms/internal/ads/zzsy;->at(JJLjava/lang/String;)V

    :goto_17
    move-object/from16 v12, v21

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_5

    :cond_3f
    throw v21

    :catchall_0
    move-exception v0

    move-object/from16 v21, v12

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0

    :catch_4
    move-exception v0

    move-object/from16 v21, v12

    const/16 v18, 0x1

    goto :goto_18

    :cond_40
    move-object/from16 v21, v12

    const/16 v18, 0x1

    throw v21
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    :goto_18
    :try_start_9
    iget-object v2, v14, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    const-string v3, "Failed to initialize decoder: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v13}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzsu;

    const/4 v3, 0x0

    invoke-direct {v2, v11, v0, v3, v14}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Lcom/google/android/gms/internal/ads/zzad;Ljava/lang/Throwable;ZLcom/google/android/gms/internal/ads/zzsq;)V

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzsy;->bd(Ljava/lang/Exception;)V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->eh:Lcom/google/android/gms/internal/ads/zzsu;

    if-nez v0, :cond_41

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->eh:Lcom/google/android/gms/internal/ads/zzsu;

    goto :goto_19

    :cond_41
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzsu;->zzc:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzsu;->zzd:Ljava/lang/String;

    new-instance v22, Lcom/google/android/gms/internal/ads/zzsu;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v24

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzsu;->zza:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v26, v2

    move-object/from16 v27, v3

    invoke-direct/range {v22 .. v27}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzsq;Ljava/lang/String;)V

    move-object/from16 v0, v22

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->eh:Lcom/google/android/gms/internal/ads/zzsu;

    :goto_19
    invoke-virtual {v13}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_42

    goto :goto_17

    :cond_42
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->eh:Lcom/google/android/gms/internal/ads/zzsu;

    throw v0

    :cond_43
    move-object/from16 v21, v12

    throw v21

    :cond_44
    move-object v2, v12

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->cy:Ljava/util/ArrayDeque;

    goto :goto_1b

    :cond_45
    move-object v2, v12

    throw v2

    :cond_46
    move-object v2, v12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzsu;

    const v3, -0xc34f

    const/4 v4, 0x0

    invoke-direct {v0, v11, v2, v4, v3}, Lcom/google/android/gms/internal/ads/zzsu;-><init>(Lcom/google/android/gms/internal/ads/zzad;Ljava/lang/Throwable;ZI)V

    throw v0

    :cond_47
    move-object v2, v12

    throw v2
    :try_end_9
    .catch Lcom/google/android/gms/internal/ads/zzsu; {:try_start_9 .. :try_end_9} :catch_0

    :goto_1a
    const/16 v2, 0xfa1

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v8, v3, v2}, Lcom/google/android/gms/internal/ads/zzhw;->cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object v0

    throw v0

    :cond_48
    :goto_1b
    return-void
.end method

.method public final fa(Lcom/google/android/gms/internal/ads/zzad;)Z
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzcV()I

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dk:F

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->ca:[Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzsy;->ax(F[Lcom/google/android/gms/internal/ads/zzad;)F

    move-result p1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dd:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_3

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v3, p1, v1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ey()V

    const/4 p1, 0x0

    return p1

    :cond_1
    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cw:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_3

    :cond_2
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "operating-rate"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzq(Landroid/os/Bundle;)V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dd:F

    :cond_3
    :goto_0
    return v2
.end method

.method public final fb()Z
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v2, :cond_5

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->cv:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dy:Z

    if-eqz v2, :cond_5

    :cond_1
    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->ct:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dh:Z

    if-nez v2, :cond_5

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_4

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    if-lt v0, v2, :cond_4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->du:Lcom/google/android/gms/internal/ads/zzrq;

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzig; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "MediaCodecRenderer"

    const-string v2, "Failed to update the DRM session, releasing the codec instead."

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzdt;->zzg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fi()V

    return v3

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fd()V

    return v1

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fi()V

    return v3
.end method

.method public final fc()V
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->ef:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->_b()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fi()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ez()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->du:Lcom/google/android/gms/internal/ads/zzrq;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ei:I

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fd()V

    return-void
.end method

.method public final fd()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzj()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->bi()V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->bi()V

    throw v0
.end method

.method public final fe(I)Z
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cb:Lcom/google/android/gms/internal/ads/zzkj;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dj:Lcom/google/android/gms/internal/ads/zzhm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    or-int/lit8 p1, p1, 0x4

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhw;->co(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;I)I

    move-result p1

    const/4 v2, -0x5

    const/4 v3, 0x1

    if-ne p1, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzsy;->bv(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzhy;

    return v3

    :cond_0
    const/4 v0, -0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhg;->zzf()Z

    move-result p1

    if-eqz p1, :cond_1

    iput-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzsy;->ea:Z

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->fc()V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final ff()V
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->bi()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cy:Ljava/util/ArrayDeque;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->en:Lcom/google/android/gms/internal/ads/zzsq;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->eq:Lcom/google/android/gms/internal/ads/zzad;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dv:Landroid/media/MediaFormat;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->di:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dy:Z

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dd:F

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->df:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cv:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ct:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->el:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->cx:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ec:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    return-void
.end method

.method public final fg()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ev:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dx:Lg/ehy;

    invoke-virtual {v1}, Lg/ehy;->zzb()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->eg:Lcom/google/android/gms/internal/ads/zzhm;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->er:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ek:Lcom/google/android/gms/internal/ads/zzrd;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzrd;->zzb()V

    return-void
.end method

.method public final fh(Lg/akm;)V
    .locals 4

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->do:Lg/akm;

    iget-wide v0, p1, Lg/akm;->e:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->cz:Z

    :cond_0
    return-void
.end method

.method public final fi()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzsn;->zzm()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    iget v2, v1, Lcom/google/android/gms/internal/ads/zzhx;->zzb:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzhx;->zzb:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->en:Lcom/google/android/gms/internal/ads/zzsq;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzsy;->bq(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->du:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ff()V

    return-void

    :goto_1
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->du:Lcom/google/android/gms/internal/ads/zzrq;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzsy;->ff()V

    throw v1
.end method

.method public zzM(FF)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->dn:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dk:F

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->eq:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzsy;->fa(Lcom/google/android/gms/internal/ads/zzad;)Z

    return-void
.end method

.method public zzV(JJ)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dw:Ljava/util/ArrayDeque;

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dx:Lg/ehy;

    const/4 v4, 0x1

    :try_start_0
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->ef:Z

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->_b()V

    return-void

    :catch_0
    move-exception v0

    :goto_0
    const/4 v13, 0x1

    :goto_1
    const/4 v15, 0x0

    goto/16 :goto_27

    :catch_1
    move-exception v0

    :goto_2
    const/4 v15, 0x0

    goto/16 :goto_2b

    :cond_0
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v6, 0x2

    if-nez v5, :cond_1

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzsy;->fe(I)Z

    move-result v5

    if-eqz v5, :cond_57

    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->ez()V

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z
    :try_end_0
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzhw;->cb:Lcom/google/android/gms/internal/ads/zzkj;

    const/4 v8, -0x5

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzsy;->db:Lcom/google/android/gms/internal/ads/zzhm;

    if-eqz v5, :cond_1c

    :try_start_1
    const-string v2, "bypassRender"

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_3
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ef:Z

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-virtual {v0}, Lg/ehy;->i()Z

    move-result v2
    :try_end_1
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz v2, :cond_4

    move-object v2, v7

    :try_start_2
    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    const/4 v5, -0x5

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzsy;->ee:I

    move-object v6, v10

    invoke-virtual {v0}, Lg/ehy;->j()I

    move-result v10

    iget-wide v11, v0, Lcom/google/android/gms/internal/ads/zzhm;->zze:J

    iget-wide v13, v1, Lcom/google/android/gms/internal/ads/zzhw;->cc:J

    iget-wide v3, v0, Lg/ehy;->g:J

    invoke-virtual {v1, v13, v14, v3, v4}, Lcom/google/android/gms/internal/ads/zzsy;->ew(JJ)Z

    move-result v13

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhg;->zzf()Z

    move-result v14

    const/4 v3, 0x0

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v15, :cond_3

    move-object v4, v6

    const/4 v6, 0x0

    move-object/from16 v17, v9

    const/4 v9, 0x0

    move-object/from16 v19, v2

    move-object/from16 v16, v4

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzsy;->br(JJLcom/google/android/gms/internal/ads/zzsn;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzad;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-wide v2, v0, Lg/ehy;->g:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsy;->ar(J)V

    invoke-virtual {v0}, Lg/ehy;->zzb()V

    const/4 v3, 0x0

    goto :goto_5

    :cond_2
    const/4 v4, 0x1

    :goto_4
    const/4 v7, 0x0

    goto/16 :goto_f

    :cond_3
    move-object v3, v9

    throw v3
    :try_end_2
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_4
    move-object/from16 v19, v7

    move-object v3, v9

    move-object/from16 v16, v10

    :goto_5
    :try_start_3
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ea:Z
    :try_end_3
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_4

    if-eqz v2, :cond_5

    const/4 v4, 0x1

    :try_start_4
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzsy;->ef:Z
    :try_end_4
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_4

    :cond_5
    const/4 v4, 0x1

    :try_start_5
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->er:Z
    :try_end_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->eg:Lcom/google/android/gms/internal/ads/zzhm;

    if-eqz v2, :cond_6

    :try_start_6
    invoke-virtual {v0, v5}, Lg/ehy;->h(Lcom/google/android/gms/internal/ads/zzhm;)Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V
    :try_end_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_6 .. :try_end_6} :catch_2

    const/4 v7, 0x0

    :try_start_7
    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->er:Z

    goto :goto_7

    :catch_2
    move-exception v0

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_0

    :catch_3
    move-exception v0

    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_6
    const/4 v7, 0x0

    :goto_7
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ev:Z

    if-eqz v2, :cond_8

    invoke-virtual {v0}, Lg/ehy;->i()Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fg()V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->ev:Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->ez()V

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    if-eqz v2, :cond_1b

    goto :goto_9

    :cond_7
    move-object v9, v3

    move-object/from16 v10, v16

    move-object/from16 v7, v19

    :goto_8
    const/4 v8, -0x5

    goto/16 :goto_3

    :cond_8
    :goto_9
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ea:Z

    xor-int/2addr v2, v4

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    move-object/from16 v8, v19

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v3, v8, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    :cond_9
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    invoke-virtual {v1, v8, v5, v7}, Lcom/google/android/gms/internal/ads/zzhw;->co(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;I)I

    move-result v2

    const/4 v9, -0x5

    if-eq v2, v9, :cond_17

    const/4 v6, -0x4

    if-eq v2, v6, :cond_a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhw;->zzQ()Z

    move-result v2

    if-eqz v2, :cond_18

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dp:J

    goto/16 :goto_e

    :cond_a
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhg;->zzf()Z

    move-result v2

    if-eqz v2, :cond_b

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzsy;->ea:Z

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dp:J

    goto/16 :goto_e

    :cond_b
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/zzhm;->zze:J

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v10

    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhw;->zzQ()Z

    move-result v2

    if-nez v2, :cond_c

    invoke-virtual/range {v16 .. v16}, Lcom/google/android/gms/internal/ads/zzhg;->zzh()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    iput-wide v10, v1, Lcom/google/android/gms/internal/ads/zzsy;->dp:J

    :cond_d
    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dz:Z
    :try_end_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_0

    const-string v6, "audio/opus"

    if-eqz v2, :cond_11

    :try_start_8
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v2, :cond_10

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v2, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzad;->zzr:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_f

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzad;->zzr:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzadm;->zza([B)I

    move-result v2

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v10, :cond_e

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/google/android/gms/internal/ads/zzab;->zzG(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v2

    iput-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    goto :goto_a

    :cond_e
    throw v3

    :cond_f
    :goto_a
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsy;->bl(Lcom/google/android/gms/internal/ads/zzad;Landroid/media/MediaFormat;)V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->dz:Z

    goto :goto_b

    :cond_10
    throw v3

    :cond_11
    :goto_b
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhm;->zzk()V

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v2, :cond_14

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v2, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzhg;->zze()Z

    move-result v2

    if-eqz v2, :cond_12

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    iput-object v2, v5, Lcom/google/android/gms/internal/ads/zzhm;->zza:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzsy;->ap(Lcom/google/android/gms/internal/ads/zzhm;)V

    :cond_12
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzhw;->cc:J

    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/zzhm;->zze:J

    invoke-static {v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzadm;->zzf(JJ)Z

    move-result v2

    if-eqz v2, :cond_14

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ek:Lcom/google/android/gms/internal/ads/zzrd;

    iget-object v6, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v6, :cond_13

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzad;->zzr:Ljava/util/List;

    invoke-virtual {v2, v5, v6}, Lcom/google/android/gms/internal/ads/zzrd;->zza(Lcom/google/android/gms/internal/ads/zzhm;Ljava/util/List;)V

    goto :goto_c

    :cond_13
    throw v3

    :cond_14
    :goto_c
    invoke-virtual {v0}, Lg/ehy;->i()Z

    move-result v2

    if-nez v2, :cond_15

    goto :goto_d

    :cond_15
    iget-wide v10, v1, Lcom/google/android/gms/internal/ads/zzhw;->cc:J

    iget-wide v12, v0, Lg/ehy;->g:J

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzsy;->ew(JJ)Z

    move-result v2

    iget-wide v12, v5, Lcom/google/android/gms/internal/ads/zzhm;->zze:J

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/google/android/gms/internal/ads/zzsy;->ew(JJ)Z

    move-result v6

    if-ne v2, v6, :cond_16

    :goto_d
    invoke-virtual {v0, v5}, Lg/ehy;->h(Lcom/google/android/gms/internal/ads/zzhm;)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_16
    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzsy;->er:Z

    goto :goto_e

    :cond_17
    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzsy;->bv(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzhy;

    :cond_18
    :goto_e
    invoke-virtual {v0}, Lg/ehy;->i()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhm;->zzk()V

    :cond_19
    invoke-virtual {v0}, Lg/ehy;->i()Z

    move-result v2

    if-nez v2, :cond_1a

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ea:Z

    if-nez v2, :cond_1a

    iget-boolean v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ev:Z

    if-eqz v2, :cond_1b

    :cond_1a
    move-object v9, v3

    move-object v7, v8

    move-object/from16 v10, v16

    goto/16 :goto_8

    :cond_1b
    :goto_f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    const/4 v13, 0x1

    const/4 v15, 0x0

    goto/16 :goto_26

    :catch_4
    move-exception v0

    const/4 v4, 0x1

    goto/16 :goto_6

    :cond_1c
    move-object v8, v7

    move-object v3, v9

    move-object/from16 v16, v10

    const/4 v7, 0x0

    const/4 v9, -0x5

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-eqz v0, :cond_56

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzhw;->by:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    const-string v0, "drainAndFeed"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :goto_10
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-eqz v0, :cond_55

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->ee:I
    :try_end_8
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_8 .. :try_end_8} :catch_0

    if-ltz v5, :cond_1d

    const/4 v5, 0x1

    goto :goto_11

    :cond_1d
    const/4 v5, 0x0

    :goto_11
    const/4 v10, -0x1

    iget-object v11, v1, Lcom/google/android/gms/internal/ads/zzsy;->da:Landroid/media/MediaCodec$BufferInfo;

    if-nez v5, :cond_2e

    :try_start_9
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->el:Z

    if-eqz v5, :cond_1f

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dh:Z
    :try_end_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_9} :catch_0

    if-eqz v5, :cond_1f

    :try_start_a
    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v5
    :try_end_a
    .catch Ljava/lang/IllegalStateException; {:try_start_a .. :try_end_a} :catch_5
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_14

    :catch_5
    :try_start_b
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fc()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->ef:Z

    if-eqz v0, :cond_1e

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fi()V

    :cond_1e
    :goto_12
    move-object/from16 v17, v2

    move-object/from16 v21, v8

    :goto_13
    const/4 v2, -0x1

    goto/16 :goto_1b

    :cond_1f
    invoke-interface {v0, v11}, Lcom/google/android/gms/internal/ads/zzsn;->zzb(Landroid/media/MediaCodec$BufferInfo;)I

    move-result v5

    :goto_14
    if-gez v5, :cond_25

    const/4 v0, -0x2

    if-ne v5, v0, :cond_22

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzsy;->dy:Z

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzc()Landroid/media/MediaFormat;

    move-result-object v0

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->df:I

    if-eqz v5, :cond_20

    const-string v5, "width"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    const/16 v10, 0x20

    if-ne v5, v10, :cond_20

    const-string v5, "height"

    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v5

    if-ne v5, v10, :cond_20

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzsy;->eo:Z

    goto :goto_10

    :cond_20
    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dv:Landroid/media/MediaFormat;

    iput-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzsy;->di:Z

    goto :goto_10

    :cond_21
    throw v3

    :cond_22
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->cx:Z

    if-nez v0, :cond_23

    goto :goto_12

    :cond_23
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->ea:Z

    if-nez v0, :cond_24

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    if-ne v0, v6, :cond_1e

    :cond_24
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fc()V

    goto :goto_12

    :cond_25
    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzsy;->eo:Z

    if-eqz v12, :cond_26

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->eo:Z

    invoke-interface {v0, v5, v7}, Lcom/google/android/gms/internal/ads/zzsn;->zzo(IZ)V

    goto :goto_10

    :cond_26
    iget v12, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-nez v12, :cond_27

    iget v12, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v12, v12, 0x4

    if-eqz v12, :cond_27

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fc()V

    goto :goto_12

    :cond_27
    iput v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->ee:I

    invoke-interface {v0, v5}, Lcom/google/android/gms/internal/ads/zzsn;->zzg(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->ep:Ljava/nio/ByteBuffer;

    if-eqz v5, :cond_28

    iget v12, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->ep:Ljava/nio/ByteBuffer;

    iget v12, v11, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v13, v11, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v12, v13

    invoke-virtual {v5, v12}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :cond_28
    iget-wide v12, v11, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzhw;->cc:J

    cmp-long v5, v12, v14

    if-gez v5, :cond_29

    const/4 v5, 0x1

    goto :goto_15

    :cond_29
    const/4 v5, 0x0

    :goto_15
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->cs:Z

    iget-wide v14, v1, Lcom/google/android/gms/internal/ads/zzsy;->dp:J

    const-wide v17, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v14, v17

    if-eqz v5, :cond_2a

    cmp-long v5, v14, v12

    if-gtz v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_16

    :cond_2a
    const/4 v5, 0x0

    :goto_16
    iput-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->ej:Z

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->do:Lg/akm;

    iget-object v5, v5, Lg/akm;->b:Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {v5, v12, v13}, Lcom/google/android/gms/internal/ads/zzej;->zzc(J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzad;

    if-nez v5, :cond_2b

    iget-boolean v12, v1, Lcom/google/android/gms/internal/ads/zzsy;->cz:Z

    if-eqz v12, :cond_2b

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzsy;->dv:Landroid/media/MediaFormat;

    if-eqz v12, :cond_2b

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->do:Lg/akm;

    iget-object v5, v5, Lg/akm;->b:Lcom/google/android/gms/internal/ads/zzej;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzej;->zzb()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzad;

    :cond_2b
    if-eqz v5, :cond_2c

    iput-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    goto :goto_17

    :cond_2c
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->di:Z

    if-eqz v5, :cond_2e

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v5, :cond_2e

    :goto_17
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v5, :cond_2d

    iget-object v12, v1, Lcom/google/android/gms/internal/ads/zzsy;->dv:Landroid/media/MediaFormat;

    invoke-virtual {v1, v5, v12}, Lcom/google/android/gms/internal/ads/zzsy;->bl(Lcom/google/android/gms/internal/ads/zzad;Landroid/media/MediaFormat;)V

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->di:Z

    iput-boolean v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->cz:Z

    goto :goto_18

    :cond_2d
    throw v3

    :cond_2e
    :goto_18
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->el:Z

    if-eqz v5, :cond_31

    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dh:Z
    :try_end_b
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v5, :cond_31

    const/4 v15, 0x0

    :try_start_c
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->ep:Ljava/nio/ByteBuffer;
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_c .. :try_end_c} :catch_8
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_c .. :try_end_c} :catch_1

    move-object/from16 v19, v8

    :try_start_d
    iget v8, v1, Lcom/google/android/gms/internal/ads/zzsy;->ee:I

    const/16 v20, -0x5

    iget v9, v11, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v5, v11

    iget-wide v11, v5, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->cs:Z

    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzsy;->ej:Z

    const/16 v18, 0x0

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;
    :try_end_d
    .catch Ljava/lang/IllegalStateException; {:try_start_d .. :try_end_d} :catch_7
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_d .. :try_end_d} :catch_1

    if-eqz v15, :cond_2f

    const/16 v17, -0x1

    const/4 v10, 0x1

    move-object v6, v0

    move-object/from16 v17, v2

    move-object v0, v5

    move-object/from16 v21, v19

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    :try_start_e
    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzsy;->br(JJLcom/google/android/gms/internal/ads/zzsn;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzad;)Z

    move-result v6
    :try_end_e
    .catch Ljava/lang/IllegalStateException; {:try_start_e .. :try_end_e} :catch_6
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_e .. :try_end_e} :catch_1

    goto :goto_1a

    :catch_6
    const/16 v22, 0x0

    goto :goto_19

    :cond_2f
    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v19

    :try_start_f
    throw v22
    :try_end_f
    .catch Ljava/lang/IllegalStateException; {:try_start_f .. :try_end_f} :catch_9
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_f .. :try_end_f} :catch_1

    :catch_7
    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v19

    goto :goto_19

    :catch_8
    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v8

    :catch_9
    :goto_19
    :try_start_10
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fc()V

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->ef:Z

    if-eqz v0, :cond_30

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fi()V

    :cond_30
    move-object/from16 v3, v22

    goto/16 :goto_13

    :cond_31
    move-object v6, v0

    move-object/from16 v17, v2

    move-object/from16 v22, v3

    move-object/from16 v21, v8

    move-object v0, v11

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->ep:Ljava/nio/ByteBuffer;

    iget v8, v1, Lcom/google/android/gms/internal/ads/zzsy;->ee:I

    iget v9, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    iget-wide v11, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->cs:Z

    iget-boolean v14, v1, Lcom/google/android/gms/internal/ads/zzsy;->ej:Z

    iget-object v15, v1, Lcom/google/android/gms/internal/ads/zzsy;->dg:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v15, :cond_54

    const/4 v10, 0x1

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    invoke-virtual/range {v1 .. v15}, Lcom/google/android/gms/internal/ads/zzsy;->br(JJLcom/google/android/gms/internal/ads/zzsn;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzad;)Z

    move-result v6

    :goto_1a
    if-eqz v6, :cond_33

    iget-wide v2, v0, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzsy;->ar(J)V

    iget v0, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    const/4 v2, -0x1

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ee:I

    const/4 v3, 0x0

    iput-object v3, v1, Lcom/google/android/gms/internal/ads/zzsy;->ep:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_32

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fc()V

    goto :goto_1b

    :cond_32
    move-object/from16 v2, v17

    move-object/from16 v8, v21

    const/4 v4, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v9, -0x5

    goto/16 :goto_10

    :cond_33
    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_1b
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-eqz v4, :cond_34

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    const/4 v11, 0x2

    if-eq v0, v11, :cond_34

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->ea:Z

    if-eqz v0, :cond_35

    :cond_34
    const/4 v13, 0x1

    :goto_1c
    const/4 v15, 0x0

    goto/16 :goto_25

    :cond_35
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    if-gez v0, :cond_36

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzsn;->zza()I

    move-result v0

    iput v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    if-ltz v0, :cond_34

    invoke-interface {v4, v0}, Lcom/google/android/gms/internal/ads/zzsn;->zzf(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object/from16 v12, v16

    iput-object v0, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    goto :goto_1d

    :cond_36
    move-object/from16 v12, v16

    :goto_1d
    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dr:I
    :try_end_10
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_10 .. :try_end_10} :catch_0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_38

    :try_start_11
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->cx:Z

    if-nez v0, :cond_37

    iput-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->dh:Z

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsn;->zzk(IIIJI)V

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    iput-object v3, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    goto :goto_1e

    :catch_a
    move-exception v0

    goto/16 :goto_1

    :cond_37
    :goto_1e
    iput v11, v1, Lcom/google/android/gms/internal/ads/zzsy;->dr:I

    goto :goto_1c

    :cond_38
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->ds:Z
    :try_end_11
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_11 .. :try_end_11} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_11 .. :try_end_11} :catch_a

    if-eqz v0, :cond_3a

    const/4 v15, 0x0

    :try_start_12
    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzsy;->ds:Z

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_39

    sget-object v5, Lcom/google/android/gms/internal/ads/zzsy;->cq:[B

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x26

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsn;->zzk(IIIJI)V

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    iput-object v3, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    iput-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->dq:Z

    move-object/from16 v16, v12

    goto :goto_1b

    :catch_b
    move-exception v0

    goto/16 :goto_27

    :catch_c
    move-exception v0

    goto/16 :goto_2b

    :cond_39
    throw v3

    :cond_3a
    const/4 v15, 0x0

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    if-ne v0, v13, :cond_3e

    const/4 v0, 0x0

    :goto_1f
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->eq:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v5, :cond_3d

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzad;->zzr:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3c

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->eq:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzad;->zzr:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    iget-object v6, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v6, :cond_3b

    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_3b
    throw v3

    :cond_3c
    iput v11, v1, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    goto :goto_20

    :cond_3d
    throw v3

    :cond_3e
    :goto_20
    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_52

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    move-object/from16 v14, v21

    iput-object v3, v14, Lcom/google/android/gms/internal/ads/zzkj;->zzb:Lcom/google/android/gms/internal/ads/zzrq;

    iput-object v3, v14, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;
    :try_end_12
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_12 .. :try_end_12} :catch_b

    :try_start_13
    invoke-virtual {v1, v14, v12, v15}, Lcom/google/android/gms/internal/ads/zzhw;->co(Lcom/google/android/gms/internal/ads/zzkj;Lcom/google/android/gms/internal/ads/zzhm;I)I

    move-result v5
    :try_end_13
    .catch Lcom/google/android/gms/internal/ads/zzhl; {:try_start_13 .. :try_end_13} :catch_d
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_13 .. :try_end_13} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_13 .. :try_end_13} :catch_b

    const/4 v6, -0x3

    if-ne v5, v6, :cond_3f

    :try_start_14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhw;->zzQ()Z

    move-result v0

    if-eqz v0, :cond_53

    iget-wide v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    iput-wide v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dp:J

    goto/16 :goto_25

    :cond_3f
    const/4 v6, -0x5

    if-ne v5, v6, :cond_42

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    if-ne v0, v11, :cond_40

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    :cond_40
    invoke-virtual {v1, v14}, Lcom/google/android/gms/internal/ads/zzsy;->bv(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzhy;

    :cond_41
    :goto_21
    move-object/from16 v16, v12

    move-object/from16 v21, v14

    goto/16 :goto_1b

    :cond_42
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhg;->zzf()Z

    move-result v5

    if-eqz v5, :cond_45

    iget-wide v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    iput-wide v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dp:J

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    if-ne v0, v11, :cond_43

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    :cond_43
    iput-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->ea:Z

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dq:Z

    if-nez v0, :cond_44

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fc()V

    goto/16 :goto_25

    :cond_44
    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->cx:Z

    if-nez v0, :cond_53

    iput-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->dh:Z

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    const-wide/16 v8, 0x0

    const/4 v10, 0x4

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsn;->zzk(IIIJI)V

    iput v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    iput-object v3, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    goto/16 :goto_25

    :cond_45
    iget-boolean v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dq:Z

    if-nez v5, :cond_46

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhg;->zzg()Z

    move-result v5

    if-nez v5, :cond_46

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iget v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    if-ne v0, v11, :cond_41

    iput v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    goto :goto_21

    :cond_46
    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzsy;->bh(Lcom/google/android/gms/internal/ads/zzhm;)Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhm;->zzb()V

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzhx;->zzd:I

    add-int/2addr v4, v13

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzhx;->zzd:I

    goto :goto_21

    :cond_47
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhm;->zzl()Z

    move-result v5

    if-eqz v5, :cond_48

    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzb:Lcom/google/android/gms/internal/ads/zzhj;

    invoke-virtual {v7, v0}, Lcom/google/android/gms/internal/ads/zzhj;->zzb(I)V

    :cond_48
    iget-wide v8, v12, Lcom/google/android/gms/internal/ads/zzhm;->zze:J

    iget-boolean v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->dz:Z

    if-eqz v0, :cond_4c

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayDeque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/akm;

    iget-object v0, v0, Lg/akm;->b:Lcom/google/android/gms/internal/ads/zzej;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v7, :cond_49

    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzd(JLjava/lang/Object;)V

    goto :goto_22

    :cond_49
    throw v3

    :cond_4a
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->do:Lg/akm;

    iget-object v0, v0, Lg/akm;->b:Lcom/google/android/gms/internal/ads/zzej;

    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v7, :cond_4b

    invoke-virtual {v0, v8, v9, v7}, Lcom/google/android/gms/internal/ads/zzej;->zzd(JLjava/lang/Object;)V

    :goto_22
    iput-boolean v15, v1, Lcom/google/android/gms/internal/ads/zzsy;->dz:Z

    goto :goto_23

    :cond_4b
    throw v3

    :cond_4c
    :goto_23
    iget-wide v6, v1, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzsy;->em:J

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzhw;->zzQ()Z

    move-result v0

    if-nez v0, :cond_4d

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhg;->zzh()Z

    move-result v0

    if-eqz v0, :cond_4e

    :cond_4d
    iput-wide v6, v1, Lcom/google/android/gms/internal/ads/zzsy;->dp:J

    :cond_4e
    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhm;->zzk()V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzhg;->zze()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-virtual {v1, v12}, Lcom/google/android/gms/internal/ads/zzsy;->ap(Lcom/google/android/gms/internal/ads/zzhm;)V

    :cond_4f
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->bj()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->az()V

    if-eqz v5, :cond_50

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    iget-object v7, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzb:Lcom/google/android/gms/internal/ads/zzhj;

    const/4 v10, 0x0

    const/4 v6, 0x0

    const/16 v20, -0x5

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsn;->zzl(IILcom/google/android/gms/internal/ads/zzhj;JI)V

    goto :goto_24

    :cond_50
    const/16 v20, -0x5

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    iget-object v0, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_51

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v7

    const/4 v10, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v4 .. v10}, Lcom/google/android/gms/internal/ads/zzsn;->zzk(IIIJI)V

    :goto_24
    iput v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->dc:I

    iput-object v3, v12, Lcom/google/android/gms/internal/ads/zzhm;->zzc:Ljava/nio/ByteBuffer;

    iput-boolean v13, v1, Lcom/google/android/gms/internal/ads/zzsy;->dq:Z

    iput v15, v1, Lcom/google/android/gms/internal/ads/zzsy;->es:I

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzhx;->zzc:I

    add-int/2addr v4, v13

    iput v4, v0, Lcom/google/android/gms/internal/ads/zzhx;->zzc:I

    goto/16 :goto_21

    :cond_51
    throw v3

    :catch_d
    move-exception v0

    const/16 v20, -0x5

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsy;->bd(Ljava/lang/Exception;)V

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzsy;->fe(I)Z

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fd()V

    goto/16 :goto_21

    :cond_52
    throw v3

    :cond_53
    :goto_25
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_26

    :cond_54
    move-object/from16 v3, v22

    const/4 v13, 0x1

    const/4 v15, 0x0

    throw v3

    :cond_55
    const/4 v13, 0x1

    const/4 v15, 0x0

    throw v3

    :cond_56
    const/4 v13, 0x1

    const/4 v15, 0x0

    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzhx;->zzd:I

    iget-object v3, v1, Lcom/google/android/gms/internal/ads/zzhw;->ch:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v4, v1, Lcom/google/android/gms/internal/ads/zzhw;->cd:J

    sub-long v4, p1, v4

    invoke-interface {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzwg;->zzb(J)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzhx;->zzd:I

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzsy;->fe(I)Z

    :goto_26
    iget-object v0, v1, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhx;->zza()V
    :try_end_14
    .catch Landroid/media/MediaCodec$CryptoException; {:try_start_14 .. :try_end_14} :catch_c
    .catch Ljava/lang/IllegalStateException; {:try_start_14 .. :try_end_14} :catch_b

    :cond_57
    return-void

    :goto_27
    instance-of v2, v0, Landroid/media/MediaCodec$CodecException;

    if-eqz v2, :cond_58

    goto :goto_28

    :cond_58
    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3

    if-lez v4, :cond_5c

    aget-object v3, v3, v15

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.media.MediaCodec"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    :goto_28
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzsy;->bd(Ljava/lang/Exception;)V

    if-eqz v2, :cond_59

    move-object v2, v0

    check-cast v2, Landroid/media/MediaCodec$CodecException;

    invoke-virtual {v2}, Landroid/media/MediaCodec$CodecException;->isRecoverable()Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v3, 0x1

    goto :goto_29

    :cond_59
    const/4 v3, 0x0

    :goto_29
    if-eqz v3, :cond_5a

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzsy;->fi()V

    :cond_5a
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->en:Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/ads/zzsy;->bk(Ljava/lang/IllegalStateException;Lcom/google/android/gms/internal/ads/zzsq;)Lcom/google/android/gms/internal/ads/zzsp;

    move-result-object v0

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzsp;->zzb:I

    const/16 v4, 0x44d

    if-ne v2, v4, :cond_5b

    const/16 v2, 0xfa6

    goto :goto_2a

    :cond_5b
    const/16 v2, 0xfa3

    :goto_2a
    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v1, v0, v4, v3, v2}, Lcom/google/android/gms/internal/ads/zzhw;->cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object v0

    throw v0

    :cond_5c
    throw v0

    :goto_2b
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v0}, Landroid/media/MediaCodec$CryptoException;->getErrorCode()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzen;->zzl(I)I

    move-result v3

    invoke-virtual {v1, v0, v2, v15, v3}, Lcom/google/android/gms/internal/ads/zzhw;->cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object v0

    throw v0
.end method

.method public zzW()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ef:Z

    return v0
.end method

.method public zzX()Z
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ed:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzQ()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->cj:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->ch:Lcom/google/android/gms/internal/ads/zzwg;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzwg;->zze()Z

    move-result v0

    :goto_0
    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->ee:I

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/zzsy;->eb:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v3, v5

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->by:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzdc;->zzb()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzsy;->eb:J

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2

    goto :goto_2

    :cond_2
    return v2

    :cond_3
    :goto_2
    return v1
.end method

.method public final zzY(Lcom/google/android/gms/internal/ads/zzad;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dl:Lcom/google/android/gms/internal/ads/zzta;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/internal/ads/zzsy;->bc(Lcom/google/android/gms/internal/ads/zzta;Lcom/google/android/gms/internal/ads/zzad;)I

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zztf; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    const/16 v2, 0xfa2

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/google/android/gms/internal/ads/zzhw;->cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object p1

    throw p1
.end method

.method public final zze()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public zzu(ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    const/16 v0, 0xb

    if-ne p1, v0, :cond_0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzlm;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->de:Lcom/google/android/gms/internal/ads/zzlm;

    :cond_0
    return-void
.end method
