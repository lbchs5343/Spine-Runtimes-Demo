.class public abstract Lg/bcx;
.super Lg/cwx;
.source "SourceFile"


# static fields
.field public static final n:[Lg/bjt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lg/bjt;

    sput-object v0, Lg/bcx;->n:[Lg/bjt;

    return-void
.end method


# virtual methods
.method public g()[Lg/bjt;
    .locals 1

    sget-object v0, Lg/bcx;->n:[Lg/bjt;

    return-object v0
.end method

.method public h()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public j()Lg/cwx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final o(Lg/bjt;)Z
    .locals 1

    invoke-virtual {p0}, Lg/cwx;->f()Lg/bjt;

    move-result-object v0

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
