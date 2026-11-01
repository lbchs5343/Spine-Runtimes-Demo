.class public final Lg/eag;
.super Lg/fsu;
.source "SourceFile"


# static fields
.field private static final zzb:Lg/eag;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/eag;

    invoke-direct {v0}, Lg/eag;-><init>()V

    sput-object v0, Lg/eag;->zzb:Lg/eag;

    const-class v1, Lg/eag;

    invoke-static {v1, v0}, Lg/fsu;->p(Ljava/lang/Class;Lg/fsu;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/fsu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/eag;->zze:I

    return-void
.end method

.method public static synthetic a(Lg/eag;Lg/apl;)V
    .locals 0

    invoke-virtual {p1}, Lg/apl;->zza()I

    move-result p1

    iput p1, p0, Lg/eag;->zzh:I

    iget p1, p0, Lg/eag;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lg/eag;->zzd:I

    return-void
.end method

.method public static b()Lg/gza;
    .locals 1

    sget-object v0, Lg/eag;->zzb:Lg/eag;

    invoke-virtual {v0}, Lg/fsu;->u()Lg/dtx;

    move-result-object v0

    check-cast v0, Lg/gza;

    return-object v0
.end method

.method public static synthetic c(Lg/eag;Lg/gsc;)V
    .locals 0

    iput-object p1, p0, Lg/eag;->zzf:Ljava/lang/Object;

    const/4 p1, 0x4

    iput p1, p0, Lg/eag;->zze:I

    return-void
.end method

.method public static synthetic d(Lg/eag;Lg/dmh;)V
    .locals 0

    iput-object p1, p0, Lg/eag;->zzf:Ljava/lang/Object;

    const/4 p1, 0x3

    iput p1, p0, Lg/eag;->zze:I

    return-void
.end method

.method public static synthetic e(Lg/eag;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lg/eag;->zzg:I

    iget p1, p0, Lg/eag;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/eag;->zzd:I

    return-void
.end method


# virtual methods
.method public final f()Lg/gsc;
    .locals 2

    iget v0, p0, Lg/eag;->zze:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/eag;->zzf:Ljava/lang/Object;

    check-cast v0, Lg/gsc;

    return-object v0

    :cond_0
    invoke-static {}, Lg/gsc;->a()Lg/gsc;

    move-result-object v0

    return-object v0
.end method

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

    sget-object p1, Lg/eag;->zzb:Lg/eag;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lg/gza;

    sget-object v0, Lg/eag;->zzb:Lg/eag;

    invoke-direct {p1, v0}, Lg/dtx;-><init>(Lg/fsu;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/eag;

    invoke-direct {p1}, Lg/eag;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xa

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzf"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zze"

    aput-object v5, p1, v0

    const-string v0, "zzd"

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    sget-object v0, Lg/gve;->g:Lg/gve;

    aput-object v0, p1, v2

    const-class v0, Lg/eff;

    aput-object v0, p1, v1

    const-class v0, Lg/dmh;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-class v0, Lg/gsc;

    const/4 v1, 0x7

    aput-object v0, p1, v1

    const-string v0, "zzh"

    const/16 v1, 0x8

    aput-object v0, p1, v1

    sget-object v0, Lg/gve;->c:Lg/gve;

    const/16 v1, 0x9

    aput-object v0, p1, v1

    sget-object v0, Lg/eag;->zzb:Lg/eag;

    new-instance v1, Lg/hcu;

    const-string v2, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001\u180c\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005\u180c\u0001"

    invoke-direct {v1, v0, v2, p1}, Lg/hcu;-><init>(Lg/bsv;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
