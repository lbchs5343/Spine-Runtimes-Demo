.class public final Lg/aw;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/aw;


# instance fields
.field private zze:I

.field private zzf:I

.field private zzg:Lg/cwe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/aw;

    invoke-direct {v0}, Lg/aw;-><init>()V

    sput-object v0, Lg/aw;->zza:Lg/aw;

    const-class v1, Lg/aw;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lg/aw;->zzf:I

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/aw;->zzg:Lg/cwe;

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
    sget-object p1, Lg/aw;->zza:Lg/aw;

    return-object p1

    :cond_1
    new-instance p1, Lg/gp;

    sget-object v0, Lg/aw;->zza:Lg/aw;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/aw;

    invoke-direct {p1}, Lg/aw;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zze"

    const/4 v5, 0x0

    aput-object v1, p1, v5

    const-string v1, "zzf"

    aput-object v1, p1, v0

    sget-object v0, Lg/gxe;->b:Lg/gxe;

    aput-object v0, p1, v4

    const-string v0, "zzg"

    aput-object v0, p1, v3

    const-class v0, Lg/drh;

    aput-object v0, p1, v2

    sget-object v0, Lg/aw;->zza:Lg/aw;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u100c\u0000\u0002\u001b"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method
