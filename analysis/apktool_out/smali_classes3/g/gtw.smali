.class public final Lg/gtw;
.super Lg/fsu;
.source "SourceFile"


# static fields
.field private static final zzb:Lg/gtw;


# instance fields
.field private zzd:I

.field private zze:Ljava/lang/String;

.field private zzf:I

.field private zzg:Lg/cks;

.field private zzh:Lg/gmb;

.field private zzi:Lg/aho;

.field private zzj:Z

.field private zzk:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gtw;

    invoke-direct {v0}, Lg/gtw;-><init>()V

    sput-object v0, Lg/gtw;->zzb:Lg/gtw;

    const-class v1, Lg/gtw;

    invoke-static {v1, v0}, Lg/fsu;->p(Ljava/lang/Class;Lg/fsu;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/fsu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/gtw;->zze:Ljava/lang/String;

    sget-object v0, Lg/gwj;->b:Lg/gwj;

    iput-object v0, p0, Lg/gtw;->zzg:Lg/cks;

    sget-object v0, Lg/amo;->b:Lg/amo;

    iput-object v0, p0, Lg/gtw;->zzh:Lg/gmb;

    return-void
.end method


# virtual methods
.method public final i(I)Ljava/lang/Object;
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

    if-ne p1, v1, :cond_0

    sget-object p1, Lg/gtw;->zzb:Lg/gtw;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lg/tx;

    sget-object v0, Lg/gtw;->zzb:Lg/gtw;

    invoke-direct {p1, v0}, Lg/dtx;-><init>(Lg/fsu;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/gtw;

    invoke-direct {p1}, Lg/gtw;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzd"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zze"

    aput-object v5, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, v4

    sget-object v0, Lg/gve;->d:Lg/gve;

    aput-object v0, p1, v3

    const-string v0, "zzg"

    aput-object v0, p1, v2

    sget-object v0, Lg/gve;->c:Lg/gve;

    aput-object v0, p1, v1

    const-string v0, "zzh"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-class v0, Lg/exl;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const-string v0, "zzi"

    const/16 v1, 0x8

    aput-object v0, p1, v1

    const-string v0, "zzj"

    const/16 v1, 0x9

    aput-object v0, p1, v1

    const-string v0, "zzk"

    const/16 v1, 0xa

    aput-object v0, p1, v1

    sget-object v0, Lg/gtw;->zzb:Lg/gtw;

    new-instance v1, Lg/hcu;

    const-string v2, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001\u1008\u0000\u0002\u180c\u0001\u0003\u082c\u0004\u001b\u0005\u1009\u0002\u0006\u1007\u0003\u0007\u1007\u0004"

    invoke-direct {v1, v0, v2, p1}, Lg/hcu;-><init>(Lg/bsv;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
