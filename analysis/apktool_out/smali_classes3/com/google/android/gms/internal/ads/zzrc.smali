.class public final Lcom/google/android/gms/internal/ads/zzrc;
.super Lcom/google/android/gms/internal/ads/zzsy;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzkp;


# instance fields
.field public a:Z

.field public final b:Lcom/google/android/gms/internal/ads/zzsj;

.field public c:Z

.field public d:Lcom/google/android/gms/internal/ads/zzad;

.field public e:Z

.field public final f:Lcom/google/android/gms/internal/ads/zzpm;

.field public final g:Landroid/content/Context;

.field public final h:Lcom/google/android/gms/internal/ads/zzpu;

.field public i:Lcom/google/android/gms/internal/ads/zzad;

.field public j:Z

.field public k:Z

.field public l:J

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzsl;Lcom/google/android/gms/internal/ads/zzta;ZLandroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpn;Lcom/google/android/gms/internal/ads/zzpu;)V
    .locals 6

    sget p4, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v0, 0x23

    if-lt p4, v0, :cond_0

    new-instance p4, Lcom/google/android/gms/internal/ads/zzsj;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzsi;->zza:Lcom/google/android/gms/internal/ads/zzsi;

    invoke-direct {p4, v0}, Lcom/google/android/gms/internal/ads/zzsj;-><init>(Lcom/google/android/gms/internal/ads/zzsi;)V

    goto :goto_0

    :cond_0
    const/4 p4, 0x0

    :goto_0
    const/4 v4, 0x0

    const v5, 0x472c4400    # 44100.0f

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzsy;-><init>(ILcom/google/android/gms/internal/ads/zzsl;Lcom/google/android/gms/internal/ads/zzta;ZF)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzrc;->g:Landroid/content/Context;

    iput-object p7, v0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    iput-object p4, v0, Lcom/google/android/gms/internal/ads/zzrc;->b:Lcom/google/android/gms/internal/ads/zzsj;

    const/16 p1, -0x3e8

    iput p1, v0, Lcom/google/android/gms/internal/ads/zzrc;->m:I

    new-instance p1, Lcom/google/android/gms/internal/ads/zzpm;

    invoke-direct {p1, p5, p6}, Lcom/google/android/gms/internal/ads/zzpm;-><init>(Landroid/os/Handler;Lcom/google/android/gms/internal/ads/zzpn;)V

    iput-object p1, v0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    new-instance p1, Lg/fge;

    invoke-direct {p1, p0}, Lg/fge;-><init>(Lcom/google/android/gms/internal/ads/zzrc;)V

    invoke-interface {p7, p1}, Lcom/google/android/gms/internal/ads/zzpu;->zzq(Lcom/google/android/gms/internal/ads/zzpr;)V

    return-void
.end method


# virtual methods
.method public final _b()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzj()V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpt; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    if-eq v1, v2, :cond_0

    const/16 v1, 0x138a

    goto :goto_0

    :cond_0
    const/16 v1, 0x138b

    :goto_0
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzpt;->zzc:Lcom/google/android/gms/internal/ads/zzad;

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzpt;->zzb:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzhw;->cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object v0

    throw v0
.end method

