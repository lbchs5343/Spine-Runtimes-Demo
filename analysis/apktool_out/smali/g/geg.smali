.class public final Lg/geg;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/geg;


# instance fields
.field public final b:[Lg/azo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg/geg;

    invoke-direct {v0}, Lg/geg;-><init>()V

    sput-object v0, Lg/geg;->a:Lg/geg;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lg/zz;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    new-array v0, v0, [Lg/azo;

    iput-object v0, p0, Lg/geg;->b:[Lg/azo;

    return-void
.end method


# virtual methods
.method public final c(Lg/zz;)Lg/azo;
    .locals 1

    iget-object v0, p0, Lg/geg;->b:[Lg/azo;

    iget p1, p1, Lg/zz;->s:I

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final d()I
    .locals 5

    iget-object v0, p0, Lg/geg;->b:[Lg/azo;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AttributesStorage{size="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lg/geg;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
