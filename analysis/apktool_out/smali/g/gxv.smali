.class public final Lg/gxv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzfro;


# instance fields
.field public a:Ljava/lang/Object;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public final synthetic d:I

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/flk;Lg/gkr;Lg/egu;Landroidx/work/impl/WorkDatabase;Lg/fkj;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lg/gxv;->d:I

    const-string v0, "context"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lg/gxv;->g:Ljava/lang/Object;

    iput-object p3, p0, Lg/gxv;->h:Ljava/lang/Object;

    iput-object p4, p0, Lg/gxv;->b:Ljava/lang/Object;

    iput-object p5, p0, Lg/gxv;->c:Ljava/lang/Object;

    iput-object p6, p0, Lg/gxv;->e:Ljava/lang/Object;

    iput-object p7, p0, Lg/gxv;->i:Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "context.applicationContext"

    invoke-static {p1, p2}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lg/gxv;->a:Ljava/lang/Object;

    new-instance p1, Lg/dsp;

    invoke-direct {p1}, Lg/dsp;-><init>()V

    iput-object p1, p0, Lg/gxv;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfpr;Lcom/google/android/gms/internal/ads/zzfqi;Lcom/google/android/gms/internal/ads/zzawm;Lcom/google/android/gms/internal/ads/zzavy;Lcom/google/android/gms/internal/ads/zzavi;Lcom/google/android/gms/internal/ads/zzawo;Lcom/google/android/gms/internal/ads/zzawg;Lcom/google/android/gms/internal/ads/zzavx;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lg/gxv;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gxv;->g:Ljava/lang/Object;

    iput-object p2, p0, Lg/gxv;->h:Ljava/lang/Object;

    iput-object p3, p0, Lg/gxv;->b:Ljava/lang/Object;

    iput-object p4, p0, Lg/gxv;->c:Ljava/lang/Object;

    iput-object p5, p0, Lg/gxv;->e:Ljava/lang/Object;

    iput-object p6, p0, Lg/gxv;->i:Ljava/lang/Object;

    iput-object p7, p0, Lg/gxv;->a:Ljava/lang/Object;

    iput-object p8, p0, Lg/gxv;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/gxv;Lg/fza;)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lg/gxv;->d:I

    iget-object v0, p1, Lg/gxv;->g:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lg/hed;

    iget-object v0, p1, Lg/gxv;->h:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lg/eii;

    iget-object v0, p1, Lg/gxv;->b:Ljava/lang/Object;

    move-object v6, v0

    check-cast v6, Lg/fon;

    iget-object v0, p1, Lg/gxv;->a:Ljava/lang/Object;

    move-object v7, v0

    check-cast v7, Ljava/util/Set;

    iget-object p1, p1, Lg/gxv;->f:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Ljava/util/List;

    const/4 v5, 0x0

    move-object v1, p0

    move-object v4, p2

    invoke-direct/range {v1 .. v8}, Lg/gxv;-><init>(Lg/hed;Lg/eii;Lg/fza;Lg/fza;Lg/fon;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lg/hed;Lg/eii;Lg/fza;Lg/fza;)V
    .locals 9

    const/4 v0, 0x0

    iput v0, p0, Lg/gxv;->d:I

    new-instance v6, Lg/fon;

    invoke-direct {v6, p1}, Lg/fon;-><init>(Lg/hed;)V

    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v8}, Lg/gxv;-><init>(Lg/hed;Lg/eii;Lg/fza;Lg/fza;Lg/fon;Ljava/util/Set;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lg/hed;Lg/eii;Lg/fza;Lg/fza;Lg/fon;Ljava/util/Set;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lg/gxv;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/gxv;->g:Ljava/lang/Object;

    iput-object p2, p0, Lg/gxv;->h:Ljava/lang/Object;

    iput-object p3, p0, Lg/gxv;->c:Ljava/lang/Object;

    iput-object p4, p0, Lg/gxv;->e:Ljava/lang/Object;

    iput-object p5, p0, Lg/gxv;->b:Ljava/lang/Object;

    iput-object p6, p0, Lg/gxv;->a:Ljava/lang/Object;

    iput-object p7, p0, Lg/gxv;->f:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lg/hed;Lg/eln;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lg/gxv;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/gxv;->b:Ljava/lang/Object;

    iput-object p1, p0, Lg/gxv;->g:Ljava/lang/Object;

    iput-object p2, p0, Lg/gxv;->h:Ljava/lang/Object;

    return-void
.end method

.method public static j(Lg/gxv;)Lg/gxv;
    .locals 8

    new-instance v0, Lg/gxv;

    iget-object v1, p0, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v1, Lg/hed;

    iget-object v2, p0, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v2, Lg/eii;

    invoke-static {v2}, Lg/eii;->d(Lg/eii;)Lg/eii;

    move-result-object v2

    iget-object v3, p0, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v3, Lg/fza;

    iget-object v4, p0, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v4, Lg/fza;

    iget-object v5, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v5, Lg/fon;

    iget-object v6, p0, Lg/gxv;->a:Ljava/lang/Object;

    check-cast v6, Ljava/util/Set;

    iget-object p0, p0, Lg/gxv;->f:Ljava/lang/Object;

    move-object v7, p0

    check-cast v7, Ljava/util/List;

    invoke-direct/range {v0 .. v7}, Lg/gxv;-><init>(Lg/hed;Lg/eii;Lg/fza;Lg/fza;Lg/fon;Ljava/util/Set;Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public k()Ljava/util/HashMap;
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzfpr;

    iget-object v2, p0, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfqi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfqi;->zzb()Lcom/google/android/gms/internal/ads/zzata;

    move-result-object v2

    const-string v3, "v"

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpr;->zzd()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfpr;->zzg()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v3, "gms"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzata;->zzh()Ljava/lang/String;

    move-result-object v1

    const-string v3, "int"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzata;->zzf()Lcom/google/android/gms/internal/ads/zzatl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatl;->zza()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v3, "attts"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzata;->zzf()Lcom/google/android/gms/internal/ads/zzatl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatl;->zzd()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v1

    const-string v3, "att"

    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzata;->zzf()Lcom/google/android/gms/internal/ads/zzatl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzatl;->zzf()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attkid"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzavy;

    iget-boolean v1, v1, Lcom/google/android/gms/internal/ads/zzavy;->a:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "up"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "t"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lg/gxv;->a:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzawg;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcq"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzg()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tpq"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzd()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcv"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzh()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tpv"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzb()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tchv"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawg;->zzf()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tphv"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawg;->zza()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "tcc"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzawg;->zze()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "tpc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public l()Lg/fza;
    .locals 3

    iget-object v0, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v0, Lg/fon;

    iget-object v1, v0, Lg/fon;->a:Lg/hed;

    iget-object v1, v1, Lg/hed;->ak:Ljava/util/List;

    iget-object v0, v0, Lg/fon;->b:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fza;

    return-object v0
.end method

.method public varargs m([Lg/gxv;)V
    .locals 5

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    iget-object v3, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v3, Lg/fon;

    iget-object v4, v2, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v4, Lg/fon;

    iget-object v3, v3, Lg/fon;->b:Ljava/util/BitSet;

    iget-object v4, v4, Lg/fon;->b:Ljava/util/BitSet;

    invoke-virtual {v3, v4}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    iget-object v3, p0, Lg/gxv;->a:Ljava/lang/Object;

    check-cast v3, Ljava/util/Set;

    iget-object v4, v2, Lg/gxv;->a:Ljava/lang/Object;

    check-cast v4, Ljava/util/Set;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v2, Lg/gxv;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    iget-object v3, p0, Lg/gxv;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lg/gxv;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IfInfo: then: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/gxv;->c:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", else: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v1, Lg/fza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public zza()Ljava/util/Map;
    .locals 4

    iget-object v0, p0, Lg/gxv;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawm;

    invoke-virtual {p0}, Lg/gxv;->k()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawm;->zza()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "lts"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public zzb()Ljava/util/Map;
    .locals 5

    iget-object v0, p0, Lg/gxv;->i:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzawo;

    invoke-virtual {p0}, Lg/gxv;->k()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lg/gxv;->h:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzfqi;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzfqi;->zza()Lcom/google/android/gms/internal/ads/zzata;

    move-result-object v2

    iget-object v3, p0, Lg/gxv;->g:Ljava/lang/Object;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzfpr;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzfpr;->zzh()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "gai"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzata;->zzg()Ljava/lang/String;

    move-result-object v3

    const-string v4, "did"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzata;->zzal()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    const-string v4, "dst"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzata;->zzai()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "doo"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lg/gxv;->e:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/gms/internal/ads/zzavi;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzavi;->zza()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "nt"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzc()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "vs"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzawo;->zzb()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "vf"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v1
.end method

.method public zzc()Ljava/util/Map;
    .locals 3

    iget-object v0, p0, Lg/gxv;->f:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzavx;

    invoke-virtual {p0}, Lg/gxv;->k()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v0, :cond_0

    const-string v2, "vst"

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzavx;->zza()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method
