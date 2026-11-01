.class public abstract Lg/yi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/dqx;


# instance fields
.field public final b:Lg/boj;

.field public final c:I

.field public final d:Lg/bqt;


# direct methods
.method public constructor <init>(Lg/boj;ILg/bqt;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/yi;->b:Lg/boj;

    iput p2, p0, Lg/yi;->c:I

    iput-object p3, p0, Lg/yi;->d:Lg/bqt;

    return-void
.end method


# virtual methods
.method public a(Lg/fjs;Lg/w;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Lg/fh;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, Lg/fh;-><init>(Lg/fjs;Lg/yi;Lg/bdp;)V

    new-instance p1, Lg/azc;

    invoke-interface {p2}, Lg/bdp;->getContext()Lg/boj;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lg/azc;-><init>(Lg/w;Lg/boj;)V

    invoke-static {p1, p1, v0}, Lg/dzm;->ad(Lg/azc;Lg/azc;Lg/bto;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Lg/cxr;->COROUTINE_SUSPENDED:Lg/cxr;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Lg/dgi;->a:Lg/dgi;

    return-object p1
.end method

.method public abstract e(Lg/ayw;Lg/bdp;)Ljava/lang/Object;
.end method

.method public abstract f(Lg/boj;ILg/bqt;)Lg/yi;
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sget-object v1, Lg/cgq;->a:Lg/cgq;

    iget-object v2, p0, Lg/yi;->b:Lg/boj;

    if-eq v2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "context="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const/4 v1, -0x3

    iget v2, p0, Lg/yi;->c:I

    if-eq v2, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "capacity="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    sget-object v1, Lg/bqt;->SUSPEND:Lg/bqt;

    iget-object v2, p0, Lg/yi;->d:Lg/bqt;

    if-eq v2, v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "onBufferOverflow="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    const/16 v3, 0x3e

    const-string v4, ", "

    invoke-static {v0, v4, v2, v3}, Lg/gsv;->bh(Ljava/util/Collection;Ljava/lang/String;Lg/and;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
