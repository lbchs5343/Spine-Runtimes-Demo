.class public final Lcom/google/android/gms/internal/ads/zzait;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzacr;


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzad;

.field public static final b:[B


# instance fields
.field public final aa:Lcom/google/android/gms/internal/ads/zzafp;

.field public ab:I

.field public ac:I

.field public ad:Lcom/google/android/gms/internal/ads/zzed;

.field public ae:Lcom/google/android/gms/internal/ads/zzacu;

.field public final af:Ljava/util/List;

.field public ag:Z

.field public ah:Z

.field public ai:J

.field public final aj:Lcom/google/android/gms/internal/ads/zzed;

.field public ak:J

.field public c:Lg/eta;

.field public final d:[B

.field public final e:Lcom/google/android/gms/internal/ads/zzed;

.field public f:[Lcom/google/android/gms/internal/ads/zzadx;

.field public g:Lcom/google/android/gms/internal/ads/zzfzo;

.field public h:J

.field public i:[Lcom/google/android/gms/internal/ads/zzadx;

.field public final j:Lcom/google/android/gms/internal/ads/zzft;

.field public final k:Landroid/util/SparseArray;

.field public l:I

.field public final m:Ljava/util/ArrayDeque;

.field public final n:Lcom/google/android/gms/internal/ads/zzed;

.field public final o:Lcom/google/android/gms/internal/ads/zzakg;

.field public p:J

.field public q:Z

.field public r:I

.field public s:I

.field public t:J

.field public final u:Lcom/google/android/gms/internal/ads/zzed;

.field public v:I

.field public w:I

.field public final x:Ljava/util/ArrayDeque;

.field public final y:Lcom/google/android/gms/internal/ads/zzed;

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzait;->b:[B

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    const-string v1, "application/x-emsg"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzait;->a:Lcom/google/android/gms/internal/ads/zzad;

    return-void

    :array_0
    .array-data 1
        -0x5et
        0x39t
        0x4ft
        0x52t
        0x5at
        -0x65t
        0x4ft
        0x14t
        -0x5et
        0x44t
        0x6ct
        0x42t
        0x7ct
        0x64t
        -0x73t
        -0xct
    .end array-data
.end method

.method public constructor <init>()V
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v1, Lcom/google/android/gms/internal/ads/zzakg;->zza:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v5

    const/4 v6, 0x0

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzait;-><init>(Lcom/google/android/gms/internal/ads/zzakg;ILcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzaje;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzadx;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzakg;ILcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzaje;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzadx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->o:Lcom/google/android/gms/internal/ads/zzakg;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzait;->z:I

    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->af:Ljava/util/List;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzafp;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzafp;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->aa:Lcom/google/android/gms/internal/ads/zzafp;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/16 p2, 0x10

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->e:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    sget-object p3, Lcom/google/android/gms/internal/ads/zzfp;->zza:[B

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->n:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    const/4 p3, 0x5

    invoke-direct {p1, p3}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->u:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->aj:Lcom/google/android/gms/internal/ads/zzed;

    new-array p1, p2, [B

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->d:[B

    new-instance p2, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzait;->y:Lcom/google/android/gms/internal/ads/zzed;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->m:Ljava/util/ArrayDeque;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->x:Ljava/util/ArrayDeque;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->k:Landroid/util/SparseArray;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->g:Lcom/google/android/gms/internal/ads/zzfzo;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzait;->ai:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzait;->t:J

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzait;->h:J

    sget-object p1, Lcom/google/android/gms/internal/ads/zzacu;->zza:Lcom/google/android/gms/internal/ads/zzacu;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->ae:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 p1, 0x0

    new-array p2, p1, [Lcom/google/android/gms/internal/ads/zzadx;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzait;->i:[Lcom/google/android/gms/internal/ads/zzadx;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->f:[Lcom/google/android/gms/internal/ads/zzadx;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzft;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzaiq;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/zzaiq;-><init>(Lcom/google/android/gms/internal/ads/zzait;)V

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzft;-><init>(Lcom/google/android/gms/internal/ads/zzfr;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->j:Lcom/google/android/gms/internal/ads/zzft;

    return-void
.end method

.method public static al(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzw;
    .locals 17

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v0, :cond_a

    move-object/from16 v5, p0

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzet;

    iget v7, v6, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    const v8, 0x70737368    # 3.013775E29f

    if-ne v7, v8, :cond_9

    if-nez v4, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v6

    new-instance v7, Lcom/google/android/gms/internal/ads/zzed;

    invoke-direct {v7, v6}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v9

    const/16 v10, 0x20

    if-ge v9, v10, :cond_1

    :goto_1
    move/from16 v16, v3

    :goto_2
    const/4 v2, 0x0

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v7, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v9

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v10

    const-string v11, "PsshAtomUtil"

    if-eq v10, v9, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Advertised atom size ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") does not match buffer size: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v11, v7}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v9

    if-eq v9, v8, :cond_3

    const-string v7, "Atom type is not pssh: "

    invoke-static {v9, v7, v11}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_4

    const-string v7, "Unsupported pssh version: "

    invoke-static {v8, v7, v11}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    new-instance v10, Ljava/util/UUID;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v12

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v14

    invoke-direct {v10, v12, v13, v14, v15}, Ljava/util/UUID;-><init>(JJ)V

    if-ne v8, v9, :cond_5

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v8

    new-array v9, v8, [Ljava/util/UUID;

    const/4 v12, 0x0

    :goto_3
    if-ge v12, v8, :cond_5

    new-instance v13, Ljava/util/UUID;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v14

    move/from16 v16, v3

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzt()J

    move-result-wide v2

    invoke-direct {v13, v14, v15, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    aput-object v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    move/from16 v3, v16

    goto :goto_3

    :cond_5
    move/from16 v16, v3

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v2

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v3

    if-eq v2, v3, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Atom data size ("

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") does not match the bytes left: "

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v11, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_6
    new-array v3, v2, [B

    invoke-virtual {v7, v3, v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzaja;

    invoke-direct {v2, v10}, Lcom/google/android/gms/internal/ads/zzaja;-><init>(Ljava/util/UUID;)V

    :goto_4
    if-nez v2, :cond_7

    const/4 v2, 0x0

    goto :goto_5

    :cond_7
    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzaja;->zza:Ljava/util/UUID;

    :goto_5
    if-nez v2, :cond_8

    const-string v2, "FragmentedMp4Extractor"

    const-string v3, "Skipped pssh atom (failed to extract uuid)"

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    new-instance v3, Lcom/google/android/gms/internal/ads/zzv;

    const-string v7, "video/mp4"

    const/4 v8, 0x0

    invoke-direct {v3, v2, v8, v7, v6}, Lcom/google/android/gms/internal/ads/zzv;-><init>(Ljava/util/UUID;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_9
    move/from16 v16, v3

    :goto_6
    const/4 v8, 0x0

    :goto_7
    add-int/lit8 v3, v16, 0x1

    goto/16 :goto_0

    :cond_a
    const/4 v8, 0x0

    if-nez v4, :cond_b

    return-object v8

    :cond_b
    new-instance v0, Lcom/google/android/gms/internal/ads/zzw;

    invoke-direct {v0, v4}, Lcom/google/android/gms/internal/ads/zzw;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static am(Lcom/google/android/gms/internal/ads/zzed;ILg/jk;)V
    .locals 5

    add-int/lit8 p1, p1, 0x8

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzain;->a:[B

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_3

    and-int/lit8 p1, p1, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p2, Lg/jk;->f:[Z

    iget p1, p2, Lg/jk;->g:I

    invoke-static {p0, v0, p1, v0}, Ljava/util/Arrays;->fill([ZIIZ)V

    return-void

    :cond_1
    iget v3, p2, Lg/jk;->g:I

    iget-object v4, p2, Lg/jk;->d:Lcom/google/android/gms/internal/ads/zzed;

    if-ne v2, v3, :cond_2

    iget-object v3, p2, Lg/jk;->f:[Z

    invoke-static {v3, v0, v2, p1}, Ljava/util/Arrays;->fill([ZIIZ)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result p1

    invoke-virtual {v4, p1}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    iput-boolean v1, p2, Lg/jk;->b:Z

    iput-boolean v1, p2, Lg/jk;->c:Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object p1

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    invoke-virtual {v4, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iput-boolean v0, p2, Lg/jk;->c:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "Senc sample count "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is different from fragment sample count"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p0

    throw p0

    :cond_3
    const-string p0, "Overriding TrackEncryptionBox parameters is unsupported."

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final an(J)V
    .locals 50

    move-object/from16 v0, p0

    :cond_0
    :goto_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzait;->m:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_55

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzes;

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzes;->zza:J

    cmp-long v4, v2, p1

    if-nez v4, :cond_55

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gms/internal/ads/zzes;

    iget v2, v3, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    const v4, 0x6d6f6f76

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzait;->z:I

    const/16 v8, 0xc

    iget-object v11, v0, Lcom/google/android/gms/internal/ads/zzait;->k:Landroid/util/SparseArray;

    if-ne v2, v4, :cond_b

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzes;->zzb:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzait;->al(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzw;

    move-result-object v1

    const v2, 0x6d766578

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzes;->zza(I)Lcom/google/android/gms/internal/ads/zzes;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzes;->zzb:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v4, :cond_4

    iget-object v15, v2, Lcom/google/android/gms/internal/ads/zzes;->zzb:Ljava/util/List;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/gms/internal/ads/zzet;

    iget v13, v15, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    const v12, 0x74726578

    if-ne v13, v12, :cond_1

    iget-object v12, v15, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v12, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v13

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v9

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    move-object/from16 v18, v1

    new-instance v1, Lg/akq;

    invoke-direct {v1, v15, v8, v9, v12}, Lg/akq;-><init>(IIII)V

    invoke-static {v13, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Lg/akq;

    invoke-virtual {v14, v8, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    move-object/from16 v18, v1

    const v1, 0x6d656864

    if-ne v13, v1, :cond_3

    iget-object v1, v15, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v6, 0x8

    invoke-virtual {v1, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v6

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v6

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v6

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v18

    const/16 v8, 0xc

    goto :goto_1

    :cond_4
    move-object/from16 v18, v1

    new-instance v4, Lcom/google/android/gms/internal/ads/zzadf;

    invoke-direct {v4}, Lcom/google/android/gms/internal/ads/zzadf;-><init>()V

    and-int/lit8 v1, v5, 0x10

    if-eqz v1, :cond_5

    const/4 v8, 0x1

    goto :goto_3

    :cond_5
    const/4 v8, 0x0

    :goto_3
    new-instance v10, Lcom/google/android/gms/internal/ads/zzaip;

    invoke-direct {v10, v0}, Lcom/google/android/gms/internal/ads/zzaip;-><init>(Lcom/google/android/gms/internal/ads/zzait;)V

    const/4 v9, 0x0

    move-wide v5, v6

    move-object/from16 v7, v18

    invoke-static/range {v3 .. v10}, Lcom/google/android/gms/internal/ads/zzain;->zzf(Lcom/google/android/gms/internal/ads/zzes;Lcom/google/android/gms/internal/ads/zzadf;JLcom/google/android/gms/internal/ads/zzw;ZZLcom/google/android/gms/internal/ads/zzfwh;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_7

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    new-instance v6, Lg/eta;

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzait;->ae:Lcom/google/android/gms/internal/ads/zzacu;

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    invoke-interface {v7, v3, v8}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v7

    iget v8, v5, Lcom/google/android/gms/internal/ads/zzaje;->zza:I

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/akq;

    goto :goto_5

    :cond_6
    invoke-virtual {v14, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lg/akq;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_5
    invoke-direct {v6, v7, v4, v8}, Lg/eta;-><init>(Lcom/google/android/gms/internal/ads/zzadx;Lcom/google/android/gms/internal/ads/zzajh;Lg/akq;)V

    iget v4, v5, Lcom/google/android/gms/internal/ads/zzaje;->zza:I

    invoke-virtual {v11, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzait;->ai:J

    iget-wide v4, v5, Lcom/google/android/gms/internal/ads/zzaje;->zze:J

    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, v0, Lcom/google/android/gms/internal/ads/zzait;->ai:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzait;->ae:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ne v3, v2, :cond_9

    const/4 v3, 0x1

    goto :goto_6

    :cond_9
    const/4 v3, 0x0

    :goto_6
    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v5, v4, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget v6, v5, Lcom/google/android/gms/internal/ads/zzaje;->zza:I

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lg/eta;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzaje;->zza:I

    invoke-virtual {v14}, Landroid/util/SparseArray;->size()I

    move-result v7

    const/4 v10, 0x1

    if-ne v7, v10, :cond_a

    const/4 v9, 0x0

    invoke-virtual {v14, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/akq;

    goto :goto_8

    :cond_a
    invoke-virtual {v14, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/akq;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_8
    iput-object v4, v6, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iput-object v5, v6, Lg/eta;->e:Lg/akq;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v5, v6, Lg/eta;->f:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    invoke-virtual {v6}, Lg/eta;->m()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    const v4, 0x6d6f6f66

    if-ne v2, v4, :cond_54

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzes;->zzc:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_9
    if-ge v9, v1, :cond_4e

    iget-object v4, v3, Lcom/google/android/gms/internal/ads/zzes;->zzc:Ljava/util/List;

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/gms/internal/ads/zzes;

    iget v8, v4, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    const v10, 0x74726166

    if-ne v8, v10, :cond_4d

    const v8, 0x74666864

    invoke-virtual {v4, v8}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v10, 0x8

    invoke-virtual {v8, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v10

    sget-object v12, Lcom/google/android/gms/internal/ads/zzain;->a:[B

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/eta;

    if-nez v12, :cond_c

    const/4 v12, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_e

    :cond_c
    iget-object v13, v12, Lg/eta;->i:Lg/jk;

    and-int/lit8 v14, v10, 0x1

    if-eqz v14, :cond_d

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v14

    iput-wide v14, v13, Lg/jk;->m:J

    iput-wide v14, v13, Lg/jk;->p:J

    :cond_d
    iget-object v14, v12, Lg/eta;->e:Lg/akq;

    and-int/lit8 v15, v10, 0x2

    if-eqz v15, :cond_e

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v15

    add-int/lit8 v15, v15, -0x1

    goto :goto_a

    :cond_e
    iget v15, v14, Lg/akq;->b:I

    :goto_a
    and-int/lit8 v18, v10, 0x8

    if-eqz v18, :cond_f

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v18

    move/from16 v6, v18

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    goto :goto_b

    :cond_f
    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    iget v6, v14, Lg/akq;->c:I

    :goto_b
    and-int/lit8 v7, v10, 0x10

    if-eqz v7, :cond_10

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    goto :goto_c

    :cond_10
    iget v7, v14, Lg/akq;->d:I

    :goto_c
    and-int/lit8 v10, v10, 0x20

    if-eqz v10, :cond_11

    invoke-virtual {v8}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    goto :goto_d

    :cond_11
    iget v8, v14, Lg/akq;->a:I

    :goto_d
    new-instance v10, Lg/akq;

    invoke-direct {v10, v15, v6, v7, v8}, Lg/akq;-><init>(IIII)V

    iput-object v10, v13, Lg/jk;->h:Lg/akq;

    :goto_e
    if-nez v12, :cond_12

    move/from16 v20, v1

    move/from16 v27, v5

    move/from16 v44, v9

    const/4 v7, 0x0

    const/16 v10, 0xc

    const/4 v13, 0x1

    :goto_f
    const/16 v15, 0x8

    goto/16 :goto_30

    :cond_12
    iget-object v6, v12, Lg/eta;->i:Lg/jk;

    iget-wide v7, v6, Lg/jk;->j:J

    iget-boolean v10, v6, Lg/jk;->o:Z

    invoke-virtual {v12}, Lg/eta;->m()V

    const/4 v13, 0x1

    iput-boolean v13, v12, Lg/eta;->d:Z

    const v14, 0x74666474

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v14

    if-eqz v14, :cond_14

    and-int/lit8 v15, v5, 0x2

    if-nez v15, :cond_14

    iget-object v7, v14, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    invoke-static {v8}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v8

    if-ne v8, v13, :cond_13

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v7

    goto :goto_10

    :cond_13
    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v7

    :goto_10
    iput-wide v7, v6, Lg/jk;->j:J

    iput-boolean v13, v6, Lg/jk;->o:Z

    goto :goto_11

    :cond_14
    iput-wide v7, v6, Lg/jk;->j:J

    iput-boolean v10, v6, Lg/jk;->o:Z

    :goto_11
    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzes;->zzb:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    const/4 v10, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_12
    const v15, 0x7472756e

    if-ge v10, v8, :cond_16

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v2, v20

    check-cast v2, Lcom/google/android/gms/internal/ads/zzet;

    move/from16 v20, v1

    iget v1, v2, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    if-ne v1, v15, :cond_15

    iget-object v1, v2, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v1

    if-lez v1, :cond_15

    add-int/2addr v14, v1

    add-int/lit8 v13, v13, 0x1

    :cond_15
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, v20

    goto :goto_12

    :cond_16
    move/from16 v20, v1

    const/4 v1, 0x0

    iput v1, v12, Lg/eta;->a:I

    iput v1, v12, Lg/eta;->l:I

    iput v1, v12, Lg/eta;->g:I

    iput v13, v6, Lg/jk;->e:I

    iput v14, v6, Lg/jk;->g:I

    iget-object v1, v6, Lg/jk;->q:[I

    array-length v1, v1

    if-ge v1, v13, :cond_17

    new-array v1, v13, [J

    iput-object v1, v6, Lg/jk;->i:[J

    new-array v1, v13, [I

    iput-object v1, v6, Lg/jk;->q:[I

    :cond_17
    iget-object v1, v6, Lg/jk;->a:[I

    array-length v1, v1

    if-ge v1, v14, :cond_18

    mul-int/lit8 v14, v14, 0x7d

    div-int/lit8 v14, v14, 0x64

    new-array v1, v14, [I

    iput-object v1, v6, Lg/jk;->a:[I

    new-array v1, v14, [J

    iput-object v1, v6, Lg/jk;->l:[J

    new-array v1, v14, [Z

    iput-object v1, v6, Lg/jk;->n:[Z

    new-array v1, v14, [Z

    iput-object v1, v6, Lg/jk;->f:[Z

    :cond_18
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    :goto_13
    const-wide/16 v21, 0x0

    if-ge v1, v8, :cond_2f

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    const/16 v24, 0x10

    move-object/from16 v14, v23

    check-cast v14, Lcom/google/android/gms/internal/ads/zzet;

    iget v13, v14, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    if-ne v13, v15, :cond_2e

    add-int/lit8 v13, v2, 0x1

    iget-object v14, v14, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v15

    move/from16 v25, v1

    iget-object v1, v12, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    move/from16 v26, v2

    iget-object v2, v6, Lg/jk;->h:Lg/akq;

    sget v27, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    move/from16 v27, v5

    iget-object v5, v6, Lg/jk;->q:[I

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v28

    aput v28, v5, v26

    iget-object v5, v6, Lg/jk;->i:[J

    move-object/from16 v28, v7

    move/from16 v29, v8

    iget-wide v7, v6, Lg/jk;->m:J

    aput-wide v7, v5, v26

    and-int/lit8 v30, v15, 0x1

    if-eqz v30, :cond_19

    move-object/from16 v30, v5

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    move-wide/from16 v31, v7

    int-to-long v7, v5

    add-long v7, v31, v7

    aput-wide v7, v30, v26

    :cond_19
    and-int/lit8 v5, v15, 0x4

    if-eqz v5, :cond_1a

    const/4 v5, 0x1

    goto :goto_14

    :cond_1a
    const/4 v5, 0x0

    :goto_14
    iget v7, v2, Lg/akq;->a:I

    if-eqz v5, :cond_1b

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    :cond_1b
    and-int/lit16 v8, v15, 0x100

    move/from16 v30, v5

    and-int/lit16 v5, v15, 0x200

    move/from16 v31, v5

    and-int/lit16 v5, v15, 0x400

    and-int/lit16 v15, v15, 0x800

    move/from16 v32, v5

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzh:[J

    if-eqz v5, :cond_20

    move/from16 v33, v7

    array-length v7, v5

    move-object/from16 v34, v5

    const/4 v5, 0x1

    if-ne v7, v5, :cond_1c

    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzi:[J

    if-nez v5, :cond_1d

    :cond_1c
    :goto_15
    move v5, v8

    goto :goto_17

    :cond_1d
    const/16 v16, 0x0

    aget-wide v35, v34, v16

    cmp-long v7, v35, v21

    if-nez v7, :cond_1e

    move v5, v8

    goto :goto_16

    :cond_1e
    aget-wide v37, v5, v16

    add-long v39, v35, v37

    move v5, v8

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzd:J

    sget-object v45, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v41, 0xf4240

    move-wide/from16 v43, v7

    invoke-static/range {v39 .. v45}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v7

    move-wide/from16 v34, v7

    iget-wide v7, v1, Lcom/google/android/gms/internal/ads/zzaje;->zze:J

    cmp-long v36, v34, v7

    if-gez v36, :cond_1f

    goto :goto_17

    :cond_1f
    :goto_16
    iget-object v7, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzi:[J

    const/16 v16, 0x0

    aget-wide v21, v7, v16

    goto :goto_17

    :cond_20
    move/from16 v33, v7

    goto :goto_15

    :goto_17
    iget-object v7, v6, Lg/jk;->a:[I

    iget-object v8, v6, Lg/jk;->l:[J

    move/from16 v34, v5

    iget-object v5, v6, Lg/jk;->n:[Z

    move-object/from16 v35, v5

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzb:I

    move-object/from16 v36, v7

    const/4 v7, 0x2

    if-ne v5, v7, :cond_21

    and-int/lit8 v5, v27, 0x1

    if-eqz v5, :cond_21

    const/4 v5, 0x1

    goto :goto_18

    :cond_21
    const/4 v5, 0x0

    :goto_18
    iget-object v7, v6, Lg/jk;->q:[I

    aget v7, v7, v26

    add-int/2addr v7, v10

    move-object/from16 v23, v8

    move/from16 v44, v9

    iget-wide v8, v1, Lcom/google/android/gms/internal/ads/zzaje;->zzc:J

    move-wide/from16 v41, v8

    iget-wide v8, v6, Lg/jk;->j:J

    :goto_19
    if-ge v10, v7, :cond_2d

    if-eqz v34, :cond_22

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v1

    :goto_1a
    move/from16 v45, v5

    goto :goto_1b

    :cond_22
    iget v1, v2, Lg/akq;->c:I

    goto :goto_1a

    :goto_1b
    const-string v5, "Unexpected negative value: "

    if-ltz v1, :cond_2c

    if-eqz v31, :cond_23

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v26

    move/from16 v49, v26

    move/from16 v26, v7

    move/from16 v7, v49

    goto :goto_1c

    :cond_23
    move/from16 v26, v7

    iget v7, v2, Lg/akq;->d:I

    :goto_1c
    if-ltz v7, :cond_2b

    if-eqz v32, :cond_24

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    goto :goto_1d

    :cond_24
    if-nez v10, :cond_26

    if-eqz v30, :cond_25

    move/from16 v5, v33

    const/4 v10, 0x0

    goto :goto_1d

    :cond_25
    const/4 v10, 0x0

    :cond_26
    iget v5, v2, Lg/akq;->a:I

    :goto_1d
    if-eqz v15, :cond_27

    invoke-virtual {v14}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v37

    move-object/from16 v46, v2

    move/from16 v2, v37

    :goto_1e
    move/from16 v47, v13

    move-object/from16 v48, v14

    goto :goto_1f

    :cond_27
    move-object/from16 v46, v2

    const/4 v2, 0x0

    goto :goto_1e

    :goto_1f
    int-to-long v13, v2

    add-long/2addr v13, v8

    sub-long v37, v13, v21

    const-wide/32 v39, 0xf4240

    sget-object v43, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static/range {v37 .. v43}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v13

    aput-wide v13, v23, v10

    iget-boolean v2, v6, Lg/jk;->o:Z

    if-nez v2, :cond_28

    iget-object v2, v12, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    move-wide/from16 v37, v13

    iget-wide v13, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzh:J

    add-long v13, v37, v13

    aput-wide v13, v23, v10

    :cond_28
    aput v7, v36, v10

    shr-int/lit8 v2, v5, 0x10

    const/16 v17, 0x1

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_29

    if-eqz v45, :cond_2a

    if-nez v10, :cond_29

    const/4 v2, 0x1

    const/4 v10, 0x0

    goto :goto_20

    :cond_29
    const/4 v2, 0x0

    goto :goto_20

    :cond_2a
    const/4 v2, 0x1

    :goto_20
    aput-boolean v2, v35, v10

    int-to-long v1, v1

    add-long/2addr v8, v1

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, v26

    move/from16 v5, v45

    move-object/from16 v2, v46

    move/from16 v13, v47

    move-object/from16 v14, v48

    goto/16 :goto_19

    :cond_2b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_2c
    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_2d
    move/from16 v26, v7

    move/from16 v47, v13

    iput-wide v8, v6, Lg/jk;->j:J

    move/from16 v10, v26

    move/from16 v2, v47

    goto :goto_21

    :cond_2e
    move/from16 v25, v1

    move/from16 v26, v2

    move/from16 v27, v5

    move-object/from16 v28, v7

    move/from16 v29, v8

    move/from16 v44, v9

    :goto_21
    add-int/lit8 v1, v25, 0x1

    move/from16 v5, v27

    move-object/from16 v7, v28

    move/from16 v8, v29

    move/from16 v9, v44

    const v15, 0x7472756e

    goto/16 :goto_13

    :cond_2f
    move/from16 v27, v5

    move/from16 v44, v9

    const/16 v24, 0x10

    iget-object v1, v12, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v2, v6, Lg/jk;->h:Lg/akq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v2, Lg/akq;->b:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzaje;->zza(I)Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v1

    const v2, 0x7361697a

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v2

    if-eqz v2, :cond_36

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v1, Lcom/google/android/gms/internal/ads/zzajf;->zzd:I

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    const/4 v13, 0x1

    and-int/2addr v7, v13

    if-ne v7, v13, :cond_30

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_30
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v8

    iget v9, v6, Lg/jk;->g:I

    if-gt v8, v9, :cond_35

    if-nez v7, :cond_33

    iget-object v7, v6, Lg/jk;->f:[Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    :goto_22
    if-ge v9, v8, :cond_32

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v12

    add-int/2addr v10, v12

    if-le v12, v5, :cond_31

    const/4 v12, 0x1

    goto :goto_23

    :cond_31
    const/4 v12, 0x0

    :goto_23
    aput-boolean v12, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_22

    :cond_32
    const/4 v9, 0x0

    goto :goto_25

    :cond_33
    if-le v7, v5, :cond_34

    const/4 v2, 0x1

    goto :goto_24

    :cond_34
    const/4 v2, 0x0

    :goto_24
    mul-int v10, v7, v8

    iget-object v5, v6, Lg/jk;->f:[Z

    const/4 v9, 0x0

    invoke-static {v5, v9, v8, v2}, Ljava/util/Arrays;->fill([ZIIZ)V

    :goto_25
    iget-object v2, v6, Lg/jk;->f:[Z

    iget v5, v6, Lg/jk;->g:I

    invoke-static {v2, v8, v5, v9}, Ljava/util/Arrays;->fill([ZIIZ)V

    if-lez v10, :cond_36

    iget-object v2, v6, Lg/jk;->d:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    const/4 v13, 0x1

    iput-boolean v13, v6, Lg/jk;->b:Z

    iput-boolean v13, v6, Lg/jk;->c:Z

    goto :goto_26

    :cond_35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Saiz sample count "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " is greater than fragment sample count"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_36
    :goto_26
    const v2, 0x7361696f

    invoke-virtual {v4, v2}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v2

    if-eqz v2, :cond_39

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v10, 0x8

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v5

    and-int/lit8 v7, v5, 0x1

    const/4 v13, 0x1

    if-ne v7, v13, :cond_37

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_37
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzp()I

    move-result v7

    if-ne v7, v13, :cond_3a

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v5

    iget-wide v7, v6, Lg/jk;->p:J

    if-nez v5, :cond_38

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v9

    goto :goto_27

    :cond_38
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v9

    :goto_27
    add-long/2addr v7, v9

    iput-wide v7, v6, Lg/jk;->p:J

    :cond_39
    const/4 v2, 0x0

    goto :goto_28

    :cond_3a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected saio entry count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :goto_28
    const v5, 0x73656e63

    invoke-virtual {v4, v5}, Lcom/google/android/gms/internal/ads/zzes;->zzb(I)Lcom/google/android/gms/internal/ads/zzet;

    move-result-object v5

    if-eqz v5, :cond_3b

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v9, 0x0

    invoke-static {v5, v9, v6}, Lcom/google/android/gms/internal/ads/zzait;->am(Lcom/google/android/gms/internal/ads/zzed;ILg/jk;)V

    :cond_3b
    if-eqz v1, :cond_3c

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajf;->zzb:Ljava/lang/String;

    move-object/from16 v30, v1

    goto :goto_29

    :cond_3c
    move-object/from16 v30, v2

    :goto_29
    move-object v1, v2

    move-object v5, v1

    const/4 v7, 0x0

    :goto_2a
    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzes;->zzb:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_3f

    iget-object v8, v4, Lcom/google/android/gms/internal/ads/zzes;->zzb:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzet;

    iget-object v9, v8, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    const v10, 0x73626770

    const v12, 0x73656967

    if-ne v8, v10, :cond_3d

    const/16 v10, 0xc

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    if-ne v8, v12, :cond_3e

    move-object v1, v9

    goto :goto_2b

    :cond_3d
    const/16 v10, 0xc

    const v13, 0x73677064

    if-ne v8, v13, :cond_3e

    invoke-virtual {v9, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v8

    if-ne v8, v12, :cond_3e

    move-object v5, v9

    :cond_3e
    :goto_2b
    add-int/lit8 v7, v7, 0x1

    goto :goto_2a

    :cond_3f
    const/16 v10, 0xc

    if-eqz v1, :cond_40

    if-nez v5, :cond_41

    :cond_40
    const/4 v13, 0x1

    goto/16 :goto_2d

    :cond_41
    const/16 v15, 0x8

    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v7

    invoke-static {v7}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v7

    const/4 v8, 0x4

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    const/4 v13, 0x1

    if-ne v7, v13, :cond_42

    invoke-virtual {v1, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_42
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v1

    if-ne v1, v13, :cond_48

    invoke-virtual {v5, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v1

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    if-ne v1, v13, :cond_44

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v12

    cmp-long v1, v12, v21

    if-eqz v1, :cond_43

    goto :goto_2c

    :cond_43
    const-string v1, "Variable length description in sgpd found (unsupported)"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_44
    const/4 v7, 0x2

    if-lt v1, v7, :cond_45

    invoke-virtual {v5, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_45
    :goto_2c
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmp-long v1, v12, v14

    if-nez v1, :cond_47

    const/4 v13, 0x1

    invoke-virtual {v5, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v1

    and-int/lit16 v7, v1, 0xf0

    shr-int/lit8 v33, v7, 0x4

    and-int/lit8 v34, v1, 0xf

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v1

    if-ne v1, v13, :cond_49

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v31

    const/16 v1, 0x10

    new-array v7, v1, [B

    const/4 v9, 0x0

    invoke-virtual {v5, v7, v9, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    if-nez v31, :cond_46

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v1

    new-array v2, v1, [B

    invoke-virtual {v5, v2, v9, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    :cond_46
    move-object/from16 v35, v2

    iput-boolean v13, v6, Lg/jk;->b:Z

    new-instance v28, Lcom/google/android/gms/internal/ads/zzajf;

    const/16 v29, 0x1

    move-object/from16 v32, v7

    invoke-direct/range {v28 .. v35}, Lcom/google/android/gms/internal/ads/zzajf;-><init>(ZLjava/lang/String;I[BII[B)V

    move-object/from16 v1, v28

    iput-object v1, v6, Lg/jk;->k:Lcom/google/android/gms/internal/ads/zzajf;

    goto :goto_2d

    :cond_47
    const-string v1, "Entry count in sgpd != 1 (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_48
    const-string v1, "Entry count in sbgp != 1 (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_49
    :goto_2d
    iget-object v1, v4, Lcom/google/android/gms/internal/ads/zzes;->zzb:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v9, 0x0

    :goto_2e
    if-ge v9, v1, :cond_4c

    iget-object v2, v4, Lcom/google/android/gms/internal/ads/zzes;->zzb:Ljava/util/List;

    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzet;

    iget v5, v2, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    const v7, 0x75756964

    if-ne v5, v7, :cond_4a

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v15, 0x8

    invoke-virtual {v2, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzait;->d:[B

    const/4 v7, 0x0

    const/16 v8, 0x10

    invoke-virtual {v2, v5, v7, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    sget-object v12, Lcom/google/android/gms/internal/ads/zzait;->b:[B

    invoke-static {v5, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-static {v2, v8, v6}, Lcom/google/android/gms/internal/ads/zzait;->am(Lcom/google/android/gms/internal/ads/zzed;ILg/jk;)V

    goto :goto_2f

    :cond_4a
    const/4 v7, 0x0

    const/16 v8, 0x10

    const/16 v15, 0x8

    :cond_4b
    :goto_2f
    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    :cond_4c
    const/4 v7, 0x0

    goto/16 :goto_f

    :cond_4d
    move/from16 v20, v1

    move/from16 v27, v5

    move/from16 v44, v9

    const/4 v7, 0x0

    const/16 v10, 0xc

    const/4 v13, 0x1

    const/16 v15, 0x8

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    :goto_30
    add-int/lit8 v9, v44, 0x1

    move/from16 v1, v20

    move/from16 v5, v27

    goto/16 :goto_9

    :cond_4e
    const/4 v2, 0x0

    const/4 v7, 0x0

    const-wide v18, -0x7fffffffffffffffL    # -4.9E-324

    iget-object v1, v3, Lcom/google/android/gms/internal/ads/zzes;->zzb:Ljava/util/List;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzait;->al(Ljava/util/List;)Lcom/google/android/gms/internal/ads/zzw;

    move-result-object v1

    if-eqz v1, :cond_50

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v3

    const/4 v9, 0x0

    :goto_31
    if-ge v9, v3, :cond_50

    invoke-virtual {v11, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/eta;

    iget-object v5, v4, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v6, v4, Lg/eta;->i:Lg/jk;

    iget-object v6, v6, Lg/jk;->h:Lg/akq;

    sget v8, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iget v6, v6, Lg/akq;->b:I

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzaje;->zza(I)Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v5

    if-eqz v5, :cond_4f

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzajf;->zzb:Ljava/lang/String;

    goto :goto_32

    :cond_4f
    move-object v5, v2

    :goto_32
    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzw;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzw;

    move-result-object v5

    iget-object v6, v4, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzF(Lcom/google/android/gms/internal/ads/zzw;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v5

    iget-object v4, v4, Lg/eta;->f:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_31

    :cond_50
    iget-wide v1, v0, Lcom/google/android/gms/internal/ads/zzait;->t:J

    cmp-long v3, v1, v18

    if-eqz v3, :cond_0

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v13, 0x0

    :goto_33
    if-ge v13, v1, :cond_53

    invoke-virtual {v11, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eta;

    iget-wide v3, v0, Lcom/google/android/gms/internal/ads/zzait;->t:J

    iget v5, v2, Lg/eta;->g:I

    :goto_34
    iget-object v6, v2, Lg/eta;->i:Lg/jk;

    iget v7, v6, Lg/jk;->g:I

    if-ge v5, v7, :cond_52

    iget-object v7, v6, Lg/jk;->l:[J

    aget-wide v8, v7, v5

    cmp-long v7, v8, v3

    if-gtz v7, :cond_52

    iget-object v6, v6, Lg/jk;->n:[Z

    aget-boolean v6, v6, v5

    if-eqz v6, :cond_51

    iput v5, v2, Lg/eta;->h:I

    :cond_51
    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    :cond_52
    add-int/lit8 v13, v13, 0x1

    goto :goto_33

    :cond_53
    move-wide/from16 v2, v18

    iput-wide v2, v0, Lcom/google/android/gms/internal/ads/zzait;->t:J

    goto/16 :goto_0

    :cond_54
    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzc(Lcom/google/android/gms/internal/ads/zzes;)V

    goto/16 :goto_0

    :cond_55
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzait;->ao()V

    return-void
.end method

.method public final ao()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzait;->w:I

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzacs;Lcom/google/android/gms/internal/ads/zzadn;)I
    .locals 36
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :goto_0
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->w:I

    const v4, 0x73696478

    const/4 v6, 0x2

    iget-object v7, v0, Lcom/google/android/gms/internal/ads/zzait;->j:Lcom/google/android/gms/internal/ads/zzft;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzait;->m:Ljava/util/ArrayDeque;

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzait;->k:Landroid/util/SparseArray;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v2, :cond_37

    const-string v14, "FragmentedMp4Extractor"

    iget-object v15, v0, Lcom/google/android/gms/internal/ads/zzait;->x:Ljava/util/ArrayDeque;

    if-eq v2, v12, :cond_29

    const-wide v16, 0x7fffffffffffffffL

    const/4 v4, 0x3

    if-eq v2, v6, :cond_24

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzait;->c:Lg/eta;

    if-nez v2, :cond_9

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v2

    move-object v8, v11

    const/4 v6, 0x0

    const/16 v18, 0x2

    :goto_1
    if-ge v6, v2, :cond_4

    invoke-virtual {v9, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    move-object/from16 v5, v19

    check-cast v5, Lg/eta;

    iget-boolean v3, v5, Lg/eta;->d:Z

    iget-object v13, v5, Lg/eta;->i:Lg/jk;

    if-nez v3, :cond_0

    iget v10, v5, Lg/eta;->g:I

    iget-object v12, v5, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget v12, v12, Lcom/google/android/gms/internal/ads/zzajh;->zzb:I

    if-eq v10, v12, :cond_3

    :cond_0
    if-eqz v3, :cond_1

    iget v10, v5, Lg/eta;->a:I

    iget v12, v13, Lg/jk;->e:I

    if-ne v10, v12, :cond_1

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    iget-object v3, v5, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[J

    iget v10, v5, Lg/eta;->g:I

    aget-wide v12, v3, v10

    goto :goto_2

    :cond_2
    iget-object v3, v13, Lg/jk;->i:[J

    iget v10, v5, Lg/eta;->a:I

    aget-wide v12, v3, v10

    :goto_2
    cmp-long v3, v12, v16

    if-gez v3, :cond_3

    move-object v8, v5

    move-wide/from16 v16, v12

    :cond_3
    :goto_3
    add-int/lit8 v6, v6, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_4
    if-nez v8, :cond_6

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzait;->p:J

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-int v3, v2

    if-ltz v3, :cond_5

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzait;->ao()V

    goto :goto_0

    :cond_5
    const-string v1, "Offset to end of mdat was negative."

    invoke-static {v1, v11}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_6
    iget-boolean v2, v8, Lg/eta;->d:Z

    if-nez v2, :cond_7

    iget-object v2, v8, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzajh;->zzc:[J

    iget v3, v8, Lg/eta;->g:I

    aget-wide v5, v2, v3

    goto :goto_4

    :cond_7
    iget-object v2, v8, Lg/eta;->i:Lg/jk;

    iget-object v2, v2, Lg/jk;->i:[J

    iget v3, v8, Lg/eta;->a:I

    aget-wide v5, v2, v3

    :goto_4
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v2

    sub-long/2addr v5, v2

    long-to-int v2, v5

    if-gez v2, :cond_8

    const-string v2, "Ignoring negative offset to sample data."

    invoke-static {v14, v2}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    :cond_8
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iput-object v8, v0, Lcom/google/android/gms/internal/ads/zzait;->c:Lg/eta;

    move-object v2, v8

    goto :goto_5

    :cond_9
    const/16 v18, 0x2

    :goto_5
    iget-object v3, v2, Lg/eta;->i:Lg/jk;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzait;->w:I

    const/4 v6, 0x6

    if-ne v5, v4, :cond_12

    iget-boolean v5, v2, Lg/eta;->d:Z

    if-nez v5, :cond_a

    iget-object v5, v2, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzajh;->zzd:[I

    iget v8, v2, Lg/eta;->g:I

    aget v5, v5, v8

    goto :goto_6

    :cond_a
    iget-object v5, v3, Lg/jk;->a:[I

    iget v8, v2, Lg/eta;->g:I

    aget v5, v5, v8

    :goto_6
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    const/4 v8, 0x1

    iput-boolean v8, v0, Lcom/google/android/gms/internal/ads/zzait;->q:Z

    iget v8, v2, Lg/eta;->g:I

    iget v9, v2, Lg/eta;->h:I

    if-ge v8, v9, :cond_f

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    invoke-virtual {v2}, Lg/eta;->q()Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v1

    if-nez v1, :cond_b

    goto :goto_7

    :cond_b
    iget-object v5, v3, Lg/jk;->d:Lcom/google/android/gms/internal/ads/zzed;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajf;->zzd:I

    if-eqz v1, :cond_c

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_c
    iget v1, v2, Lg/eta;->g:I

    iget-boolean v7, v3, Lg/jk;->b:Z

    if-eqz v7, :cond_d

    iget-object v3, v3, Lg/jk;->f:[Z

    aget-boolean v1, v3, v1

    if-eqz v1, :cond_d

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    invoke-virtual {v5, v1}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    :cond_d
    :goto_7
    invoke-virtual {v2}, Lg/eta;->n()Z

    move-result v1

    if-nez v1, :cond_e

    iput-object v11, v0, Lcom/google/android/gms/internal/ads/zzait;->c:Lg/eta;

    :cond_e
    :goto_8
    const/4 v1, 0x3

    goto/16 :goto_15

    :cond_f
    iget-object v8, v2, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v8, v8, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget v8, v8, Lcom/google/android/gms/internal/ads/zzaje;->zzg:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_10

    add-int/lit8 v5, v5, -0x8

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    const/16 v5, 0x8

    invoke-interface {v1, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :cond_10
    iget-object v5, v2, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    const-string v8, "audio/ac4"

    iget-object v5, v5, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    const/4 v8, 0x7

    invoke-virtual {v2, v5, v8}, Lg/eta;->p(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    iget-object v9, v0, Lcom/google/android/gms/internal/ads/zzait;->y:Lcom/google/android/gms/internal/ads/zzed;

    invoke-static {v5, v9}, Lcom/google/android/gms/internal/ads/zzabu;->zzb(ILcom/google/android/gms/internal/ads/zzed;)V

    iget-object v5, v2, Lg/eta;->f:Lcom/google/android/gms/internal/ads/zzadx;

    invoke-interface {v5, v9, v8}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    add-int/2addr v5, v8

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    const/4 v8, 0x0

    goto :goto_9

    :cond_11
    iget v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    const/4 v8, 0x0

    invoke-virtual {v2, v5, v8}, Lg/eta;->p(II)I

    move-result v5

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    :goto_9
    iget v9, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    add-int/2addr v9, v5

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    const/4 v5, 0x4

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzait;->w:I

    iput v8, v0, Lcom/google/android/gms/internal/ads/zzait;->r:I

    :cond_12
    iget-object v5, v2, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v9, v2, Lg/eta;->f:Lcom/google/android/gms/internal/ads/zzadx;

    iget-boolean v10, v2, Lg/eta;->d:Z

    if-nez v10, :cond_13

    iget-object v3, v5, Lcom/google/android/gms/internal/ads/zzajh;->zzf:[J

    iget v5, v2, Lg/eta;->g:I

    aget-wide v12, v3, v5

    goto :goto_a

    :cond_13
    iget v5, v2, Lg/eta;->g:I

    iget-object v3, v3, Lg/jk;->l:[J

    aget-wide v12, v3, v5

    :goto_a
    iget v3, v8, Lcom/google/android/gms/internal/ads/zzaje;->zzj:I

    if-nez v3, :cond_14

    :goto_b
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    if-ge v3, v5, :cond_1f

    sub-int/2addr v5, v3

    const/4 v10, 0x0

    invoke-interface {v9, v1, v5, v10}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v3

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    add-int/2addr v5, v3

    iput v5, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    goto :goto_b

    :cond_14
    const/4 v10, 0x0

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzait;->u:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v14

    aput-byte v10, v14, v10

    const/16 v23, 0x1

    aput-byte v10, v14, v23

    aput-byte v10, v14, v18

    add-int/lit8 v10, v3, 0x1

    const/16 v19, 0x4

    rsub-int/lit8 v3, v3, 0x4

    :goto_c
    iget v4, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    iget v11, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    if-ge v4, v11, :cond_1f

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzait;->r:I

    const-string v11, "video/hevc"

    if-nez v4, :cond_1b

    invoke-interface {v1, v14, v3, v10}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    const/4 v4, 0x0

    invoke-virtual {v5, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v16

    if-lez v16, :cond_1a

    add-int/lit8 v6, v16, -0x1

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzait;->r:I

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzait;->n:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v6, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    const/4 v4, 0x4

    invoke-interface {v9, v6, v4}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    const/4 v6, 0x1

    invoke-interface {v9, v5, v6}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget-object v6, v0, Lcom/google/android/gms/internal/ads/zzait;->f:[Lcom/google/android/gms/internal/ads/zzadx;

    array-length v6, v6

    const/16 v19, 0x4

    const-string v4, "video/avc"

    if-lez v6, :cond_18

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    aget-byte v16, v14, v19

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_16

    move/from16 v18, v3

    and-int/lit8 v3, v16, 0x1f

    move-object/from16 v22, v5

    const/4 v5, 0x6

    if-eq v3, v5, :cond_15

    goto :goto_e

    :cond_15
    :goto_d
    const/4 v3, 0x1

    goto :goto_10

    :cond_16
    move/from16 v18, v3

    move-object/from16 v22, v5

    const/4 v5, 0x6

    :goto_e
    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    and-int/lit8 v3, v16, 0x7e

    const/16 v23, 0x1

    shr-int/lit8 v3, v3, 0x1

    const/16 v6, 0x27

    if-ne v3, v6, :cond_17

    goto :goto_d

    :cond_17
    :goto_f
    const/4 v3, 0x0

    goto :goto_10

    :cond_18
    move/from16 v18, v3

    move-object/from16 v22, v5

    const/4 v5, 0x6

    goto :goto_f

    :goto_10
    iput-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzait;->ah:Z

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    add-int/lit8 v3, v3, 0x5

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    add-int v3, v3, v18

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzait;->q:Z

    if-nez v3, :cond_19

    iget-object v3, v2, Lg/eta;->c:Lcom/google/android/gms/internal/ads/zzajh;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzajh;->zza:Lcom/google/android/gms/internal/ads/zzaje;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v3, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const/16 v19, 0x4

    aget-byte v3, v14, v19

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzfp;->zzi(B)Z

    move-result v3

    if-eqz v3, :cond_19

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzait;->q:Z

    :cond_19
    :goto_11
    move/from16 v3, v18

    move-object/from16 v5, v22

    const/4 v6, 0x6

    const/4 v11, 0x0

    goto/16 :goto_c

    :cond_1a
    const-string v1, "Invalid NAL length"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_1b
    move/from16 v18, v3

    move-object/from16 v22, v5

    const/4 v5, 0x6

    iget-boolean v3, v0, Lcom/google/android/gms/internal/ads/zzait;->ah:Z

    if-eqz v3, :cond_1d

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzait;->aj:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzI(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    iget v6, v0, Lcom/google/android/gms/internal/ads/zzait;->r:I

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzait;->r:I

    invoke-interface {v9, v3, v4}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    iget v4, v0, Lcom/google/android/gms/internal/ads/zzait;->r:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzfp;->zzb([BI)I

    move-result v5

    iget-object v6, v8, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzK(I)V

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzad;->zzq:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1c

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzft;->zza()I

    move-result v6

    if-eq v5, v6, :cond_1c

    iget-object v5, v8, Lcom/google/android/gms/internal/ads/zzaje;->zzf:Lcom/google/android/gms/internal/ads/zzad;

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzad;->zzq:I

    invoke-virtual {v7, v5}, Lcom/google/android/gms/internal/ads/zzft;->zzd(I)V

    :cond_1c
    invoke-virtual {v7, v12, v13, v3}, Lcom/google/android/gms/internal/ads/zzft;->zzb(JLcom/google/android/gms/internal/ads/zzed;)V

    invoke-virtual {v2}, Lg/eta;->o()I

    move-result v3

    and-int/lit8 v3, v3, 0x5

    if-eqz v3, :cond_1e

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzft;->zzc()V

    goto :goto_12

    :cond_1d
    const/4 v5, 0x0

    invoke-interface {v9, v1, v4, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Lcom/google/android/gms/internal/ads/zzn;IZ)I

    move-result v4

    :cond_1e
    :goto_12
    iget v3, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    add-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzait;->l:I

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzait;->r:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzait;->r:I

    goto :goto_11

    :cond_1f
    invoke-virtual {v2}, Lg/eta;->o()I

    move-result v27

    invoke-virtual {v2}, Lg/eta;->q()Lcom/google/android/gms/internal/ads/zzajf;

    move-result-object v1

    if-eqz v1, :cond_20

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzajf;->zzc:Lcom/google/android/gms/internal/ads/zzadw;

    move-object/from16 v30, v1

    goto :goto_13

    :cond_20
    const/16 v30, 0x0

    :goto_13
    iget v1, v0, Lcom/google/android/gms/internal/ads/zzait;->ac:I

    const/16 v29, 0x0

    move/from16 v28, v1

    move-object/from16 v24, v9

    move-wide/from16 v25, v12

    invoke-interface/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    :cond_21
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_23

    invoke-virtual {v15}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/vb;

    iget v3, v0, Lcom/google/android/gms/internal/ads/zzait;->s:I

    iget v4, v1, Lg/vb;->c:I

    sub-int/2addr v3, v4

    iput v3, v0, Lcom/google/android/gms/internal/ads/zzait;->s:I

    iget-wide v3, v1, Lg/vb;->a:J

    iget-boolean v5, v1, Lg/vb;->b:Z

    if-eqz v5, :cond_22

    add-long v3, v3, v25

    :cond_22
    move-wide v6, v3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzait;->i:[Lcom/google/android/gms/internal/ads/zzadx;

    array-length v4, v3

    const/4 v12, 0x0

    :goto_14
    if-ge v12, v4, :cond_21

    aget-object v5, v3, v12

    iget v9, v1, Lg/vb;->c:I

    iget v10, v0, Lcom/google/android/gms/internal/ads/zzait;->s:I

    const/4 v11, 0x0

    const/4 v8, 0x1

    invoke-interface/range {v5 .. v11}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_14

    :cond_23
    invoke-virtual {v2}, Lg/eta;->n()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzait;->c:Lg/eta;

    goto/16 :goto_8

    :goto_15
    iput v1, v0, Lcom/google/android/gms/internal/ads/zzait;->w:I

    const/16 v21, 0x0

    return v21

    :cond_24
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_16
    if-ge v3, v2, :cond_26

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lg/eta;

    iget-object v5, v5, Lg/eta;->i:Lg/jk;

    iget-boolean v6, v5, Lg/jk;->c:Z

    if-eqz v6, :cond_25

    iget-wide v5, v5, Lg/jk;->p:J

    cmp-long v7, v5, v16

    if-gez v7, :cond_25

    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/eta;

    move-wide/from16 v16, v5

    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_26
    if-nez v4, :cond_27

    const/4 v2, 0x3

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzait;->w:I

    goto/16 :goto_0

    :cond_27
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v2

    sub-long v2, v16, v2

    long-to-int v3, v2

    if-ltz v3, :cond_28

    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    iget-object v2, v4, Lg/eta;->i:Lg/jk;

    iget-object v3, v2, Lg/jk;->d:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zze()I

    move-result v3

    const/4 v5, 0x0

    invoke-interface {v1, v4, v5, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget-object v3, v2, Lg/jk;->d:Lcom/google/android/gms/internal/ads/zzed;

    invoke-virtual {v3, v5}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    iput-boolean v5, v2, Lg/jk;->c:Z

    goto/16 :goto_0

    :cond_28
    const-string v1, "Offset to encryption data was negative."

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_29
    const/16 v18, 0x2

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    long-to-int v3, v2

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    sub-int/2addr v3, v2

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ad:Lcom/google/android/gms/internal/ads/zzed;

    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v5

    const/16 v6, 0x8

    invoke-interface {v1, v5, v6, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzet;

    iget v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ab:I

    invoke-direct {v3, v5, v2}, Lcom/google/android/gms/internal/ads/zzet;-><init>(ILcom/google/android/gms/internal/ads/zzed;)V

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v5

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2a

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzes;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzes;->zzd(Lcom/google/android/gms/internal/ads/zzet;)V

    goto/16 :goto_1f

    :cond_2a
    iget v2, v3, Lcom/google/android/gms/internal/ads/zzev;->zzd:I

    if-ne v2, v4, :cond_2e

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v3

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v11

    if-nez v3, :cond_2b

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v7

    :goto_17
    add-long/2addr v7, v5

    move-wide/from16 v32, v7

    move-wide v7, v3

    move-wide/from16 v3, v32

    goto :goto_18

    :cond_2b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v7

    goto :goto_17

    :goto_18
    const-wide/32 v9, 0xf4240

    sget-object v13, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v5

    const/4 v9, 0x2

    invoke-virtual {v2, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v14

    new-array v15, v14, [I

    new-array v9, v14, [J

    new-array v10, v14, [J

    new-array v13, v14, [J

    move-wide/from16 v17, v5

    move-object/from16 v16, v9

    const/4 v9, 0x0

    :goto_19
    if-ge v9, v14, :cond_2d

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v20

    const/high16 v21, -0x80000000

    and-int v21, v20, v21

    if-nez v21, :cond_2c

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v21

    const v24, 0x7fffffff

    and-int v20, v20, v24

    aput v20, v15, v9

    aput-wide v3, v16, v9

    aput-wide v17, v13, v9

    add-long v7, v7, v21

    move/from16 v21, v9

    move-object/from16 v17, v10

    const-wide/32 v9, 0xf4240

    move-object/from16 v18, v13

    sget-object v13, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    move-wide/from16 v24, v3

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-wide/from16 v16, v5

    move-object/from16 v5, v18

    invoke-static/range {v7 .. v13}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v9

    aget-wide v26, v5, v21

    sub-long v26, v9, v26

    aput-wide v26, v4, v21

    const/4 v6, 0x4

    invoke-virtual {v2, v6}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    aget v13, v15, v21

    move-wide/from16 v18, v7

    int-to-long v6, v13

    add-long v6, v24, v6

    add-int/lit8 v13, v21, 0x1

    move-wide/from16 v32, v16

    move-object/from16 v16, v3

    move-wide/from16 v34, v9

    move-object v10, v4

    move-wide v3, v6

    move v9, v13

    move-wide/from16 v7, v18

    move-object v13, v5

    move-wide/from16 v17, v34

    move-wide/from16 v5, v32

    goto :goto_19

    :cond_2c
    const-string v1, "Unhandled indirect reference"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_2d
    move-object v4, v10

    move-object/from16 v3, v16

    move-wide/from16 v16, v5

    move-object v5, v13

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v6, Lcom/google/android/gms/internal/ads/zzace;

    invoke-direct {v6, v15, v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzace;-><init>([I[J[J[J)V

    invoke-static {v2, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    iget-object v3, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzait;->h:J

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzait;->ae:Lcom/google/android/gms/internal/ads/zzacu;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v3, v2}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/google/android/gms/internal/ads/zzait;->ag:Z

    goto/16 :goto_1f

    :cond_2e
    const v4, 0x656d7367

    if-ne v2, v4, :cond_36

    iget-object v2, v3, Lcom/google/android/gms/internal/ads/zzet;->zza:Lcom/google/android/gms/internal/ads/zzed;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzait;->i:[Lcom/google/android/gms/internal/ads/zzadx;

    array-length v3, v3

    if-eqz v3, :cond_36

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v3

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzain;->zza(I)I

    move-result v3

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v3, :cond_30

    const/4 v6, 0x1

    if-eq v3, v6, :cond_2f

    const-string v2, "Skipping unsupported emsg version: "

    invoke-static {v3, v2, v14}, Lg/dub;->g(ILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1f

    :cond_2f
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v10

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v6

    sget-object v12, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v8, 0xf4240

    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v13

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    invoke-static/range {v6 .. v12}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v8

    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzy(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzy(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v27, v6

    move-wide/from16 v29, v8

    move-wide v6, v4

    :goto_1a
    move-object/from16 v25, v3

    move-object/from16 v26, v11

    move-wide v9, v13

    goto :goto_1c

    :cond_30
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzy(C)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzy(C)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v28

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v24

    sget-object v30, Ljava/math/RoundingMode;->FLOOR:Ljava/math/RoundingMode;

    const-wide/32 v26, 0xf4240

    invoke-static/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v6

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzait;->h:J

    cmp-long v10, v8, v4

    if-eqz v10, :cond_31

    add-long/2addr v8, v6

    move-wide v13, v8

    goto :goto_1b

    :cond_31
    move-wide v13, v4

    :goto_1b
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    invoke-static/range {v24 .. v30}, Lcom/google/android/gms/internal/ads/zzen;->zzu(JJJLjava/math/RoundingMode;)J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v16

    move-wide/from16 v27, v8

    move-wide/from16 v29, v16

    goto :goto_1a

    :goto_1c
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v3

    new-array v3, v3, [B

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v8

    const/4 v11, 0x0

    invoke-virtual {v2, v3, v11, v8}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    new-instance v24, Lcom/google/android/gms/internal/ads/zzafo;

    move-object/from16 v31, v3

    invoke-direct/range {v24 .. v31}, Lcom/google/android/gms/internal/ads/zzafo;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    move-object/from16 v2, v24

    new-instance v3, Lcom/google/android/gms/internal/ads/zzed;

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzait;->aa:Lcom/google/android/gms/internal/ads/zzafp;

    invoke-virtual {v8, v2}, Lcom/google/android/gms/internal/ads/zzafp;->zza(Lcom/google/android/gms/internal/ads/zzafo;)[B

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/google/android/gms/internal/ads/zzed;-><init>([B)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v12

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzait;->i:[Lcom/google/android/gms/internal/ads/zzadx;

    array-length v8, v2

    const/4 v11, 0x0

    :goto_1d
    if-ge v11, v8, :cond_32

    aget-object v13, v2, v11

    const/4 v14, 0x0

    invoke-virtual {v3, v14}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-interface {v13, v3, v12}, Lcom/google/android/gms/internal/ads/zzadx;->zzq(Lcom/google/android/gms/internal/ads/zzed;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1d

    :cond_32
    cmp-long v2, v9, v4

    if-nez v2, :cond_33

    new-instance v2, Lg/vb;

    const/4 v8, 0x1

    invoke-direct {v2, v12, v8, v6, v7}, Lg/vb;-><init>(IZJ)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->s:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzait;->s:I

    goto :goto_1f

    :cond_33
    invoke-virtual {v15}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_34

    new-instance v2, Lg/vb;

    const/4 v5, 0x0

    invoke-direct {v2, v12, v5, v9, v10}, Lg/vb;-><init>(IZJ)V

    invoke-virtual {v15, v2}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->s:I

    add-int/2addr v2, v12

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzait;->s:I

    goto :goto_1f

    :cond_34
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzait;->i:[Lcom/google/android/gms/internal/ads/zzadx;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_36

    aget-object v8, v2, v4

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x1

    invoke-interface/range {v8 .. v14}, Lcom/google/android/gms/internal/ads/zzadx;->zzs(JIIILcom/google/android/gms/internal/ads/zzadw;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_35
    invoke-interface {v1, v3}, Lcom/google/android/gms/internal/ads/zzacs;->zzk(I)V

    :cond_36
    :goto_1f
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzait;->an(J)V

    goto/16 :goto_0

    :cond_37
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzait;->e:Lcom/google/android/gms/internal/ads/zzed;

    if-nez v2, :cond_39

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    const/16 v5, 0x8

    const/4 v6, 0x1

    const/4 v10, 0x0

    invoke-interface {v1, v2, v10, v5, v6}, Lcom/google/android/gms/internal/ads/zzacs;->zzn([BIIZ)Z

    move-result v2

    if-nez v2, :cond_38

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzft;->zzc()V

    const/16 v20, -0x1

    return v20

    :cond_38
    iput v5, v0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    invoke-virtual {v3, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzg()I

    move-result v2

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ab:I

    :cond_39
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    const-wide/16 v10, 0x1

    cmp-long v2, v5, v10

    if-nez v2, :cond_3a

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v2

    const/16 v5, 0x8

    invoke-interface {v1, v2, v5, v5}, Lcom/google/android/gms/internal/ads/zzacs;->zzi([BII)V

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    add-int/2addr v2, v5

    iput v2, v0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzw()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    goto :goto_21

    :cond_3a
    const-wide/16 v10, 0x0

    cmp-long v2, v5, v10

    if-nez v2, :cond_3d

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzd()J

    move-result-wide v5

    const-wide/16 v10, -0x1

    cmp-long v2, v5, v10

    if-nez v2, :cond_3c

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-virtual {v8}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzes;

    iget-wide v5, v2, Lcom/google/android/gms/internal/ads/zzes;->zza:J

    goto :goto_20

    :cond_3b
    move-wide v5, v10

    :cond_3c
    :goto_20
    cmp-long v2, v5, v10

    if-eqz v2, :cond_3d

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v10

    sub-long/2addr v5, v10

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    int-to-long v10, v2

    add-long/2addr v5, v10

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    :cond_3d
    :goto_21
    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    int-to-long v10, v2

    cmp-long v2, v5, v10

    if-ltz v2, :cond_4a

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v5

    sub-long/2addr v5, v10

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ab:I

    const v7, 0x6d646174

    const v10, 0x6d6f6f66

    if-eq v2, v10, :cond_3e

    if-ne v2, v7, :cond_3f

    :cond_3e
    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ag:Z

    if-nez v2, :cond_3f

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ae:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v11, Lcom/google/android/gms/internal/ads/zzadp;

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzait;->ai:J

    invoke-direct {v11, v12, v13, v5, v6}, Lcom/google/android/gms/internal/ads/zzadp;-><init>(JJ)V

    invoke-interface {v2, v11}, Lcom/google/android/gms/internal/ads/zzacu;->zzO(Lcom/google/android/gms/internal/ads/zzadq;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ag:Z

    :cond_3f
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ab:I

    if-ne v2, v10, :cond_40

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_22
    if-ge v11, v2, :cond_40

    invoke-virtual {v9, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lg/eta;

    iget-object v12, v12, Lg/eta;->i:Lg/jk;

    iput-wide v5, v12, Lg/jk;->p:J

    iput-wide v5, v12, Lg/jk;->m:J

    add-int/lit8 v11, v11, 0x1

    goto :goto_22

    :cond_40
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ab:I

    if-ne v2, v7, :cond_41

    const/4 v7, 0x0

    iput-object v7, v0, Lcom/google/android/gms/internal/ads/zzait;->c:Lg/eta;

    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    add-long/2addr v5, v2

    iput-wide v5, v0, Lcom/google/android/gms/internal/ads/zzait;->p:J

    const/4 v9, 0x2

    iput v9, v0, Lcom/google/android/gms/internal/ads/zzait;->w:I

    goto/16 :goto_0

    :cond_41
    const v5, 0x6d6f6f76

    if-eq v2, v5, :cond_48

    const v5, 0x7472616b

    if-eq v2, v5, :cond_48

    const v5, 0x6d646961

    if-eq v2, v5, :cond_48

    const v5, 0x6d696e66

    if-eq v2, v5, :cond_48

    const v5, 0x7374626c

    if-eq v2, v5, :cond_48

    if-eq v2, v10, :cond_48

    const v5, 0x74726166

    if-eq v2, v5, :cond_48

    const v5, 0x6d766578

    if-eq v2, v5, :cond_48

    const v5, 0x65647473

    if-ne v2, v5, :cond_42

    goto/16 :goto_24

    :cond_42
    const v5, 0x68646c72    # 4.3148E24f

    const-wide/32 v6, 0x7fffffff

    if-eq v2, v5, :cond_45

    const v5, 0x6d646864

    if-eq v2, v5, :cond_45

    const v5, 0x6d766864

    if-eq v2, v5, :cond_45

    if-eq v2, v4, :cond_45

    const v4, 0x73747364

    if-eq v2, v4, :cond_45

    const v4, 0x73747473

    if-eq v2, v4, :cond_45

    const v4, 0x63747473

    if-eq v2, v4, :cond_45

    const v4, 0x73747363

    if-eq v2, v4, :cond_45

    const v4, 0x7374737a

    if-eq v2, v4, :cond_45

    const v4, 0x73747a32

    if-eq v2, v4, :cond_45

    const v4, 0x7374636f

    if-eq v2, v4, :cond_45

    const v4, 0x636f3634

    if-eq v2, v4, :cond_45

    const v4, 0x73747373

    if-eq v2, v4, :cond_45

    const v4, 0x74666474

    if-eq v2, v4, :cond_45

    const v4, 0x74666864

    if-eq v2, v4, :cond_45

    const v4, 0x746b6864

    if-eq v2, v4, :cond_45

    const v4, 0x74726578

    if-eq v2, v4, :cond_45

    const v4, 0x7472756e

    if-eq v2, v4, :cond_45

    const v4, 0x70737368    # 3.013775E29f

    if-eq v2, v4, :cond_45

    const v4, 0x7361697a

    if-eq v2, v4, :cond_45

    const v4, 0x7361696f

    if-eq v2, v4, :cond_45

    const v4, 0x73656e63

    if-eq v2, v4, :cond_45

    const v4, 0x75756964

    if-eq v2, v4, :cond_45

    const v4, 0x73626770

    if-eq v2, v4, :cond_45

    const v4, 0x73677064

    if-eq v2, v4, :cond_45

    const v4, 0x656c7374

    if-eq v2, v4, :cond_45

    const v4, 0x6d656864

    if-eq v2, v4, :cond_45

    const v4, 0x656d7367

    if-ne v2, v4, :cond_43

    goto :goto_23

    :cond_43
    iget-wide v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    cmp-long v4, v2, v6

    if-gtz v4, :cond_44

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ad:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v6, 0x1

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzait;->w:I

    goto/16 :goto_0

    :cond_44
    const-string v1, "Skipping atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_45
    :goto_23
    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    const/16 v5, 0x8

    if-ne v2, v5, :cond_47

    iget-wide v8, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    cmp-long v2, v8, v6

    if-gtz v2, :cond_46

    new-instance v2, Lcom/google/android/gms/internal/ads/zzed;

    iget-wide v6, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    long-to-int v4, v6

    invoke-direct {v2, v4}, Lcom/google/android/gms/internal/ads/zzed;-><init>(I)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v4

    const/4 v10, 0x0

    invoke-static {v3, v10, v4, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, v0, Lcom/google/android/gms/internal/ads/zzait;->ad:Lcom/google/android/gms/internal/ads/zzed;

    const/4 v6, 0x1

    iput v6, v0, Lcom/google/android/gms/internal/ads/zzait;->w:I

    goto/16 :goto_0

    :cond_46
    const-string v1, "Leaf atom with length > 2147483647 (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_47
    const-string v1, "Leaf atom defines extended atom size (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1

    :cond_48
    :goto_24
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzacs;->zzf()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    add-long/2addr v3, v5

    new-instance v5, Lcom/google/android/gms/internal/ads/zzes;

    const-wide/16 v6, -0x8

    add-long/2addr v3, v6

    invoke-direct {v5, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzes;-><init>(IJ)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    iget-wide v5, v0, Lcom/google/android/gms/internal/ads/zzait;->ak:J

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzait;->v:I

    int-to-long v7, v2

    cmp-long v2, v5, v7

    if-nez v2, :cond_49

    invoke-virtual {v0, v3, v4}, Lcom/google/android/gms/internal/ads/zzait;->an(J)V

    goto/16 :goto_0

    :cond_49
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzait;->ao()V

    goto/16 :goto_0

    :cond_4a
    const-string v1, "Atom size less than header length (unsupported)."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzbh;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v1

    throw v1
.end method

.method public final synthetic zzc()Lcom/google/android/gms/internal/ads/zzacr;
    .locals 0

    return-object p0
.end method

.method public final synthetic zzd()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzait;->g:Lcom/google/android/gms/internal/ads/zzfzo;

    return-object v0
.end method

.method public final zze(Lcom/google/android/gms/internal/ads/zzacu;)V
    .locals 6

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzait;->z:I

    and-int/lit8 v1, v0, 0x20

    if-nez v1, :cond_0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzakj;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzait;->o:Lcom/google/android/gms/internal/ads/zzakg;

    invoke-direct {v1, p1, v2}, Lcom/google/android/gms/internal/ads/zzakj;-><init>(Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzakg;)V

    move-object p1, v1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->ae:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzait;->ao()V

    const/4 p1, 0x2

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzadx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->i:[Lcom/google/android/gms/internal/ads/zzadx;

    and-int/lit8 v0, v0, 0x4

    const/16 v1, 0x64

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzait;->ae:Lcom/google/android/gms/internal/ads/zzacu;

    const/4 v3, 0x5

    invoke-interface {v0, v1, v3}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    aput-object v0, p1, v2

    const/4 p1, 0x1

    const/16 v1, 0x65

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzait;->i:[Lcom/google/android/gms/internal/ads/zzadx;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzen;->zzO([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzadx;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->i:[Lcom/google/android/gms/internal/ads/zzadx;

    array-length v0, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    sget-object v5, Lcom/google/android/gms/internal/ads/zzait;->a:Lcom/google/android/gms/internal/ads/zzad;

    invoke-interface {v4, v5}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->af:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzadx;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzait;->f:[Lcom/google/android/gms/internal/ads/zzadx;

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzait;->f:[Lcom/google/android/gms/internal/ads/zzadx;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzait;->ae:Lcom/google/android/gms/internal/ads/zzacu;

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x3

    invoke-interface {v0, v1, v4}, Lcom/google/android/gms/internal/ads/zzacu;->zzw(II)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzad;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzadx;->zzl(Lcom/google/android/gms/internal/ads/zzad;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzait;->f:[Lcom/google/android/gms/internal/ads/zzadx;

    aput-object v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    move v1, v3

    goto :goto_2

    :cond_3
    return-void
.end method

.method public final zzf(JJ)V
    .locals 3

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->k:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/eta;

    invoke-virtual {v2}, Lg/eta;->m()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->x:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzait;->s:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->j:Lcom/google/android/gms/internal/ads/zzft;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzft;->zzc()V

    iput-wide p3, p0, Lcom/google/android/gms/internal/ads/zzait;->t:J

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzait;->m:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->clear()V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzait;->ao()V

    return-void
.end method

.method public final zzi(Lcom/google/android/gms/internal/ads/zzacs;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzajd;->zza(Lcom/google/android/gms/internal/ads/zzacs;)Lcom/google/android/gms/internal/ads/zzadu;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfzo;->zzo(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzait;->g:Lcom/google/android/gms/internal/ads/zzfzo;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
