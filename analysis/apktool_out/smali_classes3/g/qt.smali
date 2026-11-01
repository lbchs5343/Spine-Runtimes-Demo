.class public final Lg/qt;
.super Lg/fsu;
.source "SourceFile"


# static fields
.field private static final zzb:Lg/qt;


# instance fields
.field private zzd:I

.field private zze:Lg/bhs;

.field private zzf:Lg/bhs;

.field private zzg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/qt;

    invoke-direct {v0}, Lg/fsu;-><init>()V

    sput-object v0, Lg/qt;->zzb:Lg/qt;

    const-class v1, Lg/qt;

    invoke-static {v1, v0}, Lg/fsu;->p(Ljava/lang/Class;Lg/fsu;)V

    return-void
.end method


# virtual methods
.method public final i(I)Ljava/lang/Object;
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

    if-ne p1, v1, :cond_0

    sget-object p1, Lg/qt;->zzb:Lg/qt;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    new-instance p1, Lg/tx;

    sget-object v0, Lg/qt;->zzb:Lg/qt;

    invoke-direct {p1, v0}, Lg/dtx;-><init>(Lg/fsu;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/qt;

    invoke-direct {p1}, Lg/fsu;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zzd"

    const/4 v5, 0x0

    aput-object v1, p1, v5

    const-string v1, "zze"

    aput-object v1, p1, v0

    const-string v0, "zzf"

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    sget-object v0, Lg/gve;->f:Lg/gve;

    aput-object v0, p1, v2

    sget-object v0, Lg/qt;->zzb:Lg/qt;

    new-instance v1, Lg/hcu;

    const-string v2, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001\u1009\u0000\u0002\u1009\u0001\u0003\u180c\u0002"

    invoke-direct {v1, v0, v2, p1}, Lg/hcu;-><init>(Lg/bsv;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
