.class public final Lg/bzw;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lg/bny;


# direct methods
.method public constructor <init>(Lg/bny;)V
    .locals 0

    iput-object p1, p0, Lg/bzw;->a:Lg/bny;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    iget-object v0, p0, Lg/bzw;->a:Lg/bny;

    invoke-virtual {v0}, Lg/bny;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lg/bzw;->a:Lg/bny;

    invoke-virtual {v0, p1}, Lg/bny;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 3

    new-instance v0, Lg/bql;

    iget-object v1, p0, Lg/bzw;->a:Lg/bny;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/bql;-><init>(Lg/bny;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lg/bzw;->a:Lg/bny;

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {v1, p1, v0}, Lg/bny;->d(Ljava/lang/Object;Z)Lg/eqr;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    :cond_0
    :goto_0
    const/4 p1, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2, p1}, Lg/bny;->g(Lg/eqr;Z)V

    :cond_1
    if-eqz v2, :cond_2

    return p1

    :cond_2
    return v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lg/bzw;->a:Lg/bny;

    iget v0, v0, Lg/bny;->size:I

    return v0
.end method
