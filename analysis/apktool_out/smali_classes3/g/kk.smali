.class public final Lg/kk;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/kk;


# instance fields
.field private zze:I

.field private zzf:Lg/cwe;

.field private zzg:Ljava/lang/String;

.field private zzh:J

.field private zzi:J

.field private zzj:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/kk;

    invoke-direct {v0}, Lg/kk;-><init>()V

    sput-object v0, Lg/kk;->zza:Lg/kk;

    const-class v1, Lg/kk;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/kk;->zzf:Lg/cwe;

    const-string v0, ""

    iput-object v0, p0, Lg/kk;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(JLg/kk;)V
    .locals 1

    iget v0, p2, Lg/kk;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Lg/kk;->zze:I

    iput-wide p0, p2, Lg/kk;->zzh:J

    return-void
.end method

.method public static synthetic c(Ljava/lang/String;Lg/kk;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Lg/kk;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p1, Lg/kk;->zze:I

    iput-object p0, p1, Lg/kk;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static synthetic d(Lg/kk;Lg/asm;)V
    .locals 0

    invoke-virtual {p0}, Lg/kk;->t()V

    iget-object p0, p0, Lg/kk;->zzf:Lg/cwe;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static synthetic e(Lg/kk;Ljava/lang/Iterable;)V
    .locals 0

    invoke-virtual {p0}, Lg/kk;->t()V

    iget-object p0, p0, Lg/kk;->zzf:Lg/cwe;

    invoke-static {p1, p0}, Lg/cir;->y(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static f(Lg/kk;)V
    .locals 1

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/kk;->zzf:Lg/cwe;

    return-void
.end method

.method public static g()Lg/btw;
    .locals 1

    sget-object v0, Lg/kk;->zza:Lg/kk;

    invoke-virtual {v0}, Lg/cys;->ag()Lg/crf;

    move-result-object v0

    check-cast v0, Lg/btw;

    return-object v0
.end method

.method public static synthetic h(JLg/kk;)V
    .locals 1

    iget v0, p2, Lg/kk;->zze:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Lg/kk;->zze:I

    iput-wide p0, p2, Lg/kk;->zzi:J

    return-void
.end method

.method public static synthetic i(Lg/kk;ILg/asm;)V
    .locals 0

    invoke-virtual {p0}, Lg/kk;->t()V

    iget-object p0, p0, Lg/kk;->zzf:Lg/cwe;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static synthetic j(Lg/kk;I)V
    .locals 0

    invoke-virtual {p0}, Lg/kk;->t()V

    iget-object p0, p0, Lg/kk;->zzf:Lg/cwe;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

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
    sget-object p1, Lg/kk;->zza:Lg/kk;

    return-object p1

    :cond_1
    new-instance p1, Lg/btw;

    sget-object v0, Lg/kk;->zza:Lg/kk;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/kk;

    invoke-direct {p1}, Lg/kk;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zze"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzf"

    aput-object v5, p1, v0

    const-class v0, Lg/asm;

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    const-string v0, "zzh"

    aput-object v0, p1, v2

    const-string v0, "zzi"

    aput-object v0, p1, v1

    const-string v0, "zzj"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    sget-object v0, Lg/kk;->zza:Lg/kk;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002\u1008\u0000\u0003\u1002\u0001\u0004\u1002\u0002\u0005\u1004\u0003"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final k()J
    .locals 2

    iget-wide v0, p0, Lg/kk;->zzh:J

    return-wide v0
.end method

.method public final l()J
    .locals 2

    iget-wide v0, p0, Lg/kk;->zzi:J

    return-wide v0
.end method

.method public final m()Z
    .locals 1

    iget v0, p0, Lg/kk;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()I
    .locals 1

    iget v0, p0, Lg/kk;->zzj:I

    return v0
.end method

.method public final o()Z
    .locals 1

    iget v0, p0, Lg/kk;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Z
    .locals 1

    iget v0, p0, Lg/kk;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final q()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/kk;->zzf:Lg/cwe;

    return-object v0
.end method

.method public final r()I
    .locals 1

    iget-object v0, p0, Lg/kk;->zzf:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final s(I)Lg/asm;
    .locals 1

    iget-object v0, p0, Lg/kk;->zzf:Lg/cwe;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/asm;

    return-object p1
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lg/kk;->zzf:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/kk;->zzf:Lg/cwe;

    :cond_0
    return-void
.end method

.method public final u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/kk;->zzg:Ljava/lang/String;

    return-object v0
.end method
