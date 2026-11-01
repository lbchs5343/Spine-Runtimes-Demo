.class public final Lcom/google/android/gms/internal/ads/zzggc;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Lcom/google/android/gms/internal/ads/zzgnd;

.field public c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzggc;->a:Ljava/util/ArrayList;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzgnd;->zza:Lcom/google/android/gms/internal/ads/zzgnd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzggc;->b:Lcom/google/android/gms/internal/ads/zzgnd;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzggc;->c:Z

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzggc;
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzgga;->b:Lcom/google/android/gms/internal/ads/zzggc;

    if-nez v0, :cond_1

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zzgga;->c:Z

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggc;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgga;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/google/android/gms/internal/ads/zzgga;->c:Z

    goto :goto_0

    :cond_0
    iput-object p0, p1, Lcom/google/android/gms/internal/ads/zzgga;->b:Lcom/google/android/gms/internal/ads/zzggc;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Entry has already been added to a KeysetHandle.Builder"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb()Lcom/google/android/gms/internal/ads/zzggf;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    sget-object v1, Lg/bfy;->h:Lg/bfy;

    iget-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzggc;->c:Z

    if-nez v2, :cond_15

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/google/android/gms/internal/ads/zzggc;->c:Z

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgum;->zzc()Lcom/google/android/gms/internal/ads/zzgui;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, v0, Lcom/google/android/gms/internal/ads/zzggc;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_2

    add-int/lit8 v8, v7, 0x1

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgga;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzgga;->a:Lg/bfy;

    if-ne v7, v1, :cond_1

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/android/gms/internal/ads/zzgga;

    iget-object v7, v7, Lcom/google/android/gms/internal/ads/zzgga;->a:Lg/bfy;

    if-ne v7, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Entries with \'withRandomId()\' may only be followed by other entries with \'withRandomId()\'."

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_1
    move v7, v8

    goto :goto_0

    :cond_2
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v9, 0x0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_12

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/google/android/gms/internal/ads/zzgga;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzgga;->d:Lcom/google/android/gms/internal/ads/zzgfy;

    iget-object v11, v10, Lcom/google/android/gms/internal/ads/zzgga;->d:Lcom/google/android/gms/internal/ads/zzgfy;

    iget-object v12, v10, Lcom/google/android/gms/internal/ads/zzgga;->e:Lcom/google/android/gms/internal/ads/zzggj;

    iget-object v13, v10, Lcom/google/android/gms/internal/ads/zzgga;->a:Lg/bfy;

    if-eqz v13, :cond_11

    const/4 v15, 0x4

    if-ne v13, v1, :cond_6

    const/4 v13, 0x0

    :goto_3
    const/16 v16, 0x0

    if-eqz v13, :cond_4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_5

    :cond_3
    :goto_4
    const/16 v18, 0x3

    goto :goto_7

    :cond_4
    :goto_5
    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    new-array v13, v15, [B

    const/16 v17, 0x0

    :goto_6
    if-nez v17, :cond_5

    invoke-virtual {v6, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    aget-byte v8, v13, v16

    and-int/lit16 v8, v8, 0xff

    const/16 v18, 0x3

    aget-byte v14, v13, v2

    and-int/lit16 v14, v14, 0xff

    const/16 v17, 0x2

    aget-byte v15, v13, v17

    and-int/lit16 v15, v15, 0xff

    aget-byte v2, v13, v18

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v8, v8, 0x18

    shl-int/lit8 v14, v14, 0x10

    or-int/2addr v8, v14

    shl-int/lit8 v14, v15, 0x8

    or-int/2addr v8, v14

    or-int v17, v8, v2

    const/4 v2, 0x1

    const/4 v15, 0x4

    goto :goto_6

    :cond_5
    move/from16 v13, v17

    goto :goto_3

    :cond_6
    const/16 v16, 0x0

    const/4 v13, 0x0

    goto :goto_4

    :goto_7
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    invoke-virtual {v7, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v12}, Lcom/google/android/gms/internal/ads/zzggj;->zza()Z

    move-result v6

    const/4 v8, 0x1

    if-eq v8, v6, :cond_7

    const/4 v6, 0x0

    goto :goto_8

    :cond_7
    move-object v6, v2

    :goto_8
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnp;->zzb()Lcom/google/android/gms/internal/ads/zzgnp;

    move-result-object v14

    invoke-virtual {v14, v12, v6}, Lcom/google/android/gms/internal/ads/zzgnp;->zza(Lcom/google/android/gms/internal/ads/zzggj;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v6

    new-instance v12, Lcom/google/android/gms/internal/ads/zzggd;

    invoke-direct {v12, v6}, Lcom/google/android/gms/internal/ads/zzggd;-><init>(Lcom/google/android/gms/internal/ads/zzgfw;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgnz;->zzc()Lcom/google/android/gms/internal/ads/zzgnz;

    move-result-object v14

    const-class v15, Lcom/google/android/gms/internal/ads/zzgow;

    sget-object v8, Lcom/google/android/gms/internal/ads/zzggn;->a:Lcom/google/android/gms/internal/ads/zzggn;

    invoke-virtual {v14, v6, v15, v8}, Lcom/google/android/gms/internal/ads/zzgnz;->zzd(Lcom/google/android/gms/internal/ads/zzgfw;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzggn;)Lcom/google/android/gms/internal/ads/zzgpb;

    move-result-object v6

    check-cast v6, Lcom/google/android/gms/internal/ads/zzgow;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgow;->zzf()Ljava/lang/Integer;

    move-result-object v8

    if-eqz v8, :cond_9

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v8, v13, :cond_8

    goto :goto_9

    :cond_8
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Wrong ID set for key with ID requirement"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_9
    :goto_9
    sget-object v8, Lcom/google/android/gms/internal/ads/zzgfy;->zza:Lcom/google/android/gms/internal/ads/zzgfy;

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_a

    const/4 v14, 0x3

    goto :goto_a

    :cond_a
    sget-object v14, Lcom/google/android/gms/internal/ads/zzgfy;->zzb:Lcom/google/android/gms/internal/ads/zzgfy;

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_b

    const/4 v14, 0x4

    goto :goto_a

    :cond_b
    sget-object v14, Lcom/google/android/gms/internal/ads/zzgfy;->zzc:Lcom/google/android/gms/internal/ads/zzgfy;

    invoke-virtual {v14, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f

    const/4 v14, 0x5

    :goto_a
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzguk;->zzc()Lcom/google/android/gms/internal/ads/zzguj;

    move-result-object v15

    move-object/from16 v17, v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgua;->zza()Lcom/google/android/gms/internal/ads/zzgtx;

    move-result-object v1

    move-object/from16 v18, v2

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgow;->zzg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgtx;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzgtx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgow;->zze()Lcom/google/android/gms/internal/ads/zzgxp;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgtx;->zzc(Lcom/google/android/gms/internal/ads/zzgxp;)Lcom/google/android/gms/internal/ads/zzgtx;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgow;->zzb()Lcom/google/android/gms/internal/ads/zzgty;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzgtx;->zza(Lcom/google/android/gms/internal/ads/zzgty;)Lcom/google/android/gms/internal/ads/zzgtx;

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzguj;->zza(Lcom/google/android/gms/internal/ads/zzgtx;)Lcom/google/android/gms/internal/ads/zzguj;

    invoke-virtual {v15, v14}, Lcom/google/android/gms/internal/ads/zzguj;->zzd(I)Lcom/google/android/gms/internal/ads/zzguj;

    invoke-virtual {v15, v13}, Lcom/google/android/gms/internal/ads/zzguj;->zzb(I)Lcom/google/android/gms/internal/ads/zzguj;

    invoke-virtual {v6}, Lcom/google/android/gms/internal/ads/zzgow;->zzc()Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v1

    invoke-virtual {v15, v1}, Lcom/google/android/gms/internal/ads/zzguj;->zzc(Lcom/google/android/gms/internal/ads/zzgve;)Lcom/google/android/gms/internal/ads/zzguj;

    invoke-virtual {v15}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzguk;

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zza(Lcom/google/android/gms/internal/ads/zzguk;)Lcom/google/android/gms/internal/ads/zzgui;

    iget-boolean v1, v10, Lcom/google/android/gms/internal/ads/zzgga;->c:Z

    if-eqz v1, :cond_e

    if-nez v9, :cond_d

    if-ne v11, v8, :cond_c

    move-object/from16 v9, v18

    goto :goto_b

    :cond_c
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Primary key is not enabled"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Two primaries were set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_e
    :goto_b
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v1, v17

    const/4 v2, 0x1

    goto/16 :goto_2

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unknown key status"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "Id "

    const-string v3, " is used twice in the keyset"

    invoke-static {v13, v2, v3}, Lg/awf;->b(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_11
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No ID was set (with withFixedId or withRandomId)"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Lcom/google/android/gms/internal/ads/zzgui;->zzb(I)Lcom/google/android/gms/internal/ads/zzgui;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgum;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgum;->zza()I

    move-result v2

    if-lez v2, :cond_13

    new-instance v2, Lcom/google/android/gms/internal/ads/zzggf;

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzggc;->b:Lcom/google/android/gms/internal/ads/zzgnd;

    invoke-direct {v2, v1, v4, v3}, Lcom/google/android/gms/internal/ads/zzggf;-><init>(Lcom/google/android/gms/internal/ads/zzgum;Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzgnd;)V

    return-object v2

    :cond_13
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "empty keyset"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "No primary was set"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "KeysetHandle.Builder#build must only be called once"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
