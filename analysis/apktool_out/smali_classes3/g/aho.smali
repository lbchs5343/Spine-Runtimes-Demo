.class public final Lg/aho;
.super Lg/fsu;
.source "SourceFile"


# static fields
.field private static final zzb:Lg/aho;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:I

.field private zzh:Ljava/lang/String;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/aho;

    invoke-direct {v0}, Lg/aho;-><init>()V

    sput-object v0, Lg/aho;->zzb:Lg/aho;

    const-class v1, Lg/aho;

    invoke-static {v1, v0}, Lg/fsu;->p(Ljava/lang/Class;Lg/fsu;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/fsu;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/aho;->zzf:Ljava/lang/String;

    iput-object v0, p0, Lg/aho;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lg/aho;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lg/aho;->zzd:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lg/aho;->zzd:I

    iput-object p1, p0, Lg/aho;->zzf:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lg/aho;Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lg/aho;->zzd:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lg/aho;->zzd:I

    iput-object p1, p0, Lg/aho;->zzh:Ljava/lang/String;

    return-void
.end method

.method public static c()Lg/gwg;
    .locals 1

    sget-object v0, Lg/aho;->zzb:Lg/aho;

    invoke-virtual {v0}, Lg/fsu;->u()Lg/dtx;

    move-result-object v0

    check-cast v0, Lg/gwg;

    return-object v0
.end method

.method public static synthetic d(Lg/aho;I)V
    .locals 1

    iget v0, p0, Lg/aho;->zzd:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lg/aho;->zzd:I

    iput p1, p0, Lg/aho;->zzi:I

    return-void
.end method

.method public static synthetic e(Lg/aho;Lg/hm;)V
    .locals 0

    invoke-virtual {p1}, Lg/hm;->zza()I

    move-result p1

    iput p1, p0, Lg/aho;->zzg:I

    iget p1, p0, Lg/aho;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lg/aho;->zzd:I

    return-void
.end method

.method public static synthetic f(Lg/aho;I)V
    .locals 1

    iget v0, p0, Lg/aho;->zzd:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/aho;->zzd:I

    iput p1, p0, Lg/aho;->zze:I

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

    sget-object p1, Lg/aho;->zzb:Lg/aho;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lg/gwg;

    sget-object v0, Lg/aho;->zzb:Lg/aho;

    invoke-direct {p1, v0}, Lg/dtx;-><init>(Lg/fsu;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/aho;

    invoke-direct {p1}, Lg/aho;-><init>()V

    return-object p1

    :cond_3
    const/4 p1, 0x7

    new-array p1, p1, [Ljava/lang/Object;

    const-string v5, "zzd"

    const/4 v6, 0x0

    aput-object v5, p1, v6

    const-string v5, "zze"

    aput-object v5, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    sget-object v0, Lg/gve;->b:Lg/gve;

    aput-object v0, p1, v2

    const-string v0, "zzh"

    aput-object v0, p1, v1

    const-string v0, "zzi"

    const/4 v1, 0x6

    aput-object v0, p1, v1

    sget-object v0, Lg/aho;->zzb:Lg/aho;

    new-instance v1, Lg/hcu;

    const-string v2, "\u0004\u0005\u0000\u0001\u0001\u0007\u0005\u0000\u0000\u0000\u0001\u1004\u0000\u0002\u1008\u0001\u0004\u180c\u0002\u0005\u1008\u0003\u0007\u1004\u0004"

    invoke-direct {v1, v0, v2, p1}, Lg/hcu;-><init>(Lg/bsv;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
