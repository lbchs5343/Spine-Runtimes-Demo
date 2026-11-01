.class public final Lg/cxb;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/cxb;


# instance fields
.field public final b:Lg/eol;

.field public c:Z

.field public d:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cxb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lg/cxb;-><init>(I)V

    sput-object v0, Lg/cxb;->a:Lg/cxb;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/eol;

    invoke-direct {v0}, Lg/eol;-><init>()V

    iput-object v0, p0, Lg/cxb;->b:Lg/eol;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    new-instance p1, Lg/eol;

    invoke-direct {p1}, Lg/eol;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cxb;->b:Lg/eol;

    invoke-virtual {p0}, Lg/cxb;->l()V

    invoke-virtual {p0}, Lg/cxb;->l()V

    return-void
.end method

.method public static e(Ljava/util/Map$Entry;)Z
    .locals 7

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzc()Lcom/google/android/gms/internal/ads/zzhcb;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/ads/zzhcb;->zzi:Lcom/google/android/gms/internal/ads/zzhcb;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_6

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zze()Z

    move-result v0

    const-string v1, "Wrong object type used with protocol message reflection."

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_6

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lcom/google/android/gms/internal/ads/zzhaj;

    if-eqz v6, :cond_0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzhaj;

    invoke-interface {v5}, Lcom/google/android/gms/internal/ads/zzhaj;->zzbw()Z

    move-result v5

    goto :goto_1

    :cond_0
    instance-of v5, v5, Lcom/google/android/gms/internal/ads/zzgzs;

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    if-nez v5, :cond_1

    return v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzhaj;

    if-eqz v0, :cond_4

    check-cast p0, Lcom/google/android/gms/internal/ads/zzhaj;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzhaj;->zzbw()Z

    move-result p0

    return p0

    :cond_4
    instance-of p0, p0, Lcom/google/android/gms/internal/ads/zzgzs;

    if-eqz p0, :cond_5

    return v3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return v3
.end method

