.class public final Lg/gjt;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/gjt;


# instance fields
.field private zze:Lg/cwe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/gjt;

    invoke-direct {v0}, Lg/gjt;-><init>()V

    sput-object v0, Lg/gjt;->zza:Lg/gjt;

    const-class v1, Lg/gjt;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/gjt;->zze:Lg/cwe;

    return-void
.end method

.method public static b()Lg/gjt;
    .locals 1

    sget-object v0, Lg/gjt;->zza:Lg/gjt;

    return-object v0
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 3

    add-int/lit8 p1, p1, -0x1

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    sget-object p1, Lg/gjt;->zza:Lg/gjt;

    return-object p1

    :cond_1
    new-instance p1, Lg/gp;

    sget-object v0, Lg/gjt;->zza:Lg/gjt;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/gjt;

    invoke-direct {p1}, Lg/gjt;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zze"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-class v1, Lg/evv;

    aput-object v1, p1, v0

    sget-object v0, Lg/gjt;->zza:Lg/gjt;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/gjt;->zze:Lg/cwe;

    return-object v0
.end method

.method public final d()I
    .locals 1

    iget-object v0, p0, Lg/gjt;->zze:Lg/cwe;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
