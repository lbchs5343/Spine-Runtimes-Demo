.class public final Lg/aqu;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/aqu;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lg/cwe;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Z

.field private zzk:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/aqu;

    invoke-direct {v0}, Lg/aqu;-><init>()V

    sput-object v0, Lg/aqu;->zza:Lg/aqu;

    const-class v1, Lg/aqu;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/aqu;->zzg:Lg/cwe;

    const-string v0, ""

    iput-object v0, p0, Lg/aqu;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lg/aqu;->zzi:Ljava/lang/String;

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
    sget-object p1, Lg/aqu;->zza:Lg/aqu;

    return-object p1

    :cond_1
    new-instance p1, Lg/gp;

    sget-object v0, Lg/aqu;->zza:Lg/aqu;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/aqu;

    invoke-direct {p1}, Lg/aqu;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0x9

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zze"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zzf"

    aput-object v5, p1, v0

    sget-object v0, Lg/gxe;->c:Lg/gxe;

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    const-class v0, Lg/aqu;

    aput-object v0, p1, v2

    const-string v0, "zzh"

    aput-object v0, p1, v1

    const-string v0, "zzi"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-string v0, "zzj"

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const-string v0, "zzk"

    const/16 v1, 0x8

    aput-object v0, p1, v1

    sget-object v0, Lg/aqu;->zza:Lg/aqu;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b\u0003\u1008\u0001\u0004\u1008\u0002\u0005\u1007\u0003\u0006\u1000\u0004"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/aqu;->zzg:Lg/cwe;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/aqu;->zzi:Ljava/lang/String;

    return-object v0
.end method

.method public final d()D
    .locals 2

    iget-wide v0, p0, Lg/aqu;->zzk:D

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lg/aqu;->zze:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    iget-boolean v0, p0, Lg/aqu;->zzj:Z

    return v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/aqu;->zzh:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget v0, p0, Lg/aqu;->zze:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final i()I
    .locals 4

    iget v0, p0, Lg/aqu;->zzf:I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v1, :cond_3

    const/4 v3, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x5

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :cond_3
    :goto_0
    if-nez v2, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final j()Z
    .locals 1

    iget v0, p0, Lg/aqu;->zze:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