.method public static f(Lcom/google/android/gms/internal/ads/zzhca;ILjava/lang/Object;)I
    .locals 2

    shl-int/lit8 p1, p1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhca;->zzj:Lcom/google/android/gms/internal/ads/zzhca;

    if-ne p0, v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhai;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzgwz;

    if-nez v0, :cond_0

    add-int/2addr p1, p1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    throw p0

    :cond_1
    :goto_0
    invoke-static {p0, p2}, Lg/cxb;->h(Lcom/google/android/gms/internal/ads/zzhca;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p0, p1

    return p0
.end method

.method public static final g(Ljava/util/Map$Entry;)I
    .locals 5

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzc()Lcom/google/android/gms/internal/ads/zzhcb;

    move-result-object v2

    sget-object v3, Lcom/google/android/gms/internal/ads/zzhcb;->zzi:Lcom/google/android/gms/internal/ads/zzhcb;

    if-ne v2, v3, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zze()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzd()Z

    move-result v2

    if-nez v2, :cond_1

    instance-of v0, v1, Lcom/google/android/gms/internal/ads/zzgzs;

    const/16 v2, 0x18

    const/16 v3, 0x10

    const/16 v4, 0x8

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgzs;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v2

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzgzt;->zza()I

    move-result v1

    invoke-static {v1, v1, v2}, Lg/dub;->f(III)I

    move-result v1

    :goto_0
    add-int/2addr v0, p0

    add-int/2addr v0, v1

    return v0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zza()I

    move-result p0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v0

    add-int/2addr v0, v0

    invoke-static {v3}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v3

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p0

    add-int/2addr p0, v3

    invoke-static {v2}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result v2

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzz(Lcom/google/android/gms/internal/ads/zzhai;)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v0, v1}, Lg/cxb;->j(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static h(Lcom/google/android/gms/internal/ads/zzhca;Ljava/lang/Object;)I
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhca;->zza:Lcom/google/android/gms/internal/ads/zzhca;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcb;->zza:Lcom/google/android/gms/internal/ads/zzhcb;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/4 v0, 0x4

    const/16 v1, 0x8

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    add-long v0, p0, p0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result p0

    return p0

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    add-int p1, p0, p0

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p0

    return p0

    :pswitch_2
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    return v1

    :pswitch_3
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    return v0

    :pswitch_4
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzgzb;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzb;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgzb;->zza()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result p0

    return p0

    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result p0

    return p0

    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p0

    return p0

    :pswitch_6
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz p0, :cond_1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxp;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p1

    :goto_0
    add-int/2addr p1, p0

    return p1

    :cond_1
    check-cast p1, [B

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    array-length p0, p1

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p1

    goto :goto_0

    :pswitch_7
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzgzs;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgzs;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgzt;->zza()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhai;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzz(Lcom/google/android/gms/internal/ads/zzhai;)I

    move-result p0

    return p0

    :pswitch_8
    check-cast p1, Lcom/google/android/gms/internal/ads/zzhai;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzhai;->zzaY()I

    move-result p0

    return p0

    :pswitch_9
    instance-of p0, p1, Lcom/google/android/gms/internal/ads/zzgxp;

    if-eqz p0, :cond_3

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgxp;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzgxp;->zzd()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p1

    goto :goto_0

    :cond_3
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzC(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    const/4 p0, 0x1

    return p0

    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    return v0

    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    return v1

    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long p0, p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result p0

    return p0

    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result p0

    return p0

    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzE(J)I

    move-result p0

    return p0

    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    return v0

    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lcom/google/android/gms/internal/ads/zzgyc;->a:Ljava/util/logging/Logger;

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final i(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzb()Lcom/google/android/gms/internal/ads/zzhca;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/zzgzk;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhca;->zza:Lcom/google/android/gms/internal/ads/zzhca;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhcb;->zza:Lcom/google/android/gms/internal/ads/zzhcb;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhca;->zza()Lcom/google/android/gms/internal/ads/zzhcb;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzhai;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgzs;

    if-eqz v0, :cond_3

    :cond_0
    return-void

    :pswitch_1
    instance-of v0, p1, Ljava/lang/Integer;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgzb;

    if-eqz v0, :cond_3

    :cond_1
    return-void

    :pswitch_2
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzgxp;

    if-nez v0, :cond_2

    instance-of v0, p1, [B

    if-eqz v0, :cond_3

    :cond_2
    return-void

    :pswitch_3
    instance-of v0, p1, Ljava/lang/String;

    goto :goto_0

    :pswitch_4
    instance-of v0, p1, Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_5
    instance-of v0, p1, Ljava/lang/Double;

    goto :goto_0

    :pswitch_6
    instance-of v0, p1, Ljava/lang/Float;

    goto :goto_0

    :pswitch_7
    instance-of v0, p1, Ljava/lang/Long;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Ljava/lang/Integer;

    :goto_0
    if-eqz v0, :cond_3

    return-void

    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzb()Lcom/google/android/gms/internal/ads/zzhca;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhca;->zza()Lcom/google/android/gms/internal/ads/zzhcb;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    const/4 v1, 0x1

    aput-object p0, v2, v1

    const/4 p0, 0x2

    aput-object p1, v2, p0

    const-string p0, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    invoke-static {p0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static j(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)I
    .locals 5

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzb()Lcom/google/android/gms/internal/ads/zzhca;

    move-result-object v0

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zza()I

    move-result v1

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zze()Z

    move-result v2

    if-eqz v2, :cond_4

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzgyl;->zzd()Z

    move-result p0

    const/4 v3, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lg/cxb;->h(Lcom/google/android/gms/internal/ads/zzhca;Ljava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    shl-int/lit8 p1, v1, 0x3

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p1

    add-int/2addr p1, p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzgyc;->zzD(I)I

    move-result p0

    add-int/2addr p0, p1

    return p0

    :cond_1
    return v3

    :cond_2
    const/4 p0, 0x0

    :goto_1
    if-ge v3, v2, :cond_3

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v1, v4}, Lg/cxb;->f(Lcom/google/android/gms/internal/ads/zzhca;ILjava/lang/Object;)I

    move-result v4

    add-int/2addr p0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return p0

    :cond_4
    invoke-static {v0, v1, p1}, Lg/cxb;->f(Lcom/google/android/gms/internal/ads/zzhca;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lg/cxb;

    invoke-direct {v0}, Lg/cxb;-><init>()V

    iget-object v1, p0, Lg/cxb;->b:Lg/eol;

    iget v2, v1, Lg/eol;->f:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Lg/eol;->m(I)Lg/asf;

    move-result-object v4

    iget-object v5, v4, Lg/asf;->b:Ljava/lang/Comparable;

    check-cast v5, Lcom/google/android/gms/internal/ads/zzgyl;

    iget-object v4, v4, Lg/asf;->c:Ljava/lang/Object;

    invoke-virtual {v0, v5, v4}, Lg/cxb;->m(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lg/eol;->j()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lg/cxb;->m(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lg/cxb;->d:Z

    iput-boolean v1, v0, Lg/cxb;->d:Z

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    instance-of v0, p1, Lg/cxb;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    check-cast p1, Lg/cxb;

    iget-object v0, p0, Lg/cxb;->b:Lg/eol;

    iget-object p1, p1, Lg/cxb;->b:Lg/eol;

    invoke-virtual {v0, p1}, Lg/eol;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/cxb;->b:Lg/eol;

    invoke-virtual {v0}, Lg/eol;->hashCode()I

    move-result v0

    return v0
.end method

.method public final k()Ljava/util/Iterator;
    .locals 3

    iget-object v0, p0, Lg/cxb;->b:Lg/eol;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lg/cxb;->d:Z

    if-eqz v1, :cond_1

    new-instance v1, Lg/nw;

    invoke-virtual {v0}, Lg/eol;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lg/bni;

    invoke-virtual {v0}, Lg/bni;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lg/nw;-><init>(Ljava/util/Iterator;I)V

    return-object v1

    :cond_1
    invoke-virtual {v0}, Lg/eol;->entrySet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lg/bni;

    invoke-virtual {v0}, Lg/bni;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final l()V
    .locals 7

    iget-boolean v0, p0, Lg/cxb;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/cxb;->b:Lg/eol;

    iget v1, v0, Lg/eol;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Lg/eol;->m(I)Lg/asf;

    move-result-object v4

    iget-object v4, v4, Lg/asf;->c:Ljava/lang/Object;

    instance-of v5, v4, Lcom/google/android/gms/internal/ads/zzgyx;

    if-eqz v5, :cond_1

    check-cast v4, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v5

    invoke-interface {v5, v4}, Lg/ah;->g(Ljava/lang/Object;)V

    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/zzgyx;->cn()V

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lg/eol;->j()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcom/google/android/gms/internal/ads/zzgyx;

    if-eqz v4, :cond_3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgyx;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lg/gxd;->a:Lg/gxd;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Lg/gxd;->d(Ljava/lang/Class;)Lg/ah;

    move-result-object v4

    invoke-interface {v4, v3}, Lg/ah;->g(Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/zzgyx;->cn()V

    goto :goto_1

    :cond_4
    iget-boolean v1, v0, Lg/eol;->c:Z

    if-nez v1, :cond_8

    :goto_2
    iget v1, v0, Lg/eol;->f:I

    if-ge v2, v1, :cond_6

    invoke-virtual {v0, v2}, Lg/eol;->m(I)Lg/asf;

    move-result-object v1

    iget-object v3, v1, Lg/asf;->b:Ljava/lang/Comparable;

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgyl;->zze()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, v1, Lg/asf;->c:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg/asf;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lg/eol;->j()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzgyl;

    invoke-interface {v3}, Lcom/google/android/gms/internal/ads/zzgyl;->zze()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    iget-boolean v1, v0, Lg/eol;->c:Z

    const/4 v2, 0x1

    if-nez v1, :cond_b

    iget-object v1, v0, Lg/eol;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_9

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_4

    :cond_9
    iget-object v1, v0, Lg/eol;->b:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_4
    iput-object v1, v0, Lg/eol;->b:Ljava/util/Map;

    iget-object v1, v0, Lg/eol;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    sget-object v1, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lg/eol;->g:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    :goto_5
    iput-object v1, v0, Lg/eol;->g:Ljava/util/Map;

    iput-boolean v2, v0, Lg/eol;->c:Z

    :cond_b
    iput-boolean v2, p0, Lg/cxb;->c:Z

    return-void
.end method

.method public final m(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)V
    .locals 4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgyl;->zze()Z

    move-result v0

    if-eqz v0, :cond_2

    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v3}, Lg/cxb;->i(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move-object p2, v1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1, p2}, Lg/cxb;->i(Lcom/google/android/gms/internal/ads/zzgyl;Ljava/lang/Object;)V

    :goto_1
    instance-of v0, p2, Lcom/google/android/gms/internal/ads/zzgzs;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/cxb;->d:Z

    :cond_3
    iget-object v0, p0, Lg/cxb;->b:Lg/eol;

    invoke-virtual {v0, p1, p2}, Lg/eol;->l(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final n()Z
    .locals 5

    iget-object v0, p0, Lg/cxb;->b:Lg/eol;

    iget v1, v0, Lg/eol;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v0, v3}, Lg/eol;->m(I)Lg/asf;

    move-result-object v4

    invoke-static {v4}, Lg/cxb;->e(Ljava/util/Map$Entry;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lg/eol;->j()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lg/cxb;->e(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x1

    return v0
.end method
