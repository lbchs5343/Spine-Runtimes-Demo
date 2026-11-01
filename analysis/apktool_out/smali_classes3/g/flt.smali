.class public final Lg/flt;
.super Lg/cys;
.source "SourceFile"


# static fields
.field private static final zza:Lg/flt;


# instance fields
.field private zze:Lg/cwe;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg/flt;

    invoke-direct {v0}, Lg/flt;-><init>()V

    sput-object v0, Lg/flt;->zza:Lg/flt;

    const-class v1, Lg/flt;

    invoke-static {v1, v0}, Lg/cys;->af(Ljava/lang/Class;Lg/cys;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lg/cys;-><init>()V

    sget-object v0, Lg/hbs;->a:Lg/hbs;

    iput-object v0, p0, Lg/flt;->zze:Lg/cwe;

    return-void
.end method

.method public static b(Lg/flt;Lg/fzb;)V
    .locals 2

    iget-object v0, p0, Lg/flt;->zze:Lg/cwe;

    move-object v1, v0

    check-cast v1, Lg/gzj;

    iget-boolean v1, v1, Lg/gzj;->f:Z

    if-nez v1, :cond_0

    invoke-static {v0}, Lg/cys;->ac(Lg/cwe;)Lg/cwe;

    move-result-object v0

    iput-object v0, p0, Lg/flt;->zze:Lg/cwe;

    :cond_0
    iget-object p0, p0, Lg/flt;->zze:Lg/cwe;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static c()Lg/grt;
    .locals 1

    sget-object v0, Lg/flt;->zza:Lg/flt;

    invoke-virtual {v0}, Lg/cys;->ag()Lg/crf;

    move-result-object v0

    check-cast v0, Lg/grt;

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
    sget-object p1, Lg/flt;->zza:Lg/flt;

    return-object p1

    :cond_1
    new-instance p1, Lg/grt;

    sget-object v0, Lg/flt;->zza:Lg/flt;

    invoke-direct {p1, v0}, Lg/crf;-><init>(Lg/cys;)V

    return-object p1

    :cond_2
    new-instance p1, Lg/flt;

    invoke-direct {p1}, Lg/flt;-><init>()V

    return-object p1

    :cond_3
    new-array p1, v1, [Ljava/lang/Object;

    const-string v1, "zze"

    const/4 v2, 0x0

    aput-object v1, p1, v2

    const-class v1, Lg/fzb;

    aput-object v1, p1, v0

    sget-object v0, Lg/flt;->zza:Lg/flt;

    new-instance v1, Lg/eqc;

    const-string v2, "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b"

    invoke-direct {v1, v0, v2, p1}, Lg/eqc;-><init>(Lg/cir;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_4
    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    return-object p1
.end method

.method public final d()Lg/cwe;
    .locals 1

    iget-object v0, p0, Lg/flt;->zze:Lg/cwe;

    return-object v0
.end method

.method public final e()Lg/fzb;
    .locals 2

    iget-object v0, p0, Lg/flt;->zze:Lg/cwe;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fzb;

    return-object v0
.end method
