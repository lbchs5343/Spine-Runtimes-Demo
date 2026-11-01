.class public final Lcom/google/android/gms/internal/ads/zzhes;
.super Lcom/google/android/gms/internal/ads/zzgyx;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhaj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhes;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhaq;


# instance fields
.field private zzA:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzB:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzC:Lcom/google/android/gms/internal/ads/zzheo;

.field private zzD:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzE:Lcom/google/android/gms/internal/ads/zzhcz;

.field private zzF:Ljava/lang/String;

.field private zzG:Lcom/google/android/gms/internal/ads/zzhcr;

.field private zzH:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzI:Lcom/google/android/gms/internal/ads/zzhds;

.field private zzJ:I

.field private zzK:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzL:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzM:J

.field private zzN:Lcom/google/android/gms/internal/ads/zzher;

.field private zzO:Lcom/google/android/gms/internal/ads/zzhdx;

.field private zzP:Ljava/lang/String;

.field private zzQ:B

.field private zzc:I

.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Lcom/google/android/gms/internal/ads/zzhcv;

.field private zzj:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzk:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzl:Ljava/lang/String;

.field private zzm:Lcom/google/android/gms/internal/ads/zzhed;

.field private zzn:Z

.field private zzo:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzp:Ljava/lang/String;

.field private zzu:Z

.field private zzv:Z

.field private zzw:Lcom/google/android/gms/internal/ads/zzgxp;

.field private zzx:Lcom/google/android/gms/internal/ads/zzhek;

.field private zzy:Z

