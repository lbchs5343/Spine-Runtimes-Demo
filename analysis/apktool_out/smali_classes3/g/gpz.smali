.class public final Lg/gpz;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/gpz;


# instance fields
.field private zze:Lg/boh;

.field private zzf:Lg/boh;

.field private zzg:Lg/cwe;

.field private zzh:Lg/cwe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gpz;

    invoke-direct {v0}, Lg/gpz;-><init>()V

    sput-object v0, Lg/gpz;->zza:Lg/gpz;

    const-class v1, Lg/gpz;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    sget-object v0, Lg/ajv;->a:Lg/ajv;

    iput-object v0, p0, Lg/gpz;->zze:Lg/boh;

    iput-object v0, p0, Lg/gpz;->zzf:Lg/boh;

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/gpz;->zzg:Lg/cwe;

    iput-object v0, p0, Lg/gpz;->zzh:Lg/cwe;

    return-void
.end method

.method public static b(Lg/gpz;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lg/gpz;->zzf:Lg/boh;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ab(Lg/boh;)Lg/ajv;

    move-result-object v0

    iput-object v0, p0, Lg/gpz;->zzf:Lg/boh;

    :cond_0
    iget-object p0, p0, Lg/gpz;->zzf:Lg/boh;

    invoke-static {p1, p0}, Lg/cir;->y(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static c(Lg/gpz;)V
    .locals 1

    sget-object v0, Lg/ajv;->a:Lg/ajv;

    iput-object v0, p0, Lg/gpz;->zze:Lg/boh;

    return-void
.end method

.method public static d(Lg/gpz;I)V
    .locals 2

    iget-object v0, p0, Lg/gpz;->zzh:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/gpz;->zzh:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/gpz;->zzh:Lg/cwe;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static e(Lg/gpz;Ljava/util/ArrayList;)V
    .locals 2

    iget-object v0, p0, Lg/gpz;->zzg:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/gpz;->zzg:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/gpz;->zzg:Lg/cwe;

    invoke-static {p1, p0}, Lg/cir;->y(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static f(Lg/gpz;I)V
    .locals 2

    iget-object v0, p0, Lg/gpz;->zzg:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/gpz;->zzg:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/gpz;->zzg:Lg/cwe;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public static g(Lg/gpz;)V
    .locals 1

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/gpz;->zzg:Lg/cwe;

    return-void
.end method

.method public static h()Lg/gxg;
    .locals 1

    sget-object v0, Lg/gpz;->zza:Lg/gpz;

    invoke-virtual {v0}, Lg/cys;->ag()Lg/crf;

    move-result-object v0

    check-cast v0, Lg/gxg;

    return-object v0
.end method

.method public static i(Lg/gpz;)V
    .locals 1

    sget-object v0, Lg/ajv;->a:Lg/ajv;

    iput-object v0, p0, Lg/gpz;->zzf:Lg/boh;

    return-void
.end method

.method public static j(Lg/gpz;)V
    .locals 1

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/gpz;->zzh:Lg/cwe;

    return-void
.end method

.method public static k(Lg/gpz;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lg/gpz;->zzh:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/gpz;->zzh:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/gpz;->zzh:Lg/cwe;

    invoke-static {p1, p0}, Lg/cir;->y(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static l(Lg/gpz;Ljava/lang/Iterable;)V
    .locals 2

    iget-object v0, p0, Lg/gpz;->zze:Lg/boh;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ab(Lg/boh;)Lg/ajv;

    move-result-object v0

    iput-object v0, p0, Lg/gpz;->zze:Lg/boh;

    :cond_0
    iget-object p0, p0, Lg/gpz;->zze:Lg/boh;

    invoke-static {p1, p0}, Lg/cir;->y(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method public static m()Lg/gpz;
    .locals 1

    sget-object v0, Lg/gpz;->zza:Lg/gpz;

    return-object v0
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
    sget-object p1, Lg/gpz;->zza:Lg/gpz;

    return-object p1

    :cond_1
    new-instance p1, Lg/gxg;

    sget-object v0, Lg/gpz;->zza:Lg/gpz;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/gpz;

    invoke-direct {p1}, Lg/gpz;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x6

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zze"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzf"

    aput-object v5, p1, v0

    const-string v0, "zzg"

    aput-object v0, p1, v4

    const-class v0, Lg/bvd;

    aput-object v0, p1, v3

    const-string v0, "zzh"

    aput-object v0, p1, v2

    const-class v0, Lg/ezy;

    aput-object v0, p1, v1

    sget-object v0, Lg/gpz;->zza:Lg/gpz;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0004\u0000\u0001\u0015\u0002\u0015\u0003\u001b\u0004\u001b"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lg/gpz;->zze:Lg/boh;

    check-cast v0, Lg/ajv;

    invoke-virtual {v0}, Lg/ajv;->size()I

    move-result v0

    return v0
.end method

.method public final o()I
    .locals 1

    iget-object v0, p0, Lg/gpz;->zzh:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final p()I
    .locals 1

    iget-object v0, p0, Lg/gpz;->zzg:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final q()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/gpz;->zzf:Lg/boh;

    return-object v0
.end method

.method public final r()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/gpz;->zzh:Lg/cwe;

    return-object v0
.end method

.method public final s()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/gpz;->zze:Lg/boh;

    return-object v0
.end method

.method public final t(I)Lg/ezy;
    .locals 1

    iget-object v0, p0, Lg/gpz;->zzh:Lg/cwe;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/ezy;

    return-object p1
.end method

.method public final u(I)Lg/bvd;
    .locals 1

    iget-object v0, p0, Lg/gpz;->zzg:Lg/cwe;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lg/bvd;

    return-object p1
.end method

.method public final v()I
    .locals 1

    iget-object v0, p0, Lg/gpz;->zzf:Lg/boh;

    check-cast v0, Lg/ajv;

    invoke-virtual {v0}, Lg/ajv;->size()I

    move-result v0

    return v0
.end method

.method public final w()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/gpz;->zzg:Lg/cwe;

    return-object v0
.end method
