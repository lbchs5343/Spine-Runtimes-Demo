.class public final Lg/asm;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/asm;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:F

.field private zzj:D

.field private zzk:Lg/cwe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/asm;

    invoke-direct {v0}, Lg/asm;-><init>()V

    sput-object v0, Lg/asm;->zza:Lg/asm;

    const-class v1, Lg/asm;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/asm;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lg/asm;->zzg:Ljava/lang/String;

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/asm;->zzk:Lg/cwe;

    return-void
.end method

.method public static synthetic b(Lg/asm;)V
    .locals 2

    iget v0, p0, Lg/asm;->zze:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lg/asm;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/asm;->zzj:D

    return-void
.end method

.method public static synthetic c(Lg/asm;D)V
    .locals 1

    iget v0, p0, Lg/asm;->zze:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lg/asm;->zze:I

    iput-wide p1, p0, Lg/asm;->zzj:D

    return-void
.end method

.method public static d(Lg/asm;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lg/asm;->zzk:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/asm;->zzk:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/asm;->zzk:Lg/cwe;

    invoke-static {p1, p0}, Lg/cir;->y(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic e(Lg/asm;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lg/asm;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/asm;->zze:I

    iput-object p1, p0, Lg/asm;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static f(Lg/asm;)V
    .locals 1

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/asm;->zzk:Lg/cwe;

    return-void
.end method

.method public static synthetic g(Lg/asm;)V
    .locals 1

    iget v0, p0, Lg/asm;->zze:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lg/asm;->zze:I

    sget-object v0, Lg/asm;->zza:Lg/asm;

    iget-object v0, v0, Lg/asm;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lg/asm;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic h(Lg/asm;J)V
    .locals 1

    iget v0, p0, Lg/asm;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lg/asm;->zze:I

    iput-wide p1, p0, Lg/asm;->zzh:J

    return-void
.end method

.method public static i()Lg/bd;
    .locals 1

    sget-object v0, Lg/asm;->zza:Lg/asm;

    invoke-virtual {v0}, Lg/cys;->ag()Lg/crf;

    move-result-object v0

    check-cast v0, Lg/bd;

    return-object v0
.end method

.method public static j(Lg/asm;Lg/asm;)V
    .locals 2

    iget-object v0, p0, Lg/asm;->zzk:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/asm;->zzk:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/asm;->zzk:Lg/cwe;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic k(Lg/asm;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lg/asm;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/asm;->zze:I

    iput-object p1, p0, Lg/asm;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic l(Lg/asm;)V
    .locals 2

    iget v0, p0, Lg/asm;->zze:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lg/asm;->zze:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lg/asm;->zzh:J

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
    sget-object p1, Lg/asm;->zza:Lg/asm;

    return-object p1

    :cond_1
    new-instance p1, Lg/bd;

    sget-object v0, Lg/asm;->zza:Lg/asm;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/asm;

    invoke-direct {p1}, Lg/asm;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x8

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

    const-class v0, Lg/asm;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    sget-object v0, Lg/asm;->zza:Lg/asm;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1002\u0002\u0004\u1001\u0003\u0005\u1000\u0004\u0006\u001b"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final m()Z
    .locals 1

    iget v0, p0, Lg/asm;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()J
    .locals 2

    iget-wide v0, p0, Lg/asm;->zzh:J

    return-wide v0
.end method

.method public final o()Z
    .locals 2

    iget v0, p0, Lg/asm;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lg/asm;->zzk:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final q()D
    .locals 2

    iget-wide v0, p0, Lg/asm;->zzj:D

    return-wide v0
.end method

.method public final r()Z
    .locals 1

    iget v0, p0, Lg/asm;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final s()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/asm;->zzk:Lg/cwe;

    return-object v0
.end method

.method public final t()F
    .locals 1

    iget v0, p0, Lg/asm;->zzi:F

    return v0
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/asm;->zzf:Ljava/lang/String;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    iget v0, p0, Lg/asm;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final w()Z
    .locals 1

    iget v0, p0, Lg/asm;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/asm;->zzg:Ljava/lang/String;

    return-object v0
.end method
