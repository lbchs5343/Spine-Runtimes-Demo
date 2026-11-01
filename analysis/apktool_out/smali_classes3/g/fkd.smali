.class public final Lg/fkd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzup;
.implements Lcom/google/android/gms/internal/ads/zzacu;
.implements Lcom/google/android/gms/internal/ads/zzyy;
.implements Lcom/google/android/gms/internal/ads/zzzc;
.implements Lcom/google/android/gms/internal/ads/zzwd;


# static fields
.field public static final a:Ljava/util/Map;

.field public static final b:Lcom/google/android/gms/internal/ads/zzad;


# instance fields
.field public aa:I

.field public ab:Z

.field public ac:Lcom/google/android/gms/internal/ads/zzadq;

.field public ad:Z

.field public final ae:Lcom/google/android/gms/internal/ads/zzzg;

.field public final af:Lcom/google/android/gms/internal/ads/zzgd;

.field public final ag:Landroid/os/Handler;

.field public ah:Lg/dpa;

.field public ai:I

.field public aj:Z

.field public ak:[Lcom/google/android/gms/internal/ads/zzwf;

.field public final al:Lcom/google/android/gms/internal/ads/zzvk;

.field public final am:Lcom/google/android/gms/internal/ads/zzvx;

.field public an:J

.field public final c:J

.field public d:Lcom/google/android/gms/internal/ads/zzafv;

.field public e:Z

.field public final f:Lcom/google/android/gms/internal/ads/zzys;

.field public final g:J

.field public h:J

.field public i:Z

.field public j:Lcom/google/android/gms/internal/ads/zzuo;

.field public k:Z

.field public l:I

.field public final m:Lcom/google/android/gms/internal/ads/zztt;

.field public n:Z

.field public final o:Lcom/google/android/gms/internal/ads/zzrp;

.field public final p:Lcom/google/android/gms/internal/ads/zzvj;

.field public q:Z

.field public final r:Lcom/google/android/gms/internal/ads/zzdf;

.field public s:Z

.field public t:J

.field public u:Z

.field public final v:Lcom/google/android/gms/internal/ads/zzva;

.field public w:Z

.field public final x:Lcom/google/android/gms/internal/ads/zzrk;

.field public y:[Lg/evi;

.field public final z:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Icy-MetaData"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lg/fkd;->a:Ljava/util/Map;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzab;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzab;-><init>()V

    const-string v1, "icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzL(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    const-string v1, "application/x-icy"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzab;->zzZ(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v0

    sput-object v0, Lg/fkd;->b:Lcom/google/android/gms/internal/ads/zzad;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zztt;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzrk;Lcom/google/android/gms/internal/ads/zzva;Lcom/google/android/gms/internal/ads/zzvx;Lcom/google/android/gms/internal/ads/zzys;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fkd;->z:Landroid/net/Uri;

    iput-object p2, p0, Lg/fkd;->af:Lcom/google/android/gms/internal/ads/zzgd;

    iput-object p4, p0, Lg/fkd;->o:Lcom/google/android/gms/internal/ads/zzrp;

    iput-object p5, p0, Lg/fkd;->x:Lcom/google/android/gms/internal/ads/zzrk;

    iput-object p6, p0, Lg/fkd;->v:Lcom/google/android/gms/internal/ads/zzva;

    iput-object p7, p0, Lg/fkd;->am:Lcom/google/android/gms/internal/ads/zzvx;

    iput-object p8, p0, Lg/fkd;->f:Lcom/google/android/gms/internal/ads/zzys;

    int-to-long p1, p9

    iput-wide p1, p0, Lg/fkd;->g:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzzg;

    const-string p2, "ProgressiveMediaPeriod"

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzzg;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lg/fkd;->ae:Lcom/google/android/gms/internal/ads/zzzg;

    iput-object p3, p0, Lg/fkd;->m:Lcom/google/android/gms/internal/ads/zztt;

    iput-wide p10, p0, Lg/fkd;->c:J

    new-instance p1, Lcom/google/android/gms/internal/ads/zzdf;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdc;->zza:Lcom/google/android/gms/internal/ads/zzdc;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzdf;-><init>(Lcom/google/android/gms/internal/ads/zzdc;)V

    iput-object p1, p0, Lg/fkd;->r:Lcom/google/android/gms/internal/ads/zzdf;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzvj;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzvj;-><init>(Lg/fkd;)V

    iput-object p1, p0, Lg/fkd;->p:Lcom/google/android/gms/internal/ads/zzvj;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzvk;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/zzvk;-><init>(Lg/fkd;)V

    iput-object p1, p0, Lg/fkd;->al:Lcom/google/android/gms/internal/ads/zzvk;

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzen;->zzy(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lg/fkd;->ag:Landroid/os/Handler;

    const/4 p1, 0x0

    new-array p2, p1, [Lg/evi;

    iput-object p2, p0, Lg/fkd;->y:[Lg/evi;

    new-array p1, p1, [Lcom/google/android/gms/internal/ads/zzwf;

    iput-object p1, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide p1, p0, Lg/fkd;->an:J

    const/4 p1, 0x1

    iput p1, p0, Lg/fkd;->ai:I

    return-void
.end method


# virtual methods
.method public final ao()V
    .locals 17

    move-object/from16 v1, p0

    new-instance v0, Lg/gww;

    iget-object v4, v1, Lg/fkd;->m:Lcom/google/android/gms/internal/ads/zztt;

    iget-object v6, v1, Lg/fkd;->r:Lcom/google/android/gms/internal/ads/zzdf;

    iget-object v2, v1, Lg/fkd;->z:Landroid/net/Uri;

    iget-object v3, v1, Lg/fkd;->af:Lcom/google/android/gms/internal/ads/zzgd;

    move-object/from16 v5, p0

    invoke-direct/range {v0 .. v6}, Lg/gww;-><init>(Lg/fkd;Landroid/net/Uri;Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zztt;Lg/fkd;Lcom/google/android/gms/internal/ads/zzdf;)V

    iget-boolean v2, v1, Lg/fkd;->e:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lg/fkd;->at()Z

    move-result v2

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-wide v2, v1, Lg/fkd;->h:J

    const/4 v4, 0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v2, v5

    if-eqz v7, :cond_1

    iget-wide v7, v1, Lg/fkd;->an:J

    cmp-long v9, v7, v2

    if-gtz v9, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v4, v1, Lg/fkd;->q:Z

    iput-wide v5, v1, Lg/fkd;->an:J

    return-void

    :cond_1
    :goto_0
    iget-object v2, v1, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v7, v1, Lg/fkd;->an:J

    invoke-interface {v2, v7, v8}, Lcom/google/android/gms/internal/ads/zzadq;->zzg(J)Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    iget-wide v7, v1, Lg/fkd;->an:J

    iget-wide v2, v2, Lcom/google/android/gms/internal/ads/zzadr;->zzc:J

    iget-object v9, v0, Lg/gww;->n:Lcom/google/android/gms/internal/ads/zzadn;

    iput-wide v2, v9, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    iput-wide v7, v0, Lg/gww;->l:J

    iput-boolean v4, v0, Lg/gww;->j:Z

    const/4 v2, 0x0

    iput-boolean v2, v0, Lg/gww;->i:Z

    iget-object v3, v1, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v4, v3

    :goto_1
    if-ge v2, v4, :cond_2

    aget-object v7, v3, v2

    iget-wide v8, v1, Lg/fkd;->an:J

    invoke-virtual {v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzwf;->zzt(J)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    iput-wide v5, v1, Lg/fkd;->an:J

    :cond_3
    invoke-virtual {v1}, Lg/fkd;->ar()I

    move-result v2

    iput v2, v1, Lg/fkd;->aa:I

    iget v2, v1, Lg/fkd;->ai:I

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzyw;->zza(I)I

    move-result v2

    iget-object v3, v1, Lg/fkd;->ae:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-virtual {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzzg;->zza(Lcom/google/android/gms/internal/ads/zzzb;Lcom/google/android/gms/internal/ads/zzyy;I)J

    move-result-wide v8

    iget-object v7, v0, Lg/gww;->b:Lcom/google/android/gms/internal/ads/zzgi;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzui;

    iget-wide v5, v0, Lg/gww;->g:J

    invoke-direct/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzui;-><init>(JLcom/google/android/gms/internal/ads/zzgi;J)V

    iget-wide v2, v0, Lg/gww;->l:J

    iget-wide v5, v1, Lg/fkd;->h:J

    new-instance v7, Lcom/google/android/gms/internal/ads/zzun;

    invoke-static {v2, v3}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v13

    invoke-static {v5, v6}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v15

    const/4 v8, 0x1

    const/4 v9, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v7 .. v16}, Lcom/google/android/gms/internal/ads/zzun;-><init>(IILcom/google/android/gms/internal/ads/zzad;ILjava/lang/Object;JJ)V

    iget-object v0, v1, Lg/fkd;->v:Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {v0, v4, v7}, Lcom/google/android/gms/internal/ads/zzva;->zzg(Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    return-void
.end method

.method public final ap()V
    .locals 1

    iget-boolean v0, p0, Lg/fkd;->e:Z

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v0, p0, Lg/fkd;->ah:Lg/dpa;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final aq()V
    .locals 15

    iget-boolean v0, p0, Lg/fkd;->k:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lg/fkd;->e:Z

    if-nez v0, :cond_b

    iget-boolean v0, p0, Lg/fkd;->u:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwf;->zzi()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v4

    if-eqz v4, :cond_b

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/fkd;->r:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zzc()Z

    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v0, v0

    new-array v1, v0, [Lcom/google/android/gms/internal/ads/zzbw;

    new-array v3, v0, [Z

    const/4 v4, 0x0

    :goto_1
    iget-wide v5, p0, Lg/fkd;->c:J

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x1

    if-ge v4, v0, :cond_9

    iget-object v10, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object v10, v10, v4

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzwf;->zzi()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzbg;->zzg(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_2

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzbg;->zzi(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    aput-boolean v13, v3, v4

    iget-boolean v14, p0, Lg/fkd;->s:Z

    or-int/2addr v13, v14

    iput-boolean v13, p0, Lg/fkd;->s:Z

    invoke-static {v11}, Lcom/google/android/gms/internal/ads/zzbg;->zzh(Ljava/lang/String;)Z

    move-result v11

    cmp-long v13, v5, v7

    if-eqz v13, :cond_4

    if-ne v0, v9, :cond_4

    if-eqz v11, :cond_4

    const/4 v5, 0x1

    goto :goto_3

    :cond_4
    const/4 v5, 0x0

    :goto_3
    iput-boolean v5, p0, Lg/fkd;->i:Z

    iget-object v5, p0, Lg/fkd;->d:Lcom/google/android/gms/internal/ads/zzafv;

    if-eqz v5, :cond_8

    if-nez v12, :cond_5

    iget-object v6, p0, Lg/fkd;->y:[Lg/evi;

    aget-object v6, v6, v4

    iget-boolean v6, v6, Lg/evi;->b:Z

    if-eqz v6, :cond_7

    :cond_5
    iget-object v6, v10, Lcom/google/android/gms/internal/ads/zzad;->zzl:Lcom/google/android/gms/internal/ads/zzbd;

    if-nez v6, :cond_6

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbd;

    new-array v11, v9, [Lcom/google/android/gms/internal/ads/zzbc;

    aput-object v5, v11, v2

    invoke-direct {v6, v7, v8, v11}, Lcom/google/android/gms/internal/ads/zzbd;-><init>(J[Lcom/google/android/gms/internal/ads/zzbc;)V

    goto :goto_4

    :cond_6
    new-array v7, v9, [Lcom/google/android/gms/internal/ads/zzbc;

    aput-object v5, v7, v2

    invoke-virtual {v6, v7}, Lcom/google/android/gms/internal/ads/zzbd;->zzc([Lcom/google/android/gms/internal/ads/zzbc;)Lcom/google/android/gms/internal/ads/zzbd;

    move-result-object v6

    :goto_4
    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzab;->zzS(Lcom/google/android/gms/internal/ads/zzbd;)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v7}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v10

    :cond_7
    if-eqz v12, :cond_8

    iget v6, v10, Lcom/google/android/gms/internal/ads/zzad;->zzh:I

    const/4 v7, -0x1

    if-ne v6, v7, :cond_8

    iget v6, v10, Lcom/google/android/gms/internal/ads/zzad;->zzi:I

    if-ne v6, v7, :cond_8

    iget v5, v5, Lcom/google/android/gms/internal/ads/zzafv;->zza:I

    if-eq v5, v7, :cond_8

    invoke-virtual {v10}, Lcom/google/android/gms/internal/ads/zzad;->zzb()Lcom/google/android/gms/internal/ads/zzab;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/google/android/gms/internal/ads/zzab;->zzy(I)Lcom/google/android/gms/internal/ads/zzab;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzab;->zzaf()Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v10

    :cond_8
    iget-object v5, p0, Lg/fkd;->o:Lcom/google/android/gms/internal/ads/zzrp;

    invoke-interface {v5, v10}, Lcom/google/android/gms/internal/ads/zzrp;->zza(Lcom/google/android/gms/internal/ads/zzad;)I

    move-result v5

    invoke-virtual {v10, v5}, Lcom/google/android/gms/internal/ads/zzad;->zzc(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzbw;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Lcom/google/android/gms/internal/ads/zzad;

    aput-object v5, v8, v2

    invoke-direct {v6, v7, v8}, Lcom/google/android/gms/internal/ads/zzbw;-><init>(Ljava/lang/String;[Lcom/google/android/gms/internal/ads/zzad;)V

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_9
    new-instance v0, Lg/dpa;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzwr;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzwr;-><init>([Lcom/google/android/gms/internal/ads/zzbw;)V

    invoke-direct {v0, v2, v3}, Lg/dpa;-><init>(Lcom/google/android/gms/internal/ads/zzwr;[Z)V

    iput-object v0, p0, Lg/fkd;->ah:Lg/dpa;

    iget-boolean v0, p0, Lg/fkd;->i:Z

    if-eqz v0, :cond_a

    iget-wide v0, p0, Lg/fkd;->h:J

    cmp-long v2, v0, v7

    if-nez v2, :cond_a

    iput-wide v5, p0, Lg/fkd;->h:J

    new-instance v0, Lg/bts;

    iget-object v1, p0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-direct {v0, p0, v1}, Lg/bts;-><init>(Lg/fkd;Lcom/google/android/gms/internal/ads/zzadq;)V

    iput-object v0, p0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    :cond_a
    iget-wide v0, p0, Lg/fkd;->h:J

    iget-object v2, p0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzadq;->zzh()Z

    move-result v2

    iget-boolean v3, p0, Lg/fkd;->ab:Z

    iget-object v4, p0, Lg/fkd;->am:Lcom/google/android/gms/internal/ads/zzvx;

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzvx;->zza(JZZ)V

    iput-boolean v9, p0, Lg/fkd;->e:Z

    iget-object v0, p0, Lg/fkd;->j:Lcom/google/android/gms/internal/ads/zzuo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzuo;->zzi(Lcom/google/android/gms/internal/ads/zzup;)V

    :cond_b
    :goto_5
    return-void
.end method

.method public final ar()I
    .locals 5

    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzwf;->zzd()I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v3
.end method

.method public final as(I)V
    .locals 13

    invoke-virtual {p0}, Lg/fkd;->ap()V

    iget-object v0, p0, Lg/fkd;->ah:Lg/dpa;

    iget-object v1, v0, Lg/dpa;->c:Ljava/lang/Object;

    check-cast v1, [Z

    aget-boolean v2, v1, p1

    if-nez v2, :cond_0

    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwr;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzwr;->zzb(I)Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzbw;->zzb(I)Lcom/google/android/gms/internal/ads/zzad;

    move-result-object v6

    iget-object v0, v6, Lcom/google/android/gms/internal/ads/zzad;->zzo:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbg;->zzb(Ljava/lang/String;)I

    move-result v5

    iget-wide v2, p0, Lg/fkd;->t:J

    move-wide v7, v2

    new-instance v3, Lcom/google/android/gms/internal/ads/zzun;

    invoke-static {v7, v8}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v9

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v12}, Lcom/google/android/gms/internal/ads/zzun;-><init>(IILcom/google/android/gms/internal/ads/zzad;ILjava/lang/Object;JJ)V

    iget-object v0, p0, Lg/fkd;->v:Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {v0, v3}, Lcom/google/android/gms/internal/ads/zzva;->zzc(Lcom/google/android/gms/internal/ads/zzun;)V

    const/4 v0, 0x1

    aput-boolean v0, v1, p1

    :cond_0
    return-void
.end method

.method public final at()Z
    .locals 5

    iget-wide v0, p0, Lg/fkd;->an:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final au(Z)J
    .locals 5

    const/4 v0, 0x0

    const-wide/high16 v1, -0x8000000000000000L

    :goto_0
    iget-object v3, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v4, v3

    if-ge v0, v4, :cond_2

    if-nez p1, :cond_0

    iget-object v4, p0, Lg/fkd;->ah:Lg/dpa;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v4, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v4, [Z

    aget-boolean v4, v4, v0

    if-eqz v4, :cond_1

    :cond_0
    aget-object v3, v3, v0

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwf;->zzh()J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public final av()Z
    .locals 1

    iget-boolean v0, p0, Lg/fkd;->n:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lg/fkd;->at()Z

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

.method public final aw(Lg/evi;)Lcom/google/android/gms/internal/ads/zzadx;
    .locals 5

    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lg/fkd;->y:[Lg/evi;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Lg/evi;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p1, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object p1, p1, v1

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lg/fkd;->u:Z

    if-eqz v1, :cond_2

    iget p1, p1, Lg/evi;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Extractor added new track (id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") after finishing tracks."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgressiveMediaPeriod"

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzacm;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzacm;-><init>()V

    return-object p1

    :cond_2
    new-instance v1, Lcom/google/android/gms/internal/ads/zzwf;

    iget-object v2, p0, Lg/fkd;->f:Lcom/google/android/gms/internal/ads/zzys;

    iget-object v3, p0, Lg/fkd;->o:Lcom/google/android/gms/internal/ads/zzrp;

    iget-object v4, p0, Lg/fkd;->x:Lcom/google/android/gms/internal/ads/zzrk;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzwf;-><init>(Lcom/google/android/gms/internal/ads/zzys;Lcom/google/android/gms/internal/ads/zzrp;Lcom/google/android/gms/internal/ads/zzrk;)V

    invoke-virtual {v1, p0}, Lcom/google/android/gms/internal/ads/zzwf;->zzu(Lcom/google/android/gms/internal/ads/zzwd;)V

    iget-object v2, p0, Lg/fkd;->y:[Lg/evi;

    add-int/lit8 v3, v0, 0x1

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lg/evi;

    aput-object p1, v2, v0

    sget p1, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    iput-object v2, p0, Lg/fkd;->y:[Lg/evi;

    iget-object p1, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    invoke-static {p1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/android/gms/internal/ads/zzwf;

    aput-object v1, p1, v0

    iput-object p1, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    return-object v1
.end method

.method public final ax(I)V
    .locals 4

    invoke-virtual {p0}, Lg/fkd;->ap()V

    iget-object v0, p0, Lg/fkd;->ah:Lg/dpa;

    iget-object v0, v0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, [Z

    iget-boolean v1, p0, Lg/fkd;->aj:Z

    if-eqz v1, :cond_2

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object p1, v0, p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzwf;->zzx(Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lg/fkd;->an:J

    iput-boolean v0, p0, Lg/fkd;->aj:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/fkd;->n:Z

    iput-wide v1, p0, Lg/fkd;->t:J

    iput v0, p0, Lg/fkd;->aa:I

    iget-object p1, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3, v0}, Lcom/google/android/gms/internal/ads/zzwf;->zzp(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lg/fkd;->j:Lcom/google/android/gms/internal/ads/zzuo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, p0}, Lcom/google/android/gms/internal/ads/zzwh;->zzg(Lcom/google/android/gms/internal/ads/zzwi;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public final zzD()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/fkd;->u:Z

    iget-object v0, p0, Lg/fkd;->ag:Landroid/os/Handler;

    iget-object v1, p0, Lg/fkd;->p:Lcom/google/android/gms/internal/ads/zzvj;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final bridge synthetic zzJ(Lcom/google/android/gms/internal/ads/zzzb;JJZ)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lg/gww;

    iget-object v2, v1, Lg/gww;->m:Lcom/google/android/gms/internal/ads/zzhc;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzui;

    iget-wide v4, v1, Lg/gww;->g:J

    iget-object v6, v1, Lg/gww;->b:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhc;->zzh()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhc;->zzi()Ljava/util/Map;

    move-result-object v8

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhc;->zzg()J

    move-result-wide v13

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    invoke-direct/range {v3 .. v14}, Lcom/google/android/gms/internal/ads/zzui;-><init>(JLcom/google/android/gms/internal/ads/zzgi;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-wide v1, v1, Lg/gww;->l:J

    iget-wide v4, v0, Lg/fkd;->h:J

    new-instance v6, Lcom/google/android/gms/internal/ads/zzun;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v12

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v14

    const/4 v7, 0x1

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v15}, Lcom/google/android/gms/internal/ads/zzun;-><init>(IILcom/google/android/gms/internal/ads/zzad;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lg/fkd;->v:Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {v1, v3, v6}, Lcom/google/android/gms/internal/ads/zzva;->zzd(Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    if-nez p6, :cond_1

    iget-object v1, v0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {v5, v3}, Lcom/google/android/gms/internal/ads/zzwf;->zzp(Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lg/fkd;->l:I

    if-lez v1, :cond_1

    iget-object v1, v0, Lg/fkd;->j:Lcom/google/android/gms/internal/ads/zzuo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzwh;->zzg(Lcom/google/android/gms/internal/ads/zzwi;)V

    :cond_1
    return-void
.end method

.method public final bridge synthetic zzK(Lcom/google/android/gms/internal/ads/zzzb;JJ)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lg/gww;

    iget-wide v2, v0, Lg/fkd;->h:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    if-nez v7, :cond_1

    iget-object v2, v0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzadq;->zzh()Z

    move-result v2

    invoke-virtual {v0, v6}, Lg/fkd;->au(Z)J

    move-result-wide v3

    const-wide/high16 v7, -0x8000000000000000L

    cmp-long v5, v3, v7

    if-nez v5, :cond_0

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v7, 0x2710

    add-long/2addr v3, v7

    :goto_0
    iput-wide v3, v0, Lg/fkd;->h:J

    iget-object v5, v0, Lg/fkd;->am:Lcom/google/android/gms/internal/ads/zzvx;

    iget-boolean v7, v0, Lg/fkd;->ab:Z

    invoke-virtual {v5, v3, v4, v2, v7}, Lcom/google/android/gms/internal/ads/zzvx;->zza(JZZ)V

    :cond_1
    iget-object v2, v1, Lg/gww;->m:Lcom/google/android/gms/internal/ads/zzhc;

    new-instance v7, Lcom/google/android/gms/internal/ads/zzui;

    iget-wide v8, v1, Lg/gww;->g:J

    iget-object v10, v1, Lg/gww;->b:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhc;->zzh()Landroid/net/Uri;

    move-result-object v11

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhc;->zzi()Ljava/util/Map;

    move-result-object v12

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzhc;->zzg()J

    move-result-wide v17

    move-wide/from16 v13, p2

    move-wide/from16 v15, p4

    invoke-direct/range {v7 .. v18}, Lcom/google/android/gms/internal/ads/zzui;-><init>(JLcom/google/android/gms/internal/ads/zzgi;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    iget-wide v1, v1, Lg/gww;->l:J

    iget-wide v3, v0, Lg/fkd;->h:J

    new-instance v8, Lcom/google/android/gms/internal/ads/zzun;

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v14

    invoke-static {v3, v4}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v16

    const/4 v9, 0x1

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct/range {v8 .. v17}, Lcom/google/android/gms/internal/ads/zzun;-><init>(IILcom/google/android/gms/internal/ads/zzad;ILjava/lang/Object;JJ)V

    iget-object v1, v0, Lg/fkd;->v:Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {v1, v7, v8}, Lcom/google/android/gms/internal/ads/zzva;->zze(Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;)V

    iput-boolean v6, v0, Lg/fkd;->q:Z

    iget-object v1, v0, Lg/fkd;->j:Lcom/google/android/gms/internal/ads/zzuo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/ads/zzwh;->zzg(Lcom/google/android/gms/internal/ads/zzwi;)V

    return-void
.end method

.method public final zzL()V
    .locals 4

    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwf;->zzo()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/fkd;->m:Lcom/google/android/gms/internal/ads/zztt;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvh;->zze()V

    return-void
.end method

.method public final zzM(Lcom/google/android/gms/internal/ads/zzad;)V
    .locals 1

    iget-object p1, p0, Lg/fkd;->ag:Landroid/os/Handler;

    iget-object v0, p0, Lg/fkd;->p:Lcom/google/android/gms/internal/ads/zzvj;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zzO(Lcom/google/android/gms/internal/ads/zzadq;)V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzvl;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzvl;-><init>(Lg/fkd;Lcom/google/android/gms/internal/ads/zzadq;)V

    iget-object p1, p0, Lg/fkd;->ag:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final zza(JLcom/google/android/gms/internal/ads/zzls;)J
    .locals 22

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-object/from16 v3, p3

    invoke-virtual {v0}, Lg/fkd;->ap()V

    iget-object v4, v0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v4}, Lcom/google/android/gms/internal/ads/zzadq;->zzh()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_0

    return-wide v5

    :cond_0
    iget-object v4, v0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v4, v1, v2}, Lcom/google/android/gms/internal/ads/zzadq;->zzg(J)Lcom/google/android/gms/internal/ads/zzado;

    move-result-object v4

    iget-object v7, v4, Lcom/google/android/gms/internal/ads/zzado;->zza:Lcom/google/android/gms/internal/ads/zzadr;

    iget-object v4, v4, Lcom/google/android/gms/internal/ads/zzado;->zzb:Lcom/google/android/gms/internal/ads/zzadr;

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzls;->zzc:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_2

    iget-wide v8, v3, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    cmp-long v10, v8, v5

    if-nez v10, :cond_1

    return-wide v1

    :cond_1
    move-wide v8, v5

    :cond_2
    iget-wide v10, v7, Lcom/google/android/gms/internal/ads/zzadr;->zzb:J

    sget v7, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    sub-long v12, v1, v8

    xor-long/2addr v8, v1

    xor-long v14, v1, v12

    move-wide/from16 v16, v5

    iget-wide v5, v3, Lcom/google/android/gms/internal/ads/zzls;->zzd:J

    add-long v18, v1, v5

    xor-long v20, v1, v18

    xor-long v5, v5, v18

    and-long/2addr v8, v14

    cmp-long v3, v8, v16

    if-gez v3, :cond_3

    const-wide/high16 v12, -0x8000000000000000L

    :cond_3
    and-long v5, v20, v5

    cmp-long v3, v5, v16

    if-gez v3, :cond_4

    const-wide v18, 0x7fffffffffffffffL

    :cond_4
    const/4 v3, 0x1

    const/4 v5, 0x0

    cmp-long v6, v12, v10

    if-gtz v6, :cond_5

    cmp-long v6, v10, v18

    if-gtz v6, :cond_5

    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    :goto_0
    iget-wide v7, v4, Lcom/google/android/gms/internal/ads/zzadr;->zzb:J

    cmp-long v4, v12, v7

    if-gtz v4, :cond_6

    cmp-long v4, v7, v18

    if-gtz v4, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-eqz v6, :cond_7

    if-eqz v3, :cond_7

    sub-long v3, v10, v1

    sub-long v1, v7, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v3

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-gtz v5, :cond_9

    goto :goto_2

    :cond_7
    if-eqz v6, :cond_8

    :goto_2
    return-wide v10

    :cond_8
    if-eqz v3, :cond_a

    :cond_9
    return-wide v7

    :cond_a
    return-wide v12
.end method

.method public final zzb()J
    .locals 11

    invoke-virtual {p0}, Lg/fkd;->ap()V

    iget-boolean v0, p0, Lg/fkd;->q:Z

    const-wide/high16 v1, -0x8000000000000000L

    if-nez v0, :cond_7

    iget v0, p0, Lg/fkd;->l:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lg/fkd;->at()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lg/fkd;->an:J

    return-wide v0

    :cond_1
    iget-boolean v0, p0, Lg/fkd;->s:Z

    const/4 v3, 0x0

    const-wide v4, 0x7fffffffffffffffL

    if-eqz v0, :cond_3

    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v0, v0

    move-wide v7, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v0, :cond_4

    iget-object v9, p0, Lg/fkd;->ah:Lg/dpa;

    iget-object v10, v9, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v10, [Z

    aget-boolean v10, v10, v6

    if-eqz v10, :cond_2

    iget-object v9, v9, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v9, [Z

    aget-boolean v9, v9, v6

    if-eqz v9, :cond_2

    iget-object v9, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzwf;->zzw()Z

    move-result v9

    if-nez v9, :cond_2

    iget-object v9, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object v9, v9, v6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzwf;->zzh()J

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    move-wide v7, v4

    :cond_4
    cmp-long v0, v7, v4

    if-nez v0, :cond_5

    invoke-virtual {p0, v3}, Lg/fkd;->au(Z)J

    move-result-wide v7

    :cond_5
    cmp-long v0, v7, v1

    if-nez v0, :cond_6

    iget-wide v0, p0, Lg/fkd;->t:J

    return-wide v0

    :cond_6
    return-wide v7

    :cond_7
    :goto_1
    return-wide v1
.end method

.method public final zzc()J
    .locals 2

    invoke-virtual {p0}, Lg/fkd;->zzb()J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzd()J
    .locals 2

    iget-boolean v0, p0, Lg/fkd;->n:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/fkd;->q:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lg/fkd;->ar()I

    move-result v0

    iget v1, p0, Lg/fkd;->aa:I

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/fkd;->n:Z

    iget-wide v0, p0, Lg/fkd;->t:J

    return-wide v0

    :cond_1
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final zze(J)J
    .locals 7

    invoke-virtual {p0}, Lg/fkd;->ap()V

    iget-object v0, p0, Lg/fkd;->ah:Lg/dpa;

    iget-object v0, v0, Lg/dpa;->d:Ljava/lang/Object;

    check-cast v0, [Z

    iget-object v1, p0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/zzadq;->zzh()Z

    move-result v1

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const-wide/16 p1, 0x0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lg/fkd;->n:Z

    iput-wide p1, p0, Lg/fkd;->t:J

    invoke-virtual {p0}, Lg/fkd;->at()Z

    move-result v2

    if-eqz v2, :cond_1

    iput-wide p1, p0, Lg/fkd;->an:J

    return-wide p1

    :cond_1
    iget v2, p0, Lg/fkd;->ai:I

    const/4 v3, 0x7

    iget-object v4, p0, Lg/fkd;->ae:Lcom/google/android/gms/internal/ads/zzzg;

    if-eq v2, v3, :cond_5

    iget-boolean v2, p0, Lg/fkd;->q:Z

    if-nez v2, :cond_2

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzg;->zzl()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_2
    iget-object v2, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v2, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_8

    iget-object v5, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object v5, v5, v3

    iget-boolean v6, p0, Lg/fkd;->i:Z

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzwf;->zza()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzwf;->zzy(I)Z

    move-result v5

    goto :goto_1

    :cond_3
    invoke-virtual {v5, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzwf;->zzz(JZ)Z

    move-result v5

    :goto_1
    if-nez v5, :cond_4

    aget-boolean v5, v0, v3

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lg/fkd;->s:Z

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    iput-boolean v1, p0, Lg/fkd;->aj:Z

    iput-wide p1, p0, Lg/fkd;->an:J

    iput-boolean v1, p0, Lg/fkd;->q:Z

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzg;->zzl()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v2, v0

    :goto_3
    if-ge v1, v2, :cond_6

    aget-object v3, v0, v1

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzwf;->zzk()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzg;->zzg()V

    return-wide p1

    :cond_7
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzzg;->zzh()V

    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v2, :cond_8

    aget-object v4, v0, v3

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/zzwf;->zzp(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_8
    return-wide p1
.end method

.method public final zzf([Lcom/google/android/gms/internal/ads/zzyd;[Z[Lcom/google/android/gms/internal/ads/zzwg;[ZJ)J
    .locals 7

    invoke-virtual {p0}, Lg/fkd;->ap()V

    iget-object v0, p0, Lg/fkd;->ah:Lg/dpa;

    iget-object v1, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzwr;

    iget-object v0, v0, Lg/dpa;->e:Ljava/lang/Object;

    check-cast v0, [Z

    iget v2, p0, Lg/fkd;->l:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget-object v5, p3, v4

    if-eqz v5, :cond_1

    aget-object v6, p1, v4

    if-eqz v6, :cond_0

    aget-boolean v6, p2, v4

    if-nez v6, :cond_1

    :cond_0
    check-cast v5, Lg/ftb;

    iget v5, v5, Lg/ftb;->a:I

    aget-boolean v6, v0, v5

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget v6, p0, Lg/fkd;->l:I

    add-int/lit8 v6, v6, -0x1

    iput v6, p0, Lg/fkd;->l:I

    aput-boolean v3, v0, v5

    const/4 v5, 0x0

    aput-object v5, p3, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    iget-boolean p2, p0, Lg/fkd;->ad:Z

    const/4 v4, 0x1

    if-eqz p2, :cond_4

    if-nez v2, :cond_3

    :goto_1
    const/4 p2, 0x1

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x0

    cmp-long p2, p5, v5

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Lg/fkd;->i:Z

    if-nez p2, :cond_3

    goto :goto_1

    :goto_2
    const/4 v2, 0x0

    :goto_3
    array-length v5, p1

    if-ge v2, v5, :cond_9

    aget-object v5, p3, v2

    if-nez v5, :cond_8

    aget-object v5, p1, v2

    if-eqz v5, :cond_8

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyh;->zzc()I

    move-result v6

    if-ne v6, v4, :cond_5

    const/4 v6, 0x1

    goto :goto_4

    :cond_5
    const/4 v6, 0x0

    :goto_4
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-interface {v5, v3}, Lcom/google/android/gms/internal/ads/zzyh;->zza(I)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x1

    goto :goto_5

    :cond_6
    const/4 v6, 0x0

    :goto_5
    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzyh;->zze()Lcom/google/android/gms/internal/ads/zzbw;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzwr;->zza(Lcom/google/android/gms/internal/ads/zzbw;)I

    move-result v5

    aget-boolean v6, v0, v5

    xor-int/2addr v6, v4

    invoke-static {v6}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget v6, p0, Lg/fkd;->l:I

    add-int/2addr v6, v4

    iput v6, p0, Lg/fkd;->l:I

    aput-boolean v4, v0, v5

    new-instance v6, Lg/ftb;

    invoke-direct {v6, p0, v5}, Lg/ftb;-><init>(Lg/fkd;I)V

    aput-object v6, p3, v2

    aput-boolean v4, p4, v2

    if-nez p2, :cond_8

    iget-object p2, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object p2, p2, v5

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzwf;->zzb()I

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p2, p5, p6, v4}, Lcom/google/android/gms/internal/ads/zzwf;->zzz(JZ)Z

    move-result p2

    if-nez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_6

    :cond_7
    const/4 p2, 0x0

    :cond_8
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    iget p1, p0, Lg/fkd;->l:I

    if-nez p1, :cond_c

    iput-boolean v3, p0, Lg/fkd;->aj:Z

    iput-boolean v3, p0, Lg/fkd;->n:Z

    iget-object p1, p0, Lg/fkd;->ae:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzg;->zzl()Z

    move-result p2

    if-eqz p2, :cond_b

    iget-object p2, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length p3, p2

    :goto_7
    if-ge v3, p3, :cond_a

    aget-object p4, p2, v3

    invoke-virtual {p4}, Lcom/google/android/gms/internal/ads/zzwf;->zzk()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzg;->zzg()V

    goto :goto_a

    :cond_b
    iput-boolean v3, p0, Lg/fkd;->q:Z

    iget-object p1, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length p2, p1

    const/4 p3, 0x0

    :goto_8
    if-ge p3, p2, :cond_e

    aget-object p4, p1, p3

    invoke-virtual {p4, v3}, Lcom/google/android/gms/internal/ads/zzwf;->zzp(Z)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_8

    :cond_c
    if-eqz p2, :cond_e

    invoke-virtual {p0, p5, p6}, Lg/fkd;->zze(J)J

    move-result-wide p5

    :goto_9
    array-length p1, p3

    if-ge v3, p1, :cond_e

    aget-object p1, p3, v3

    if-eqz p1, :cond_d

    aput-boolean v4, p4, v3

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_e
    :goto_a
    iput-boolean v4, p0, Lg/fkd;->ad:Z

    return-wide p5
.end method

.method public final zzh()Lcom/google/android/gms/internal/ads/zzwr;
    .locals 1

    invoke-virtual {p0}, Lg/fkd;->ap()V

    iget-object v0, p0, Lg/fkd;->ah:Lg/dpa;

    iget-object v0, v0, Lg/dpa;->g:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzwr;

    return-object v0
.end method

.method public final zzj(JZ)V
    .locals 5

    iget-boolean p3, p0, Lg/fkd;->i:Z

    if-eqz p3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lg/fkd;->ap()V

    invoke-virtual {p0}, Lg/fkd;->at()Z

    move-result p3

    if-nez p3, :cond_1

    iget-object p3, p0, Lg/fkd;->ah:Lg/dpa;

    iget-object p3, p3, Lg/dpa;->e:Ljava/lang/Object;

    check-cast p3, [Z

    iget-object v0, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    aget-object v3, v3, v2

    aget-boolean v4, p3, v2

    invoke-virtual {v3, p1, p2, v1, v4}, Lcom/google/android/gms/internal/ads/zzwf;->zzj(JZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final zzk()V
    .locals 2

    iget v0, p0, Lg/fkd;->ai:I

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzyw;->zza(I)I

    move-result v0

    iget-object v1, p0, Lg/fkd;->ae:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzzg;->zzi(I)V

    iget-boolean v0, p0, Lg/fkd;->q:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lg/fkd;->e:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "Loading finished before preparation is complete."

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbh;->zza(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/zzbh;

    move-result-object v0

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzl(Lcom/google/android/gms/internal/ads/zzuo;J)V
    .locals 0

    iput-object p1, p0, Lg/fkd;->j:Lcom/google/android/gms/internal/ads/zzuo;

    iget-object p1, p0, Lg/fkd;->r:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzdf;->zze()Z

    invoke-virtual {p0}, Lg/fkd;->ao()V

    return-void
.end method

.method public final zzm(J)V
    .locals 0

    return-void
.end method

.method public final zzo(Lcom/google/android/gms/internal/ads/zzko;)Z
    .locals 1

    iget-boolean p1, p0, Lg/fkd;->q:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lg/fkd;->ae:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzg;->zzk()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lg/fkd;->aj:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lg/fkd;->e:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lg/fkd;->l:I

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lg/fkd;->r:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zze()Z

    move-result v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzzg;->zzl()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lg/fkd;->ao()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final zzp()Z
    .locals 1

    iget-object v0, p0, Lg/fkd;->ae:Lcom/google/android/gms/internal/ads/zzzg;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzzg;->zzl()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/fkd;->r:Lcom/google/android/gms/internal/ads/zzdf;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzdf;->zzd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic zzu(Lcom/google/android/gms/internal/ads/zzzb;JJLjava/io/IOException;I)Lcom/google/android/gms/internal/ads/zzyz;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    move-object/from16 v2, p1

    check-cast v2, Lg/gww;

    iget-object v3, v2, Lg/gww;->m:Lcom/google/android/gms/internal/ads/zzhc;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzui;

    iget-wide v5, v2, Lg/gww;->g:J

    iget-object v7, v2, Lg/gww;->b:Lcom/google/android/gms/internal/ads/zzgi;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhc;->zzh()Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhc;->zzi()Ljava/util/Map;

    move-result-object v9

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzhc;->zzg()J

    move-result-wide v14

    move-wide/from16 v10, p2

    move-wide/from16 v12, p4

    invoke-direct/range {v4 .. v15}, Lcom/google/android/gms/internal/ads/zzui;-><init>(JLcom/google/android/gms/internal/ads/zzgi;Landroid/net/Uri;Ljava/util/Map;JJJ)V

    sget v3, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzbh;

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    if-nez v3, :cond_0

    instance-of v3, v1, Ljava/io/FileNotFoundException;

    if-nez v3, :cond_0

    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzgt;

    if-nez v3, :cond_0

    instance-of v3, v1, Lcom/google/android/gms/internal/ads/zzze;

    if-nez v3, :cond_0

    move-object v3, v1

    :goto_0
    if-eqz v3, :cond_2

    instance-of v7, v3, Lcom/google/android/gms/internal/ads/zzge;

    if-eqz v7, :cond_1

    move-object v7, v3

    check-cast v7, Lcom/google/android/gms/internal/ads/zzge;

    iget v7, v7, Lcom/google/android/gms/internal/ads/zzge;->zza:I

    const/16 v8, 0x7d8

    if-ne v7, v8, :cond_1

    :cond_0
    move-wide v7, v5

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    goto :goto_0

    :cond_2
    add-int/lit8 v3, p7, -0x1

    mul-int/lit16 v3, v3, 0x3e8

    const/16 v7, 0x1388

    invoke-static {v3, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-long v7, v3

    :goto_1
    const/4 v3, 0x1

    cmp-long v9, v7, v5

    if-nez v9, :cond_3

    sget-object v5, Lcom/google/android/gms/internal/ads/zzzg;->zzb:Lcom/google/android/gms/internal/ads/zzyz;

    goto :goto_6

    :cond_3
    invoke-virtual {v0}, Lg/fkd;->ar()I

    move-result v9

    iget v10, v0, Lg/fkd;->aa:I

    const/4 v11, 0x0

    if-le v9, v10, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, 0x0

    :goto_2
    iget-boolean v12, v0, Lg/fkd;->w:Z

    if-nez v12, :cond_8

    iget-object v12, v0, Lg/fkd;->ac:Lcom/google/android/gms/internal/ads/zzadq;

    if-eqz v12, :cond_5

    invoke-interface {v12}, Lcom/google/android/gms/internal/ads/zzadq;->zza()J

    move-result-wide v12

    cmp-long v14, v12, v5

    if-eqz v14, :cond_5

    goto :goto_4

    :cond_5
    iget-boolean v5, v0, Lg/fkd;->e:Z

    if-eqz v5, :cond_6

    invoke-virtual {v0}, Lg/fkd;->av()Z

    move-result v6

    if-nez v6, :cond_6

    iput-boolean v3, v0, Lg/fkd;->aj:Z

    sget-object v5, Lcom/google/android/gms/internal/ads/zzzg;->zza:Lcom/google/android/gms/internal/ads/zzyz;

    goto :goto_6

    :cond_6
    iput-boolean v5, v0, Lg/fkd;->n:Z

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lg/fkd;->t:J

    iput v11, v0, Lg/fkd;->aa:I

    iget-object v9, v0, Lg/fkd;->ak:[Lcom/google/android/gms/internal/ads/zzwf;

    array-length v12, v9

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_7

    aget-object v14, v9, v13

    invoke-virtual {v14, v11}, Lcom/google/android/gms/internal/ads/zzwf;->zzp(Z)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_7
    iget-object v9, v2, Lg/gww;->n:Lcom/google/android/gms/internal/ads/zzadn;

    iput-wide v5, v9, Lcom/google/android/gms/internal/ads/zzadn;->zza:J

    iput-wide v5, v2, Lg/gww;->l:J

    iput-boolean v3, v2, Lg/gww;->j:Z

    iput-boolean v11, v2, Lg/gww;->i:Z

    goto :goto_5

    :cond_8
    :goto_4
    iput v9, v0, Lg/fkd;->aa:I

    :goto_5
    invoke-static {v10, v7, v8}, Lcom/google/android/gms/internal/ads/zzzg;->zzb(ZJ)Lcom/google/android/gms/internal/ads/zzyz;

    move-result-object v5

    :goto_6
    invoke-virtual {v5}, Lcom/google/android/gms/internal/ads/zzyz;->zzc()Z

    move-result v6

    xor-int/2addr v3, v6

    iget-wide v6, v2, Lg/gww;->l:J

    iget-wide v8, v0, Lg/fkd;->h:J

    invoke-static {v6, v7}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v16

    invoke-static {v8, v9}, Lcom/google/android/gms/internal/ads/zzen;->zzv(J)J

    move-result-wide v18

    new-instance v10, Lcom/google/android/gms/internal/ads/zzun;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/4 v11, 0x1

    const/4 v12, -0x1

    const/4 v13, 0x0

    invoke-direct/range {v10 .. v19}, Lcom/google/android/gms/internal/ads/zzun;-><init>(IILcom/google/android/gms/internal/ads/zzad;ILjava/lang/Object;JJ)V

    iget-object v2, v0, Lg/fkd;->v:Lcom/google/android/gms/internal/ads/zzva;

    invoke-virtual {v2, v4, v10, v1, v3}, Lcom/google/android/gms/internal/ads/zzva;->zzf(Lcom/google/android/gms/internal/ads/zzui;Lcom/google/android/gms/internal/ads/zzun;Ljava/io/IOException;Z)V

    return-object v5
.end method

.method public final zzw(II)Lcom/google/android/gms/internal/ads/zzadx;
    .locals 1

    new-instance p2, Lg/evi;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0}, Lg/evi;-><init>(IZ)V

    invoke-virtual {p0, p2}, Lg/fkd;->aw(Lg/evi;)Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object p1

    return-object p1
.end method