.method public final _c(Lcom/google/android/gms/internal/ads/zzad;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->cn()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzpu;->zzA(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result p1

    return p1
.end method

.method public final an(JZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsy;->an(JZ)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {p3}, Lcom/google/android/gms/internal/ads/zzpu;->zzf()V

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->l:J

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->a:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->e:Z

    return-void
.end method

.method public final ao(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;F)Lcom/google/android/gms/internal/ads/zzsk;
    .locals 8

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhw;->ca:[Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    array-length v1, v0

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzrc;->o(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_2

    aget-object v6, v0, v5

    invoke-virtual {p1, p2, v6}, Lcom/google/android/gms/internal/ads/zzsq;->zzb(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzhy;

    move-result-object v7

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    if-eqz v7, :cond_1

    invoke-virtual {p0, p1, v6}, Lcom/google/android/gms/internal/ads/zzrc;->o(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;)I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iput v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->n:I

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v2, 0x18

    if-ge v1, v2, :cond_4

    const-string v5, "OMX.SEC.aac.dec"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "samsung"

    sget-object v5, Lcom/google/android/gms/internal/ads/zzen;->zzc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/google/android/gms/internal/ads/zzen;->zzb:Ljava/lang/String;

    const-string v5, "zeroflte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "herolte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v5, "heroqlte"

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->c:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    const-string v5, "OMX.google.opus.decoder"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "c2.android.opus.decoder"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "OMX.google.vorbis.decoder"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "c2.android.vorbis.decoder"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    const/4 v0, 0x1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->j:Z

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzsq;->zzc:Ljava/lang/String;

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzrc;->n:I

    new-instance v6, Landroid/media/MediaFormat;

    invoke-direct {v6}, Landroid/media/MediaFormat;-><init>()V

    const-string v7, "mime"

    invoke-virtual {v6, v7, v0}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    const-string v7, "channel-count"

    invoke-virtual {v6, v7, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    const-string v7, "sample-rate"

    invoke-virtual {v6, v7, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzr:Ljava/util/List;

    invoke-static {v6, v0}, Lcom/google/android/gms/internal/ads/zzdw;->zzb(Landroid/media/MediaFormat;Ljava/util/List;)V

    const-string v0, "max-input-size"

    invoke-static {v6, v0, v5}, Lcom/google/android/gms/internal/ads/zzdw;->zza(Landroid/media/MediaFormat;Ljava/lang/String;I)V

    const/16 v0, 0x17

    if-lt v1, v0, :cond_8

    const-string v5, "priority"

    invoke-virtual {v6, v5, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/high16 v5, -0x40800000    # -1.0f

    cmpl-float v5, p3, v5

    if-eqz v5, :cond_8

    if-ne v1, v0, :cond_7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzen;->zzd:Ljava/lang/String;

    const-string v5, "ZTE B2017G"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    const-string v5, "AXON 7 mini"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    const-string v0, "operating-rate"

    invoke-virtual {v6, v0, p3}, Landroid/media/MediaFormat;->setFloat(Ljava/lang/String;F)V

    :cond_8
    const/16 p3, 0x1c

    if-gt v1, p3, :cond_9

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const-string v0, "audio/ac4"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_9

    const-string p3, "ac4-is-sync"

    invoke-virtual {v6, p3, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_9
    if-lt v1, v2, :cond_a

    iget p3, p2, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    const/4 v2, 0x4

    invoke-static {v2, p3, v0}, Lcom/google/android/gms/internal/ads/zzen;->zzA(III)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0, p3}, Lcom/google/android/gms/internal/ads/zzpu;->zza(Lcom/google/android/gms/internal/ads/zzad;)I

    move-result p3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_a

    const-string p3, "pcm-encoding"

    invoke-virtual {v6, p3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_a
    const/16 p3, 0x20

    if-lt v1, p3, :cond_b

    const-string p3, "max-output-channel-count"

    const/16 v0, 0x63

    invoke-virtual {v6, p3, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_b
    const/16 p3, 0x23

    if-lt v1, p3, :cond_c

    iget p3, p0, Lcom/google/android/gms/internal/ads/zzrc;->m:I

    neg-int p3, p3

    invoke-static {v3, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    const-string v0, "importance"

    invoke-virtual {v6, v0, p3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    :cond_c
    iget-object p3, p1, Lcom/google/android/gms/internal/ads/zzsq;->zzb:Ljava/lang/String;

    const-string v0, "audio/raw"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_d

    iget-object p3, p2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_d

    move-object p3, p2

    goto :goto_4

    :cond_d
    move-object p3, v1

    :goto_4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzrc;->i:Lcom/google/android/gms/internal/ads/zzad;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzrc;->b:Lcom/google/android/gms/internal/ads/zzsj;

    invoke-static {p1, v6, p2, v1, p3}, Lcom/google/android/gms/internal/ads/zzsk;->zza(Lcom/google/android/gms/internal/ads/zzsq;Landroid/media/MediaFormat;Lcom/google/android/gms/internal/ads/zzad;Landroid/media/MediaCrypto;Lcom/google/android/gms/internal/ads/zzsj;)Lcom/google/android/gms/internal/ads/zzsk;

    move-result-object p1

    return-object p1
.end method

.method public final ap(Lcom/google/android/gms/internal/ads/zzhm;)V
    .locals 4

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhm;->zza:Lcom/google/android/gms/internal/ads/zzad;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const-string v1, "audio/opus"

    invoke-static {v0, v1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzhm;->zzf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzhm;->zza:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p1, Lcom/google/android/gms/internal/ads/zzad;->zzF:I

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    const-wide/32 v2, 0xbb80

    mul-long v0, v0, v2

    const-wide/32 v2, 0x3b9aca00

    div-long/2addr v0, v2

    long-to-int v1, v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzpu;->zzr(II)V

    :cond_0
    return-void
.end method

.method public final as()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzg()V

    return-void
.end method

.method public final at(JJLjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    move-wide v2, p1

    move-wide v4, p3

    move-object v1, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzpm;->zze(Ljava/lang/String;JJ)V

    return-void
.end method

.method public final aw()V
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrc;->p()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzh()V

    return-void
.end method

.method public final ax(F[Lcom/google/android/gms/internal/ads/zzad;)F
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_1

    aget-object v3, p2, v0

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    if-eq v3, v1, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v1, :cond_2

    const/high16 p1, -0x40800000    # -1.0f

    return p1

    :cond_2
    int-to-float p2, v2

    mul-float p2, p2, p1

    return p2
.end method

.method public final ba()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzk()V

    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v1, 0x23

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->b:Lcom/google/android/gms/internal/ads/zzsj;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzsj;->zzb()V

    :cond_0
    return-void
.end method

.method public final bb(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzhy;
    .locals 8

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzsq;->zzb(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzhy;

    move-result-object v0

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzhy;->zze:I

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->cu:Lcom/google/android/gms/internal/ads/zzrq;

    if-nez v2, :cond_0

    invoke-virtual {p0, p3}, Lcom/google/android/gms/internal/ads/zzrc;->_c(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x8000

    or-int/2addr v1, v2

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/google/android/gms/internal/ads/zzrc;->o(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;)I

    move-result v2

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->n:I

    if-le v2, v3, :cond_1

    or-int/lit8 v1, v1, 0x40

    :cond_1
    iget-object v3, p1, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhy;

    const/4 p1, 0x0

    if-eqz v1, :cond_2

    move v7, v1

    const/4 v6, 0x0

    :goto_0
    move-object v4, p2

    move-object v5, p3

    goto :goto_1

    :cond_2
    iget v0, v0, Lcom/google/android/gms/internal/ads/zzhy;->zzd:I

    move v6, v0

    const/4 v7, 0x0

    goto :goto_0

    :goto_1
    invoke-direct/range {v2 .. v7}, Lcom/google/android/gms/internal/ads/zzhy;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzad;II)V

    return-object v2
.end method

.method public final bc(Lcom/google/android/gms/internal/ads/zzta;Lcom/google/android/gms/internal/ads/zzad;)I
    .locals 9

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbg;->zzg(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x80

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzJ:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    if-eqz v4, :cond_2

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zztl;->zza()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_4

    :cond_3
    :goto_1
    invoke-interface {v5, p2}, Lcom/google/android/gms/internal/ads/zzpu;->zzd(Lcom/google/android/gms/internal/ads/zzad;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzoz;->zzb:Z

    if-nez v6, :cond_4

    const/4 v6, 0x0

    goto :goto_3

    :cond_4
    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzoz;->zzc:Z

    if-eq v3, v6, :cond_5

    const/16 v6, 0x200

    goto :goto_2

    :cond_5
    const/16 v6, 0x600

    :goto_2
    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzoz;->zzd:Z

    if-eqz v0, :cond_6

    or-int/lit16 v6, v6, 0x800

    :cond_6
    :goto_3
    invoke-interface {v5, p2}, Lcom/google/android/gms/internal/ads/zzpu;->zzA(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_4

    :cond_7
    or-int/lit16 p1, v6, 0xac

    return p1

    :goto_4
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const-string v7, "audio/raw"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v5, p2}, Lcom/google/android/gms/internal/ads/zzpu;->zzA(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_6

    :cond_8
    iget v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    iget v7, p2, Lcom/google/android/gms/internal/ads/zzad;->zzD:I

    const/4 v8, 0x2

    invoke-static {v8, v0, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzA(III)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    invoke-interface {v5, v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzA(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_6

    :cond_9
    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    if-nez v0, :cond_a

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    goto :goto_5

    :cond_a
    invoke-interface {v5, p2}, Lcom/google/android/gms/internal/ads/zzpu;->zzA(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/google/android/gms/internal/ads/zztl;->zza()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    goto :goto_5

    :cond_b
    invoke-static {p1, p2, v2, v2}, Lcom/google/android/gms/internal/ads/zztl;->zze(Lcom/google/android/gms/internal/ads/zzta;Lcom/google/android/gms/internal/ads/zzad;ZZ)Ljava/util/List;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_6

    :cond_c
    if-nez v4, :cond_d

    const/4 v3, 0x2

    :goto_6
    or-int/lit16 p1, v3, 0x80

    return p1

    :cond_d
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzsq;->zze(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v4

    if-nez v4, :cond_f

    const/4 v5, 0x1

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-ge v5, v7, :cond_f

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzsq;

    invoke-virtual {v7, p2}, Lcom/google/android/gms/internal/ads/zzsq;->zze(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v8

    if-eqz v8, :cond_e

    move-object v0, v7

    const/4 p1, 0x0

    const/4 v4, 0x1

    goto :goto_8

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    const/4 p1, 0x1

    :goto_8
    if-eq v3, v4, :cond_10

    const/4 v5, 0x3

    goto :goto_9

    :cond_10
    const/4 v5, 0x4

    :goto_9
    const/16 v7, 0x8

    if-eqz v4, :cond_11

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzsq;->zzf(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result p2

    if-eqz p2, :cond_11

    const/16 v7, 0x10

    :cond_11
    iget-boolean p2, v0, Lcom/google/android/gms/internal/ads/zzsq;->zzg:Z

    if-eq v3, p2, :cond_12

    const/4 p2, 0x0

    goto :goto_a

    :cond_12
    const/16 p2, 0x40

    :goto_a
    if-eq v3, p1, :cond_13

    const/4 v1, 0x0

    :cond_13
    or-int p1, v5, v7

    or-int/lit8 p1, p1, 0x20

    or-int/2addr p1, p2

    or-int/2addr p1, v1

    or-int/2addr p1, v6

    return p1
.end method

.method public final bd(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "MediaCodecAudioRenderer"

    const-string v1, "Audio codec error"

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpm;->zza(Ljava/lang/Exception;)V

    return-void
.end method

.method public final bl(Lcom/google/android/gms/internal/ads/zzad;Landroid/media/MediaFormat;)V
    .locals 10

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->i:Lcom/google/android/gms/internal/ads/zzad;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    move-object p1, v0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    const-string v4, "audio/raw"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v5, 0x2

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzE:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v6, 0x18

    if-lt v0, v6, :cond_3

    const-string v0, "pcm-encoding"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    const-string v0, "v-bits-per-sample"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzen;->zzn(I)I

    move-result v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    :goto_0
    new-instance v6, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v6}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzT(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzF:I

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzG(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzG:I

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzH(I)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzl:Lcom/google/android/gms/internal/ads/zzbd;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzS(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zza:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzb:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzN(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzc:Ljava/util/List;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzO(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzab;

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzd:Ljava/lang/String;

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzP(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zze:I

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzab(I)Lcom/google/android/gms/internal/ads/zzab;

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzf:I

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzX(I)Lcom/google/android/gms/internal/ads/zzab;

    const-string v0, "channel-count"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/zzab;->zzz(I)Lcom/google/android/gms/internal/ads/zzab;

    const-string v0, "sample-rate"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v6, p2}, Lcom/google/android/gms/internal/ads/zzab;->zzaa(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object p2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->c:Z

    const/4 v4, 0x6

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    if-ne v0, v4, :cond_6

    iget v0, p1, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    if-ge v0, v4, :cond_6

    new-array v1, v0, [I

    const/4 v0, 0x0

    :goto_1
    iget v4, p1, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    if-ge v0, v4, :cond_5

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    move-object p1, p2

    goto :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->j:Z

    if-eqz p1, :cond_5

    iget p1, p2, Lcom/google/android/gms/internal/ads/zzad;->zzC:I

    const/4 v0, 0x3

    if-eq p1, v0, :cond_b

    const/4 v6, 0x4

    const/4 v7, 0x5

    if-eq p1, v7, :cond_a

    if-eq p1, v4, :cond_9

    const/4 v8, 0x7

    if-eq p1, v8, :cond_8

    const/16 v9, 0x8

    if-eq p1, v9, :cond_7

    goto :goto_2

    :cond_7
    new-array v1, v9, [I

    aput v3, v1, v3

    aput v5, v1, v2

    aput v2, v1, v5

    aput v8, v1, v0

    aput v7, v1, v6

    aput v4, v1, v7

    aput v0, v1, v4

    aput v6, v1, v8

    goto :goto_2

    :cond_8
    new-array v1, v8, [I

    aput v3, v1, v3

    aput v5, v1, v2

    aput v2, v1, v5

    aput v4, v1, v0

    aput v7, v1, v6

    aput v0, v1, v7

    aput v6, v1, v4

    goto :goto_2

    :cond_9
    new-array v1, v4, [I

    aput v3, v1, v3

    aput v5, v1, v2

    aput v2, v1, v5

    aput v7, v1, v0

    aput v0, v1, v6

    aput v6, v1, v7

    goto :goto_2

    :cond_a
    new-array v1, v7, [I

    aput v3, v1, v3

    aput v5, v1, v2

    aput v2, v1, v5

    aput v0, v1, v0

    aput v6, v1, v6

    goto :goto_2

    :cond_b
    new-array v1, v0, [I

    aput v3, v1, v3

    aput v5, v1, v2

    aput v2, v1, v5

    goto :goto_2

    :goto_3
    :try_start_0
    sget p2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v0, 0x1d

    if-lt p2, v0, :cond_e

    iget-boolean v4, p0, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    if-eqz v4, :cond_c

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->cn()V

    goto :goto_4

    :catch_0
    move-exception p1

    goto :goto_6

    :cond_c
    :goto_4
    if-lt p2, v0, :cond_d

    goto :goto_5

    :cond_d
    const/4 v2, 0x0

    :goto_5
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    :cond_e
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {p2, p1, v3, v1}, Lcom/google/android/gms/internal/ads/zzpu;->zze(Lcom/google/android/gms/internal/ads/zzad;I[I)V
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpp; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :goto_6
    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzpp;->zza:Lcom/google/android/gms/internal/ads/zzad;

    const/16 v0, 0x1389

    invoke-virtual {p0, p1, p2, v3, v0}, Lcom/google/android/gms/internal/ads/zzhw;->cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object p1

    throw p1
.end method

.method public final bm()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->k:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->d:Lcom/google/android/gms/internal/ads/zzad;

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzpu;->zzf()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzsy;->bm()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzpm;->zzg(Lcom/google/android/gms/internal/ads/zzhx;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_2
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzsy;->bm()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzpm;->zzg(Lcom/google/android/gms/internal/ads/zzhx;)V

    throw v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzpm;->zzg(Lcom/google/android/gms/internal/ads/zzhx;)V

    throw v1
.end method

.method public final bn()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->a:Z

    :try_start_0
    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzsy;->bn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->k:Z

    if-eqz v2, :cond_0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->k:Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzl()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    iget-boolean v3, p0, Lcom/google/android/gms/internal/ads/zzrc;->k:Z

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->k:Z

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzl()V

    :goto_0
    throw v2
.end method

.method public final bo(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsy;->bo(ZZ)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzpm;->zzh(Lcom/google/android/gms/internal/ads/zzhx;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->cn()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->cm:Lcom/google/android/gms/internal/ads/zzoj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzpu;->zzt(Lcom/google/android/gms/internal/ads/zzoj;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzhw;->by:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzpu;->zzp(Lcom/google/android/gms/internal/ads/zzdc;)V

    return-void
.end method

.method public final bq(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzpm;->zzf(Ljava/lang/String;)V

    return-void
.end method

.method public final br(JJLcom/google/android/gms/internal/ads/zzsn;Ljava/nio/ByteBuffer;IIIJZZLcom/google/android/gms/internal/ads/zzad;)Z
    .locals 0

    invoke-virtual {p6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->i:Lcom/google/android/gms/internal/ads/zzad;

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    and-int/lit8 p1, p8, 0x2

    if-eqz p1, :cond_0

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsn;->zzo(IZ)V

    return p2

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    if-eqz p12, :cond_2

    if-eqz p5, :cond_1

    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsn;->zzo(IZ)V

    :cond_1
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    iget p4, p3, Lcom/google/android/gms/internal/ads/zzhx;->zzf:I

    add-int/2addr p4, p9

    iput p4, p3, Lcom/google/android/gms/internal/ads/zzhx;->zzf:I

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzpu;->zzg()V

    return p2

    :cond_2
    :try_start_0
    invoke-interface {p1, p6, p10, p11, p9}, Lcom/google/android/gms/internal/ads/zzpu;->zzx(Ljava/nio/ByteBuffer;JI)Z

    move-result p1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzpq; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/android/gms/internal/ads/zzpt; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_4

    if-eqz p5, :cond_3

    invoke-interface {p5, p7, p3}, Lcom/google/android/gms/internal/ads/zzsn;->zzo(IZ)V

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->eu:Lcom/google/android/gms/internal/ads/zzhx;

    iget p3, p1, Lcom/google/android/gms/internal/ads/zzhx;->zze:I

    add-int/2addr p3, p9

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzhx;->zze:I

    return p2

    :cond_4
    return p3

    :catch_0
    move-exception p1

    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->cn()V

    :goto_0
    iget-boolean p2, p1, Lcom/google/android/gms/internal/ads/zzpt;->zzb:Z

    const/16 p3, 0x138a

    invoke-virtual {p0, p1, p14, p2, p3}, Lcom/google/android/gms/internal/ads/zzhw;->cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object p1

    throw p1

    :catch_1
    move-exception p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->d:Lcom/google/android/gms/internal/ads/zzad;

    iget-boolean p3, p0, Lcom/google/android/gms/internal/ads/zzsy;->dm:Z

    if-eqz p3, :cond_6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->cn()V

    :cond_6
    iget-boolean p3, p1, Lcom/google/android/gms/internal/ads/zzpq;->zzb:Z

    const/16 p4, 0x1389

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/ads/zzhw;->cp(Ljava/lang/Exception;Lcom/google/android/gms/internal/ads/zzad;ZI)Lcom/google/android/gms/internal/ads/zzig;

    move-result-object p1

    throw p1
.end method

.method public final bs()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzi()V

    return-void
.end method

.method public final bu(Lcom/google/android/gms/internal/ads/zzta;Lcom/google/android/gms/internal/ads/zzad;)Ljava/util/List;
    .locals 1

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0, p2}, Lcom/google/android/gms/internal/ads/zzpu;->zzA(Lcom/google/android/gms/internal/ads/zzad;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zztl;->zza()Lcom/google/android/gms/internal/ads/zzsq;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lcom/google/android/gms/internal/ads/zztl;->zze(Lcom/google/android/gms/internal/ads/zzta;Lcom/google/android/gms/internal/ads/zzad;ZZ)Ljava/util/List;

    move-result-object p1

    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zztl;->zzf(Ljava/util/List;Lcom/google/android/gms/internal/ads/zzad;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final bv(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzhy;
    .locals 2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzkj;->zza:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->d:Lcom/google/android/gms/internal/ads/zzad;

    invoke-super {p0, p1}, Lcom/google/android/gms/internal/ads/zzsy;->bv(Lcom/google/android/gms/internal/ads/zzkj;)Lcom/google/android/gms/internal/ads/zzhy;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->f:Lcom/google/android/gms/internal/ads/zzpm;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/gms/internal/ads/zzpm;->zzi(Lcom/google/android/gms/internal/ads/zzad;Lcom/google/android/gms/internal/ads/zzhy;)V

    return-object p1
.end method

.method public final o(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzad;)I
    .locals 1

    const-string v0, "OMX.google.raw.decoder"

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzsq;->zza:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget p1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v0, 0x18

    if-ge p1, v0, :cond_1

    const/16 v0, 0x17

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->g:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzM(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, -0x1

    return p1

    :cond_1
    iget p1, p2, Lcom/google/android/gms/internal/ads/zzad;->zzp:I

    return p1
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrc;->zzW()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzpu;->zzb(Z)J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->e:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzrc;->l:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->l:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->e:Z

    :cond_1
    return-void
.end method

.method public final zzU()Ljava/lang/String;
    .locals 1

    const-string v0, "MediaCodecAudioRenderer"

    return-object v0
.end method

.method public final zzW()Z
    .locals 1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzsy;->zzW()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzz()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final zzX()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0}, Lcom/google/android/gms/internal/ads/zzsy;->zzX()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final zza()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhw;->zzcV()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzrc;->p()V

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->l:J

    return-wide v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzbj;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzpu;->zzc()Lcom/google/android/gms/internal/ads/zzbj;

    move-result-object v0

    return-object v0
.end method

.method public final zzg(Lcom/google/android/gms/internal/ads/zzbj;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzpu;->zzs(Lcom/google/android/gms/internal/ads/zzbj;)V

    return-void
.end method

.method public final zzj()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->a:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->a:Z

    return v0
.end method

.method public final zzl()Lcom/google/android/gms/internal/ads/zzkp;
    .locals 0

    return-object p0
.end method

.method public final zzu(ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzig;
        }
    .end annotation

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzrc;->h:Lcom/google/android/gms/internal/ads/zzpu;

    if-eq p1, v0, :cond_7

    const/4 v0, 0x3

    if-eq p1, v0, :cond_6

    const/4 v0, 0x6

    if-eq p1, v0, :cond_5

    const/16 v0, 0xc

    if-eq p1, v0, :cond_3

    const/16 v0, 0x10

    const/16 v2, 0x23

    if-eq p1, v0, :cond_2

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzsy;->zzu(ILjava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzpu;->zzn(I)V

    sget p2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt p2, v2, :cond_4

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzrc;->b:Lcom/google/android/gms/internal/ads/zzsj;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzsj;->zzd(I)V

    return-void

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzpu;->zzv(Z)V

    return-void

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzrc;->m:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzsy;->et:Lcom/google/android/gms/internal/ads/zzsn;

    if-eqz p1, :cond_4

    sget p2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    if-lt p2, v2, :cond_4

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzrc;->m:I

    neg-int v0, v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    const-string v1, "importance"

    invoke-virtual {p2, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzsn;->zzq(Landroid/os/Bundle;)V

    return-void

    :cond_3
    sget p1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_4

    invoke-static {v1, p2}, Lg/agv;->a(Lcom/google/android/gms/internal/ads/zzpu;Ljava/lang/Object;)V

    :cond_4
    return-void

    :cond_5
    check-cast p2, Lcom/google/android/gms/internal/ads/zzh;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/zzpu;->zzo(Lcom/google/android/gms/internal/ads/zzh;)V

    return-void

    :cond_6
    check-cast p2, Lcom/google/android/gms/internal/ads/zzg;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/zzpu;->zzm(Lcom/google/android/gms/internal/ads/zzg;)V

    return-void

    :cond_7
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzpu;->zzw(F)V

    return-void
.end method
