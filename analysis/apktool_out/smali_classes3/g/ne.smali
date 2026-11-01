.class public final Lg/ne;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/ne;


# instance fields
.field private zze:I

.field private zzf:J

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:J

.field private zzj:F

.field private zzk:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/ne;

    invoke-direct {v0}, Lg/ne;-><init>()V

    sput-object v0, Lg/ne;->zza:Lg/ne;

    const-class v1, Lg/ne;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/ne;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lg/ne;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static b()Lg/eft;
    .locals 1

    sget-object v0, Lg/ne;->zza:Lg/ne;

    invoke-virtual {v0}, Lg/cys;->ag()Lg/crf;

    move-result-object v0

    check-cast v0, Lg/eft;

    return-object v0
.end method

.method public static synthetic c(Lg/ne;)V
    .locals 2

    iget v0, p0, Lg/ne;->zze:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lg/ne;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/ne;->zzk:D

    return-void
.end method

.method public static synthetic d(Lg/ne;)V
    .locals 1

    iget v0, p0, Lg/ne;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lg/ne;->zze:I

    sget-object v0, Lg/ne;->zza:Lg/ne;

    iget-object v0, v0, Lg/ne;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lg/ne;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic e(Lg/ne;J)V
    .locals 1

    iget v0, p0, Lg/ne;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lg/ne;->zze:I

    iput-wide p1, p0, Lg/ne;->zzi:J

    return-void
.end method

.method public static synthetic f(Lg/ne;)V
    .locals 2

    iget v0, p0, Lg/ne;->zze:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lg/ne;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/ne;->zzi:J

    return-void
.end method

.method public static synthetic g(Lg/ne;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lg/ne;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/ne;->zze:I

    iput-object p1, p0, Lg/ne;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic h(Lg/ne;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lg/ne;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lg/ne;->zze:I

    iput-object p1, p0, Lg/ne;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic i(Lg/ne;D)V
    .locals 1

    iget v0, p0, Lg/ne;->zze:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lg/ne;->zze:I

    iput-wide p1, p0, Lg/ne;->zzk:D

    return-void
.end method

.method public static synthetic j(Lg/ne;J)V
    .locals 1

    iget v0, p0, Lg/ne;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/ne;->zze:I

    iput-wide p1, p0, Lg/ne;->zzf:J

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
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

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lg/ne;->zza:Lg/ne;

    return-object p1

    :cond_1
    new-instance p1, Lg/eft;

    sget-object v0, Lg/ne;->zza:Lg/ne;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/ne;

    invoke-direct {p1}, Lg/ne;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zze"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzf"

    aput-object v5, p1, v0

    const-string v0, "zzg"

    aput-object v0, p1, v4

    const-string v0, "zzh"

    aput-object v0, p1, v3

    const-string v0, "zzi"

    aput-object v0, p1, v2

    const-string v0, "zzj"

    aput-object v0, p1, v1

    const-string v0, "zzk"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    sget-object v0, Lg/ne;->zza:Lg/ne;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001\u1002\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1002\u0003\u0005\u1001\u0004\u0006\u1000\u0005"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lg/ne;->zze:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Lg/ne;->zzf:J

    return-wide v0
.end method

.method public final m()Z
    .locals 2

    iget v0, p0, Lg/ne;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()D
    .locals 2

    iget-wide v0, p0, Lg/ne;->zzk:D

    return-wide v0
.end method

.method public final o()Z
    .locals 1

    iget v0, p0, Lg/ne;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/ne;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final q()J
    .locals 2

    iget-wide v0, p0, Lg/ne;->zzi:J

    return-wide v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/ne;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Z
    .locals 1

    iget v0, p0, Lg/ne;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
