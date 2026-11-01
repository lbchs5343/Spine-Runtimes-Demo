.class public final Lg/aew;
.super Lg/bmc;
.source "SourceFile"

# interfaces
.implements Lg/cak;


# static fields
.field public static final a:Lg/azy;

.field public static final b:Lg/dba;


# instance fields
.field public c:Lg/bvi;

.field public final d:Lg/dwg;

.field public e:Ljava/lang/String;

.field public f:Lg/gyo;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-class v0, Lg/aew;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/aew;->b:Lg/dba;

    new-instance v1, Lg/azy;

    const-string v5, "stub"

    const-string v6, ""

    const-string v2, "stub"

    const-string v3, "stub"

    const/4 v4, -0x1

    invoke-direct/range {v1 .. v6}, Lg/azy;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lg/aew;->a:Lg/azy;

    return-void
.end method

.method public constructor <init>(Lg/dwg;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lg/aew;->e:Ljava/lang/String;

    iput-object p1, p0, Lg/aew;->d:Lg/dwg;

    return-void
.end method

.method public static g(ILg/gdu;)Ljava/lang/String;
    .locals 5

    iget-wide v0, p1, Lg/gdu;->f:J

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p0, :cond_1

    invoke-virtual {p1}, Lg/gdu;->j()I

    move-result v4

    int-to-short v4, v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    int-to-char v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    int-to-long v3, p0

    add-long/2addr v0, v3

    const-string p0, "readScriptOrVariantChar"

    invoke-virtual {p1, v0, v1, p0}, Lg/gdu;->l(JLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static h(BBC)[C
    .locals 6

    shr-int/lit8 v0, p0, 0x7

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v1, :cond_0

    and-int/lit8 v0, p1, 0x1f

    and-int/lit16 p1, p1, 0xe0

    shr-int/lit8 p1, p1, 0x5

    and-int/lit8 v4, p0, 0x3

    const/4 v5, 0x3

    shl-int/2addr v4, v5

    add-int/2addr p1, v4

    and-int/lit8 p0, p0, 0x7c

    shr-int/2addr p0, v3

    add-int/2addr v0, p2

    int-to-char v0, v0

    add-int/2addr p1, p2

    int-to-char p1, p1

    add-int/2addr p0, p2

    int-to-char p0, p0

    new-array p2, v5, [C

    aput-char v0, p2, v2

    aput-char p1, p2, v1

    aput-char p0, p2, v3

    return-object p2

    :cond_0
    int-to-char p0, p0

    int-to-char p1, p1

    new-array p2, v3, [C

    aput-char p0, p2, v2

    aput-char p1, p2, v1

    return-object p2
.end method


# virtual methods
.method public final i()Lg/aot;
    .locals 4

    iget-object v0, p0, Lg/bmc;->k:Lg/gdu;

    const/16 v1, 0x8

    const-string v2, "value size"

    invoke-virtual {v0, v1, v2}, Lg/gdu;->k(ILjava/lang/String;)V

    iget-object v0, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->j()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v0}, Lg/gdu;->j()I

    move-result v0

    iget-object v1, p0, Lg/bmc;->k:Lg/gdu;

    invoke-virtual {v1}, Lg/gdu;->i()I

    move-result v1

    new-instance v2, Lg/aot;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v1, v3}, Lg/aot;-><init>(III)V

    return-object v2

    :cond_0
    const/4 v2, 0x0

    const-string v3, "value res0 not 0"

    invoke-virtual {v0, v2, v1, v3}, Lg/gdu;->n(IILjava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method
