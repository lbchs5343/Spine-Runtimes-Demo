.class public final Lg/hbo;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/hbo;


# instance fields
.field private zze:I

.field private zzf:Ljava/lang/String;

.field private zzg:Lg/cwe;

.field private zzh:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/hbo;

    invoke-direct {v0}, Lg/hbo;-><init>()V

    sput-object v0, Lg/hbo;->zza:Lg/hbo;

    const-class v1, Lg/hbo;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/hbo;->zzf:Ljava/lang/String;

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/hbo;->zzg:Lg/cwe;

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
    sget-object p1, Lg/hbo;->zza:Lg/hbo;

    return-object p1

    :cond_1
    new-instance p1, Lg/gp;

    sget-object v0, Lg/hbo;->zza:Lg/hbo;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/hbo;

    invoke-direct {p1}, Lg/hbo;-><init>()V

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

    const-class v0, Lg/ftf;

    aput-object v0, p1, v3

    const-string v0, "zzh"

    aput-object v0, p1, v2

    sget-object v0, Lg/hbo;->zza:Lg/hbo;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u1008\u0000\u0002\u001b\u0003\u1007\u0001"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/hbo;->zzf:Ljava/lang/String;

    return-object v0
.end method
