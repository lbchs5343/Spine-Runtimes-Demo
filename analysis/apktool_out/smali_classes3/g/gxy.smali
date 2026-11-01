.class public final Lg/gxy;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/gxy;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Ljava/lang/String;

.field private zzh:Ljava/lang/String;

.field private zzi:Ljava/lang/String;

.field private zzj:Ljava/lang/String;

.field private zzk:Ljava/lang/String;

.field private zzl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gxy;

    invoke-direct {v0}, Lg/gxy;-><init>()V

    sput-object v0, Lg/gxy;->zza:Lg/gxy;

    const-class v1, Lg/gxy;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/gxy;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lg/gxy;->zzg:Ljava/lang/String;

    iput-object v0, p0, Lg/gxy;->zzh:Ljava/lang/String;

    iput-object v0, p0, Lg/gxy;->zzi:Ljava/lang/String;

    iput-object v0, p0, Lg/gxy;->zzj:Ljava/lang/String;

    iput-object v0, p0, Lg/gxy;->zzk:Ljava/lang/String;

    iput-object v0, p0, Lg/gxy;->zzl:Ljava/lang/String;

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
    sget-object p1, Lg/gxy;->zza:Lg/gxy;

    return-object p1

    :cond_1
    new-instance p1, Lg/gp;

    sget-object v0, Lg/gxy;->zza:Lg/gxy;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/gxy;

    invoke-direct {p1}, Lg/gxy;-><init>()V

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

    const-string v0, "zzl"

    const/4 v1, 0x7

    aput-object v0, p1, v1

    sget-object v0, Lg/gxy;->zza:Lg/gxy;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1008\u0002\u0004\u1008\u0003\u0005\u1008\u0004\u0006\u1008\u0005\u0007\u1008\u0006"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
