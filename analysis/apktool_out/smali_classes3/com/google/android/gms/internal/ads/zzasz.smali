.class public final Lcom/google/android/gms/internal/ads/zzasz;
.super Lcom/google/android/gms/internal/ads/zzgyx;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhaj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzasz;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhaq;


# instance fields
.field private zzc:I

.field private zzd:J

.field private zze:J

.field private zzf:J

.field private zzg:J

.field private zzh:J

.field private zzi:J

.field private zzj:J

.field private zzk:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzasz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzasz;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzasz;->zza:Lcom/google/android/gms/internal/ads/zzasz;

    const-class v1, Lcom/google/android/gms/internal/ads/zzasz;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cb(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzd:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zze:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzf:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzg:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzh:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzi:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzj:J

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzk:J

    return-void
.end method

.method public static synthetic a(Lcom/google/android/gms/internal/ads/zzasz;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzi:J

    return-void
.end method

.method public static synthetic b(Lcom/google/android/gms/internal/ads/zzasz;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzh:J

    return-void
.end method

.method public static synthetic d(Lcom/google/android/gms/internal/ads/zzasz;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzg:J

    return-void
.end method

.method public static synthetic e(Lcom/google/android/gms/internal/ads/zzasz;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzd:J

    return-void
.end method

.method public static synthetic f(Lcom/google/android/gms/internal/ads/zzasz;J)V
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzc:I

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzasz;->zzf:J

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzasy;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzasz;->zza:Lcom/google/android/gms/internal/ads/zzasz;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cl()Lcom/google/android/gms/internal/ads/zzgyr;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzasy;

    return-object v0
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasz;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzasz;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasz;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgys;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzasz;->zza:Lcom/google/android/gms/internal/ads/zzasz;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgys;-><init>(Lcom/google/android/gms/internal/ads/zzgyx;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzasz;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzasz;->zza:Lcom/google/android/gms/internal/ads/zzasz;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasy;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzasz;->zza:Lcom/google/android/gms/internal/ads/zzasz;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgyr;-><init>(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzasz;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzasz;-><init>()V

    return-object p1

    :pswitch_4
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "zzc"

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "zzd"

    aput-object v0, p1, p2

    const-string p2, "zze"

    const/4 v0, 0x2

    aput-object p2, p1, v0

    const-string p2, "zzf"

    const/4 v0, 0x3

    aput-object p2, p1, v0

    const-string p2, "zzg"

    const/4 v0, 0x4

    aput-object p2, p1, v0

    const-string p2, "zzh"

    const/4 v0, 0x5

    aput-object p2, p1, v0

    const-string p2, "zzi"

    const/4 v0, 0x6

    aput-object p2, p1, v0

    const-string p2, "zzj"

    const/4 v0, 0x7

    aput-object p2, p1, v0

    const-string p2, "zzk"

    const/16 v0, 0x8

    aput-object p2, p1, v0

    sget-object p2, Lcom/google/android/gms/internal/ads/zzasz;->zza:Lcom/google/android/gms/internal/ads/zzasz;

    const-string v0, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1002\u0001\u0003\u1002\u0002\u0004\u1002\u0003\u0005\u1002\u0004\u0006\u1002\u0005\u0007\u1002\u0006\u0008\u1002\u0007"

    new-instance v1, Lg/cyk;

    invoke-direct {v1, p2, v0, p1}, Lg/cyk;-><init>(Lcom/google/android/gms/internal/ads/zzhai;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :pswitch_5
    const/4 p1, 0x0

    return-object p1

    :pswitch_6
    invoke-static {p2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1

    nop

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
