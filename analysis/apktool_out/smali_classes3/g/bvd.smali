.class public final Lg/bvd;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/bvd;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/bvd;

    invoke-direct {v0}, Lg/cys;-><init>()V

    sput-object v0, Lg/bvd;->zza:Lg/bvd;

    const-class v1, Lg/bvd;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public static synthetic b(Lg/bvd;I)V
    .locals 1

    iget v0, p0, Lg/bvd;->zze:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/bvd;->zze:I

    iput p1, p0, Lg/bvd;->zzf:I

    return-void
.end method

.method public static c()Lg/cas;
    .locals 1

    sget-object v0, Lg/bvd;->zza:Lg/bvd;

    invoke-virtual {v0}, Lg/cys;->ag()Lg/crf;

    move-result-object v0

    check-cast v0, Lg/cas;

    return-object v0
.end method

.method public static synthetic d(Lg/bvd;J)V
    .locals 1

    iget v0, p0, Lg/bvd;->zze:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/bvd;->zze:I

    iput-wide p1, p0, Lg/bvd;->zzg:J

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
    sget-object p1, Lg/bvd;->zza:Lg/bvd;

    return-object p1

    :cond_1
    new-instance p1, Lg/cas;

    sget-object v0, Lg/bvd;->zza:Lg/bvd;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/bvd;

    invoke-direct {p1}, Lg/cys;-><init>()V

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

    sget-object v0, Lg/bvd;->zza:Lg/bvd;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1002\u0001"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lg/bvd;->zzf:I

    return v0
.end method

.method public final f()J
    .locals 2

    iget-wide v0, p0, Lg/bvd;->zzg:J

    return-wide v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lg/bvd;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Z
    .locals 2

    iget v0, p0, Lg/bvd;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
