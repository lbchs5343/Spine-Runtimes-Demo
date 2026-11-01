.class public final Lg/vg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/btp;
.implements Lcom/google/android/gms/internal/ads/zzann;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzaec;Lcom/google/android/gms/internal/ads/zzaea;[B[Lcom/google/android/gms/internal/ads/zzaeb;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/vg;->e:Ljava/lang/Object;

    iput-object p2, p0, Lg/vg;->a:Ljava/lang/Object;

    iput-object p3, p0, Lg/vg;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/vg;->c:Ljava/lang/Object;

    iput p5, p0, Lg/vg;->d:I

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanw;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/vg;->c:Ljava/lang/Object;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzec;

    const/4 v0, 0x5

    new-array v1, v0, [B

    invoke-direct {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzec;-><init>([BI)V

    iput-object p1, p0, Lg/vg;->e:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lg/vg;->a:Ljava/lang/Object;

    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lg/vg;->b:Ljava/lang/Object;

    iput p2, p0, Lg/vg;->d:I

    return-void
.end method

.method public constructor <init>(Lg/cdy;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/concurrent/atomic/AtomicInteger;ILg/btp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/vg;->c:Ljava/lang/Object;

    iput-object p2, p0, Lg/vg;->e:Ljava/lang/Object;

    iput-object p3, p0, Lg/vg;->a:Ljava/lang/Object;

    iput p4, p0, Lg/vg;->d:I

    iput-object p5, p0, Lg/vg;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/dzh;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p1, Lg/dzh;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p1, Lg/dzh;->i:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lg/vg;->e:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v3, v2, [D

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_0

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    aput-wide v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iput-object v3, p0, Lg/vg;->a:Ljava/lang/Object;

    iget-object p1, p1, Lg/dzh;->g:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v2, v0, [D

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    aput-wide v5, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iput-object v2, p0, Lg/vg;->b:Ljava/lang/Object;

    new-array p1, v1, [I

    iput-object p1, p0, Lg/vg;->c:Ljava/lang/Object;

    iput v4, p0, Lg/vg;->d:I

    return-void
.end method


# virtual methods
.method public i(Lg/x;)V
    .locals 2

    iget-object p1, p0, Lg/vg;->e:Ljava/lang/Object;

    check-cast p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {p1}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-class p1, Lg/cdy;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lg/vg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iget v1, p0, Lg/vg;->d:I

    if-ne v0, v1, :cond_0

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/vg;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lg/vg;->c:Ljava/lang/Object;

    check-cast p1, Lg/cdy;

    iget-object v0, p0, Lg/vg;->b:Ljava/lang/Object;

    check-cast v0, Lg/btp;

    invoke-static {p1, v0}, Lg/cdy;->i(Lg/cdy;Lg/btp;)V

    return-void

    :goto_0
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public o(I)V
    .locals 3

    iget-object v0, p0, Lg/vg;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    const-class v0, Lg/cdy;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lg/vg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    iget v2, p0, Lg/vg;->d:I

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lg/vg;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    sget v1, Lg/cdy;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lg/vg;->c:Ljava/lang/Object;

    check-cast v0, Lg/cdy;

    iget-object v1, p0, Lg/vg;->b:Ljava/lang/Object;

    check-cast v1, Lg/btp;

    invoke-static {v0, v1, p1}, Lg/cdy;->h(Lg/cdy;Lg/btp;I)V

    :cond_1
    return-void

    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public zza(Lcom/google/android/gms/internal/ads/zzed;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg/vg;->a:Ljava/lang/Object;

    check-cast v2, Landroid/util/SparseArray;

    iget-object v3, v0, Lg/vg;->b:Ljava/lang/Object;

    check-cast v3, Landroid/util/SparseIntArray;

    iget-object v4, v0, Lg/vg;->e:Ljava/lang/Object;

    check-cast v4, Lcom/google/android/gms/internal/ads/zzec;

    iget-object v5, v0, Lg/vg;->c:Ljava/lang/Object;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzanw;

    iget-object v6, v5, Lcom/google/android/gms/internal/ads/zzanw;->p:Landroid/util/SparseArray;

    iget-object v7, v5, Lcom/google/android/gms/internal/ads/zzanw;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_1

    :cond_0
    move-object v4, v0

    goto/16 :goto_c

    :cond_1
    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzanw;->m:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/android/gms/internal/ads/zzek;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v11

    and-int/lit16 v11, v11, 0x80

    if-eqz v11, :cond_0

    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzq()I

    move-result v12

    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v1, v4, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzG(Lcom/google/android/gms/internal/ads/zzec;I)V

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/16 v14, 0xd

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v15

    iput v15, v5, Lcom/google/android/gms/internal/ads/zzanw;->j:I

    invoke-virtual {v1, v4, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzG(Lcom/google/android/gms/internal/ads/zzec;I)V

    const/4 v9, 0x4

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    const/16 v15, 0xc

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzb()I

    move-result v11

    :goto_0
    if-lez v11, :cond_16

    const/4 v10, 0x5

    invoke-virtual {v1, v4, v10}, Lcom/google/android/gms/internal/ads/zzed;->zzG(Lcom/google/android/gms/internal/ads/zzec;I)V

    const/16 v10, 0x8

    invoke-virtual {v4, v10}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v10

    invoke-virtual {v4, v13}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v4, v14}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v13

    invoke-virtual {v4, v9}, Lcom/google/android/gms/internal/ads/zzec;->zzn(I)V

    invoke-virtual {v4, v15}, Lcom/google/android/gms/internal/ads/zzec;->zzd(I)I

    move-result v16

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v14

    add-int v15, v14, v16

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v21, v17

    move-object/from16 v23, v21

    const/16 v20, -0x1

    const/16 v22, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v9

    if-ge v9, v15, :cond_12

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v18

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v19

    move-object/from16 v25, v4

    add-int v4, v19, v18

    if-le v4, v15, :cond_2

    :goto_2
    move-object/from16 v17, v6

    move-object/from16 v27, v8

    move/from16 v26, v11

    const/4 v8, 0x0

    goto/16 :goto_9

    :cond_2
    const/16 v18, 0xac

    const/16 v19, 0x87

    const/16 v24, 0x81

    move/from16 v26, v11

    const/4 v11, 0x5

    if-ne v9, v11, :cond_7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzu()J

    move-result-wide v27

    const-wide/32 v29, 0x41432d33

    cmp-long v9, v27, v29

    if-nez v9, :cond_3

    :goto_3
    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/16 v20, 0x81

    goto/16 :goto_8

    :cond_3
    const-wide/32 v29, 0x45414333

    cmp-long v9, v27, v29

    if-nez v9, :cond_4

    :goto_4
    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/16 v20, 0x87

    goto/16 :goto_8

    :cond_4
    const-wide/32 v29, 0x41432d34

    cmp-long v9, v27, v29

    if-nez v9, :cond_5

    :goto_5
    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/16 v20, 0xac

    goto/16 :goto_8

    :cond_5
    const-wide/32 v18, 0x48455643

    cmp-long v9, v27, v18

    if-nez v9, :cond_6

    const/16 v9, 0x24

    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/16 v20, 0x24

    goto/16 :goto_8

    :cond_6
    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    goto/16 :goto_6

    :cond_7
    const/16 v11, 0x6a

    if-ne v9, v11, :cond_8

    goto :goto_3

    :cond_8
    const/16 v11, 0x7a

    if-ne v9, v11, :cond_9

    goto :goto_4

    :cond_9
    const/16 v11, 0x7f

    if-ne v9, v11, :cond_c

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v9

    const/16 v11, 0x15

    if-ne v9, v11, :cond_a

    goto :goto_5

    :cond_a
    const/16 v11, 0xe

    if-ne v9, v11, :cond_b

    const/16 v9, 0x88

    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/16 v20, 0x88

    goto/16 :goto_8

    :cond_b
    const/16 v11, 0x21

    if-ne v9, v11, :cond_6

    const/16 v9, 0x8b

    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/16 v20, 0x8b

    goto/16 :goto_8

    :cond_c
    const/16 v11, 0x7b

    if-ne v9, v11, :cond_d

    const/16 v9, 0x8a

    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/16 v20, 0x8a

    goto/16 :goto_8

    :cond_d
    const/16 v11, 0xa

    if-ne v9, v11, :cond_e

    sget-object v9, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const/4 v11, 0x3

    invoke-virtual {v1, v11, v9}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v22

    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    move-object/from16 v21, v9

    :goto_6
    const/4 v8, 0x0

    goto :goto_8

    :cond_e
    const/16 v11, 0x59

    if-ne v9, v11, :cond_10

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    :goto_7
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v11

    if-ge v11, v4, :cond_f

    sget-object v11, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    move/from16 v19, v4

    const/4 v4, 0x3

    invoke-virtual {v1, v4, v11}, Lcom/google/android/gms/internal/ads/zzed;->zzB(ILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzm()I

    move-result v4

    move-object/from16 v17, v6

    const/4 v0, 0x4

    new-array v6, v0, [B

    move-object/from16 v27, v8

    const/4 v8, 0x0

    invoke-virtual {v1, v6, v8, v0}, Lcom/google/android/gms/internal/ads/zzed;->zzH([BII)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzanx;

    invoke-direct {v0, v11, v4, v6}, Lcom/google/android/gms/internal/ads/zzanx;-><init>(Ljava/lang/String;I[B)V

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move-object/from16 v6, v17

    move/from16 v4, v19

    move-object/from16 v8, v27

    goto :goto_7

    :cond_f
    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    move-object/from16 v23, v9

    const/16 v20, 0x59

    goto :goto_8

    :cond_10
    move/from16 v19, v4

    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    const/16 v0, 0x6f

    if-ne v9, v0, :cond_11

    const/16 v0, 0x101

    const/16 v20, 0x101

    :cond_11
    :goto_8
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzd()I

    move-result v0

    sub-int v4, v19, v0

    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/zzed;->zzM(I)V

    move-object/from16 v0, p0

    move-object/from16 v6, v17

    move-object/from16 v4, v25

    move/from16 v11, v26

    move-object/from16 v8, v27

    goto/16 :goto_1

    :cond_12
    move-object/from16 v25, v4

    goto/16 :goto_2

    :goto_9
    invoke-virtual {v1, v15}, Lcom/google/android/gms/internal/ads/zzed;->zzL(I)V

    new-instance v19, Lcom/google/android/gms/internal/ads/zzany;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzed;->zzN()[B

    move-result-object v0

    invoke-static {v0, v14, v15}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v24

    invoke-direct/range {v19 .. v24}, Lcom/google/android/gms/internal/ads/zzany;-><init>(ILjava/lang/String;ILjava/util/List;[B)V

    move-object/from16 v0, v19

    const/4 v4, 0x6

    if-eq v10, v4, :cond_13

    const/4 v11, 0x5

    if-ne v10, v11, :cond_14

    :cond_13
    iget v10, v0, Lcom/google/android/gms/internal/ads/zzany;->zza:I

    :cond_14
    add-int/lit8 v16, v16, 0x5

    sub-int v11, v26, v16

    invoke-virtual {v7, v13}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v4

    if-nez v4, :cond_15

    iget-object v4, v5, Lcom/google/android/gms/internal/ads/zzanw;->g:Lcom/google/android/gms/internal/ads/zzanz;

    invoke-interface {v4, v10, v0}, Lcom/google/android/gms/internal/ads/zzanz;->zzb(ILcom/google/android/gms/internal/ads/zzany;)Lcom/google/android/gms/internal/ads/zzaob;

    move-result-object v0

    invoke-virtual {v3, v13, v13}, Landroid/util/SparseIntArray;->put(II)V

    invoke-virtual {v2, v13, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v6, v17

    move-object/from16 v4, v25

    move-object/from16 v8, v27

    const/4 v9, 0x4

    const/4 v10, 0x0

    const/4 v13, 0x3

    const/16 v14, 0xd

    const/16 v15, 0xc

    goto/16 :goto_0

    :cond_16
    move-object/from16 v17, v6

    move-object/from16 v27, v8

    const/4 v8, 0x0

    invoke-virtual {v3}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v10, 0x0

    :goto_a
    if-ge v10, v0, :cond_18

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v3, v10}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    const/4 v6, 0x1

    invoke-virtual {v7, v1, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzanw;->l:Landroid/util/SparseBooleanArray;

    invoke-virtual {v8, v4, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    invoke-virtual {v2, v10}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzaob;

    if-eqz v6, :cond_17

    iget-object v8, v5, Lcom/google/android/gms/internal/ads/zzanw;->f:Lcom/google/android/gms/internal/ads/zzacu;

    new-instance v9, Lcom/google/android/gms/internal/ads/zzaoa;

    const/16 v11, 0x2000

    invoke-direct {v9, v12, v1, v11}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>(III)V

    move-object/from16 v1, v27

    invoke-interface {v6, v1, v8, v9}, Lcom/google/android/gms/internal/ads/zzaob;->zzb(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V

    move-object/from16 v8, v17

    invoke-virtual {v8, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_b

    :cond_17
    move-object/from16 v8, v17

    move-object/from16 v1, v27

    :goto_b
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v27, v1

    move-object/from16 v17, v8

    goto :goto_a

    :cond_18
    move-object/from16 v4, p0

    move-object/from16 v8, v17

    iget v0, v4, Lg/vg;->d:I

    invoke-virtual {v8, v0}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v5, Lcom/google/android/gms/internal/ads/zzanw;->f:Lcom/google/android/gms/internal/ads/zzacu;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzacu;->zzD()V

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/google/android/gms/internal/ads/zzanw;->k:Z

    :goto_c
    return-void
.end method

.method public zzb(Lcom/google/android/gms/internal/ads/zzek;Lcom/google/android/gms/internal/ads/zzacu;Lcom/google/android/gms/internal/ads/zzaoa;)V
    .locals 0

    return-void
.end method
