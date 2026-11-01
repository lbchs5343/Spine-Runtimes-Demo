.class public final Lcom/google/android/gms/internal/ads/zzgk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgd;


# instance fields
.field public a:Lcom/google/android/gms/internal/ads/zzhf;

.field public b:Lcom/google/android/gms/internal/ads/zzgd;

.field public c:Lcom/google/android/gms/internal/ads/zzgs;

.field public d:Lcom/google/android/gms/internal/ads/zzfv;

.field public final e:Landroid/content/Context;

.field public f:Lcom/google/android/gms/internal/ads/zzga;

.field public g:Lcom/google/android/gms/internal/ads/zzgb;

.field public final h:Ljava/util/ArrayList;

.field public i:Lcom/google/android/gms/internal/ads/zzhb;

.field public final j:Lcom/google/android/gms/internal/ads/zzgd;

.field public k:Lcom/google/android/gms/internal/ads/zzgd;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzgd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgk;->j:Lcom/google/android/gms/internal/ads/zzgd;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgk;->h:Ljava/util/ArrayList;

    return-void
.end method

.method public static final l(Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/google/android/gms/internal/ads/zzgd;->zzf(Lcom/google/android/gms/internal/ads/zzhd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final m(Lcom/google/android/gms/internal/ads/zzgd;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhd;

    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzgd;->zzf(Lcom/google/android/gms/internal/ads/zzhd;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final zza([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzn;->zza([BII)I

    move-result p1

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzgi;)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzdb;->zzf(Z)V

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    sget v2, Lcom/google/android/gms/internal/ads/zzen;->zza:I

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgk;->e:Landroid/content/Context;

    if-nez v2, :cond_f

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_3

    :cond_1
    const-string v1, "asset"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->d:Lcom/google/android/gms/internal/ads/zzfv;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfv;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzfv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->d:Lcom/google/android/gms/internal/ads/zzfv;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;->m(Lcom/google/android/gms/internal/ads/zzgd;)V

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->d:Lcom/google/android/gms/internal/ads/zzfv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    goto/16 :goto_4

    :cond_3
    const-string v1, "content"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->f:Lcom/google/android/gms/internal/ads/zzga;

    if-nez v0, :cond_4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzga;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzga;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->f:Lcom/google/android/gms/internal/ads/zzga;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;->m(Lcom/google/android/gms/internal/ads/zzgd;)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->f:Lcom/google/android/gms/internal/ads/zzga;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    goto/16 :goto_4

    :cond_5
    const-string v1, "rtmp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgk;->j:Lcom/google/android/gms/internal/ads/zzgd;

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->k:Lcom/google/android/gms/internal/ads/zzgd;

    if-nez v0, :cond_6

    :try_start_0
    const-string v0, "androidx.media3.datasource.rtmp.RtmpDataSource"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->k:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;->m(Lcom/google/android/gms/internal/ads/zzgd;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Error instantiating RTMP extension"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    const-string v0, "DefaultDataSource"

    const-string v1, "Attempting to play RTMP stream without depending on the RTMP extension"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzdt;->zzf(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->k:Lcom/google/android/gms/internal/ads/zzgd;

    if-nez v0, :cond_6

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgk;->k:Lcom/google/android/gms/internal/ads/zzgd;

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->k:Lcom/google/android/gms/internal/ads/zzgd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    goto/16 :goto_4

    :cond_7
    const-string v1, "udp"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->a:Lcom/google/android/gms/internal/ads/zzhf;

    if-nez v0, :cond_8

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhf;

    const/16 v1, 0x7d0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhf;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->a:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;->m(Lcom/google/android/gms/internal/ads/zzgd;)V

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->a:Lcom/google/android/gms/internal/ads/zzhf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    goto/16 :goto_4

    :cond_9
    const-string v1, "data"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->g:Lcom/google/android/gms/internal/ads/zzgb;

    if-nez v0, :cond_a

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->g:Lcom/google/android/gms/internal/ads/zzgb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;->m(Lcom/google/android/gms/internal/ads/zzgd;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->g:Lcom/google/android/gms/internal/ads/zzgb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    goto :goto_4

    :cond_b
    const-string v1, "rawresource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "android.resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_2

    :cond_c
    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    goto :goto_4

    :cond_d
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->i:Lcom/google/android/gms/internal/ads/zzhb;

    if-nez v0, :cond_e

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhb;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzhb;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->i:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;->m(Lcom/google/android/gms/internal/ads/zzgd;)V

    :cond_e
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->i:Lcom/google/android/gms/internal/ads/zzhb;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    goto :goto_4

    :cond_f
    :goto_3
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgi;->zza:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, "/android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->d:Lcom/google/android/gms/internal/ads/zzfv;

    if-nez v0, :cond_10

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfv;

    invoke-direct {v0, v3}, Lcom/google/android/gms/internal/ads/zzfv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->d:Lcom/google/android/gms/internal/ads/zzfv;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;->m(Lcom/google/android/gms/internal/ads/zzgd;)V

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->d:Lcom/google/android/gms/internal/ads/zzfv;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    goto :goto_4

    :cond_11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->c:Lcom/google/android/gms/internal/ads/zzgs;

    if-nez v0, :cond_12

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgs;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->c:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzgk;->m(Lcom/google/android/gms/internal/ads/zzgd;)V

    :cond_12
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->c:Lcom/google/android/gms/internal/ads/zzgs;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    :goto_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgd;->zzb(Lcom/google/android/gms/internal/ads/zzgi;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final zzc()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zzc()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public final zzd()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zzd()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    return-void

    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    throw v0

    :cond_0
    return-void
.end method

.method public final zze()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->b:Lcom/google/android/gms/internal/ads/zzgd;

    if-nez v0, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0

    :cond_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgd;->zze()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final zzf(Lcom/google/android/gms/internal/ads/zzhd;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->j:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgd;->zzf(Lcom/google/android/gms/internal/ads/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->h:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->c:Lcom/google/android/gms/internal/ads/zzgs;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->l(Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->d:Lcom/google/android/gms/internal/ads/zzfv;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->l(Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->f:Lcom/google/android/gms/internal/ads/zzga;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->l(Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->k:Lcom/google/android/gms/internal/ads/zzgd;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->l(Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->a:Lcom/google/android/gms/internal/ads/zzhf;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->l(Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->g:Lcom/google/android/gms/internal/ads/zzgb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->l(Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzhd;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgk;->i:Lcom/google/android/gms/internal/ads/zzhb;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzgk;->l(Lcom/google/android/gms/internal/ads/zzgd;Lcom/google/android/gms/internal/ads/zzhd;)V

    return-void
.end method
