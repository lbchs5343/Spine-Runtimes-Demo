.class public final Lg/gzx;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/google/android/gms/internal/ads/zzur;


# instance fields
.field public final b:Lcom/google/android/gms/internal/ads/zzwr;

.field public final c:Lcom/google/android/gms/internal/ads/zzur;

.field public final d:Lcom/google/android/gms/internal/ads/zzbj;

.field public final e:I

.field public final f:J

.field public final g:Z

.field public final h:I

.field public final i:Lcom/google/android/gms/internal/ads/zzbv;

.field public final j:Lcom/google/android/gms/internal/ads/zzig;

.field public volatile k:J

.field public volatile l:J

.field public final m:I

.field public final n:Lcom/google/android/gms/internal/ads/zzyk;

.field public final o:Lcom/google/android/gms/internal/ads/zzur;

.field public final p:Ljava/util/List;

.field public volatile q:J

.field public final r:J

.field public final s:Z

.field public volatile t:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzur;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzur;-><init>(Ljava/lang/Object;J)V

    sput-object v0, Lg/gzx;->a:Lcom/google/android/gms/internal/ads/zzur;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zzig;ZLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZIILcom/google/android/gms/internal/ads/zzbj;JJJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    iput-object p2, p0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iput-wide p3, p0, Lg/gzx;->r:J

    iput-wide p5, p0, Lg/gzx;->f:J

    iput p7, p0, Lg/gzx;->h:I

    iput-object p8, p0, Lg/gzx;->j:Lcom/google/android/gms/internal/ads/zzig;

    iput-boolean p9, p0, Lg/gzx;->s:Z

    iput-object p10, p0, Lg/gzx;->b:Lcom/google/android/gms/internal/ads/zzwr;

    iput-object p11, p0, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iput-object p12, p0, Lg/gzx;->p:Ljava/util/List;

    iput-object p13, p0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iput-boolean p14, p0, Lg/gzx;->g:Z

    iput p15, p0, Lg/gzx;->m:I

    move/from16 p1, p16

    iput p1, p0, Lg/gzx;->e:I

    move-object/from16 p1, p17

    iput-object p1, p0, Lg/gzx;->d:Lcom/google/android/gms/internal/ads/zzbj;

    move-wide/from16 p1, p18

    iput-wide p1, p0, Lg/gzx;->l:J

    move-wide/from16 p1, p20

    iput-wide p1, p0, Lg/gzx;->q:J

    move-wide/from16 p1, p22

    iput-wide p1, p0, Lg/gzx;->t:J

    move-wide/from16 p1, p24

    iput-wide p1, p0, Lg/gzx;->k:J

    return-void
.end method

.method public static u(Lcom/google/android/gms/internal/ads/zzyk;)Lg/gzx;
    .locals 26

    new-instance v0, Lg/gzx;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbv;->zza:Lcom/google/android/gms/internal/ads/zzbv;

    sget-object v10, Lcom/google/android/gms/internal/ads/zzwr;->zza:Lcom/google/android/gms/internal/ads/zzwr;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzfzo;->zzn()Lcom/google/android/gms/internal/ads/zzfzo;

    move-result-object v12

    sget-object v17, Lcom/google/android/gms/internal/ads/zzbj;->zza:Lcom/google/android/gms/internal/ads/zzbj;

    const-wide/16 v22, 0x0

    const-wide/16 v24, 0x0

    sget-object v2, Lg/gzx;->a:Lcom/google/android/gms/internal/ads/zzur;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    move-object v13, v2

    move-object/from16 v11, p0

    invoke-direct/range {v0 .. v25}, Lg/gzx;-><init>(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zzig;ZLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZIILcom/google/android/gms/internal/ads/zzbj;JJJJ)V

    return-object v0
.end method


# virtual methods
.method public final aa(Lcom/google/android/gms/internal/ads/zzur;JJJJLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;)Lg/gzx;
    .locals 27

    move-object/from16 v0, p0

    new-instance v1, Lg/gzx;

    iget-object v14, v0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-boolean v15, v0, Lg/gzx;->g:Z

    iget v2, v0, Lg/gzx;->m:I

    iget v3, v0, Lg/gzx;->e:I

    iget-object v4, v0, Lg/gzx;->d:Lcom/google/android/gms/internal/ads/zzbj;

    iget-wide v5, v0, Lg/gzx;->l:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v25

    iget v8, v0, Lg/gzx;->h:I

    iget-object v9, v0, Lg/gzx;->j:Lcom/google/android/gms/internal/ads/zzig;

    iget-boolean v10, v0, Lg/gzx;->s:Z

    move/from16 v16, v2

    iget-object v2, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    move-wide/from16 v23, p2

    move-wide/from16 v21, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move/from16 v17, v3

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    move-object/from16 v3, p1

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    invoke-direct/range {v1 .. v26}, Lg/gzx;-><init>(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zzig;ZLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZIILcom/google/android/gms/internal/ads/zzbj;JJJJ)V

    return-object v1
