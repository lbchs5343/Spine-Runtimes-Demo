.class public final Lg/cnv;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/iu;


# instance fields
.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cnv;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a(Lg/euy;)V
    .locals 6

    iget-object v0, p0, Lg/cnv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/eyc;

    iget-object v2, v1, Lg/eyc;->a:Lg/asu;

    iget v3, v2, Lg/asu;->d:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    iget v2, v2, Lg/asu;->g:I

    new-instance v4, Lg/dsg;

    invoke-direct {v4, v1, v2}, Lg/dsg;-><init>(Lg/eyc;I)V

    new-instance v1, Lg/ctw;

    invoke-virtual {v4}, Lg/dsg;->u()Lg/dsg;

    move-result-object v2

    invoke-virtual {v4}, Lg/dsg;->u()Lg/dsg;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Lg/ctw;-><init>(Lg/dsg;Lg/dsg;)V

    new-instance v2, Lg/cig;

    invoke-direct {v2, v4, v1}, Lg/cig;-><init>(Lg/dsg;Lg/ctw;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v3, :cond_0

    invoke-virtual {p1, v2}, Lg/euy;->accept(Ljava/lang/Object;)V

    iget v5, v4, Lg/dsg;->d:I

    add-int/lit8 v5, v5, 0x20

    iput v5, v4, Lg/dsg;->d:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final isEmpty()Z
    .locals 1

    iget-object v0, p0, Lg/cnv;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
