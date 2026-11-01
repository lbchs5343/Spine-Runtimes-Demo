.class public final Lg/hd;
.super Lg/fsu;
.source "SourceFile"


# static fields
.field private static final zzb:Lg/hd;


# instance fields
.field private zzd:I

.field private zze:I

.field private zzf:Ljava/lang/Object;

.field private zzg:I

.field private zzh:Lg/aho;

.field private zzi:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/hd;

    invoke-direct {v0}, Lg/hd;-><init>()V

    sput-object v0, Lg/hd;->zzb:Lg/hd;

    const-class v1, Lg/hd;

    invoke-static {v1, v0}, Lg/fsu;->p(Ljava/lang/Class;Lg/fsu;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/fsu;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lg/hd;->zze:I

    return-void
.end method

.method public static a([BLg/beg;)Lg/hd;
    .locals 7

    sget-object v0, Lg/hd;->zzb:Lg/hd;

    array-length v5, p0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lg/hd;->i(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lg/fsu;

    :try_start_0
    sget-object v0, Lg/fjo;->a:Lg/fjo;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/fjo;->d(Ljava/lang/Class;)Lg/dxm;

    move-result-object v1

    new-instance v6, Lg/dsc;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    move-object v3, p0

    invoke-interface/range {v1 .. v6}, Lg/dxm;->w(Ljava/lang/Object;[BIILg/dsc;)V

    invoke-interface {v1, v2}, Lg/dxm;->aa(Ljava/lang/Object;)V
    :try_end_0
    .catch Lg/fba; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lg/egc; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    const/4 p0, 0x1

    invoke-static {v0, p0}, Lg/fsu;->r(Lg/fsu;Z)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lg/egc;

    invoke-direct {p0}, Lg/egc;-><init>()V

    new-instance p1, Lg/fba;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    check-cast v0, Lg/hd;

    return-object v0

    :catch_0
    new-instance p0, Lg/fba;

    const-string p1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception v0

    move-object p0, v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lg/fba;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lg/fba;

    throw p0

    :cond_3
    new-instance p1, Lg/fba;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception v0

    move-object p0, v0

    new-instance p1, Lg/fba;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3
    move-exception v0

    move-object p0, v0

    throw p0
.end method

.method public static b()Lg/ari;
    .locals 1

    sget-object v0, Lg/hd;->zzb:Lg/hd;

    invoke-virtual {v0}, Lg/fsu;->u()Lg/dtx;

    move-result-object v0

    check-cast v0, Lg/ari;

    return-object v0
.end method

.method public static synthetic c(Lg/hd;Lg/dmh;)V
    .locals 0

    iput-object p1, p0, Lg/hd;->zzf:Ljava/lang/Object;

    const/4 p1, 0x6

    iput p1, p0, Lg/hd;->zze:I

    return-void
.end method

.method public static synthetic d(Lg/hd;Lg/apl;)V
    .locals 0

    invoke-virtual {p1}, Lg/apl;->zza()I

    move-result p1

    iput p1, p0, Lg/hd;->zzi:I

    iget p1, p0, Lg/hd;->zzd:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lg/hd;->zzd:I

    return-void
.end method

.method public static synthetic e(Lg/hd;Lg/aho;)V
    .locals 0

    iput-object p1, p0, Lg/hd;->zzh:Lg/aho;

    iget p1, p0, Lg/hd;->zzd:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Lg/hd;->zzd:I

    return-void
.end method

.method public static synthetic f(Lg/hd;I)V
    .locals 0

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lg/hd;->zzg:I

    iget p1, p0, Lg/hd;->zzd:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lg/hd;->zzd:I

    return-void
.end method

.method public static synthetic g(Lg/hd;Lg/gsc;)V
    .locals 0

    iput-object p1, p0, Lg/hd;->zzf:Ljava/lang/Object;

    const/4 p1, 0x7

    iput p1, p0, Lg/hd;->zze:I

    return-void
.end method


# virtual methods
.method public final h()Lg/gsc;
    .locals 2

    iget v0, p0, Lg/hd;->zze:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lg/hd;->zzf:Ljava/lang/Object;

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

    sget-object p1, Lg/hd;->zzb:Lg/hd;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lg/ari;

    sget-object v0, Lg/hd;->zzb:Lg/hd;

    invoke-direct {p1, v0}, Lg/dtx;-><init>(Lg/fsu;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/hd;

    invoke-direct {p1}, Lg/hd;-><init>()V

    return-object p1

    :cond_3
    const/16 p1, 0xb

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

    const-string v0, "zzh"

    aput-object v0, p1, v1

    const-class v0, Lg/eff;

    const/4 v1, 0x6

    aput-object v0, p1, v1

    const-string v0, "zzi"

    const/4 v1, 0x7

    aput-object v0, p1, v1

    sget-object v0, Lg/gve;->c:Lg/gve;

    const/16 v1, 0x8

    aput-object v0, p1, v1

    const-class v0, Lg/dmh;

    const/16 v1, 0x9

    aput-object v0, p1, v1

    const-class v0, Lg/gsc;

    const/16 v1, 0xa

    aput-object v0, p1, v1

    sget-object v0, Lg/hd;->zzb:Lg/hd;

    new-instance v1, Lg/hcu;

    const-string v2, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001\u180c\u0000\u0002\u1009\u0001\u0004<\u0000\u0005\u180c\u0002\u0006<\u0000\u0007<\u0000"

    invoke-direct {v1, v0, v2, p1}, Lg/hcu;-><init>(Lg/bsv;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
