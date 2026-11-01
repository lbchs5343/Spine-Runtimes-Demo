.class public final Lcom/google/android/gms/internal/ads/zzggf;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/gms/internal/ads/zzgum;

.field public final b:Ljava/util/List;

.field public final c:Lcom/google/android/gms/internal/ads/zzgnd;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzgum;Ljava/util/ArrayList;Lcom/google/android/gms/internal/ads/zzgnd;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggf;->a:Lcom/google/android/gms/internal/ads/zzgum;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggf;->b:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzggf;->c:Lcom/google/android/gms/internal/ads/zzgnd;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgum;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggf;->a:Lcom/google/android/gms/internal/ads/zzgum;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzggf;->b:Ljava/util/List;

    sget-object p1, Lcom/google/android/gms/internal/ads/zzgnd;->zza:Lcom/google/android/gms/internal/ads/zzgnd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzggf;->c:Lcom/google/android/gms/internal/ads/zzgnd;

    return-void
.end method

.method public static final zzb(Lcom/google/android/gms/internal/ads/zzggj;)Lcom/google/android/gms/internal/ads/zzggf;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzggc;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzggc;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgga;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzgga;-><init>(Lcom/google/android/gms/internal/ads/zzggj;)V

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgga;->zzd()Lcom/google/android/gms/internal/ads/zzgga;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgga;->zzc()Lcom/google/android/gms/internal/ads/zzgga;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzggc;->zza(Lcom/google/android/gms/internal/ads/zzgga;)Lcom/google/android/gms/internal/ads/zzggc;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzggc;->zzb()Lcom/google/android/gms/internal/ads/zzggf;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 5

    sget v0, Lg/fmx;->a:I

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgur;->zza()Lcom/google/android/gms/internal/ads/zzgun;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggf;->a:Lcom/google/android/gms/internal/ads/zzgum;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgum;->zzb()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgun;->zzb(I)Lcom/google/android/gms/internal/ads/zzgun;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgum;->zzh()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzguk;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzgup;->zza()Lcom/google/android/gms/internal/ads/zzguo;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzguk;->zzb()Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgua;->zzg()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzguo;->zzc(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzguo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzguk;->zzk()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzguo;->zzd(I)Lcom/google/android/gms/internal/ads/zzguo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzguk;->zzf()Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/gms/internal/ads/zzguo;->zzb(Lcom/google/android/gms/internal/ads/zzgve;)Lcom/google/android/gms/internal/ads/zzguo;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzguk;->zza()I

    move-result v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/internal/ads/zzguo;->zza(I)Lcom/google/android/gms/internal/ads/zzguo;

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzgup;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzgun;->zza(Lcom/google/android/gms/internal/ads/zzgup;)Lcom/google/android/gms/internal/ads/zzgun;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyr;->zzbn()Lcom/google/android/gms/internal/ads/zzgyx;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgur;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzgfq;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgmn;

    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzgmn;->zza(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_f

    sget v1, Lg/fmx;->a:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzggf;->a:Lcom/google/android/gms/internal/ads/zzgum;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgum;->zzb()I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgum;->zzh()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x3

    if-eqz v9, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/google/android/gms/internal/ads/zzguk;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguk;->zzk()I

    move-result v11

    if-ne v11, v10, :cond_0

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguk;->zzj()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguk;->zzf()Lcom/google/android/gms/internal/ads/zzgve;

    move-result-object v10

    sget-object v11, Lcom/google/android/gms/internal/ads/zzgve;->zza:Lcom/google/android/gms/internal/ads/zzgve;

    if-eq v10, v11, :cond_5

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguk;->zzk()I

    move-result v10

    const/4 v11, 0x2

    if-eq v10, v11, :cond_4

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguk;->zza()I

    move-result v10

    if-ne v10, v2, :cond_2

    if-nez v7, :cond_1

    const/4 v7, 0x1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset contains multiple primary keys"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguk;->zzb()Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v9

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzgua;->zzb()Lcom/google/android/gms/internal/ads/zzgty;

    move-result-object v9

    sget-object v10, Lcom/google/android/gms/internal/ads/zzgty;->zzd:Lcom/google/android/gms/internal/ads/zzgty;

    if-eq v9, v10, :cond_3

    const/4 v9, 0x0

    goto :goto_2

    :cond_3
    const/4 v9, 0x1

    :goto_2
    and-int/2addr v8, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguk;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const-string p2, "key %d has unknown status"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguk;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const-string p2, "key %d has unknown prefix"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v9}, Lcom/google/android/gms/internal/ads/zzguk;->zza()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-array v0, v4, [Ljava/lang/Object;

    aput-object p2, v0, v5

    const-string p2, "key %d has no key data"

    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    if-eqz v6, :cond_e

    if-nez v7, :cond_9

    if-eqz v8, :cond_8

    goto :goto_3

    :cond_8
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset doesn\'t contain a valid primary key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgou;->zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzgor;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzggf;->c:Lcom/google/android/gms/internal/ads/zzgnd;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zzgor;->zzc(Lcom/google/android/gms/internal/ads/zzgnd;)Lcom/google/android/gms/internal/ads/zzgor;

    :goto_4
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzggf;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v5, v4, :cond_d

    invoke-virtual {v1, v5}, Lcom/google/android/gms/internal/ads/zzgum;->zzd(I)Lcom/google/android/gms/internal/ads/zzguk;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzguk;->zzk()I

    move-result v6

    if-ne v6, v10, :cond_c

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzggd;

    if-eqz v3, :cond_b

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzggd;->zza()Lcom/google/android/gms/internal/ads/zzgfw;

    move-result-object v3

    :try_start_0
    invoke-virtual {p1, v3, v0}, Lcom/google/android/gms/internal/ads/zzgmn;->zzb(Lcom/google/android/gms/internal/ads/zzgfw;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzguk;->zza()I

    move-result v7

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgum;->zzb()I

    move-result v8

    if-ne v7, v8, :cond_a

    invoke-virtual {v2, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzgor;->zzb(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfw;Lcom/google/android/gms/internal/ads/zzguk;)Lcom/google/android/gms/internal/ads/zzgor;

    goto :goto_5

    :cond_a
    invoke-virtual {v2, v6, v3, v4}, Lcom/google/android/gms/internal/ads/zzgor;->zza(Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzgfw;Lcom/google/android/gms/internal/ads/zzguk;)Lcom/google/android/gms/internal/ads/zzgor;

    goto :goto_5

    :catch_0
    move-exception p1

    new-instance p2, Ljava/security/GeneralSecurityException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzguk;->zzb()Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgua;->zzg()Ljava/lang/String;

    move-result-object v1

    const-string v2, " for key of type "

    const-string v3, ", see https://developers.google.com/tink/faq/registration_errors"

    const-string v4, "Unable to get primitive "

    invoke-static {v4, v0, v2, v1, v3}, Lg/tn;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_b
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzguk;->zzb()Lcom/google/android/gms/internal/ads/zzgua;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzgua;->zzg()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Key parsing of key with index "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " and type_url "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " failed, unable to get primitive"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_d
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzgor;->zzd()Lcom/google/android/gms/internal/ads/zzgou;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zzgmn;->zzc(Lcom/google/android/gms/internal/ads/zzgou;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "keyset must contain at least one ENABLED key"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_f
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    const-string v0, "No wrapper found for "

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
