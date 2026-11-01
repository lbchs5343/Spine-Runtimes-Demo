.class public abstract Lg/ckz;
.super Ljava/lang/Object;


# direct methods
.method public static a(ILjava/lang/String;)C
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lt p0, v0, :cond_0

    const/16 p0, 0x1a

    return p0

    :cond_0
    invoke-virtual {p1, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    return p0
.end method


# virtual methods
.method public abstract b(Ljava/lang/String;ILjava/util/Deque;Lg/dbf;)I
.end method

.method public getIdentifier(ILjava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    add-int v1, v0, p1

    invoke-static {v1, p2}, Lg/ckz;->a(ILjava/lang/String;)C

    move-result v2

    invoke-static {v2}, Lg/fso;->az(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lg/fso;->p(C)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
