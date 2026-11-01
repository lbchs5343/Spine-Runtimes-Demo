.class public final Lg/ezy;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/ezy;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lg/boh;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/ezy;

    invoke-direct {v0}, Lg/ezy;-><init>()V

    sput-object v0, Lg/ezy;->zza:Lg/ezy;

    const-class v1, Lg/ezy;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    sget-object v0, Lg/ajv;->a:Lg/ajv;

    iput-object v0, p0, Lg/ezy;->zzg:Lg/boh;

    return-void
.end method

.method public static b()Lg/bds;
    .locals 1

    sget-object v0, Lg/ezy;->zza:Lg/ezy;

    invoke-virtual {v0}, Lg/cys;->ag()Lg/crf;

    move-result-object v0

    check-cast v0, Lg/bds;

    return-object v0
.end method

.method public static synthetic c(Lg/ezy;I)V
    .locals 1

    iget v0, p0, Lg/ezy;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/ezy;->zze:I

    iput p1, p0, Lg/ezy;->zzf:I

    return-void
.end method

.method public static d(Lg/ezy;Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lg/ezy;->zzg:Lg/boh;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ab(Lg/boh;)Lg/ajv;

    move-result-object v0

    iput-object v0, p0, Lg/ezy;->zzg:Lg/boh;

    :cond_0
    iget-object p0, p0, Lg/ezy;->zzg:Lg/boh;

    invoke-static {p1, p0}, Lg/cir;->y(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 4

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    if-eq p1, v1, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lg/ezy;->zza:Lg/ezy;

    return-object p1

    :cond_1
    new-instance p1, Lg/bds;

    sget-object v0, Lg/ezy;->zza:Lg/ezy;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/ezy;

    invoke-direct {p1}, Lg/ezy;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zze"

    const/4 v3, 0x0

    aput-object v1, p1, v3

    const-string v1, "zzf"

    aput-object v1, p1, v0

    const-string v0, "zzg"

    aput-object v0, p1, v2

    sget-object v0, Lg/ezy;->zza:Lg/ezy;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u1004\u0000\u0002\u0014"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final e(I)J
    .locals 3

    iget-object v0, p0, Lg/ezy;->zzg:Lg/boh;

    check-cast v0, Lg/ajv;

    invoke-virtual {v0, p1}, Lg/ajv;->zzi(I)V

    iget-object v0, v0, Lg/ajv;->c:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public final f()I
    .locals 1

    iget-object v0, p0, Lg/ezy;->zzg:Lg/boh;

    check-cast v0, Lg/ajv;

    invoke-virtual {v0}, Lg/ajv;->size()I

    move-result v0

    return v0
.end method

.method public final g()Z
    .locals 2

    iget v0, p0, Lg/ezy;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/ezy;->zzg:Lg/boh;

    return-object v0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lg/ezy;->zzf:I

    return v0
.end method
