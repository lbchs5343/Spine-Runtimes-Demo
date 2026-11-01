.class public final Lg/djs;
.super Lg/fsu;
.source "SourceFile"


# static fields
.field private static final zzb:Lg/djs;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:I

.field private zzi:J

.field private zzj:J

.field private zzk:Z

.field private zzl:I

.field private zzm:I

.field private zzn:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/djs;

    invoke-direct {v0}, Lg/djs;-><init>()V

    sput-object v0, Lg/djs;->zzb:Lg/djs;

    const-class v1, Lg/djs;

    invoke-static {v1, v0}, Lg/fsu;->p(Ljava/lang/Class;Lg/fsu;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/fsu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/djs;->zze:Ljava/lang/String;

    iput-object v0, p0, Lg/djs;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lg/djs;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lg/djs;I)V
    .locals 1

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lg/djs;->zzd:I

    iput p1, p0, Lg/djs;->zzm:I

    return-void
.end method

.method public static synthetic b(Lg/djs;I)V
    .locals 1

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lg/djs;->zzd:I

    iput p1, p0, Lg/djs;->zzl:I

    return-void
.end method

.method public static synthetic c(Lg/djs;)V
    .locals 1

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lg/djs;->zzd:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/djs;->zzk:Z

    return-void
.end method

.method public static synthetic d(Lg/djs;)V
    .locals 1

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/djs;->zzd:I

    const-string v0, "8.0.0"

    iput-object v0, p0, Lg/djs;->zze:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e(Lg/djs;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/djs;->zzd:I

    iput-object p1, p0, Lg/djs;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic f(Lg/djs;)V
    .locals 2

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lg/djs;->zzd:I

    const-wide/32 v0, 0x2e0d0066

    iput-wide v0, p0, Lg/djs;->zzn:J

    return-void
.end method

.method public static synthetic g(Lg/djs;I)V
    .locals 1

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lg/djs;->zzd:I

    iput p1, p0, Lg/djs;->zzh:I

    return-void
.end method

.method public static synthetic h(Lg/djs;J)V
    .locals 1

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lg/djs;->zzd:I

    iput-wide p1, p0, Lg/djs;->zzi:J

    return-void
.end method

.method public static synthetic l(Lg/djs;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lg/djs;->zzd:I

    iput-object p1, p0, Lg/djs;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static m()Lg/gzp;
    .locals 1

    sget-object v0, Lg/djs;->zzb:Lg/djs;

    invoke-virtual {v0}, Lg/fsu;->u()Lg/dtx;

    move-result-object v0

    check-cast v0, Lg/gzp;

    return-object v0
.end method

.method public static synthetic n(Lg/djs;J)V
    .locals 1

    iget v0, p0, Lg/djs;->zzd:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lg/djs;->zzd:I

    iput-wide p1, p0, Lg/djs;->zzj:J

    return-void
.end method


# virtual methods
.method public final i(I)Ljava/lang/Object;
    .locals 7

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_1

    if-ne p1, v1, :cond_0

    sget-object p1, Lg/djs;->zzb:Lg/djs;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lg/gzp;

    sget-object v0, Lg/djs;->zzb:Lg/djs;

    invoke-direct {p1, v0}, Lg/dtx;-><init>(Lg/fsu;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/djs;

    invoke-direct {p1}, Lg/djs;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzd"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zze"

    aput-object v5, p1, v0

    const-string v0, "zzg"

    aput-object v0, p1, v4

    const-string v0, "zzh"

    aput-object v0, p1, v3

    const-string v0, "zzi"

    aput-object v0, p1, v2

    const-string v0, "zzf"

    aput-object v0, p1, v1

    const-string v0, "zzj"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-string v0, "zzk"

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const-string v0, "zzl"

    const/16 v1, 0x8

    aput-object v0, p1, v1

    const-string v0, "zzm"

    const/16 v1, 0x9

    aput-object v0, p1, v1

    const-string v0, "zzn"

    const/16 v1, 0xa

    aput-object v0, p1, v1

    sget-object v0, Lg/djs;->zzb:Lg/djs;

    new-instance v1, Lg/hcu;

    const-string v2, "\u0004\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0002\u0003\u1004\u0003\u0004\u1002\u0004\u0005\u1008\u0001\u0006\u1002\u0005\u0007\u1007\u0006\u0008\u1004\u0007\t\u1004\u0008\n\u1002\t"

    invoke-direct {v1, v0, v2, p1}, Lg/hcu;-><init>(Lg/bsv;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
