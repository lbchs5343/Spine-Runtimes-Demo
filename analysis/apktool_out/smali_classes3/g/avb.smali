.class public abstract Lg/avb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String;


# instance fields
.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Lg/g;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Lcom/google/android/gms/internal/ads/zzfti;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/UUID;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Ljava/util/UUID;-><init>(JJ)V

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lg/avb;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/g;->a:Lg/g;

    if-nez v0, :cond_0

    new-instance v0, Lg/g;

    invoke-direct {v0, p1}, Lg/g;-><init>(Landroid/content/Context;)V

    sput-object v0, Lg/g;->a:Lg/g;

    :cond_0
    sget-object v0, Lg/g;->a:Lg/g;

    iput-object v0, p0, Lg/avb;->f:Lg/g;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzfti;->zza(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzfti;

    move-result-object p1

    iput-object p1, p0, Lg/avb;->i:Lcom/google/android/gms/internal/ads/zzfti;

    iput-object p2, p0, Lg/avb;->e:Ljava/lang/String;

    const-string p1, "_3p"

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lg/avb;->g:Ljava/lang/String;

    iput-object p3, p0, Lg/avb;->h:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lg/avb;->c:Ljava/lang/String;

    iput-object p4, p0, Lg/avb;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final j(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lg/avb;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/avb;->h:Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lg/avb;->f:Lg/g;

    invoke-virtual {v1, v0}, Lg/g;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lg/avb;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lg/avb;->e:Ljava/lang/String;

    :goto_1
    invoke-virtual {v1, p1}, Lg/g;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3}, Lg/awf;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/util/UUID;->nameUUIDFromBytes([B)Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, ": Invalid argument to generate PAIDv1 on 3p traffic, Ad ID is not null, package name is "

    iget-object v1, p0, Lg/avb;->d:Ljava/lang/String;

    invoke-static {v1, v0}, Lg/tn;->l(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "not null"

    const-string v2, "null"

    if-nez p2, :cond_2

    move-object p2, v2

    goto :goto_1

    :cond_2
    move-object p2, v1

    :goto_1
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", hashKey is "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p3, :cond_3

    move-object v1, v2

    :cond_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ljava/lang/String;Ljava/lang/String;JZ)Lcom/google/android/gms/internal/ads/zzfth;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg/avb;->g:Ljava/lang/String;

    const/4 v3, 0x0

    iget-object v4, v0, Lg/avb;->f:Lg/g;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    sget-object v5, Lg/avb;->b:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lg/g;->d:Landroid/content/SharedPreferences;

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "paid_3p_hash_key"

    iget-object v7, v4, Lg/g;->d:Landroid/content/SharedPreferences;

    invoke-interface {v7, v6, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_2

    if-eqz v6, :cond_2

    move-object/from16 v7, p2

    invoke-virtual {v0, v1, v7, v6}, Lg/avb;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p2}, Lg/avb;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v1

    return-object v1

    :cond_2
    move-object/from16 v7, p2

    goto :goto_1

    :catch_0
    :goto_0
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfth;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzfth;-><init>()V

    return-object v1

    :goto_1
    if-eqz v1, :cond_3

    const/4 v5, 0x1

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v6, v8, v10

    if-ltz v6, :cond_c

    iget-object v6, v0, Lg/avb;->h:Ljava/lang/String;

    iget-object v10, v0, Lg/avb;->c:Ljava/lang/String;

    if-eqz v5, :cond_4

    move-object v11, v10

    goto :goto_3

    :cond_4
    move-object v11, v6

    :goto_3
    iget-object v12, v4, Lg/g;->d:Landroid/content/SharedPreferences;

    const-wide/16 v13, -0x1

    invoke-interface {v12, v11, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v11

    cmp-long v15, v11, v13

    if-nez v15, :cond_5

    goto :goto_5

    :cond_5
    cmp-long v15, v8, v11

    if-gez v15, :cond_7

    if-eqz v5, :cond_6

    move-object v11, v10

    goto :goto_4

    :cond_6
    move-object v11, v6

    :goto_4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v4, v8, v11}, Lg/g;->h(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_7
    add-long v11, v11, p3

    cmp-long v15, v8, v11

    if-ltz v15, :cond_8

    invoke-virtual/range {p0 .. p2}, Lg/avb;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v1

    return-object v1

    :cond_8
    :goto_5
    if-eqz v5, :cond_9

    goto :goto_6

    :cond_9
    iget-object v2, v0, Lg/avb;->e:Ljava/lang/String;

    :goto_6
    iget-object v8, v4, Lg/g;->d:Landroid/content/SharedPreferences;

    invoke-interface {v8, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_a

    if-nez p5, :cond_a

    invoke-virtual/range {p0 .. p2}, Lg/avb;->m(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object v1

    return-object v1

    :cond_a
    new-instance v1, Lcom/google/android/gms/internal/ads/zzfth;

    if-eqz v5, :cond_b

    move-object v6, v10

    :cond_b
    iget-object v3, v4, Lg/g;->d:Landroid/content/SharedPreferences;

    invoke-interface {v3, v6, v13, v14}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-static {v3, v4}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzfth;-><init>(Ljava/lang/String;Lj$/time/Instant;)V

    return-object v1

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    iget-object v2, v0, Lg/avb;->d:Ljava/lang/String;

    const-string v3, ": Invalid negative current timestamp. Updating PAID failed"

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final m(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzfth;
    .locals 3

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lg/avb;->n(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lg/avb;->f:Lg/g;

    const-string v2, "paid_3p_hash_key"

    invoke-virtual {v1, v0, v2}, Lg/g;->h(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v0}, Lg/avb;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lg/avb;->n(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfth;

    move-result-object p1

    return-object p1
.end method

.method public final n(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzfth;
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    if-eqz p2, :cond_0

    iget-object v2, p0, Lg/avb;->c:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lg/avb;->h:Ljava/lang/String;

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v4, p0, Lg/avb;->f:Lg/g;

    invoke-virtual {v4, v3, v2}, Lg/g;->h(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    iget-object p2, p0, Lg/avb;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lg/avb;->e:Ljava/lang/String;

    :goto_1
    invoke-virtual {v4, p1, p2}, Lg/g;->h(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzfth;

    invoke-static {v0, v1}, Lj$/time/Instant;->ofEpochMilli(J)Lj$/time/Instant;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/google/android/gms/internal/ads/zzfth;-><init>(Ljava/lang/String;Lj$/time/Instant;)V

    return-object p2

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, ": Invalid negative current timestamp. Updating PAID failed"

    iget-object v0, p0, Lg/avb;->d:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
