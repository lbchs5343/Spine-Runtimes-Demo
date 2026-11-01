.class public final Lg/aoe;
.super Lg/bcx;
.source "SourceFile"


# static fields
.field public static final a:[Lg/bjt;


# instance fields
.field public final d:Lg/cwx;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lg/bjt;

    sget-object v1, Lg/bjt;->ARRAY:Lg/bjt;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lg/aoe;->a:[Lg/bjt;

    return-void
.end method

.method public constructor <init>(Lg/cwx;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/aoe;->d:Lg/cwx;

    iget p1, p1, Lg/cwx;->az:I

    iput p1, p0, Lg/cwx;->az:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lg/aoe;

    iget-object v0, p0, Lg/aoe;->d:Lg/cwx;

    iget-object p1, p1, Lg/aoe;->d:Lg/cwx;

    invoke-virtual {v0, p1}, Lg/cwx;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final e()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/aoe;->d:Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->e()Lg/cwx;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lg/bjt;
    .locals 1

    sget-object v0, Lg/bjt;->ARRAY:Lg/bjt;

    return-object v0
.end method

.method public final g()[Lg/bjt;
    .locals 1

    sget-object v0, Lg/aoe;->a:[Lg/bjt;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lg/aoe;->d:Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->h()Z

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lg/aoe;->d:Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->i()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final j()Lg/cwx;
    .locals 2

    iget-object v0, p0, Lg/aoe;->d:Lg/cwx;

    invoke-virtual {v0}, Lg/cwx;->j()Lg/cwx;

    move-result-object v0

    new-instance v1, Lg/aoe;

    invoke-direct {v1, v0}, Lg/aoe;-><init>(Lg/cwx;)V

    return-object v1
.end method

.method public final k()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/aoe;->d:Lg/cwx;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lg/aoe;->d:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "[]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
