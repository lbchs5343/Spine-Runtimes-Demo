.class public final Lg/kh;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/kh;


# instance fields
.field private zze:I

.field private zzf:Lg/cwe;

.field private zzg:Lg/gjt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/kh;

    invoke-direct {v0}, Lg/kh;-><init>()V

    sput-object v0, Lg/kh;->zza:Lg/kh;

    const-class v1, Lg/kh;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/kh;->zzf:Lg/cwe;

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 5

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lg/kh;->zza:Lg/kh;

    return-object p1

    :cond_1
    new-instance p1, Lg/gp;

    sget-object v0, Lg/kh;->zza:Lg/kh;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/kh;

    invoke-direct {p1}, Lg/kh;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zze"

    const/4 v4, 0x0

    aput-object v1, p1, v4

    const-string v1, "zzf"

    aput-object v1, p1, v0

    const-class v0, Lg/aqu;

    aput-object v0, p1, v3

    const-string v0, "zzg"

    aput-object v0, p1, v2

    sget-object v0, Lg/kh;->zza:Lg/kh;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u1009\u0000"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final b()Lg/gjt;
    .locals 1

    iget-object v0, p0, Lg/kh;->zzg:Lg/gjt;

    if-nez v0, :cond_0

    invoke-static {}, Lg/gjt;->b()Lg/gjt;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public final c()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/kh;->zzf:Lg/cwe;

    return-object v0
.end method
