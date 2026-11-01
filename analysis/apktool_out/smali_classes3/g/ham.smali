.class public final Lg/ham;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/ham;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lg/cwe;

.field private zzh:Lg/cwe;

.field private zzi:Z

.field private zzj:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/ham;

    invoke-direct {v0}, Lg/ham;-><init>()V

    sput-object v0, Lg/ham;->zza:Lg/ham;

    const-class v1, Lg/ham;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/ham;->zzg:Lg/cwe;

    iput-object v0, p0, Lg/ham;->zzh:Lg/cwe;

    return-void
.end method

.method public static b(Lg/ham;ILg/dfx;)V
    .locals 2

    iget-object v0, p0, Lg/ham;->zzg:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/ham;->zzg:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/ham;->zzg:Lg/cwe;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static c(Lg/ham;ILg/azv;)V
    .locals 2

    iget-object v0, p0, Lg/ham;->zzh:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/ham;->zzh:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/ham;->zzh:Lg/cwe;

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
    sget-object p1, Lg/ham;->zza:Lg/ham;

    return-object p1

    :cond_1
    new-instance p1, Lg/gmg;

    sget-object v0, Lg/ham;->zza:Lg/ham;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/ham;

    invoke-direct {p1}, Lg/ham;-><init>()V

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

    const-class v0, Lg/dfx;

    aput-object v0, p1, v3

    const-string v0, "zzh"

    aput-object v0, p1, v2

    const-class v0, Lg/azv;

    aput-object v0, p1, v1

    const-string v0, "zzi"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-string v0, "zzj"

    const/4 v1, 0x7

    aput-object v0, p1, v1

    sget-object v0, Lg/ham;->zza:Lg/ham;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001\u1004\u0000\u0002\u001b\u0003\u001b\u0004\u1007\u0001\u0005\u1007\u0002"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final d(I)Lg/azv;
    .locals 1

    iget-object v0, p0, Lg/ham;->zzh:Lg/cwe;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/azv;

    return-object p1
.end method

.method public final e()I
    .locals 1

    iget-object v0, p0, Lg/ham;->zzg:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lg/ham;->zzf:I

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lg/ham;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h(I)Lg/dfx;
    .locals 1

    iget-object v0, p0, Lg/ham;->zzg:Lg/cwe;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/dfx;

    return-object p1
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lg/ham;->zzh:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/ham;->zzh:Lg/cwe;

    return-object v0
.end method

.method public final k()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/ham;->zzg:Lg/cwe;

    return-object v0
.end method