.end method

.method public final ab(IIZ)Lg/gzx;
    .locals 27

    move-object/from16 v0, p0

    new-instance v1, Lg/gzx;

    iget-object v2, v0, Lg/gzx;->d:Lcom/google/android/gms/internal/ads/zzbj;

    iget-wide v3, v0, Lg/gzx;->l:J

    iget-wide v5, v0, Lg/gzx;->q:J

    iget-wide v7, v0, Lg/gzx;->t:J

    iget-wide v9, v0, Lg/gzx;->k:J

    move-object/from16 v18, v2

    iget-object v2, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    move-wide/from16 v19, v3

    iget-object v3, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    move-wide/from16 v21, v5

    iget-wide v4, v0, Lg/gzx;->r:J

    move-wide/from16 v23, v7

    iget-wide v6, v0, Lg/gzx;->f:J

    iget v8, v0, Lg/gzx;->h:I

    move-wide/from16 v25, v9

    iget-object v9, v0, Lg/gzx;->j:Lcom/google/android/gms/internal/ads/zzig;

    iget-boolean v10, v0, Lg/gzx;->s:Z

    iget-object v11, v0, Lg/gzx;->b:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v12, v0, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v13, v0, Lg/gzx;->p:Ljava/util/List;

    iget-object v14, v0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    move/from16 v16, p1

    move/from16 v17, p2

    move/from16 v15, p3

    invoke-direct/range {v1 .. v26}, Lg/gzx;-><init>(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zzig;ZLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZIILcom/google/android/gms/internal/ads/zzbj;JJJJ)V

    return-object v1
.end method

.method public final v()Z
    .locals 2

    iget v0, p0, Lg/gzx;->h:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lg/gzx;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lg/gzx;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w(Lcom/google/android/gms/internal/ads/zzig;)Lg/gzx;
    .locals 27

    move-object/from16 v0, p0

    new-instance v1, Lg/gzx;

    iget-boolean v10, v0, Lg/gzx;->s:Z

    iget-object v11, v0, Lg/gzx;->b:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v12, v0, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v13, v0, Lg/gzx;->p:Ljava/util/List;

    iget-object v14, v0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-boolean v15, v0, Lg/gzx;->g:Z

    iget v2, v0, Lg/gzx;->m:I

    iget v3, v0, Lg/gzx;->e:I

    iget-object v4, v0, Lg/gzx;->d:Lcom/google/android/gms/internal/ads/zzbj;

    iget-wide v5, v0, Lg/gzx;->l:J

    iget-wide v7, v0, Lg/gzx;->q:J

    move-object v9, v1

    move/from16 v16, v2

    iget-wide v1, v0, Lg/gzx;->t:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lg/gzx;->k:J

    move-wide/from16 v25, v1

    iget-object v2, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    move/from16 v17, v3

    iget-object v3, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lg/gzx;->r:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lg/gzx;->f:J

    iget v8, v0, Lg/gzx;->h:I

    move-object v1, v9

    move-object/from16 v9, p1

    invoke-direct/range {v1 .. v26}, Lg/gzx;-><init>(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zzig;ZLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZIILcom/google/android/gms/internal/ads/zzbj;JJJJ)V

    return-object v1
.end method

.method public final x(I)Lg/gzx;
    .locals 27

    move-object/from16 v0, p0

    new-instance v1, Lg/gzx;

    iget-object v9, v0, Lg/gzx;->j:Lcom/google/android/gms/internal/ads/zzig;

    iget-boolean v10, v0, Lg/gzx;->s:Z

    iget-object v11, v0, Lg/gzx;->b:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v12, v0, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v13, v0, Lg/gzx;->p:Ljava/util/List;

    iget-object v14, v0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-boolean v15, v0, Lg/gzx;->g:Z

    iget v2, v0, Lg/gzx;->m:I

    iget v3, v0, Lg/gzx;->e:I

    iget-object v4, v0, Lg/gzx;->d:Lcom/google/android/gms/internal/ads/zzbj;

    iget-wide v5, v0, Lg/gzx;->l:J

    iget-wide v7, v0, Lg/gzx;->q:J

    move-object/from16 v16, v1

    move/from16 v17, v2

    iget-wide v1, v0, Lg/gzx;->t:J

    move-wide/from16 v23, v1

    iget-wide v1, v0, Lg/gzx;->k:J

    move-wide/from16 v25, v1

    iget-object v2, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    move-object/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v3

    iget-object v3, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lg/gzx;->r:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lg/gzx;->f:J

    move/from16 v8, p1

    invoke-direct/range {v1 .. v26}, Lg/gzx;-><init>(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zzig;ZLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZIILcom/google/android/gms/internal/ads/zzbj;JJJJ)V

    return-object v1