.field private zzz:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhes;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhes;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzhes;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhes;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cb(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>()V

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzQ:B

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzh:Ljava/lang/String;

    sget-object v1, Lg/ahn;->c:Lg/ahn;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzj:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzk:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzl:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzo:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzp:Ljava/lang/String;

    sget-object v2, Lcom/google/android/gms/internal/ads/zzgxp;->zzb:Lcom/google/android/gms/internal/ads/zzgxp;

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzw:Lcom/google/android/gms/internal/ads/zzgxp;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzz:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzA:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzB:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzD:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzF:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzH:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzK:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzL:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzP:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/internal/ads/zzhes;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzA:Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzj;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->bn(Lcom/google/android/gms/internal/ads/zzgzj;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzA:Lcom/google/android/gms/internal/ads/zzgzj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzA:Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwy;->bi(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/ads/zzhes;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lcom/google/android/gms/internal/ads/zzhes;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e(Lcom/google/android/gms/internal/ads/zzhes;Lcom/google/android/gms/internal/ads/zzhcv;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzi:Lcom/google/android/gms/internal/ads/zzhcv;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    or-int/lit8 p1, p1, 0x20

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    return-void
.end method

.method public static synthetic f(Lcom/google/android/gms/internal/ads/zzhes;Lcom/google/android/gms/internal/ads/zzhek;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzx:Lcom/google/android/gms/internal/ads/zzhek;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    or-int/lit16 p1, p1, 0x2000

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    return-void
.end method

.method public static synthetic g(Lcom/google/android/gms/internal/ads/zzhes;)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzhes;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzhes;->zzl:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzl:Ljava/lang/String;

    return-void
.end method

.method public static synthetic h(Lcom/google/android/gms/internal/ads/zzhes;Lcom/google/android/gms/internal/ads/zzhei;)V
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzj:Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzj;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->bn(Lcom/google/android/gms/internal/ads/zzgzj;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzj:Lcom/google/android/gms/internal/ads/zzgzj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzj:Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic i(Lcom/google/android/gms/internal/ads/zzhes;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzd:I

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    return-void
.end method

.method public static synthetic j(Lcom/google/android/gms/internal/ads/zzhes;Lcom/google/android/gms/internal/ads/zzhed;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzm:Lcom/google/android/gms/internal/ads/zzhed;

    iget p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    or-int/lit16 p1, p1, 0x80

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    return-void
.end method

.method public static synthetic k(Lcom/google/android/gms/internal/ads/zzhes;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzc:I

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic l(Lcom/google/android/gms/internal/ads/zzhes;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzB:Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzgzj;->zzc()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->bn(Lcom/google/android/gms/internal/ads/zzgzj;)Lcom/google/android/gms/internal/ads/zzgzj;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzB:Lcom/google/android/gms/internal/ads/zzgzj;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzB:Lcom/google/android/gms/internal/ads/zzgzj;

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzgwy;->bi(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzhct;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzhes;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cl()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhct;

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhes;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzhes;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhes;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgys;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzhes;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgys;-><init>(Lcom/google/android/gms/internal/ads/zzgyx;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzhes;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit p2

    return-object p1

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    return-object p1

    :pswitch_1
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzhes;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhct;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzhes;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgyr;-><init>(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhes;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhes;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x2d

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "zzc"

    aput-object p2, p1, v1

    const-string p2, "zzf"

    aput-object p2, p1, v0

    const-string p2, "zzg"

    const/4 v0, 0x2

    aput-object p2, p1, v0

    const-string p2, "zzh"

    const/4 v0, 0x3

    aput-object p2, p1, v0

    const-string p2, "zzj"

    const/4 v0, 0x4

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/ads/zzhei;

    const/4 v0, 0x5

    aput-object p2, p1, v0

    const-string p2, "zzn"

    const/4 v0, 0x6

    aput-object p2, p1, v0

    const-string p2, "zzo"

    const/4 v0, 0x7

    aput-object p2, p1, v0

    const-string p2, "zzp"

    const/16 v0, 0x8

    aput-object p2, p1, v0

    const-string p2, "zzu"

    const/16 v0, 0x9

    aput-object p2, p1, v0

    const-string p2, "zzv"

    const/16 v0, 0xa

    aput-object p2, p1, v0

    const-string p2, "zzd"

    const/16 v0, 0xb

    aput-object p2, p1, v0

    sget-object p2, Lg/eqd;->a:Lg/eqd;

    const/16 v0, 0xc

    aput-object p2, p1, v0

    const-string p2, "zze"

    const/16 v0, 0xd

    aput-object p2, p1, v0

    sget-object p2, Lg/eqd;->q:Lg/eqd;

    const/16 v0, 0xe

    aput-object p2, p1, v0

    const-string p2, "zzi"

    const/16 v0, 0xf

    aput-object p2, p1, v0

    const-string p2, "zzl"

    const/16 v0, 0x10

    aput-object p2, p1, v0

    const-string p2, "zzm"

    const/16 v0, 0x11

    aput-object p2, p1, v0

    const-string p2, "zzw"

    const/16 v0, 0x12

    aput-object p2, p1, v0

    const-string p2, "zzk"

    const/16 v0, 0x13

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/ads/zzhew;

    const/16 v0, 0x14

    aput-object p2, p1, v0

    const-string p2, "zzx"

    const/16 v0, 0x15

    aput-object p2, p1, v0

    const-string p2, "zzy"

    const/16 v0, 0x16

    aput-object p2, p1, v0

    const-string p2, "zzz"

    const/16 v0, 0x17

    aput-object p2, p1, v0

    const-string p2, "zzA"

    const/16 v0, 0x18

    aput-object p2, p1, v0

    const-string p2, "zzB"

    const/16 v0, 0x19

    aput-object p2, p1, v0

    const-string p2, "zzC"

    const/16 v0, 0x1a

    aput-object p2, p1, v0

    const-string p2, "zzD"

    const/16 v0, 0x1b

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/ads/zzhfc;

    const/16 v0, 0x1c

    aput-object p2, p1, v0

    const-string p2, "zzE"

    const/16 v0, 0x1d

    aput-object p2, p1, v0

    const-string p2, "zzF"

    const/16 v0, 0x1e

    aput-object p2, p1, v0

    const-string p2, "zzG"

    const/16 v0, 0x1f

    aput-object p2, p1, v0

    const-string p2, "zzH"

    const/16 v0, 0x20

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/ads/zzhdd;

    const/16 v0, 0x21

    aput-object p2, p1, v0

    const-string p2, "zzI"

    const/16 v0, 0x22

    aput-object p2, p1, v0

    const-string p2, "zzJ"

    const/16 v0, 0x23

    aput-object p2, p1, v0

    sget-object p2, Lg/eqd;->m:Lg/eqd;

    const/16 v0, 0x24

    aput-object p2, p1, v0

    const-string p2, "zzK"

    const/16 v0, 0x25

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/ads/zzhdv;

    const/16 v0, 0x26

    aput-object p2, p1, v0

    const-string p2, "zzL"

    const/16 v0, 0x27

    aput-object p2, p1, v0

    const-class p2, Lcom/google/android/gms/internal/ads/zzhea;

    const/16 v0, 0x28

    aput-object p2, p1, v0

    const-string p2, "zzM"

    const/16 v0, 0x29

    aput-object p2, p1, v0

    const-string p2, "zzN"

    const/16 v0, 0x2a

    aput-object p2, p1, v0

    const-string p2, "zzO"

    const/16 v0, 0x2b

    aput-object p2, p1, v0

    const-string p2, "zzP"

    const/16 v0, 0x2c

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhes;->zza:Lcom/google/android/gms/internal/ads/zzhes;

    const-string v0, "\u0001#\u0000\u0001\u0001##\u0000\t\u0001\u0001\u1008\u0002\u0002\u1008\u0003\u0003\u1008\u0004\u0004\u041b\u0005\u1007\u0008\u0006\u001a\u0007\u1008\t\u0008\u1007\n\t\u1007\u000b\n\u180c\u0000\u000b\u180c\u0001\u000c\u1009\u0005\r\u1008\u0006\u000e\u1009\u0007\u000f\u100a\u000c\u0010\u001b\u0011\u1009\r\u0012\u1007\u000e\u0013\u1008\u000f\u0014\u001a\u0015\u001a\u0016\u1009\u0010\u0017\u001b\u0018\u1009\u0011\u0019\u1008\u0012\u001a\u1009\u0013\u001b\u001b\u001c\u1009\u0014\u001d\u180c\u0015\u001e\u001b\u001f\u001b \u1002\u0016!\u1009\u0017\"\u1009\u0018#\u1008\u0019"

    new-instance v1, Lg/cyk;

    invoke-direct {v1, p2, v0, p1}, Lg/cyk;-><init>(Lcom/google/android/gms/internal/ads/zzhai;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    if-nez p2, :cond_2

    const/4 v0, 0x0

    :cond_2
    iput-byte v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzQ:B

    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    iget-byte p1, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzQ:B

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final zzf()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzl:Ljava/lang/String;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final zzh()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhes;->zzj:Lcom/google/android/gms/internal/ads/zzgzj;

    return-object v0
.end method
