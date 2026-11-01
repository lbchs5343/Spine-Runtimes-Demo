.class public final Lg/cth;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/cth;


# instance fields
.field private zze:I

.field private zzf:Lg/fuj;

.field private zzg:Lg/cjx;

.field private zzh:Z

.field private zzi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/cth;

    invoke-direct {v0}, Lg/cth;-><init>()V

    sput-object v0, Lg/cth;->zza:Lg/cth;

    const-class v1, Lg/cth;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/cth;->zzi:Ljava/lang/String;

    return-void
.end method

.method public static b()Lg/cth;
    .locals 1

    sget-object v0, Lg/cth;->zza:Lg/cth;

    return-object v0
.end method

.method public static synthetic c(Lg/cth;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lg/cth;->zze:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lg/cth;->zze:I

    iput-object p1, p0, Lg/cth;->zzi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 6

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
    sget-object p1, Lg/cth;->zza:Lg/cth;

    return-object p1

    :cond_1
    new-instance p1, Lg/ffa;

    sget-object v0, Lg/cth;->zza:Lg/cth;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/cth;

    invoke-direct {p1}, Lg/cth;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zze"

    const/4 v5, 0x0

    aput-object v1, p1, v5

    const-string v1, "zzf"

    aput-object v1, p1, v0

    const-string v0, "zzg"

    aput-object v0, p1, v4

    const-string v0, "zzh"

    aput-object v0, p1, v3

    const-string v0, "zzi"

    aput-object v0, p1, v2

    sget-object v0, Lg/cth;->zza:Lg/cth;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u1007\u0002\u0004\u1008\u0003"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cth;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Lg/fuj;
    .locals 1

    iget-object v0, p0, Lg/cth;->zzf:Lg/fuj;

    if-nez v0, :cond_0

    invoke-static {}, Lg/fuj;->b()Lg/fuj;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lg/cth;->zze:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()Z
    .locals 1

    iget v0, p0, Lg/cth;->zze:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final h()Lg/cjx;
    .locals 1

    iget-object v0, p0, Lg/cth;->zzg:Lg/cjx;

    if-nez v0, :cond_0

    invoke-static {}, Lg/cjx;->b()Lg/cjx;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget-boolean v0, p0, Lg/cth;->zzh:Z

    return v0
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, Lg/cth;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final k()Z
    .locals 1

    iget v0, p0, Lg/cth;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
