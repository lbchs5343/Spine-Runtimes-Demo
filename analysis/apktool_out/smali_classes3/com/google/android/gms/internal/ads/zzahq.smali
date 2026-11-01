.class public final Lcom/google/android/gms/internal/ads/zzahq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# static fields
.field public static final a:Ljava/util/UUID;

.field public static final b:[B

.field public static final c:[B

.field public static final d:[B

.field public static final e:Ljava/util/Map;

.field public static final f:[B


# instance fields
.field public aa:J

.field public ab:Lcom/google/android/gms/internal/ads/zzdu;

.field public ac:Z

.field public ad:J

.field public ae:[I

.field public af:Z

.field public ag:I

.field public ah:Lcom/google/android/gms/internal/ads/zzaho;

.field public ai:Z

.field public aj:Z

.field public final ak:Lcom/google/android/gms/internal/ads/zzed;

.field public al:J

.field public am:J

.field public an:Ljava/nio/ByteBuffer;

.field public final ao:Lcom/google/android/gms/internal/ads/zzed;

.field public ap:B

.field public aq:Z

.field public ar:I

.field public final as:Lcom/google/android/gms/internal/ads/zzed;

.field public final at:Landroid/util/SparseArray;

.field public au:I

.field public final av:Lcom/google/android/gms/internal/ads/zzed;

.field public aw:J

.field public ax:J

.field public ay:J

.field public az:Z

.field public ba:I

.field public bb:J

.field public final bc:Z

.field public bd:I

.field public be:J

.field public bf:Lcom/google/android/gms/internal/ads/zzdu;

.field public bg:I

.field public final bh:Lcom/google/android/gms/internal/ads/zzed;

.field public bi:J

.field public bj:Z

.field public g:Z

.field public final h:Lcom/google/android/gms/internal/ads/zzed;

.field public final i:Lcom/google/android/gms/internal/ads/zzed;

.field public j:I

.field public k:I

.field public final l:Lg/bxw;

.field public final m:Lcom/google/android/gms/internal/ads/zzed;

.field public n:J

.field public o:I

.field public p:I

.field public q:Z

.field public r:Lcom/google/android/gms/internal/ads/zzacu;

.field public s:I

.field public final t:Lcom/google/android/gms/internal/ads/zzed;

.field public final u:Z

.field public v:J

.field public final w:Lcom/google/android/gms/internal/ads/zzed;

.field public final x:Lcom/google/android/gms/internal/ads/zzakg;

.field public y:I

.field public final z:Lg/gvg;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x20

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/android/gms/internal/ads/zzahq;->d:[B

    sget v1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    const-string v1, "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Lcom/google/android/gms/internal/ads/zzahq;->f:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahq;->c:[B

    const/16 v0, 0x26

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahq;->b:[B

    new-instance v0, Ljava/util/UUID;

    const-wide v1, 0x100000000001000L

    const-wide v3, -0x7fffff55ffc7648fL    # -3.607411173533E-312

    invoke-direct {v0, v1, v2, v3, v4}, Ljava/util/UUID;-><init>(JJ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahq;->a:Ljava/util/UUID;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "htc_video_rotA-090"

    const/16 v2, 0x5a

    const/4 v3, 0x0

    const-string v4, "htc_video_rotA-000"

    invoke-static {v3, v0, v4, v2, v1}, Lg/tn;->e(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "htc_video_rotA-270"

    const/16 v2, 0x10e

    const/16 v3, 0xb4

    const-string v4, "htc_video_rotA-180"

    invoke-static {v3, v0, v4, v2, v1}, Lg/tn;->e(ILjava/util/HashMap;Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzahq;->e:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 1
        0x31t
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data

    :array_1
    .array-data 1
        0x44t
        0x69t
        0x61t
        0x6ct
        0x6ft
        0x67t
        0x75t
        0x65t
        0x3at
        0x20t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2ct
    .end array-data

    :array_2
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x56t
        0x54t
        0x54t
        0xat
        0xat
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0x20t
        0x2dt
        0x2dt
        0x3et
        0x20t
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x3at
        0x30t
        0x30t
        0x2et
        0x30t
        0x30t
        0x30t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lg/bxw;

    invoke-direct {v0}, Lg/bxw;-><init>()V

    const/4 v1, 0x2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(Lg/bxw;ILcom/google/android/gms/internal/ads/zzakg;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakg;I)V
    .locals 1

    new-instance p2, Lg/bxw;

    invoke-direct {p2}, Lg/bxw;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzahq;-><init>(Lg/bxw;ILcom/google/android/gms/internal/ads/zzakg;)V

    return-void
.end method

.method public constructor <init>(Lg/bxw;ILcom/google/android/gms/internal/ads/zzakg;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->bi:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->am:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->ay:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->aa:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->ax:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->v:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->ad:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->l:Lg/bxw;

    new-instance v0, Lg/fc;

    const/16 v1, 0x18

    invoke-direct {v0, v1, p0}, Lg/fc;-><init>(ILjava/lang/Object;)V

    iput-object v0, p1, Lg/bxw;->a:Lg/fc;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzahq;->x:Lcom/google/android/gms/internal/ads/zzakg;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->bc:Z

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->u:Z

    new-instance p2, Lg/gvg;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lg/gvg;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->z:Lg/gvg;

    new-instance p2, Landroid/util/SparseArray;

    invoke-direct {p2}, Landroid/util/SparseArray;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->at:Landroid/util/SparseArray;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->h:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->as:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->av:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfp;->zza:[B

    invoke-direct {p2, v0}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->ak:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->bh:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->i:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->w:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    const/16 p3, 0x8

    invoke-direct {p2, p3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->ao:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->t:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p2}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->m:Lcom/google/android/gms/internal/ads/zzed;

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    return-void
.end method

.method public static bk(JJLjava/lang/String;)[B
    .locals 11

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v2, 0x0

    const/4 v3, 0x1

    cmp-long v4, p0, v0

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzd(Z)V

    const-wide v0, 0xd693a400L

    div-long v4, p0, v0

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    long-to-int v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    int-to-long v7, v5

    mul-long v7, v7, v0

    sub-long/2addr p0, v7

    const-wide/32 v0, 0x3938700

    div-long v7, p0, v0

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    int-to-long v8, v5

    mul-long v8, v8, v0

    sub-long/2addr p0, v8

    const-wide/32 v0, 0xf4240

    div-long v8, p0, v0

    long-to-int v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    int-to-long v9, v5

    mul-long v9, v9, v0

    sub-long/2addr p0, v9

    div-long/2addr p0, p2

    long-to-int p1, p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 p1, 0x4

    new-array p1, p1, [Ljava/lang/Object;

    aput-object v4, p1, v2

    aput-object v7, p1, v3

    const/4 p2, 0x2

    aput-object v8, p1, p2

    const/4 p2, 0x3

    aput-object p0, p1, p2

    invoke-static {v6, p4, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget p1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    sget-object p1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final bl()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->s:I

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->ai:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->af:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->bj:Z

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->bd:I

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->ap:B

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->ac:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->i:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    return-void
.end method

.method public final bm(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->ab:Lcom/google/android/gms/internal/ads/zzdu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->bf:Lcom/google/android/gms/internal/ads/zzdu;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Element "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a Cues"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1
.end method

.method public final bn(I)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Element "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " must be in a TrackEntry"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1
.end method

.method public final bo(IJ)V
    .locals 8

    const/16 v0, 0x5031

    const/4 v1, 0x0

    const-string v2, " not supported"

    if-eq p1, v0, :cond_13

    const/16 v0, 0x5032

    const-wide/16 v3, 0x1

    if-eq p1, v0, :cond_11

    const/4 v0, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzC:I

    return-void

    :pswitch_1
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzB:I

    return-void

    :pswitch_2
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzx:Z

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzm;->zza(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzy:I

    return-void

    :pswitch_3
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzm;->zzb(I)I

    move-result p1

    if-eq p1, v0, :cond_14

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p1, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzz:I

    return-void

    :pswitch_4
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    if-eq p3, v7, :cond_1

    if-eq p3, v6, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzA:I

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzA:I

    return-void

    :sswitch_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->am:J

    return-void

    :sswitch_1
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zze:I

    return-void

    :sswitch_2
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    if-eqz p3, :cond_5

    if-eq p3, v7, :cond_4

    if-eq p3, v6, :cond_3

    if-eq p3, v5, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzr:I

    return-void

    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzr:I

    return-void

    :cond_4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzr:I

    return-void

    :cond_5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzr:I

    return-void

    :sswitch_3
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->bb:J

    return-void

    :sswitch_4
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzP:I

    return-void

    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzS:J

    return-void

    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-wide p2, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzR:J

    return-void

    :sswitch_7
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzf:I

    return-void

    :sswitch_8
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-boolean v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzx:Z

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzn:I

    return-void

    :sswitch_9
    cmp-long v1, p2, v3

    if-nez v1, :cond_6

    const/4 v0, 0x1

    :cond_6
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzU:Z

    return-void

    :sswitch_a
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzp:I

    return-void

    :sswitch_b
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzq:I

    return-void

    :sswitch_c
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzo:I

    return-void

    :sswitch_d
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    if-eqz p3, :cond_a

    if-eq p3, v7, :cond_9

    if-eq p3, v5, :cond_8

    const/16 p1, 0xf

    if-eq p3, p1, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzw:I

    return-void

    :cond_8
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v7, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzw:I

    return-void

    :cond_9
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v6, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzw:I

    return-void

    :cond_a
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v0, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzw:I

    return-void

    :sswitch_e
    iget-wide v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->bi:J

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->n:J

    return-void

    :sswitch_f
    cmp-long p1, p2, v3

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AESSettingsCipherMode "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1

    :sswitch_10
    const-wide/16 v3, 0x5

    cmp-long p1, p2, v3

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncAlgo "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1

    :sswitch_11
    cmp-long p1, p2, v3

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "EBMLReadVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1

    :sswitch_12
    cmp-long p1, p2, v3

    if-ltz p1, :cond_e

    const-wide/16 v3, 0x2

    cmp-long p1, p2, v3

    if-gtz p1, :cond_e

    goto/16 :goto_0

    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "DocTypeReadVersion "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1

    :sswitch_13
    const-wide/16 v3, 0x3

    cmp-long p1, p2, v3

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentCompAlgo "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1

    :sswitch_14
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->a:I

    return-void

    :sswitch_15
    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->aq:Z

    return-void

    :sswitch_16
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->az:Z

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->bf:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdu;->zzc(J)V

    iput-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzahq;->az:Z

    return-void

    :sswitch_17
    long-to-int p1, p2

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->o:I

    return-void

    :sswitch_18
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzahq;->bs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ad:J

    return-void

    :sswitch_19
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzc:I

    return-void

    :sswitch_1a
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzm:I

    return-void

    :sswitch_1b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bm(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ab:Lcom/google/android/gms/internal/ads/zzdu;

    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzahq;->bs(J)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzdu;->zzc(J)V

    return-void

    :sswitch_1c
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzl:I

    return-void

    :sswitch_1d
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzO:I

    return-void

    :sswitch_1e
    invoke-virtual {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzahq;->bs(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->al:J

    return-void

    :sswitch_1f
    cmp-long v1, p2, v3

    if-nez v1, :cond_10

    const/4 v0, 0x1

    :cond_10
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzV:Z

    return-void

    :sswitch_20
    long-to-int p3, p2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput p3, p1, Lcom/google/android/gms/internal/ads/zzaho;->zzd:I

    return-void

    :cond_11
    cmp-long p1, p2, v3

    if-nez p1, :cond_12

    goto :goto_0

    :cond_12
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncodingScope "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1

    :cond_13
    const-wide/16 v3, 0x0

    cmp-long p1, p2, v3

    if-nez p1, :cond_15

    :cond_14
    :goto_0
    return-void

    :cond_15
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ContentEncodingOrder "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1

    :sswitch_data_0
    .sparse-switch
        0x83 -> :sswitch_20
        0x88 -> :sswitch_1f
        0x9b -> :sswitch_1e
        0x9f -> :sswitch_1d
        0xb0 -> :sswitch_1c
        0xb3 -> :sswitch_1b
        0xba -> :sswitch_1a
        0xd7 -> :sswitch_19
        0xe7 -> :sswitch_18
        0xee -> :sswitch_17
        0xf1 -> :sswitch_16
        0xfb -> :sswitch_15
        0x41e7 -> :sswitch_14
        0x4254 -> :sswitch_13
        0x4285 -> :sswitch_12
        0x42f7 -> :sswitch_11
        0x47e1 -> :sswitch_10
        0x47e8 -> :sswitch_f
        0x53ac -> :sswitch_e
        0x53b8 -> :sswitch_d
        0x54b0 -> :sswitch_c
        0x54b2 -> :sswitch_b
        0x54ba -> :sswitch_a
        0x55aa -> :sswitch_9
        0x55b2 -> :sswitch_8
        0x55ee -> :sswitch_7
        0x56aa -> :sswitch_6
        0x56bb -> :sswitch_5
        0x6264 -> :sswitch_4
        0x75a2 -> :sswitch_3
        0x7671 -> :sswitch_2
        0x23e383 -> :sswitch_1
        0x2ad7b1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x55b9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final bp(Lcom/google/android/gms/internal/ads/zzaho;JIII)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzT:Lcom/google/android/gms/internal/ads/zzady;

    const/4 v9, 0x1

    if-eqz v2, :cond_0

    move-object v3, v2

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v8, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzi:Lcom/google/android/gms/internal/ads/zzadw;

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object v1, v3

    move-wide/from16 v3, p2

    invoke-virtual/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzady;->zzc(Lcom/google/android/gms/internal/ads/zzadx;JIIILcom/google/android/gms/internal/ads/zzadw;)V

    goto/16 :goto_8

    :cond_0
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    const-string v3, "S_TEXT/UTF8"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "S_TEXT/WEBVTT"

    const-string v5, "S_TEXT/ASS"

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    const-string v8, "MatroskaExtractor"

    if-le v2, v9, :cond_2

    const-string v2, "Skipping subtitle sample in laced block."

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzahq;->al:J

    const-wide v12, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v10, v12

    if-nez v2, :cond_4

    const-string v2, "Skipping subtitle sample with no duration."

    invoke-static {v8, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    move/from16 v2, p5

    goto/16 :goto_6

    :cond_4
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzahq;->w:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v13

    const v14, 0x2c0618eb

    if-eq v13, v14, :cond_7

    const v5, 0x3e4ca2d8

    if-eq v13, v5, :cond_6

    const v4, 0x54c61e47

    if-eq v13, v4, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    goto :goto_2

    :cond_6
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    goto :goto_2

    :cond_7
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v2, -0x1

    :goto_2
    const-wide/16 v3, 0x3e8

    if-eqz v2, :cond_b

    if-eq v2, v9, :cond_a

    if-ne v2, v6, :cond_9

    const-string v2, "%02d:%02d:%02d.%03d"

    invoke-static {v10, v11, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzahq;->bk(JJLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x19

    goto :goto_3

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    :cond_a
    const-string v2, "%01d:%02d:%02d:%02d"

    const-wide/16 v3, 0x2710

    invoke-static {v10, v11, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzahq;->bk(JJLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x15

    goto :goto_3

    :cond_b
    const-string v2, "%02d:%02d:%02d,%03d"

    invoke-static {v10, v11, v3, v4, v2}, Lcom/google/android/gms/internal/ads/zzahq;->bk(JJLjava/lang/String;)[B

    move-result-object v2

    const/16 v3, 0x13

    :goto_3
    array-length v4, v2

    invoke-static {v2, v7, v12, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v2

    :goto_4
    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    if-ge v2, v3, :cond_d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    aget-byte v3, v3, v2

    if-nez v3, :cond_c

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    goto :goto_5

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_d
    :goto_5
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    invoke-interface {v2, v8, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    add-int v2, v2, p5

    :goto_6
    const/high16 v3, 0x10000000

    and-int v3, p4, v3

    if-eqz v3, :cond_f

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->m:Lcom/google/android/gms/internal/ads/zzed;

    if-le v3, v9, :cond_e

    invoke-virtual {v4, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    goto :goto_7

    :cond_e
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v5, v4, v3, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    add-int/2addr v2, v3

    :cond_f
    :goto_7
    move v14, v2

    iget-object v10, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzi:Lcom/google/android/gms/internal/ads/zzadw;

    move-wide/from16 v11, p2

    move/from16 v13, p4

    move/from16 v15, p6

    move-object/from16 v16, v1

    invoke-interface/range {v10 .. v16}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :goto_8
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahq;->q:Z

    return-void
.end method

.method public final bq(Lcom/google/android/gms/internal/ads/zzacs;[BI)V
    .locals 5

    array-length v0, p2

    add-int v1, v0, p3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->w:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzc()I

    move-result v3

    const/4 v4, 0x0

    if-ge v3, v1, :cond_0

    add-int v3, v1, p3

    invoke-static {p2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    array-length v3, p2

    invoke-virtual {v2, p2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-static {p2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object p2

    invoke-interface {p1, p2, v0, p3}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    return-void
.end method

.method public final br(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzaho;IZ)I
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    const-string v4, "S_TEXT/UTF8"

    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    sget-object v2, Lcom/google/android/gms/internal/ads/zzahq;->d:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzahq;->bq(Lcom/google/android/gms/internal/ads/zzacs;[BI)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahq;->bl()V

    return v1

    :cond_0
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    const-string v5, "S_TEXT/ASS"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzahq;->c:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzahq;->bq(Lcom/google/android/gms/internal/ads/zzacs;[BI)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahq;->bl()V

    return v1

    :cond_1
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    const-string v5, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v2, Lcom/google/android/gms/internal/ads/zzahq;->b:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzahq;->bq(Lcom/google/android/gms/internal/ads/zzacs;[BI)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahq;->bl()V

    return v1

    :cond_2
    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->ai:Z

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzahq;->i:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v5, :cond_11

    iget-boolean v5, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzg:Z

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzahq;->h:Lcom/google/android/gms/internal/ads/zzed;

    if-eqz v5, :cond_d

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->ar:I

    const v12, -0x40000001    # -1.9999999f

    and-int/2addr v5, v12

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->ar:I

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->af:Z

    const/16 v12, 0x80

    if-nez v5, :cond_4

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    invoke-interface {v1, v5, v10, v9}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    aget-byte v5, v5, v10

    and-int/2addr v5, v12

    if-eq v5, v12, :cond_3

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    aget-byte v5, v5, v10

    iput-byte v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->ap:B

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahq;->af:Z

    goto :goto_0

    :cond_3
    const-string v1, "Extension bit is set in signal byte"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_4
    :goto_0
    iget-byte v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->ap:B

    and-int/lit8 v13, v5, 0x1

    if-ne v13, v9, :cond_e

    and-int/2addr v5, v7

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->ar:I

    const/high16 v14, 0x40000000    # 2.0f

    or-int/2addr v13, v14

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->ar:I

    iget-boolean v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->ac:Z

    if-nez v13, :cond_6

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->ao:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v13}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v14

    const/16 v15, 0x8

    invoke-interface {v1, v14, v10, v15}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget v14, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    add-int/2addr v14, v15

    iput v14, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahq;->ac:Z

    if-ne v5, v7, :cond_5

    goto :goto_1

    :cond_5
    const/4 v12, 0x0

    :goto_1
    or-int/2addr v12, v15

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v14

    int-to-byte v12, v12

    aput-byte v12, v14, v10

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-interface {v4, v11, v9, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    add-int/2addr v12, v9

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    invoke-virtual {v13, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-interface {v4, v13, v15, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    add-int/2addr v12, v15

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    :cond_6
    if-ne v5, v7, :cond_e

    iget-boolean v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->bj:Z

    if-nez v5, :cond_7

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    invoke-interface {v1, v5, v10, v9}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    add-int/2addr v5, v9

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    invoke-virtual {v11, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->bd:I

    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahq;->bj:Z

    :cond_7
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->bd:I

    mul-int/lit8 v5, v5, 0x4

    invoke-virtual {v11, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v12

    invoke-interface {v1, v12, v10, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    add-int/2addr v12, v5

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->bd:I

    shr-int/2addr v5, v9

    add-int/2addr v5, v9

    mul-int/lit8 v12, v5, 0x6

    add-int/2addr v12, v7

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    if-eqz v13, :cond_8

    invoke-virtual {v13}, Ljava/nio/Buffer;->capacity()I

    move-result v13

    if-ge v13, v12, :cond_9

    :cond_8
    invoke-static {v12}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    iput-object v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    :cond_9
    int-to-short v5, v5

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v10}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v5, 0x0

    const/4 v13, 0x0

    :goto_2
    iget v14, v0, Lcom/google/android/gms/internal/ads/zzahq;->bd:I

    if-ge v5, v14, :cond_b

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v14

    sub-int v13, v14, v13

    rem-int/lit8 v15, v5, 0x2

    if-nez v15, :cond_a

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    int-to-short v13, v13

    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    goto :goto_3

    :cond_a
    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    invoke-virtual {v15, v13}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_3
    add-int/lit8 v5, v5, 0x1

    move v13, v14

    goto :goto_2

    :cond_b
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    sub-int v5, v3, v5

    sub-int/2addr v5, v13

    and-int/lit8 v13, v14, 0x1

    if-ne v13, v9, :cond_c

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    goto :goto_4

    :cond_c
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    int-to-short v5, v5

    invoke-virtual {v13, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v10}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    :goto_4
    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->an:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->t:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v13, v5, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    invoke-interface {v4, v13, v12, v9}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    add-int/2addr v5, v12

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    goto :goto_5

    :cond_d
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzh:[B

    if-eqz v5, :cond_e

    array-length v12, v5

    invoke-virtual {v6, v5, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    :cond_e
    :goto_5
    iget-object v5, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    const-string v12, "A_OPUS"

    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-eqz p4, :cond_10

    goto :goto_6

    :cond_f
    iget v5, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzf:I

    if-lez v5, :cond_10

    :goto_6
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->ar:I

    const/high16 v12, 0x10000000

    or-int/2addr v5, v12

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->ar:I

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->m:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v5, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v5

    add-int/2addr v5, v3

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    sub-int/2addr v5, v12

    invoke-virtual {v11, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    shr-int/lit8 v12, v5, 0x18

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v13

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v13, v10

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v12

    shr-int/lit8 v13, v5, 0x10

    and-int/lit16 v13, v13, 0xff

    int-to-byte v13, v13

    aput-byte v13, v12, v9

    shr-int/lit8 v12, v5, 0x8

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v13

    and-int/lit16 v12, v12, 0xff

    int-to-byte v12, v12

    aput-byte v12, v13, v7

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v12

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    const/4 v13, 0x3

    aput-byte v5, v12, v13

    invoke-interface {v4, v11, v8, v7}, Lcom/google/android/gms/internal/ads/zzadx;->zzr(Lcom/google/android/gms/internal/ads/zzed;II)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    :cond_10
    iput-boolean v9, v0, Lcom/google/android/gms/internal/ads/zzahq;->ai:Z

    :cond_11
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v5

    add-int/2addr v5, v3

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    const-string v11, "V_MPEG4/ISO/AVC"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    const-string v11, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    goto :goto_a

    :cond_12
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzT:Lcom/google/android/gms/internal/ads/zzady;

    if-nez v3, :cond_13

    goto :goto_8

    :cond_13
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    if-nez v3, :cond_14

    goto :goto_7

    :cond_14
    const/4 v9, 0x0

    :goto_7
    invoke-static {v9}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzT:Lcom/google/android/gms/internal/ads/zzady;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzady;->zzd(Lcom/google/android/gms/internal/ads/zzacs;)V

    :goto_8
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    if-ge v3, v5, :cond_1a

    sub-int v3, v5, v3

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v7

    if-lez v7, :cond_15

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-interface {v4, v6, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    goto :goto_9

    :cond_15
    invoke-interface {v4, v1, v3, v10}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v3

    :goto_9
    iget v7, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    add-int/2addr v7, v3

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    iget v7, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    add-int/2addr v7, v3

    iput v7, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    goto :goto_8

    :cond_16
    :goto_a
    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->bh:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v11

    aput-byte v10, v11, v10

    aput-byte v10, v11, v9

    aput-byte v10, v11, v7

    iget v7, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzX:I

    rsub-int/lit8 v9, v7, 0x4

    :goto_b
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    if-ge v12, v5, :cond_1a

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->s:I

    if-nez v12, :cond_18

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v12

    invoke-static {v7, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    add-int v13, v9, v12

    sub-int v14, v7, v12

    invoke-interface {v1, v11, v13, v14}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    if-lez v12, :cond_17

    invoke-virtual {v6, v11, v9, v12}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    :cond_17
    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    add-int/2addr v12, v7

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v12

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->s:I

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->ak:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v12, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-interface {v4, v12, v8}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    add-int/2addr v12, v8

    iput v12, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    goto :goto_b

    :cond_18
    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v13

    if-lez v13, :cond_19

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v12

    invoke-interface {v4, v6, v12}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    goto :goto_c

    :cond_19
    invoke-interface {v4, v1, v12, v10}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v12

    :goto_c
    iget v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    add-int/2addr v13, v12

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->au:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    add-int/2addr v13, v12

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    iget v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->s:I

    sub-int/2addr v13, v12

    iput v13, v0, Lcom/google/android/gms/internal/ads/zzahq;->s:I

    goto :goto_b

    :cond_1a
    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    const-string v2, "A_VORBIS"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1b

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->as:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v1, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-interface {v4, v1, v8}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    add-int/2addr v1, v8

    iput v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    :cond_1b
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->y:I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzahq;->bl()V

    return v1
.end method

.method public final bs(J)J
    .locals 7

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/zzahq;->am:J

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v2, v0

    if-eqz v4, :cond_0

    const-wide/16 v4, 0x3e8

    sget-object v6, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide v0, p1

    invoke-static/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-string p1, "Can\'t scale timecode prior to timecodeScale being set."

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p1

    throw p1
.end method

.method public final bt(Lcom/google/android/gms/internal/ads/zzacs;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->h:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v1

    if-lt v1, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzc()I

    move-result v1

    if-ge v1, p2, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzc()I

    move-result v1

    add-int/2addr v1, v1

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzF(I)V

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    sub-int v3, p2, v3

    invoke-interface {p1, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 43
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->q:Z

    :goto_0
    iget-boolean v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->q:Z

    if-nez v4, :cond_6e

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->l:Lg/bxw;

    iget-object v5, v4, Lg/bxw;->c:[B

    iget-object v6, v4, Lg/bxw;->f:Lg/gvg;

    iget-object v7, v4, Lg/bxw;->e:Ljava/util/ArrayDeque;

    iget-object v8, v4, Lg/bxw;->a:Lg/fc;

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-virtual {v7}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/v;

    const/16 v16, 0x6

    const-wide/16 v18, -0x1

    const-string v12, "V_VP9"

    const v13, 0x1549a966

    const/16 v21, 0x8

    const/16 v9, 0x4dbb

    const/16 v22, 0x0

    const/16 v3, 0xae

    const/16 v14, 0xa0

    const-wide/16 v24, 0x0

    const-wide v26, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v15, 0x0

    if-eqz v8, :cond_0

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v31

    iget-wide v10, v8, Lg/v;->b:J

    cmp-long v8, v31, v10

    if-gez v8, :cond_1

    :cond_0
    const/4 v8, 0x1

    const/4 v10, 0x0

    goto/16 :goto_10

    :cond_1
    iget-object v4, v4, Lg/bxw;->a:Lg/fc;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/v;

    iget v5, v5, Lg/v;->a:I

    iget-object v4, v4, Lg/fc;->e:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzahq;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzahq;->at:Landroid/util/SparseArray;

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->r:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "A_OPUS"

    if-eq v5, v14, :cond_17

    if-eq v5, v3, :cond_14

    if-eq v5, v9, :cond_12

    const/16 v3, 0x6240

    if-eq v5, v3, :cond_10

    const/16 v3, 0x6d80

    if-eq v5, v3, :cond_e

    if-eq v5, v13, :cond_c

    const v3, 0x1654ae6b

    if-eq v5, v3, :cond_a

    const v3, 0x1c53bb6b

    if-eq v5, v3, :cond_2

    :goto_2
    goto/16 :goto_7

    :cond_2
    iget-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->aj:Z

    if-nez v3, :cond_8

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->r:Lcom/google/android/gms/internal/ads/zzacu;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->ab:Lcom/google/android/gms/internal/ads/zzdu;

    iget-object v6, v4, Lcom/google/android/gms/internal/ads/zzahq;->bf:Lcom/google/android/gms/internal/ads/zzdu;

    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->bi:J

    cmp-long v9, v7, v18

    if-eqz v9, :cond_7

    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->aa:J

    cmp-long v9, v7, v26

    if-eqz v9, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdu;->zza()I

    move-result v7

    if-eqz v7, :cond_7

    if-eqz v6, :cond_7

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzdu;->zza()I

    move-result v7

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdu;->zza()I

    move-result v8

    if-eq v7, v8, :cond_3

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzdu;->zza()I

    move-result v7

    new-array v8, v7, [I

    new-array v9, v7, [J

    new-array v10, v7, [J

    new-array v11, v7, [J

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v7, :cond_4

    invoke-virtual {v5, v12}, Lcom/google/android/gms/internal/ads/zzdu;->zzb(I)J

    move-result-wide v13

    aput-wide v13, v11, v12

    iget-wide v13, v4, Lcom/google/android/gms/internal/ads/zzahq;->bi:J

    invoke-virtual {v6, v12}, Lcom/google/android/gms/internal/ads/zzdu;->zzb(I)J

    move-result-wide v16

    add-long v16, v16, v13

    aput-wide v16, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_4
    add-int/lit8 v6, v7, -0x1

    if-ge v5, v6, :cond_5

    add-int/lit8 v6, v5, 0x1

    aget-wide v12, v9, v6

    aget-wide v16, v9, v5

    sub-long v12, v12, v16

    long-to-int v13, v12

    aput v13, v8, v5

    aget-wide v12, v11, v6

    aget-wide v16, v11, v5

    sub-long v12, v12, v16

    aput-wide v12, v10, v5

    move v5, v6

    goto :goto_4

    :cond_5
    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzahq;->bi:J

    move-wide/from16 v16, v12

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzahq;->aw:J

    add-long v12, v16, v12

    aget-wide v16, v9, v6

    sub-long v12, v12, v16

    long-to-int v5, v12

    aput v5, v8, v6

    iget-wide v12, v4, Lcom/google/android/gms/internal/ads/zzahq;->aa:J

    aget-wide v16, v11, v6

    sub-long v12, v12, v16

    aput-wide v12, v10, v6

    cmp-long v5, v12, v24

    if-gtz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "Discarding last cue point with unexpected duration: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "MatroskaExtractor"

    invoke-static {v7, v5}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v6}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v8

    invoke-static {v9, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v9

    invoke-static {v10, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v10

    invoke-static {v11, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v11

    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/ads/zzace;

    invoke-direct {v5, v8, v9, v10, v11}, Lcom/google/android/gms/internal/ads/zzace;-><init>([I[J[J[J)V

    goto :goto_6

    :cond_7
    :goto_5
    new-instance v5, Lcom/google/android/gms/internal/ads/zzadp;

    iget-wide v6, v4, Lcom/google/android/gms/internal/ads/zzahq;->aa:J

    move-wide/from16 v8, v24

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    :goto_6
    invoke-interface {v3, v5}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->aj:Z

    :cond_8
    iput-object v15, v4, Lcom/google/android/gms/internal/ads/zzahq;->ab:Lcom/google/android/gms/internal/ads/zzdu;

    iput-object v15, v4, Lcom/google/android/gms/internal/ads/zzahq;->bf:Lcom/google/android/gms/internal/ads/zzdu;

    :cond_9
    :goto_7
    const/4 v8, 0x1

    const/4 v10, 0x0

    goto/16 :goto_e

    :cond_a
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->r:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    goto :goto_7

    :cond_b
    const-string v1, "No valid tracks were found"

    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_c
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->am:J

    cmp-long v3, v5, v26

    if-nez v3, :cond_d

    const-wide/32 v5, 0xf4240

    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->am:J

    :cond_d
    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->ay:J

    cmp-long v3, v5, v26

    if-eqz v3, :cond_9

    invoke-virtual {v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzahq;->bs(J)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->aa:J

    goto :goto_7

    :cond_e
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzg:Z

    if-eqz v4, :cond_9

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzh:[B

    if-nez v3, :cond_f

    goto/16 :goto_2

    :cond_f
    const-string v1, "Combining encryption and compression is not supported"

    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_10
    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iget-boolean v4, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzg:Z

    if-eqz v4, :cond_9

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzi:Lcom/google/android/gms/internal/ads/zzadw;

    if-eqz v4, :cond_11

    new-instance v5, Lcom/google/android/gms/internal/ads/zzw;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzv;

    sget-object v7, Lcom/google/android/gms/internal/ads/zzj;->zza:Ljava/util/UUID;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzadw;->zzb:[B

    const-string v8, "video/webm"

    invoke-direct {v6, v7, v15, v8, v4}, Lcom/google/android/gms/internal/ads/zzv;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    const/4 v4, 0x1

    new-array v7, v4, [Lcom/google/android/gms/internal/ads/zzv;

    aput-object v6, v7, v22

    invoke-direct {v5, v15, v7}, Lcom/google/android/gms/internal/ads/zzw;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzv;)V

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzk:Lcom/google/android/gms/internal/ads/zzw;

    goto :goto_7

    :cond_11
    const-string v1, "Encrypted Track found but ContentEncKeyID was not found"

    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_12
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->bg:I

    const/4 v5, -0x1

    if-eq v3, v5, :cond_13

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->n:J

    cmp-long v7, v5, v18

    if-eqz v7, :cond_13

    const v7, 0x1c53bb6b

    if-ne v3, v7, :cond_9

    iput-wide v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->ax:J

    goto/16 :goto_7

    :cond_13
    const-string v1, "Mandatory element SeekID or SeekPosition not found"

    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_14
    iget-object v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    if-eqz v5, :cond_16

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto/16 :goto_8

    :sswitch_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0xb

    goto/16 :goto_9

    :sswitch_1
    const-string v7, "A_FLAC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x16

    goto/16 :goto_9

    :sswitch_2
    const-string v7, "A_EAC3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x11

    goto/16 :goto_9

    :sswitch_3
    const-string v7, "V_MPEG2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v9, 0x3

    goto/16 :goto_9

    :sswitch_4
    const-string v7, "S_TEXT/UTF8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x1b

    goto/16 :goto_9

    :sswitch_5
    const-string v7, "S_TEXT/WEBVTT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x1d

    goto/16 :goto_9

    :sswitch_6
    const-string v7, "V_MPEGH/ISO/HEVC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x8

    goto/16 :goto_9

    :sswitch_7
    const-string v7, "S_TEXT/ASS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x1c

    goto/16 :goto_9

    :sswitch_8
    const-string v7, "A_PCM/INT/LIT"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x18

    goto/16 :goto_9

    :sswitch_9
    const-string v7, "A_PCM/INT/BIG"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x19

    goto/16 :goto_9

    :sswitch_a
    const-string v7, "A_PCM/FLOAT/IEEE"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x1a

    goto/16 :goto_9

    :sswitch_b
    const-string v7, "A_DTS/EXPRESS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x14

    goto/16 :goto_9

    :sswitch_c
    const-string v7, "V_THEORA"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0xa

    goto/16 :goto_9

    :sswitch_d
    const-string v7, "S_HDMV/PGS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x1f

    goto/16 :goto_9

    :sswitch_e
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v9, 0x1

    goto/16 :goto_9

    :sswitch_f
    const-string v7, "V_VP8"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v9, 0x0

    goto/16 :goto_9

    :sswitch_10
    const-string v7, "V_AV1"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v9, 0x2

    goto/16 :goto_9

    :sswitch_11
    const-string v7, "A_DTS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x13

    goto/16 :goto_9

    :sswitch_12
    const-string v7, "A_AC3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x10

    goto/16 :goto_9

    :sswitch_13
    const-string v7, "A_AAC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0xd

    goto/16 :goto_9

    :sswitch_14
    const-string v7, "A_DTS/LOSSLESS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x15

    goto/16 :goto_9

    :sswitch_15
    const-string v7, "S_VOBSUB"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x1e

    goto/16 :goto_9

    :sswitch_16
    const-string v7, "V_MPEG4/ISO/AVC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v9, 0x7

    goto/16 :goto_9

    :sswitch_17
    const-string v7, "V_MPEG4/ISO/ASP"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v9, 0x5

    goto/16 :goto_9

    :sswitch_18
    const-string v7, "S_DVBSUB"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x20

    goto :goto_9

    :sswitch_19
    const-string v7, "V_MS/VFW/FOURCC"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x9

    goto :goto_9

    :sswitch_1a
    const-string v7, "A_MPEG/L3"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0xf

    goto :goto_9

    :sswitch_1b
    const-string v7, "A_MPEG/L2"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0xe

    goto :goto_9

    :sswitch_1c
    const-string v7, "A_VORBIS"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0xc

    goto :goto_9

    :sswitch_1d
    const-string v7, "A_TRUEHD"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x12

    goto :goto_9

    :sswitch_1e
    const-string v7, "A_MS/ACM"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/16 v9, 0x17

    goto :goto_9

    :sswitch_1f
    const-string v7, "V_MPEG4/ISO/SP"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v9, 0x4

    goto :goto_9

    :sswitch_20
    const-string v7, "V_MPEG4/ISO/AP"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    const/4 v9, 0x6

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v9, -0x1

    :goto_9
    packed-switch v9, :pswitch_data_0

    goto :goto_a

    :pswitch_0
    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->r:Lcom/google/android/gms/internal/ads/zzacu;

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzc:I

    invoke-virtual {v3, v5, v7}, Lcom/google/android/gms/internal/ads/zzaho;->zze(Lcom/google/android/gms/internal/ads/zzacu;I)V

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzc:I

    invoke-virtual {v6, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :goto_a
    iput-object v15, v4, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    goto/16 :goto_7

    :cond_16
    const-string v1, "CodecId is missing in TrackEntry element"

    invoke-static {v1, v15}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_17
    iget v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    const/4 v5, 0x2

    if-ne v3, v5, :cond_9

    iget v3, v4, Lcom/google/android/gms/internal/ads/zzahq;->p:I

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzaho;

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->bb:J

    const-wide/16 v24, 0x0

    cmp-long v8, v5, v24

    if-lez v8, :cond_18

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->m:Lcom/google/android/gms/internal/ads/zzed;

    invoke-static/range {v21 .. v21}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->bb:J

    invoke-virtual {v6, v7, v8}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    array-length v7, v6

    invoke-virtual {v5, v6, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzJ([BI)V

    :cond_18
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    if-ge v5, v7, :cond_19

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    aget v7, v7, v5

    add-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_19
    const/4 v5, 0x0

    :goto_c
    iget v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    if-ge v5, v7, :cond_1c

    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->be:J

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzaho;->zze:I

    mul-int v9, v9, v5

    const/16 v10, 0x3e8

    div-int/2addr v9, v10

    int-to-long v9, v9

    add-long v35, v7, v9

    iget v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->ar:I

    if-nez v5, :cond_1b

    iget-boolean v5, v4, Lcom/google/android/gms/internal/ads/zzahq;->aq:Z

    if-nez v5, :cond_1a

    or-int/lit8 v7, v7, 0x1

    :cond_1a
    move/from16 v37, v7

    const/4 v5, 0x0

    goto :goto_d

    :cond_1b
    move/from16 v37, v7

    :goto_d
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    aget v38, v7, v5

    sub-int v39, v6, v38

    move-object/from16 v34, v3

    move-object/from16 v33, v4

    invoke-virtual/range {v33 .. v39}, Lcom/google/android/gms/internal/ads/zzahq;->bp(Lcom/google/android/gms/internal/ads/zzaho;JIII)V

    const/4 v8, 0x1

    add-int/2addr v5, v8

    move/from16 v6, v39

    goto :goto_c

    :cond_1c
    const/4 v8, 0x1

    const/4 v10, 0x0

    iput v10, v4, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    :goto_e
    const/4 v3, 0x0

    :goto_f
    const/16 v22, 0x1

    goto/16 :goto_38

    :goto_10
    iget v11, v4, Lg/bxw;->b:I

    const v9, 0x1f43b675

    if-nez v11, :cond_24

    const/4 v3, 0x4

    invoke-virtual {v6, v1, v8, v10, v3}, Lg/gvg;->g(Lcom/google/android/gms/internal/ads/zzacs;ZZI)J

    move-result-wide v33

    const-wide/16 v35, -0x2

    cmp-long v8, v33, v35

    if-nez v8, :cond_22

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzj()V

    :goto_11
    invoke-interface {v1, v5, v10, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzh([BII)V

    aget-byte v3, v5, v10

    const/4 v8, 0x0

    :goto_12
    const/16 v10, 0x8

    if-ge v8, v10, :cond_1e

    add-int/lit8 v10, v8, 0x1

    sget-object v11, Lg/gvg;->a:[J

    aget-wide v33, v11, v8

    int-to-long v14, v3

    and-long v14, v33, v14

    const-wide/16 v24, 0x0

    cmp-long v11, v14, v24

    if-eqz v11, :cond_1d

    :goto_13
    const/4 v3, -0x1

    goto :goto_14

    :cond_1d
    move v8, v10

    const/16 v14, 0xa0

    const/4 v15, 0x0

    goto :goto_12

    :cond_1e
    const/4 v10, -0x1

    goto :goto_13

    :goto_14
    if-eq v10, v3, :cond_21

    const/4 v3, 0x4

    if-gt v10, v3, :cond_21

    const/4 v3, 0x0

    invoke-static {v5, v10, v3}, Lg/gvg;->f([BIZ)J

    move-result-wide v14

    long-to-int v3, v14

    iget-object v11, v4, Lg/bxw;->a:Lg/fc;

    iget-object v11, v11, Lg/fc;->e:Ljava/lang/Object;

    if-eq v3, v13, :cond_20

    if-eq v3, v9, :cond_20

    const v11, 0x1c53bb6b

    if-eq v3, v11, :cond_20

    const v11, 0x1654ae6b

    if-ne v3, v11, :cond_1f

    goto :goto_16

    :cond_1f
    :goto_15
    const/4 v3, 0x1

    goto :goto_18

    :cond_20
    move v11, v3

    :goto_16
    invoke-interface {v1, v10}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    int-to-long v10, v11

    :goto_17
    const/4 v3, 0x1

    goto :goto_19

    :cond_21
    const v11, 0x1654ae6b

    goto :goto_15

    :goto_18
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    const/4 v3, 0x4

    const/4 v10, 0x0

    const/16 v14, 0xa0

    const/4 v15, 0x0

    const/16 v21, 0x8

    goto :goto_11

    :cond_22
    move-wide/from16 v10, v33

    goto :goto_17

    :goto_19
    cmp-long v13, v10, v18

    if-nez v13, :cond_23

    const/4 v3, 0x0

    const/16 v22, 0x0

    goto/16 :goto_38

    :cond_23
    long-to-int v11, v10

    iput v11, v4, Lg/bxw;->d:I

    iput v3, v4, Lg/bxw;->b:I

    :goto_1a
    const/16 v10, 0x8

    const/4 v11, 0x0

    goto :goto_1b

    :cond_24
    const/4 v3, 0x1

    if-ne v11, v3, :cond_25

    goto :goto_1a

    :goto_1b
    invoke-virtual {v6, v1, v11, v3, v10}, Lg/gvg;->g(Lcom/google/android/gms/internal/ads/zzacs;ZZI)J

    move-result-wide v13

    iput-wide v13, v4, Lg/bxw;->g:J

    const/4 v3, 0x2

    iput v3, v4, Lg/bxw;->b:I

    :cond_25
    iget-object v3, v4, Lg/bxw;->a:Lg/fc;

    iget v10, v4, Lg/bxw;->d:I

    iget-object v3, v3, Lg/fc;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzahq;

    const-wide/16 v33, 0x8

    sparse-switch v10, :sswitch_data_1

    iget-wide v8, v4, Lg/bxw;->g:J

    long-to-int v3, v8

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    const/4 v3, 0x0

    iput v3, v4, Lg/bxw;->b:I

    goto/16 :goto_1

    :sswitch_21
    iget-wide v5, v4, Lg/bxw;->g:J

    const-wide/16 v7, 0x4

    cmp-long v9, v5, v7

    if-eqz v9, :cond_27

    cmp-long v7, v5, v33

    if-nez v7, :cond_26

    goto :goto_1c

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid float size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_27
    :goto_1c
    long-to-int v6, v5

    invoke-virtual {v4, v1, v6}, Lg/bxw;->h(Lcom/google/android/gms/internal/ads/zzacs;I)J

    move-result-wide v7

    const/4 v5, 0x4

    if-ne v6, v5, :cond_28

    long-to-int v5, v7

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    float-to-double v5, v5

    goto :goto_1d

    :cond_28
    invoke-static {v7, v8}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v5

    :goto_1d
    const/16 v7, 0xb5

    if-eq v10, v7, :cond_2a

    const/16 v7, 0x4489

    if-eq v10, v7, :cond_29

    packed-switch v10, :pswitch_data_1

    packed-switch v10, :pswitch_data_2

    :goto_1e
    const/4 v3, 0x0

    goto/16 :goto_1f

    :pswitch_1
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzu:F

    goto :goto_1e

    :pswitch_2
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzt:F

    goto :goto_1e

    :pswitch_3
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzs:F

    goto :goto_1e

    :pswitch_4
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzM:F

    goto :goto_1e

    :pswitch_5
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzL:F

    goto :goto_1e

    :pswitch_6
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzK:F

    goto :goto_1e

    :pswitch_7
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzJ:F

    goto :goto_1e

    :pswitch_8
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzI:F

    goto :goto_1e

    :pswitch_9
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzH:F

    goto :goto_1e

    :pswitch_a
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzG:F

    goto :goto_1e

    :pswitch_b
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzF:F

    goto :goto_1e

    :pswitch_c
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzE:F

    goto :goto_1e

    :pswitch_d
    double-to-float v5, v5

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzD:F

    goto :goto_1e

    :cond_29
    double-to-long v5, v5

    iput-wide v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->ay:J

    goto :goto_1e

    :cond_2a
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    double-to-int v5, v5

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzQ:I

    goto/16 :goto_1e

    :goto_1f
    iput v3, v4, Lg/bxw;->b:I

    goto/16 :goto_f

    :sswitch_22
    iget-wide v5, v4, Lg/bxw;->g:J

    long-to-int v6, v5

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->z:Lg/gvg;

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->m:Lcom/google/android/gms/internal/ads/zzed;

    iget-object v8, v3, Lcom/google/android/gms/internal/ads/zzahq;->at:Landroid/util/SparseArray;

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzahq;->av:Lcom/google/android/gms/internal/ads/zzed;

    iget-object v11, v3, Lcom/google/android/gms/internal/ads/zzahq;->h:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v15, 0xa1

    const-wide/32 v36, 0x7fffffff

    const/16 v13, 0xa3

    if-eq v10, v15, :cond_37

    if-eq v10, v13, :cond_37

    const/16 v5, 0xa5

    if-eq v10, v5, :cond_34

    const/16 v5, 0x41ed

    if-eq v10, v5, :cond_31

    const/16 v5, 0x4255

    if-eq v10, v5, :cond_30

    const/16 v5, 0x47e2

    if-eq v10, v5, :cond_2f

    const/16 v5, 0x53ab

    if-eq v10, v5, :cond_2e

    const/16 v5, 0x63a2

    if-eq v10, v5, :cond_2c

    const/16 v5, 0x7672

    if-ne v10, v5, :cond_2b

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    new-array v5, v6, [B

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzv:[B

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    goto/16 :goto_30

    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected id: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_2c
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    new-array v5, v6, [B

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzj:[B

    const/4 v11, 0x0

    invoke-interface {v1, v5, v11, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    :cond_2d
    :goto_20
    const/4 v3, 0x0

    goto/16 :goto_30

    :cond_2e
    const/4 v11, 0x0

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    invoke-static {v5, v11}, Ljava/util/Arrays;->fill([BB)V

    rsub-int/lit8 v5, v6, 0x4

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    invoke-interface {v1, v7, v5, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v9, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v5

    long-to-int v6, v5

    iput v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->bg:I

    goto :goto_20

    :cond_2f
    const/4 v11, 0x0

    new-array v5, v6, [B

    invoke-interface {v1, v5, v11, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzadw;

    const/4 v8, 0x1

    invoke-direct {v6, v8, v5, v11, v11}, Lcom/google/android/gms/internal/ads/zzadw;-><init>(I[BII)V

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzi:Lcom/google/android/gms/internal/ads/zzadw;

    goto :goto_20

    :cond_30
    const/4 v11, 0x0

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    new-array v5, v6, [B

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzh:[B

    invoke-interface {v1, v5, v11, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    goto :goto_20

    :cond_31
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->a:I

    const v7, 0x64767643

    if-eq v5, v7, :cond_33

    const v7, 0x64766343

    if-ne v5, v7, :cond_32

    goto :goto_21

    :cond_32
    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    goto :goto_20

    :cond_33
    :goto_21
    new-array v5, v6, [B

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzN:[B

    const/4 v3, 0x0

    invoke-interface {v1, v5, v3, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    goto/16 :goto_30

    :cond_34
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    const/4 v9, 0x2

    if-eq v5, v9, :cond_35

    goto :goto_20

    :cond_35
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->p:I

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaho;

    iget v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->o:I

    const/4 v8, 0x4

    if-ne v3, v8, :cond_36

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    const/4 v7, 0x0

    invoke-interface {v1, v3, v7, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    goto/16 :goto_20

    :cond_36
    const/4 v7, 0x0

    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    goto/16 :goto_20

    :cond_37
    const/4 v7, 0x0

    iget v9, v3, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    if-nez v9, :cond_38

    const/16 v9, 0x8

    const/4 v12, 0x1

    invoke-virtual {v5, v1, v7, v12, v9}, Lg/gvg;->g(Lcom/google/android/gms/internal/ads/zzacs;ZZI)J

    move-result-wide v14

    long-to-int v9, v14

    iput v9, v3, Lcom/google/android/gms/internal/ads/zzahq;->p:I

    iget v5, v5, Lg/gvg;->b:I

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->ba:I

    move-wide/from16 v14, v26

    iput-wide v14, v3, Lcom/google/android/gms/internal/ads/zzahq;->al:J

    iput v12, v3, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    invoke-virtual {v11, v7}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    :cond_38
    iget v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->p:I

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/gms/internal/ads/zzaho;

    if-nez v5, :cond_39

    iget v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->ba:I

    sub-int/2addr v6, v5

    invoke-interface {v1, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iput v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    goto/16 :goto_20

    :cond_39
    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4e

    const/4 v7, 0x3

    invoke-virtual {v3, v1, v7}, Lcom/google/android/gms/internal/ads/zzahq;->bt(Lcom/google/android/gms/internal/ads/zzacs;I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    const/16 v29, 0x2

    aget-byte v7, v7, v29

    and-int/lit8 v7, v7, 0x6

    shr-int/2addr v7, v8

    const/16 v9, 0xff

    if-nez v7, :cond_3c

    iput v8, v3, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    if-nez v7, :cond_3a

    new-array v7, v8, [I

    goto :goto_22

    :cond_3a
    array-length v12, v7

    if-lt v12, v8, :cond_3b

    goto :goto_22

    :cond_3b
    add-int/2addr v12, v12

    invoke-static {v12, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v7, v7, [I

    :goto_22
    iput-object v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzahq;->ba:I

    sub-int/2addr v6, v8

    add-int/lit8 v6, v6, -0x3

    const/16 v22, 0x0

    aput v6, v7, v22

    goto/16 :goto_2a

    :cond_3c
    const/4 v8, 0x4

    invoke-virtual {v3, v1, v8}, Lcom/google/android/gms/internal/ads/zzahq;->bt(Lcom/google/android/gms/internal/ads/zzacs;I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v12

    const/16 v20, 0x3

    aget-byte v12, v12, v20

    and-int/2addr v12, v9

    const/16 v28, 0x1

    add-int/lit8 v12, v12, 0x1

    iput v12, v3, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    if-nez v14, :cond_3d

    new-array v14, v12, [I

    goto :goto_23

    :cond_3d
    array-length v15, v14

    if-lt v15, v12, :cond_3e

    goto :goto_23

    :cond_3e
    add-int/2addr v15, v15

    invoke-static {v15, v12}, Ljava/lang/Math;->max(II)I

    move-result v12

    new-array v14, v12, [I

    :goto_23
    iput-object v14, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    const/4 v12, 0x2

    if-ne v7, v12, :cond_3f

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->ba:I

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, -0x4

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    div-int/2addr v6, v7

    const/4 v12, 0x0

    invoke-static {v14, v12, v7, v6}, Ljava/util/Arrays;->fill([IIII)V

    goto/16 :goto_2a

    :cond_3f
    const/4 v12, 0x0

    const/4 v14, 0x1

    if-ne v7, v14, :cond_42

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x4

    :goto_24
    iget v14, v3, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    const/16 v23, -0x1

    add-int/lit8 v14, v14, -0x1

    if-ge v7, v14, :cond_41

    iget-object v14, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    aput v12, v14, v7

    :goto_25
    add-int/lit8 v12, v15, 0x1

    invoke-virtual {v3, v1, v12}, Lcom/google/android/gms/internal/ads/zzahq;->bt(Lcom/google/android/gms/internal/ads/zzacs;I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v14

    aget-byte v14, v14, v15

    and-int/2addr v14, v9

    iget-object v15, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    aget v16, v15, v7

    add-int v16, v16, v14

    aput v16, v15, v7

    if-eq v14, v9, :cond_40

    add-int v8, v8, v16

    add-int/lit8 v7, v7, 0x1

    move v15, v12

    const/4 v12, 0x0

    goto :goto_24

    :cond_40
    move v15, v12

    goto :goto_25

    :cond_41
    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    iget v12, v3, Lcom/google/android/gms/internal/ads/zzahq;->ba:I

    sub-int/2addr v6, v12

    sub-int/2addr v6, v15

    sub-int/2addr v6, v8

    aput v6, v7, v14

    goto/16 :goto_2a

    :cond_42
    const/4 v12, 0x3

    if-ne v7, v12, :cond_4f

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v15, 0x4

    :goto_26
    iget v12, v3, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    const/16 v23, -0x1

    add-int/lit8 v12, v12, -0x1

    if-ge v7, v12, :cond_4a

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    const/16 v22, 0x0

    aput v22, v12, v7

    add-int/lit8 v12, v15, 0x1

    invoke-virtual {v3, v1, v12}, Lcom/google/android/gms/internal/ads/zzahq;->bt(Lcom/google/android/gms/internal/ads/zzacs;I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v14

    aget-byte v14, v14, v15

    if-eqz v14, :cond_49

    const/4 v14, 0x0

    :goto_27
    const/16 v13, 0x8

    if-ge v14, v13, :cond_46

    rsub-int/lit8 v13, v14, 0x7

    const/16 v28, 0x1

    shl-int v13, v28, v13

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v20

    aget-byte v20, v20, v15

    and-int v20, v20, v13

    if-eqz v20, :cond_45

    add-int v9, v12, v14

    invoke-virtual {v3, v1, v9}, Lcom/google/android/gms/internal/ads/zzahq;->bt(Lcom/google/android/gms/internal/ads/zzacs;I)V

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v26

    aget-byte v15, v26, v15

    move/from16 v26, v6

    const/16 v6, 0xff

    and-int/2addr v15, v6

    not-int v13, v13

    and-int/2addr v13, v15

    move/from16 v27, v7

    int-to-long v6, v13

    :goto_28
    if-ge v12, v9, :cond_43

    const/16 v21, 0x8

    shl-long v6, v6, v21

    add-int/lit8 v13, v12, 0x1

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v15

    aget-byte v12, v15, v12

    const/16 v15, 0xff

    and-int/2addr v12, v15

    move-wide/from16 v30, v6

    int-to-long v6, v12

    or-long v6, v30, v6

    move v12, v13

    goto :goto_28

    :cond_43
    if-lez v27, :cond_44

    mul-int/lit8 v14, v14, 0x7

    add-int/lit8 v14, v14, 0x6

    const-wide/16 v12, 0x1

    shl-long/2addr v12, v14

    add-long v12, v12, v18

    sub-long/2addr v6, v12

    :cond_44
    move v15, v9

    goto :goto_29

    :cond_45
    move/from16 v26, v6

    move/from16 v27, v7

    add-int/lit8 v14, v14, 0x1

    const/16 v9, 0xff

    goto :goto_27

    :cond_46
    move/from16 v26, v6

    move/from16 v27, v7

    move v15, v12

    const-wide/16 v6, 0x0

    :goto_29
    const-wide/32 v12, -0x80000000

    cmp-long v9, v6, v12

    if-ltz v9, :cond_48

    cmp-long v9, v6, v36

    if-gtz v9, :cond_48

    iget-object v9, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    long-to-int v7, v6

    if-eqz v27, :cond_47

    add-int/lit8 v6, v27, -0x1

    aget v6, v9, v6

    add-int/2addr v7, v6

    :cond_47
    aput v7, v9, v27

    add-int/2addr v8, v7

    add-int/lit8 v7, v27, 0x1

    move/from16 v6, v26

    const/16 v9, 0xff

    const/16 v13, 0xa3

    goto/16 :goto_26

    :cond_48
    const-string v1, "EBML lacing sample size out of range."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_49
    const/4 v2, 0x0

    const-string v1, "No valid varint length mask found"

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_4a
    move/from16 v26, v6

    iget-object v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->ba:I

    sub-int v7, v26, v7

    sub-int/2addr v7, v15

    sub-int/2addr v7, v8

    aput v7, v6, v12

    :goto_2a
    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    const/16 v22, 0x0

    aget-byte v6, v6, v22

    const/16 v21, 0x8

    shl-int/lit8 v6, v6, 0x8

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v7

    const/16 v28, 0x1

    aget-byte v7, v7, v28

    const/16 v15, 0xff

    and-int/2addr v7, v15

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzahq;->ad:J

    or-int/2addr v6, v7

    int-to-long v6, v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/gms/internal/ads/zzahq;->bs(J)J

    move-result-wide v6

    add-long/2addr v6, v8

    iput-wide v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->be:J

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzaho;->zzd:I

    const/4 v9, 0x2

    if-eq v6, v9, :cond_4d

    const/16 v6, 0xa3

    if-ne v10, v6, :cond_4c

    invoke-virtual {v11}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    aget-byte v6, v6, v9

    const/16 v7, 0x80

    and-int/2addr v6, v7

    if-ne v6, v7, :cond_4b

    const/4 v6, 0x1

    :goto_2b
    const/16 v10, 0xa3

    goto :goto_2c

    :cond_4b
    const/4 v6, 0x0

    goto :goto_2b

    :cond_4c
    const/4 v6, 0x0

    goto :goto_2c

    :cond_4d
    const/4 v6, 0x1

    :goto_2c
    iput v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ar:I

    iput v9, v3, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    const/4 v11, 0x0

    iput v11, v3, Lcom/google/android/gms/internal/ads/zzahq;->ag:I

    :cond_4e
    const/16 v6, 0xa3

    goto :goto_2d

    :cond_4f
    const-string v1, "Unexpected lacing value: 2"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :goto_2d
    if-ne v10, v6, :cond_51

    :goto_2e
    iget v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ag:I

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    if-ge v6, v7, :cond_50

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    aget v6, v7, v6

    const/4 v11, 0x0

    invoke-virtual {v3, v1, v5, v6, v11}, Lcom/google/android/gms/internal/ads/zzahq;->br(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzaho;IZ)I

    move-result v41

    iget-wide v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->be:J

    iget v8, v3, Lcom/google/android/gms/internal/ads/zzahq;->ag:I

    iget v9, v5, Lcom/google/android/gms/internal/ads/zzaho;->zze:I

    mul-int v8, v8, v9

    const/16 v10, 0x3e8

    div-int/2addr v8, v10

    int-to-long v8, v8

    add-long v38, v6, v8

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ar:I

    const/16 v42, 0x0

    move-object/from16 v36, v3

    move-object/from16 v37, v5

    move/from16 v40, v6

    invoke-virtual/range {v36 .. v42}, Lcom/google/android/gms/internal/ads/zzahq;->bp(Lcom/google/android/gms/internal/ads/zzaho;JIII)V

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ag:I

    const/4 v8, 0x1

    add-int/2addr v6, v8

    iput v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ag:I

    goto :goto_2e

    :cond_50
    const/4 v8, 0x1

    const/4 v11, 0x0

    iput v11, v3, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    goto/16 :goto_20

    :cond_51
    :goto_2f
    const/4 v8, 0x1

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ag:I

    iget v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->k:I

    if-ge v6, v7, :cond_2d

    iget-object v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->ae:[I

    aget v9, v7, v6

    invoke-virtual {v3, v1, v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzahq;->br(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzaho;IZ)I

    move-result v9

    aput v9, v7, v6

    iget v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ag:I

    add-int/2addr v6, v8

    iput v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ag:I

    goto :goto_2f

    :goto_30
    iput v3, v4, Lg/bxw;->b:I

    goto/16 :goto_f

    :sswitch_23
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v5

    iget-wide v11, v4, Lg/bxw;->g:J

    add-long/2addr v11, v5

    new-instance v3, Lg/v;

    invoke-direct {v3, v10, v11, v12}, Lg/v;-><init>(IJ)V

    invoke-virtual {v7, v3}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-object v3, v4, Lg/bxw;->a:Lg/fc;

    iget v7, v4, Lg/bxw;->d:I

    iget-wide v10, v4, Lg/bxw;->g:J

    iget-object v3, v3, Lg/fc;->e:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzahq;

    iget-object v12, v3, Lcom/google/android/gms/internal/ads/zzahq;->r:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-static {v12}, Lcom/google/android/gms/internal/ads/zzdb;->zzb(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v8, 0xa0

    if-eq v7, v8, :cond_5e

    const/16 v8, 0xae

    if-eq v7, v8, :cond_5d

    const/16 v8, 0xbb

    if-eq v7, v8, :cond_5c

    const/16 v8, 0x4dbb

    if-eq v7, v8, :cond_5b

    const/16 v8, 0x5035

    if-eq v7, v8, :cond_5a

    const/16 v8, 0x55d0

    if-eq v7, v8, :cond_59

    const v8, 0x18538067

    if-eq v7, v8, :cond_56

    const v8, 0x1c53bb6b

    if-eq v7, v8, :cond_55

    if-eq v7, v9, :cond_52

    goto :goto_31

    :cond_52
    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->aj:Z

    if-nez v5, :cond_53

    iget-boolean v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->bc:Z

    if-eqz v5, :cond_54

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->ax:J

    cmp-long v7, v5, v18

    if-eqz v7, :cond_54

    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/google/android/gms/internal/ads/zzahq;->g:Z

    :cond_53
    :goto_31
    const/4 v7, 0x0

    goto/16 :goto_33

    :cond_54
    const/4 v8, 0x1

    iget-object v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->r:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v6, Lcom/google/android/gms/internal/ads/zzadp;

    iget-wide v9, v3, Lcom/google/android/gms/internal/ads/zzahq;->aa:J

    const-wide/16 v11, 0x0

    invoke-direct {v6, v9, v10, v11, v12}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    invoke-interface {v5, v6}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    iput-boolean v8, v3, Lcom/google/android/gms/internal/ads/zzahq;->aj:Z

    goto :goto_31

    :cond_55
    new-instance v5, Lcom/google/android/gms/internal/ads/zzdu;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(I)V

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->ab:Lcom/google/android/gms/internal/ads/zzdu;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzdu;

    invoke-direct {v5, v6}, Lcom/google/android/gms/internal/ads/zzdu;-><init>(I)V

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->bf:Lcom/google/android/gms/internal/ads/zzdu;

    goto :goto_31

    :cond_56
    iget-wide v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->bi:J

    cmp-long v9, v7, v18

    if-eqz v9, :cond_58

    cmp-long v9, v7, v5

    if-nez v9, :cond_57

    goto :goto_32

    :cond_57
    const-string v1, "Multiple Segment elements not supported"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_58
    :goto_32
    iput-wide v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->bi:J

    iput-wide v10, v3, Lcom/google/android/gms/internal/ads/zzahq;->aw:J

    goto :goto_31

    :cond_59
    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    const/4 v8, 0x1

    iput-boolean v8, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzx:Z

    goto :goto_31

    :cond_5a
    const/4 v8, 0x1

    invoke-virtual {v3, v7}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-boolean v8, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzg:Z

    goto :goto_31

    :cond_5b
    const/4 v5, -0x1

    iput v5, v3, Lcom/google/android/gms/internal/ads/zzahq;->bg:I

    move-wide/from16 v6, v18

    iput-wide v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->n:J

    goto :goto_31

    :cond_5c
    const/4 v5, -0x1

    const/4 v11, 0x0

    iput-boolean v11, v3, Lcom/google/android/gms/internal/ads/zzahq;->az:Z

    goto :goto_31

    :cond_5d
    const/4 v5, -0x1

    const/4 v11, 0x0

    new-instance v6, Lcom/google/android/gms/internal/ads/zzaho;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzl:I

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzm:I

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzn:I

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzo:I

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzp:I

    iput v11, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzq:I

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzr:I

    const/4 v7, 0x0

    iput v7, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzs:F

    iput v7, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzt:F

    iput v7, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzu:F

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzv:[B

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzw:I

    iput-boolean v11, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzx:Z

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzy:I

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzz:I

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzA:I

    const/16 v10, 0x3e8

    iput v10, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzB:I

    const/16 v5, 0xc8

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzC:I

    const/high16 v5, -0x40800000    # -1.0f

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzD:F

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzE:F

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzF:F

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzG:F

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzH:F

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzI:F

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzJ:F

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzK:F

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzL:F

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzM:F

    const/4 v8, 0x1

    iput v8, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzO:I

    const/4 v5, -0x1

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzP:I

    const/16 v5, 0x1f40

    iput v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzQ:I

    const-wide/16 v11, 0x0

    iput-wide v11, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzR:J

    iput-wide v11, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzS:J

    iput-boolean v8, v6, Lcom/google/android/gms/internal/ads/zzaho;->zzV:Z

    const-string v5, "eng"

    iput-object v5, v6, Lcom/google/android/gms/internal/ads/zzaho;->b:Ljava/lang/String;

    iput-object v6, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    goto/16 :goto_31

    :cond_5e
    const/4 v7, 0x0

    const-wide/16 v11, 0x0

    iput-boolean v7, v3, Lcom/google/android/gms/internal/ads/zzahq;->aq:Z

    iput-wide v11, v3, Lcom/google/android/gms/internal/ads/zzahq;->bb:J

    :goto_33
    iput v7, v4, Lg/bxw;->b:I

    goto/16 :goto_e

    :sswitch_24
    const/4 v7, 0x0

    const-wide/32 v36, 0x7fffffff

    iget-wide v5, v4, Lg/bxw;->g:J

    cmp-long v8, v5, v36

    if-gtz v8, :cond_67

    long-to-int v6, v5

    if-nez v6, :cond_5f

    const-string v5, ""

    goto :goto_35

    :cond_5f
    new-array v5, v6, [B

    invoke-interface {v1, v5, v7, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    :goto_34
    if-lez v6, :cond_60

    add-int/lit8 v8, v6, -0x1

    aget-byte v9, v5, v8

    if-nez v9, :cond_60

    move v6, v8

    goto :goto_34

    :cond_60
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v7, v6}, Ljava/lang/String;-><init>([BII)V

    move-object v5, v8

    :goto_35
    const/16 v6, 0x86

    if-eq v10, v6, :cond_66

    const/16 v6, 0x4282

    if-eq v10, v6, :cond_64

    const/16 v6, 0x536e

    if-eq v10, v6, :cond_63

    const v6, 0x22b59c

    if-eq v10, v6, :cond_61

    goto :goto_36

    :cond_61
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->b:Ljava/lang/String;

    :cond_62
    :goto_36
    const/4 v3, 0x0

    goto :goto_37

    :cond_63
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zza:Ljava/lang/String;

    goto :goto_36

    :cond_64
    const-string v3, "webm"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_62

    const-string v3, "matroska"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    goto :goto_36

    :cond_65
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DocType "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_66
    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzahq;->bn(I)V

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzahq;->ah:Lcom/google/android/gms/internal/ads/zzaho;

    iput-object v5, v3, Lcom/google/android/gms/internal/ads/zzaho;->zzb:Ljava/lang/String;

    goto :goto_36

    :goto_37
    iput v3, v4, Lg/bxw;->b:I

    goto/16 :goto_f

    :cond_67
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "String element size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :sswitch_25
    iget-wide v5, v4, Lg/bxw;->g:J

    cmp-long v7, v5, v33

    if-gtz v7, :cond_6d

    long-to-int v6, v5

    invoke-virtual {v4, v1, v6}, Lg/bxw;->h(Lcom/google/android/gms/internal/ads/zzacs;I)J

    move-result-wide v5

    invoke-virtual {v3, v10, v5, v6}, Lcom/google/android/gms/internal/ads/zzahq;->bo(IJ)V

    const/4 v3, 0x0

    iput v3, v4, Lg/bxw;->b:I

    goto/16 :goto_f

    :goto_38
    if-eqz v22, :cond_6a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v4

    iget-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzahq;->g:Z

    if-eqz v6, :cond_68

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->v:J

    iget-wide v4, v0, Lcom/google/android/gms/internal/ads/zzahq;->ax:J

    iput-wide v4, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->g:Z

    const/16 v28, 0x1

    return v28

    :cond_68
    const/16 v28, 0x1

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->aj:Z

    if-eqz v3, :cond_69

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzahq;->v:J

    const-wide/16 v6, -0x1

    cmp-long v5, v3, v6

    if-eqz v5, :cond_69

    iput-wide v3, v2, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    iput-wide v6, v0, Lcom/google/android/gms/internal/ads/zzahq;->v:J

    return v28

    :cond_69
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_6a
    const/4 v3, 0x0

    :goto_39
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzahq;->at:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v3, v2, :cond_6c

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzaho;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzT:Lcom/google/android/gms/internal/ads/zzady;

    if-eqz v2, :cond_6b

    iget-object v4, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzW:Lcom/google/android/gms/internal/ads/zzadx;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzaho;->zzi:Lcom/google/android/gms/internal/ads/zzadw;

    invoke-virtual {v2, v4, v1}, Lcom/google/android/gms/internal/ads/zzady;->zza(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzadw;)V

    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_39

    :cond_6c
    const/16 v23, -0x1

    return v23

    :cond_6d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid integer size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_6e
    const/16 v22, 0x0

    return v22

    :sswitch_data_0
    .sparse-switch
        -0x7ce7f5de -> :sswitch_20
        -0x7ce7f3b0 -> :sswitch_1f
        -0x76567dc0 -> :sswitch_1e
        -0x6a615338 -> :sswitch_1d
        -0x672350af -> :sswitch_1c
        -0x585f4fce -> :sswitch_1b
        -0x585f4fcd -> :sswitch_1a
        -0x51dc40b2 -> :sswitch_19
        -0x37a9c464 -> :sswitch_18
        -0x2016c535 -> :sswitch_17
        -0x2016c4e5 -> :sswitch_16
        -0x19552dbd -> :sswitch_15
        -0x1538b2ba -> :sswitch_14
        0x3c02325 -> :sswitch_13
        0x3c02353 -> :sswitch_12
        0x3c030c5 -> :sswitch_11
        0x4e81333 -> :sswitch_10
        0x4e86155 -> :sswitch_f
        0x4e86156 -> :sswitch_e
        0x5e8da3e -> :sswitch_d
        0x1a8350d6 -> :sswitch_c
        0x2056f406 -> :sswitch_b
        0x25e26ee2 -> :sswitch_a
        0x2b45174d -> :sswitch_9
        0x2b453ce4 -> :sswitch_8
        0x2c0618eb -> :sswitch_7
        0x32fdf009 -> :sswitch_6
        0x3e4ca2d8 -> :sswitch_5
        0x54c61e47 -> :sswitch_4
        0x6bd6c624 -> :sswitch_3
        0x7446132a -> :sswitch_2
        0x7446b0a6 -> :sswitch_1
        0x744ad97d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x83 -> :sswitch_25
        0x86 -> :sswitch_24
        0x88 -> :sswitch_25
        0x9b -> :sswitch_25
        0x9f -> :sswitch_25
        0xa0 -> :sswitch_23
        0xa1 -> :sswitch_22
        0xa3 -> :sswitch_22
        0xa5 -> :sswitch_22
        0xa6 -> :sswitch_23
        0xae -> :sswitch_23
        0xb0 -> :sswitch_25
        0xb3 -> :sswitch_25
        0xb5 -> :sswitch_21
        0xb7 -> :sswitch_23
        0xba -> :sswitch_25
        0xbb -> :sswitch_23
        0xd7 -> :sswitch_25
        0xe0 -> :sswitch_23
        0xe1 -> :sswitch_23
        0xe7 -> :sswitch_25
        0xee -> :sswitch_25
        0xf1 -> :sswitch_25
        0xfb -> :sswitch_25
        0x41e4 -> :sswitch_23
        0x41e7 -> :sswitch_25
        0x41ed -> :sswitch_22
        0x4254 -> :sswitch_25
        0x4255 -> :sswitch_22
        0x4282 -> :sswitch_24
        0x4285 -> :sswitch_25
        0x42f7 -> :sswitch_25
        0x4489 -> :sswitch_21
        0x47e1 -> :sswitch_25
        0x47e2 -> :sswitch_22
        0x47e7 -> :sswitch_23
        0x47e8 -> :sswitch_25
        0x4dbb -> :sswitch_23
        0x5031 -> :sswitch_25
        0x5032 -> :sswitch_25
        0x5034 -> :sswitch_23
        0x5035 -> :sswitch_23
        0x536e -> :sswitch_24
        0x53ab -> :sswitch_22
        0x53ac -> :sswitch_25
        0x53b8 -> :sswitch_25
        0x54b0 -> :sswitch_25
        0x54b2 -> :sswitch_25
        0x54ba -> :sswitch_25
        0x55aa -> :sswitch_25
        0x55b0 -> :sswitch_23
        0x55b2 -> :sswitch_25
        0x55b9 -> :sswitch_25
        0x55ba -> :sswitch_25
        0x55bb -> :sswitch_25
        0x55bc -> :sswitch_25
        0x55bd -> :sswitch_25
        0x55d0 -> :sswitch_23
        0x55d1 -> :sswitch_21
        0x55d2 -> :sswitch_21
        0x55d3 -> :sswitch_21
        0x55d4 -> :sswitch_21
        0x55d5 -> :sswitch_21
        0x55d6 -> :sswitch_21
        0x55d7 -> :sswitch_21
        0x55d8 -> :sswitch_21
        0x55d9 -> :sswitch_21
        0x55da -> :sswitch_21
        0x55ee -> :sswitch_25
        0x56aa -> :sswitch_25
        0x56bb -> :sswitch_25
        0x6240 -> :sswitch_23
        0x6264 -> :sswitch_25
        0x63a2 -> :sswitch_22
        0x6d80 -> :sswitch_23
        0x75a1 -> :sswitch_23
        0x75a2 -> :sswitch_25
        0x7670 -> :sswitch_23
        0x7671 -> :sswitch_25
        0x7672 -> :sswitch_22
        0x7673 -> :sswitch_21
        0x7674 -> :sswitch_21
        0x7675 -> :sswitch_21
        0x22b59c -> :sswitch_24
        0x23e383 -> :sswitch_25
        0x2ad7b1 -> :sswitch_25
        0x114d9b74 -> :sswitch_23
        0x1549a966 -> :sswitch_23
        0x1654ae6b -> :sswitch_23
        0x18538067 -> :sswitch_23
        0x1a45dfa3 -> :sswitch_23
        0x1c53bb6b -> :sswitch_23
        0x1f43b675 -> :sswitch_23
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x55d1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x7673
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzacr;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacu;)V
    .locals 2

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->r:Lcom/google/android/gms/internal/ads/zzacu;

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzahq;->u:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzakj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzahq;->x:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {v0, p1, v1}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzakg;)V

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->r:Lcom/google/android/gms/internal/ads/zzacu;

    return-void
.end method

.method public final zzf(JJ)V
    .locals 0

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->ad:J

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzahq;->j:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->l:Lg/bxw;

    iput p1, p2, Lg/bxw;->b:I

    iget-object p3, p2, Lg/bxw;->e:Ljava/util/ArrayDeque;

    invoke-virtual {p3}, Ljava/util/ArrayDeque;->clear()V

    iget-object p2, p2, Lg/bxw;->f:Lg/gvg;

    iput p1, p2, Lg/gvg;->e:I

    iput p1, p2, Lg/gvg;->b:I

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->z:Lg/gvg;

    iput p1, p2, Lg/gvg;->e:I

    iput p1, p2, Lg/gvg;->b:I

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzahq;->bl()V

    :goto_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzahq;->at:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzaho;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzaho;->zzT:Lcom/google/android/gms/internal/ads/zzady;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzady;->zzb()V

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p1

    new-instance v1, Lg/gqc;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lg/gqc;-><init>(I)V

    iget-object v2, v1, Lg/gqc;->z:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    const-wide/16 v7, 0x400

    cmp-long v9, v3, v5

    if-eqz v9, :cond_1

    cmp-long v5, v3, v7

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-wide v7, v3

    :cond_1
    :goto_0
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    move-object v6, v0

    check-cast v6, Lcom/google/android/gms/internal/ads/zzacg;

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v6, v5, v10, v11, v10}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v12

    iput v11, v1, Lg/gqc;->ab:I

    :goto_1
    const-wide/32 v14, 0x1a45dfa3

    const/4 v5, 0x1

    cmp-long v11, v12, v14

    if-eqz v11, :cond_3

    long-to-int v11, v7

    iget v14, v1, Lg/gqc;->ab:I

    add-int/2addr v14, v5

    iput v14, v1, Lg/gqc;->ab:I

    if-ne v14, v11, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v11

    invoke-virtual {v6, v11, v10, v5, v10}, Lcom/google/android/gms/internal/ads/zzacg;->zzm([BIIZ)Z

    const/16 v5, 0x8

    shl-long v11, v12, v5

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    aget-byte v5, v5, v10

    and-int/lit16 v5, v5, 0xff

    const-wide/16 v13, -0x100

    and-long/2addr v11, v13

    int-to-long v13, v5

    or-long/2addr v11, v13

    move-wide v12, v11

    goto :goto_1

    :cond_3
    invoke-virtual {v1, v0}, Lg/gqc;->bh(Lcom/google/android/gms/internal/ads/zzacs;)J

    move-result-wide v7

    iget v2, v1, Lg/gqc;->ab:I

    int-to-long v11, v2

    const-wide/high16 v13, -0x8000000000000000L

    cmp-long v2, v7, v13

    if-eqz v2, :cond_8

    add-long/2addr v11, v7

    if-nez v9, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v2, v11, v3

    if-ltz v2, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    iget v2, v1, Lg/gqc;->ab:I

    int-to-long v2, v2

    cmp-long v4, v2, v11

    if-gez v4, :cond_7

    invoke-virtual {v1, v0}, Lg/gqc;->bh(Lcom/google/android/gms/internal/ads/zzacs;)J

    move-result-wide v2

    cmp-long v4, v2, v13

    if-nez v4, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {v1, v0}, Lg/gqc;->bh(Lcom/google/android/gms/internal/ads/zzacs;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v4, v2, v7

    if-ltz v4, :cond_8

    if-eqz v4, :cond_5

    long-to-int v3, v2

    invoke-virtual {v6, v3, v10}, Lcom/google/android/gms/internal/ads/zzacg;->zzl(IZ)Z

    iget v2, v1, Lg/gqc;->ab:I

    add-int/2addr v2, v3

    iput v2, v1, Lg/gqc;->ab:I

    goto :goto_2

    :cond_7
    if-nez v4, :cond_8

    return v5

    :cond_8
    :goto_3
    return v10
.end method
