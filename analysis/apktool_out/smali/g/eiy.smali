.class public abstract Lg/eiy;
.super Lg/bjk;
.source "SourceFile"

# interfaces
.implements Lg/aoo;


# instance fields
.field public aa:Lg/eii;

.field public ab:Ljava/util/List;


# direct methods
.method public constructor <init>(Lg/eys;)V
    .locals 0

    invoke-direct {p0, p1}, Lg/bjk;-><init>(Lg/cfm;)V

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lg/eiy;->ab:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final ac()I
    .locals 2

    iget-object v0, p0, Lg/eiy;->ab:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/fza;

    invoke-static {v1}, Lg/ffb;->s(Lg/cih;)Lg/eek;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v1, v1, Lg/ccm;->bp:I

    if-eqz v1, :cond_0

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
