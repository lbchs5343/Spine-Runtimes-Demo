.class public final Lg/azv;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/azv;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Ljava/lang/String;

.field private zzh:Lg/cwe;

.field private zzi:Z

.field private zzj:Lg/cjx;

.field private zzk:Z

.field private zzl:Z

.field private zzm:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/azv;

    invoke-direct {v0}, Lg/azv;-><init>()V

    sput-object v0, Lg/azv;->zza:Lg/azv;

    const-class v1, Lg/azv;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/azv;->zzg:Ljava/lang/String;

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/azv;->zzh:Lg/cwe;

    return-void
.end method

.method public static b()Lg/hae;
    .locals 1

    sget-object v0, Lg/azv;->zza:Lg/azv;

    invoke-virtual {v0}, Lg/cys;->ag()Lg/crf;

    move-result-object v0

    check-cast v0, Lg/hae;

    return-object v0
.end method

.method public static synthetic c(Lg/azv;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lg/azv;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/azv;->zze:I

    iput-object p1, p0, Lg/azv;->zzg:Ljava/lang/String;

    return-void
.end method

.method public static d(Lg/azv;ILg/cth;)V
    .locals 2

    iget-object v0, p0, Lg/azv;->zzh:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/azv;->zzh:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/azv;->zzh:Lg/cwe;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

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
    sget-object p1, Lg/azv;->zza:Lg/azv;

    return-object p1

    :cond_1
    new-instance p1, Lg/hae;

    sget-object v0, Lg/azv;->zza:Lg/azv;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/azv;

    invoke-direct {p1}, Lg/azv;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

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

    const-class v0, Lg/cth;

    aput-object v0, p1, v2

    const-string v0, "zzi"

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

    sget-object v0, Lg/azv;->zza:Lg/azv;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0008\u0000\u0001\u0001\u0008\u0008\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0003\u001b\u0004\u1007\u0002\u0005\u1009\u0003\u0006\u1007\u0004\u0007\u1007\u0005\u0008\u1007\u0006"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lg/azv;->zze:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f(I)Lg/cth;
    .locals 1

    iget-object v0, p0, Lg/azv;->zzh:Lg/cwe;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/cth;

    return-object p1
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lg/azv;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lg/azv;->zzh:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lg/azv;->zzk:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lg/azv;->zzl:Z

    return v0
.end method

.method public final k()Z
    .locals 1

    iget-boolean v0, p0, Lg/azv;->zzm:Z

    return v0
.end method

.method public final l()Lg/cjx;
    .locals 1

    iget-object v0, p0, Lg/azv;->zzj:Lg/cjx;

    if-nez v0, :cond_0

    invoke-static {}, Lg/cjx;->b()Lg/cjx;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final m()I
    .locals 1

    iget v0, p0, Lg/azv;->zzf:I

    return v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/azv;->zzg:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget v0, p0, Lg/azv;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final p()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/azv;->zzh:Lg/cwe;

    return-object v0
.end method
