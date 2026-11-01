.class public final Lg/gin;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/gin;

.field public static final b:Lg/gin;

.field public static final c:Lg/gin;


# instance fields
.field public d:Z

.field public e:I

.field public final f:I

.field public g:Z

.field public final h:I

.field public final i:Ljava/lang/String;

.field public j:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lg/gin;

    const/16 v1, 0x140

    const/16 v2, 0x32

    const-string v3, "320x50_mb"

    invoke-direct {v0, v1, v2, v3}, Lg/gin;-><init>(IILjava/lang/String;)V

    sput-object v0, Lg/gin;->a:Lg/gin;

    new-instance v0, Lg/gin;

    const/16 v3, 0x1d4

    const/16 v4, 0x3c

    const-string v5, "468x60_as"

    invoke-direct {v0, v3, v4, v5}, Lg/gin;-><init>(IILjava/lang/String;)V

    new-instance v0, Lg/gin;

    const/16 v3, 0x64

    const-string v4, "320x100_as"

    invoke-direct {v0, v1, v3, v4}, Lg/gin;-><init>(IILjava/lang/String;)V

    new-instance v0, Lg/gin;

    const/16 v1, 0x2d8

    const/16 v3, 0x5a

    const-string v4, "728x90_as"

    invoke-direct {v0, v1, v3, v4}, Lg/gin;-><init>(IILjava/lang/String;)V

    new-instance v0, Lg/gin;

    const/16 v1, 0x12c

    const/16 v3, 0xfa

    const-string v4, "300x250_as"

    invoke-direct {v0, v1, v3, v4}, Lg/gin;-><init>(IILjava/lang/String;)V

    new-instance v0, Lg/gin;

    const/16 v1, 0xa0

    const/16 v3, 0x258

    const-string v4, "160x600_as"

    invoke-direct {v0, v1, v3, v4}, Lg/gin;-><init>(IILjava/lang/String;)V

    new-instance v0, Lg/gin;

    const/4 v1, -0x1

    const/4 v3, -0x2

    const-string v4, "smart_banner"

    invoke-direct {v0, v1, v3, v4}, Lg/gin;-><init>(IILjava/lang/String;)V

    new-instance v0, Lg/gin;

    const/4 v1, -0x4

    const/4 v3, -0x3

    const-string v4, "fluid"

    invoke-direct {v0, v3, v1, v4}, Lg/gin;-><init>(IILjava/lang/String;)V

    sput-object v0, Lg/gin;->b:Lg/gin;

    new-instance v0, Lg/gin;

    const-string v1, "invalid"

    const/4 v4, 0x0

    invoke-direct {v0, v4, v4, v1}, Lg/gin;-><init>(IILjava/lang/String;)V

    sput-object v0, Lg/gin;->c:Lg/gin;

    const-string v0, "50x50_mb"

    new-instance v1, Lg/gin;

    invoke-direct {v1, v2, v2, v0}, Lg/gin;-><init>(IILjava/lang/String;)V

    const-string v0, "search_v2"

    new-instance v1, Lg/gin;

    invoke-direct {v1, v3, v4, v0}, Lg/gin;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 3

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const-string v0, "FULL"

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, -0x2

    if-ne p2, v1, :cond_1

    const-string v1, "AUTO"

    goto :goto_1

    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "x"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_as"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lg/gin;-><init>(IILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-gez p1, :cond_1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, -0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid width for AdSize: "

    invoke-static {p1, p3}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_1
    :goto_0
    if-gez p2, :cond_3

    const/4 v0, -0x2

    if-eq p2, v0, :cond_3

    const/4 v0, -0x4

    if-ne p2, v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p3, "Invalid height for AdSize: "

    invoke-static {p2, p3}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    iput p1, p0, Lg/gin;->f:I

    iput p2, p0, Lg/gin;->h:I

    iput-object p3, p0, Lg/gin;->i:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lg/gin;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lg/gin;

    iget v2, p0, Lg/gin;->f:I

    iget v3, p1, Lg/gin;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lg/gin;->h:I

    iget v3, p1, Lg/gin;->h:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lg/gin;->i:Ljava/lang/String;

    iget-object p1, p1, Lg/gin;->i:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/gin;->i:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/gin;->i:Ljava/lang/String;

    return-object v0
.end method