.end method

.method public final y(Lcom/google/android/gms/internal/ads/zzur;)Lg/gzx;
    .locals 27

    move-object/from16 v0, p0

    new-instance v1, Lg/gzx;

    iget-boolean v15, v0, Lg/gzx;->g:Z

    iget v2, v0, Lg/gzx;->m:I

    iget v3, v0, Lg/gzx;->e:I

    iget-object v4, v0, Lg/gzx;->d:Lcom/google/android/gms/internal/ads/zzbj;

    iget-wide v5, v0, Lg/gzx;->l:J

    iget-wide v7, v0, Lg/gzx;->q:J

    iget-wide v9, v0, Lg/gzx;->t:J

    iget-wide v11, v0, Lg/gzx;->k:J

    move/from16 v16, v2

    iget-object v2, v0, Lg/gzx;->i:Lcom/google/android/gms/internal/ads/zzbv;

    move/from16 v17, v3

    iget-object v3, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    iget-wide v4, v0, Lg/gzx;->r:J

    move-wide/from16 v21, v7

    iget-wide v6, v0, Lg/gzx;->f:J

    iget v8, v0, Lg/gzx;->h:I

    move-wide/from16 v23, v9

    iget-object v9, v0, Lg/gzx;->j:Lcom/google/android/gms/internal/ads/zzig;

    iget-boolean v10, v0, Lg/gzx;->s:Z

    move-wide/from16 v25, v11

    iget-object v11, v0, Lg/gzx;->b:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v12, v0, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v13, v0, Lg/gzx;->p:Ljava/util/List;

    move-object/from16 v14, p1

    invoke-direct/range {v1 .. v26}, Lg/gzx;-><init>(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zzig;ZLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZIILcom/google/android/gms/internal/ads/zzbj;JJJJ)V

    return-object v1
.end method

.method public final z(Lcom/google/android/gms/internal/ads/zzbv;)Lg/gzx;
    .locals 29

    move-object/from16 v0, p0

    new-instance v1, Lg/gzx;

    iget-object v3, v0, Lg/gzx;->o:Lcom/google/android/gms/internal/ads/zzur;

    iget-wide v4, v0, Lg/gzx;->r:J

    iget-wide v6, v0, Lg/gzx;->f:J

    iget v8, v0, Lg/gzx;->h:I

    iget-object v9, v0, Lg/gzx;->j:Lcom/google/android/gms/internal/ads/zzig;

    iget-boolean v10, v0, Lg/gzx;->s:Z

    iget-object v11, v0, Lg/gzx;->b:Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v12, v0, Lg/gzx;->n:Lcom/google/android/gms/internal/ads/zzyk;

    iget-object v13, v0, Lg/gzx;->p:Ljava/util/List;

    iget-object v14, v0, Lg/gzx;->c:Lcom/google/android/gms/internal/ads/zzur;

    iget-boolean v15, v0, Lg/gzx;->g:Z

    iget v2, v0, Lg/gzx;->m:I

    move-object/from16 v16, v1

    iget v1, v0, Lg/gzx;->e:I

    move/from16 v17, v1

    iget-object v1, v0, Lg/gzx;->d:Lcom/google/android/gms/internal/ads/zzbj;

    move-object/from16 v19, v1

    move/from16 v18, v2

    iget-wide v1, v0, Lg/gzx;->l:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lg/gzx;->q:J

    move-wide/from16 v22, v1

    iget-wide v1, v0, Lg/gzx;->t:J

    move-wide/from16 v24, v1

    iget-wide v1, v0, Lg/gzx;->k:J

    move-wide/from16 v27, v1

    move-object/from16 v1, v16

    move/from16 v16, v18

    move-object/from16 v18, v19

    move-wide/from16 v19, v20

    move-wide/from16 v21, v22

    move-wide/from16 v23, v24

    move-wide/from16 v25, v27

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v26}, Lg/gzx;-><init>(Lcom/google/android/gms/internal/ads/zzbv;Lcom/google/android/gms/internal/ads/zzur;JJILcom/google/android/gms/internal/ads/zzig;ZLcom/google/android/gms/internal/ads/zzwr;Lcom/google/android/gms/internal/ads/zzyk;Ljava/util/List;Lcom/google/android/gms/internal/ads/zzur;ZIILcom/google/android/gms/internal/ads/zzbj;JJJJ)V

    move-object/from16 v16, v1

    return-object v16
.end method
