.class public final Lg/byz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cng;


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:I

.field public final c:Ljava/lang/String;

.field public final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/byz;->b:I

    iput-object p1, p0, Lg/byz;->c:Ljava/lang/String;

    iput p2, p0, Lg/byz;->d:I

    return-void
.end method


# virtual methods
.method public final e(Lg/ert;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p1, Lg/ert;->h:I

    if-ltz v0, :cond_1

    invoke-static {v0}, Lg/dyd;->ar(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget v0, p1, Lg/ert;->k:I

    if-ltz v0, :cond_2

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v1, v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lg/byz;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lg/byz;->a:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, p0, Lg/byz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/ert;

    if-eqz v1, :cond_4

    iget-object v1, v1, Lg/ert;->q:Ljava/lang/String;

    iget-object v2, p1, Lg/ert;->q:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lg/byz;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    const-class v0, Lg/byz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/byz;

    iget-object v0, p0, Lg/byz;->c:Ljava/lang/String;

    iget-object p1, p1, Lg/byz;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lg/byz;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
