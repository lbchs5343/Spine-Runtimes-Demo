.class public final Lcom/google/android/gms/internal/ads/zzccg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# instance fields
.field public final b:[Ljava/lang/String;

.field public c:Z

.field public d:Z

.field public e:Lcom/google/android/gms/internal/ads/zzcbl;

.field public final f:Lcom/google/android/gms/internal/ads/zzbcz;

.field public g:Z

.field public final h:Lcom/google/android/gms/internal/ads/zzbdc;

.field public final i:Landroid/content/Context;

.field public final j:Lg/vg;

.field public k:Z

.field public l:Z

.field public m:Z

.field public final n:Ljava/lang/String;

.field public o:Z

.field public p:J

.field public final q:Lg/akx;

.field public final r:[J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lg/cbv;->a:Lg/cbv;

    iget-object v0, v0, Lg/cbv;->c:Ljava/util/Random;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzmr:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v2, Lg/edt;->a:Lg/edt;

    iget-object v2, v2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/google/android/gms/internal/ads/zzccg;->a:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lg/akx;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbcz;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/dzh;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Lg/dzh;-><init>(I)V

    const-wide/16 v2, 0x1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-string v1, "min_1"

    invoke-virtual/range {v0 .. v5}, Lg/dzh;->u(Ljava/lang/String;DD)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v4, 0x4014000000000000L    # 5.0

    const-string v1, "1_5"

    invoke-virtual/range {v0 .. v5}, Lg/dzh;->u(Ljava/lang/String;DD)V

    const-wide/high16 v2, 0x4014000000000000L    # 5.0

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    const-string v1, "5_10"

    invoke-virtual/range {v0 .. v5}, Lg/dzh;->u(Ljava/lang/String;DD)V

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-string v1, "10_20"

    invoke-virtual/range {v0 .. v5}, Lg/dzh;->u(Ljava/lang/String;DD)V

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x403e000000000000L    # 30.0

    const-string v1, "20_30"

    invoke-virtual/range {v0 .. v5}, Lg/dzh;->u(Ljava/lang/String;DD)V

    const-wide/high16 v2, 0x403e000000000000L    # 30.0

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-string v1, "30_max"

    invoke-virtual/range {v0 .. v5}, Lg/dzh;->u(Ljava/lang/String;DD)V

    new-instance v1, Lg/vg;

    invoke-direct {v1, v0}, Lg/vg;-><init>(Lg/dzh;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzccg;->j:Lg/vg;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->m:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->o:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->c:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->g:Z

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/google/android/gms/internal/ads/zzccg;->p:J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccg;->i:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccg;->q:Lg/akx;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccg;->n:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzccg;->h:Lcom/google/android/gms/internal/ads/zzbdc;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzccg;->f:Lcom/google/android/gms/internal/ads/zzbcz;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzbcn;->zzK:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object p2, Lg/edt;->a:Lg/edt;

    iget-object p2, p2, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez p1, :cond_0

    new-array p1, v0, [Ljava/lang/String;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccg;->b:[Ljava/lang/String;

    new-array p1, v0, [J

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccg;->r:[J

    return-void

    :cond_0
    const-string p2, ","

    invoke-static {p1, p2}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length p2, p1

    new-array p3, p2, [Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzccg;->b:[Ljava/lang/String;

    new-array p2, p2, [J

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzccg;->r:[J

    :goto_0
    array-length p2, p1

    if-ge v0, p2, :cond_1

    :try_start_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzccg;->r:[J

    aget-object p3, p1, v0

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    aput-wide p3, p2, v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p2, Lg/agd;->a:Lcom/google/android/gms/internal/ads/zzfxd;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzccg;->r:[J

    aput-wide v1, p2, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzcbl;)V
    .locals 3

    const-string v0, "vpc2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccg;->f:Lcom/google/android/gms/internal/ads/zzbcz;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccg;->h:Lcom/google/android/gms/internal/ads/zzbdc;

    invoke-static {v2, v1, v0}, Lcom/google/android/gms/internal/ads/zzbcu;->zza(Lcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbcz;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->m:Z

    const-string v0, "vpn"

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcbl;->zzj()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lcom/google/android/gms/internal/ads/zzbdc;->zzd(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzccg;->e:Lcom/google/android/gms/internal/ads/zzcbl;

    return-void
.end method

.method public final zzb()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->m:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->o:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "vfr2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzccg;->h:Lcom/google/android/gms/internal/ads/zzbdc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccg;->f:Lcom/google/android/gms/internal/ads/zzbcz;

    invoke-static {v1, v2, v0}, Lcom/google/android/gms/internal/ads/zzbcu;->zza(Lcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbcz;[Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->o:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public final zzc()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->l:Z

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzccg;->o:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzccg;->c:Z

    if-nez v1, :cond_0

    const-string v1, "vfp2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzccg;->h:Lcom/google/android/gms/internal/ads/zzbdc;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzccg;->f:Lcom/google/android/gms/internal/ads/zzbcz;

    invoke-static {v2, v3, v1}, Lcom/google/android/gms/internal/ads/zzbcu;->zza(Lcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbcz;[Ljava/lang/String;)Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->c:Z

    :cond_0
    return-void
.end method

.method public final zzd()V
    .locals 21

    move-object/from16 v0, p0

    sget-boolean v1, Lcom/google/android/gms/internal/ads/zzccg;->a:Z

    if-eqz v1, :cond_7

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzccg;->d:Z

    if-nez v1, :cond_7

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "type"

    const-string v3, "native-player-metrics"

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzccg;->n:Ljava/lang/String;

    const-string v3, "request"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzccg;->e:Lcom/google/android/gms/internal/ads/zzcbl;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcbl;->zzj()Ljava/lang/String;

    move-result-object v2

    const-string v3, "player"

    invoke-virtual {v1, v3, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzccg;->j:Lg/vg;

    iget-object v3, v2, Lg/vg;->e:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/String;

    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_0

    new-instance v8, Lg/doc;

    aget-object v9, v3, v6

    iget-object v7, v2, Lg/vg;->b:Ljava/lang/Object;

    check-cast v7, [D

    iget-object v10, v2, Lg/vg;->a:Ljava/lang/Object;

    check-cast v10, [D

    iget-object v11, v2, Lg/vg;->c:Ljava/lang/Object;

    check-cast v11, [I

    aget-wide v12, v7, v6

    aget-wide v14, v10, v6

    aget v7, v11, v6

    int-to-double v10, v7

    iget v5, v2, Lg/vg;->d:I

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    int-to-double v2, v5

    div-double/2addr v10, v2

    move-wide/from16 v19, v14

    move-wide v14, v10

    move-wide v10, v12

    move-wide/from16 v12, v19

    move/from16 v16, v7

    invoke-direct/range {v8 .. v16}, Lg/doc;-><init>(Ljava/lang/String;DDDI)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/doc;

    iget-object v4, v3, Lg/doc;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, v3, Lg/doc;->b:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "fps_c_"

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v5}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v3, Lg/doc;->c:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v3, Lg/doc;->a:D

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v3

    const-string v5, "fps_p_"

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    iget-object v2, v0, Lcom/google/android/gms/internal/ads/zzccg;->r:[J

    array-length v3, v2

    if-ge v5, v3, :cond_3

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzccg;->b:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_2

    aget-wide v6, v2, v5

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v4, "fh_"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    sget-object v2, Lg/ti;->a:Lg/ti;

    iget-object v2, v2, Lg/ti;->z:Lg/esy;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzccg;->q:Lg/akx;

    iget-object v3, v3, Lg/akx;->afmaVersion:Ljava/lang/String;

    iget-object v4, v2, Lg/esy;->k:Ljava/util/concurrent/atomic/AtomicReference;

    const-string v5, "device"

    invoke-static {}, Lg/esy;->al()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/google/android/gms/internal/ads/zzbcn;->zza:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v5, Lg/edt;->a:Lg/edt;

    iget-object v6, v5, Lg/edt;->b:Lcom/google/android/gms/internal/ads/zzbcf;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzbcf;->zza()Ljava/util/List;

    move-result-object v6

    const-string v7, ","

    invoke-static {v7, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "eids"

    invoke-virtual {v1, v7, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v6

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/google/android/gms/internal/ads/zzccg;->i:Landroid/content/Context;

    if-eqz v6, :cond_4

    const-string v2, "Empty or null bundle."

    invoke-static {v2}, Lg/agd;->c(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    sget-object v6, Lcom/google/android/gms/internal/ads/zzbcn;->zzki:Lcom/google/android/gms/internal/ads/zzbce;

    iget-object v5, v5, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, v2, Lg/esy;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v6

    if-nez v6, :cond_6

    new-instance v6, Lg/bzo;

    invoke-direct {v6, v2, v8, v5}, Lg/bzo;-><init>(Lg/esy;Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    goto :goto_3

    :cond_5
    invoke-static {v8}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    invoke-static {v8, v5}, Lg/afo;->ae(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    :goto_3
    invoke-virtual {v4, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    :goto_4
    sget-object v2, Lg/cbv;->a:Lg/cbv;

    iget-object v2, v2, Lg/cbv;->d:Lg/mx;

    new-instance v2, Lg/gtb;

    const/16 v4, 0x16

    invoke-direct {v2, v8, v4, v3}, Lg/gtb;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {v8, v3, v1, v2}, Lg/mx;->n(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lg/ciq;)V

    iput-boolean v7, v0, Lcom/google/android/gms/internal/ads/zzccg;->d:Z

    :cond_7
    return-void
.end method

.method public final zze()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzccg;->l:Z

    return-void
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzcbl;)V
    .locals 21

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzccg;->c:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzccg;->g:Z

    if-nez v1, :cond_1

    invoke-static {}, Lg/agd;->h()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzccg;->g:Z

    if-nez v1, :cond_0

    const-string v1, "VideoMetricsMixin first frame"

    invoke-static {v1}, Lg/agd;->e(Ljava/lang/String;)V

    :cond_0
    const-string v1, "vff2"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzccg;->h:Lcom/google/android/gms/internal/ads/zzbdc;

    iget-object v4, v0, Lcom/google/android/gms/internal/ads/zzccg;->f:Lcom/google/android/gms/internal/ads/zzbcz;

    invoke-static {v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzbcu;->zza(Lcom/google/android/gms/internal/ads/zzbdc;Lcom/google/android/gms/internal/ads/zzbcz;[Ljava/lang/String;)Z

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzccg;->g:Z

    :cond_1
    sget-object v1, Lg/ti;->a:Lg/ti;

    iget-object v1, v1, Lg/ti;->v:Lg/czz;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzccg;->l:Z

    const-wide/16 v5, 0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzccg;->k:Z

    if-eqz v1, :cond_4

    iget-wide v10, v0, Lcom/google/android/gms/internal/ads/zzccg;->p:J

    cmp-long v1, v10, v7

    if-eqz v1, :cond_4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v5, v6}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v10

    long-to-double v10, v10

    iget-wide v12, v0, Lcom/google/android/gms/internal/ads/zzccg;->p:J

    sub-long v12, v3, v12

    long-to-double v12, v12

    div-double/2addr v10, v12

    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzccg;->j:Lg/vg;

    iget v12, v1, Lg/vg;->d:I

    add-int/2addr v12, v2

    iput v12, v1, Lg/vg;->d:I

    const/4 v12, 0x0

    :goto_0
    iget-object v13, v1, Lg/vg;->b:Ljava/lang/Object;

    check-cast v13, [D

    array-length v14, v13

    if-ge v12, v14, :cond_4

    aget-wide v14, v13, v12

    cmpg-double v13, v14, v10

    if-gtz v13, :cond_2

    iget-object v13, v1, Lg/vg;->a:Ljava/lang/Object;

    check-cast v13, [D

    aget-wide v16, v13, v12

    cmpg-double v13, v10, v16

    if-gez v13, :cond_2

    iget-object v13, v1, Lg/vg;->c:Ljava/lang/Object;

    check-cast v13, [I

    aget v16, v13, v12

    add-int/lit8 v16, v16, 0x1

    aput v16, v13, v12

    :cond_2
    cmpg-double v13, v10, v14

    if-gez v13, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzccg;->l:Z

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzccg;->k:Z

    iput-wide v3, v0, Lcom/google/android/gms/internal/ads/zzccg;->p:J

    sget-object v1, Lcom/google/android/gms/internal/ads/zzbcn;->zzL:Lcom/google/android/gms/internal/ads/zzbce;

    sget-object v3, Lg/edt;->a:Lg/edt;

    iget-object v3, v3, Lg/edt;->d:Lcom/google/android/gms/internal/ads/zzbcl;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzbcl;->zza(Lcom/google/android/gms/internal/ads/zzbce;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzcbl;->zza()I

    move-result v1

    int-to-long v10, v1

    const/4 v1, 0x0

    :goto_2
    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzccg;->b:[Ljava/lang/String;

    array-length v13, v12

    if-ge v1, v13, :cond_a

    aget-object v13, v12, v1

    if-eqz v13, :cond_6

    :cond_5
    move-object/from16 v13, p1

    goto :goto_6

    :cond_6
    iget-object v13, v0, Lcom/google/android/gms/internal/ads/zzccg;->r:[J

    aget-wide v14, v13, v1

    sub-long v14, v10, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->abs(J)J

    move-result-wide v13

    cmp-long v15, v3, v13

    if-lez v15, :cond_5

    const/16 v3, 0x8

    move-object/from16 v13, p1

    invoke-virtual {v13, v3, v3}, Landroid/view/TextureView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v4

    const-wide/16 v10, 0x0

    const-wide/16 v13, 0x3f

    move-wide/from16 v16, v10

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v3, :cond_9

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v3, :cond_8

    invoke-virtual {v4, v5, v15}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v6

    invoke-static {v6}, Landroid/graphics/Color;->blue(I)I

    move-result v18

    invoke-static {v6}, Landroid/graphics/Color;->red(I)I

    move-result v19

    add-int v19, v19, v18

    invoke-static {v6}, Landroid/graphics/Color;->green(I)I

    move-result v6

    add-int v6, v6, v19

    const/16 v3, 0x80

    if-le v6, v3, :cond_7

    const-wide/16 v19, 0x1

    goto :goto_5

    :cond_7
    move-wide/from16 v19, v10

    :goto_5
    long-to-int v3, v13

    shl-long v19, v19, v3

    or-long v16, v16, v19

    add-long/2addr v13, v7

    add-int/lit8 v5, v5, 0x1

    const/16 v3, 0x8

    goto :goto_4

    :cond_8
    add-int/lit8 v15, v15, 0x1

    const/16 v3, 0x8

    const-wide/16 v5, 0x1

    goto :goto_3

    :cond_9
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v9

    const-string v3, "%016X"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v12, v1

    return-void

    :goto_6
    add-int/lit8 v1, v1, 0x1

    const-wide/16 v5, 0x1

    goto :goto_2

    :cond_a
    return-void
.end method
