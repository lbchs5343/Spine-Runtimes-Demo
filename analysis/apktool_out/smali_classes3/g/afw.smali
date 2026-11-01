.class public final Lg/afw;
.super Lg/fsu;
.source "SourceFile"


# static fields
.field private static final zzb:Lg/afw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/afw;

    invoke-direct {v0}, Lg/fsu;-><init>()V

    sput-object v0, Lg/afw;->zzb:Lg/afw;

    const-class v1, Lg/afw;

    invoke-static {v1, v0}, Lg/fsu;->p(Ljava/lang/Class;Lg/fsu;)V

    return-void
.end method

.method public static a()Lg/afw;
    .locals 1

    sget-object v0, Lg/afw;->zzb:Lg/afw;

    return-object v0
.end method


# virtual methods
.method public final i(I)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    if-eqz p1, :cond_4

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    sget-object p1, Lg/afw;->zzb:Lg/afw;

    return-object p1

    :cond_0
    throw v1

    :cond_1
    new-instance p1, Lg/tx;

    sget-object v0, Lg/afw;->zzb:Lg/afw;

    invoke-direct {p1, v0}, Lg/dtx;-><init>(Lg/fsu;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/afw;

    invoke-direct {p1}, Lg/fsu;-><init>()V

    return-object p1

    :cond_3
    sget-object p1, Lg/afw;->zzb:Lg/afw;

    new-instance v0, Lg/hcu;

    const-string v2, "\u0004\u0000"

    invoke-direct {v0, p1, v2, v1}, Lg/hcu;-><init>(Lg/bsv;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_4
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
