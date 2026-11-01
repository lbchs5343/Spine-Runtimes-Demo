.class public final Lcom/google/android/gms/internal/ads/zzhcr;
.super Lcom/google/android/gms/internal/ads/zzgyx;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhaj;


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zzhcr;

.field private static volatile zzb:Lcom/google/android/gms/internal/ads/zzhaq;


# instance fields
.field private zzc:I

.field private zzd:I

.field private zze:Z

.field private zzf:Ljava/lang/String;

.field private zzg:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzh:I

.field private zzi:Z

.field private zzj:Z

.field private zzk:Z

.field private zzl:Ljava/lang/String;

.field private zzm:I

.field private zzn:I

.field private zzo:I

.field private zzp:Z

.field private zzu:Lcom/google/android/gms/internal/ads/zzgzj;

.field private zzv:Z

.field private zzw:J

.field private zzx:Lcom/google/android/gms/internal/ads/zzgzf;

.field private zzy:Z

.field private zzz:Lcom/google/android/gms/internal/ads/zzgzf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhcr;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhcr;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhcr;->zza:Lcom/google/android/gms/internal/ads/zzhcr;

    const-class v1, Lcom/google/android/gms/internal/ads/zzhcr;

    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/zzgyx;->cb(Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzgyx;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcr;->zzf:Ljava/lang/String;

    sget-object v1, Lg/ahn;->c:Lg/ahn;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhcr;->zzg:Lcom/google/android/gms/internal/ads/zzgzj;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcr;->zzl:Ljava/lang/String;

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzhcr;->zzu:Lcom/google/android/gms/internal/ads/zzgzj;

    sget-object v0, Lg/uo;->c:Lg/uo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcr;->zzx:Lcom/google/android/gms/internal/ads/zzgzf;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzhcr;->zzz:Lcom/google/android/gms/internal/ads/zzgzf;

    return-void
.end method


# virtual methods
.method public final c(Lcom/google/android/gms/internal/ads/zzgyw;Lcom/google/android/gms/internal/ads/zzgyx;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 p2, 0x1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    :pswitch_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhcr;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

    if-nez p1, :cond_1

    const-class p2, Lcom/google/android/gms/internal/ads/zzhcr;

    monitor-enter p2

    :try_start_0
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhcr;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/internal/ads/zzgys;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhcr;->zza:Lcom/google/android/gms/internal/ads/zzhcr;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzgys;-><init>(Lcom/google/android/gms/internal/ads/zzgyx;)V

    sput-object p1, Lcom/google/android/gms/internal/ads/zzhcr;->zzb:Lcom/google/android/gms/internal/ads/zzhaq;

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
    sget-object p1, Lcom/google/android/gms/internal/ads/zzhcr;->zza:Lcom/google/android/gms/internal/ads/zzhcr;

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhck;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzhcr;->zza:Lcom/google/android/gms/internal/ads/zzhcr;

    invoke-direct {p1, p2}, Lcom/google/android/gms/internal/ads/zzgyr;-><init>(Lcom/google/android/gms/internal/ads/zzgyx;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/internal/ads/zzhcr;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/zzhcr;-><init>()V

    return-object p1

    :pswitch_4
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhce;->zza()Lcom/google/android/gms/internal/ads/zzgzd;

    move-result-object p1

    const/16 v0, 0x19

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "zzc"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "zzd"

    aput-object v1, v0, p2

    sget-object p2, Lg/eqd;->ac:Lg/eqd;

    const/4 v1, 0x2

    aput-object p2, v0, v1

    const-string p2, "zze"

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const-string p2, "zzf"

    const/4 v1, 0x4

    aput-object p2, v0, v1

    const-string p2, "zzg"

    const/4 v1, 0x5

    aput-object p2, v0, v1

    const-string p2, "zzh"

    const/4 v1, 0x6

    aput-object p2, v0, v1

    sget-object p2, Lg/eqd;->r:Lg/eqd;

    const/4 v1, 0x7

    aput-object p2, v0, v1

    const-string p2, "zzi"

    const/16 v1, 0x8

    aput-object p2, v0, v1

    const-string p2, "zzj"

    const/16 v1, 0x9

    aput-object p2, v0, v1

    const-string p2, "zzk"

    const/16 v1, 0xa

    aput-object p2, v0, v1

    const-string p2, "zzl"

    const/16 v1, 0xb

    aput-object p2, v0, v1

    const-string p2, "zzm"

    const/16 v1, 0xc

    aput-object p2, v0, v1

    const-string p2, "zzn"

    const/16 v1, 0xd

    aput-object p2, v0, v1

    const-string p2, "zzo"

    const/16 v1, 0xe

    aput-object p2, v0, v1

    const-string p2, "zzp"

    const/16 v1, 0xf

    aput-object p2, v0, v1

    const-string p2, "zzu"

    const/16 v1, 0x10

    aput-object p2, v0, v1

    const-class p2, Lcom/google/android/gms/internal/ads/zzhcn;

    const/16 v1, 0x11

    aput-object p2, v0, v1

    const-string p2, "zzv"

    const/16 v1, 0x12

    aput-object p2, v0, v1

    const-string p2, "zzw"

    const/16 v1, 0x13

    aput-object p2, v0, v1

    const-string p2, "zzx"

    const/16 v1, 0x14

    aput-object p2, v0, v1

    const/16 p2, 0x15

    aput-object p1, v0, p2

    const-string p1, "zzy"

    const/16 p2, 0x16

    aput-object p1, v0, p2

    const-string p1, "zzz"

    const/16 p2, 0x17

    aput-object p1, v0, p2

    sget-object p1, Lg/eqd;->w:Lg/eqd;

    const/16 p2, 0x18

    aput-object p1, v0, p2

    sget-object p1, Lcom/google/android/gms/internal/ads/zzhcr;->zza:Lcom/google/android/gms/internal/ads/zzhcr;

    const-string p2, "\u0001\u0013\u0000\u0001\u0001\u0013\u0013\u0000\u0004\u0000\u0001\u180c\u0000\u0002\u1007\u0001\u0003\u1008\u0002\u0004\u001a\u0005\u180c\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006\t\u1008\u0007\n\u1004\u0008\u000b\u1004\t\u000c\u1004\n\r\u1007\u000b\u000e\u001b\u000f\u1007\u000c\u0010\u1002\r\u0011\u082c\u0012\u1007\u000e\u0013\u082c"

    new-instance v1, Lg/cyk;

    invoke-direct {v1, p1, p2, v0}, Lg/cyk;-><init>(Lcom/google/android/gms/internal/ads/zzhai;Ljava/lang/String;[Ljava/lang/Object;)V

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
