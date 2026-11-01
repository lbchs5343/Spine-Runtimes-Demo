.class public final Lg/cff;
.super Lg/bcx;
.source "SourceFile"


# instance fields
.field public final a:Lg/bjt;


# direct methods
.method public constructor <init>(Lg/bjt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cff;->a:Lg/bjt;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Lg/cwx;->az:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lg/cff;

    iget-object p1, p1, Lg/cff;->a:Lg/bjt;

    iget-object v0, p0, Lg/cff;->a:Lg/bjt;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Lg/bjt;
    .locals 1

    iget-object v0, p0, Lg/cff;->a:Lg/bjt;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/cff;->a:Lg/bjt;

    invoke-virtual {v0}, Lg/bjt;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
