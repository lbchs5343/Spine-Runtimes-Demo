.class public final Lg/dpe;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Lg/aju;

.field public final c:Lg/daw;

.field public final d:Lg/ib;

.field public final e:I

.field public f:I

.field public final g:Ljava/util/ArrayList;

.field public final h:I

.field public final i:I


# direct methods
.method public constructor <init>(Lg/ib;Ljava/util/ArrayList;ILg/aju;Lg/daw;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dpe;->d:Lg/ib;

    iput-object p2, p0, Lg/dpe;->g:Ljava/util/ArrayList;

    iput p3, p0, Lg/dpe;->h:I

    iput-object p4, p0, Lg/dpe;->b:Lg/aju;

    iput-object p5, p0, Lg/dpe;->c:Lg/daw;

    iput p6, p0, Lg/dpe;->e:I

    iput p7, p0, Lg/dpe;->i:I

    iput p8, p0, Lg/dpe;->a:I

    return-void
.end method

.method public static j(Lg/dpe;ILg/aju;Lg/daw;I)Lg/dpe;
    .locals 9

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lg/dpe;->h:I

    :cond_0
    move v3, p1

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lg/dpe;->b:Lg/aju;

    :cond_1
    move-object v4, p2

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lg/dpe;->c:Lg/daw;

    :cond_2
    move-object v5, p3

    iget v6, p0, Lg/dpe;->e:I

    iget v7, p0, Lg/dpe;->i:I

    iget v8, p0, Lg/dpe;->a:I

    const-string p1, "request"

    invoke-static {v5, p1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lg/dpe;

    iget-object v1, p0, Lg/dpe;->d:Lg/ib;

    iget-object v2, p0, Lg/dpe;->g:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v8}, Lg/dpe;-><init>(Lg/ib;Ljava/util/ArrayList;ILg/aju;Lg/daw;III)V

    return-object v0
.end method


# virtual methods
.method public final k(Lg/daw;)Lg/enb;
    .locals 9

    const-string v0, "request"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lg/dpe;->g:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lg/dpe;->h:I

    if-ge v2, v1, :cond_7

    iget v1, p0, Lg/dpe;->f:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lg/dpe;->f:I

    const-string v1, " must call proceed() exactly once"

    iget-object v4, p0, Lg/dpe;->b:Lg/aju;

    const-string v5, "network interceptor "

    if-eqz v4, :cond_2

    iget-object v6, v4, Lg/aju;->e:Ljava/lang/Object;

    check-cast v6, Lg/cpr;

    iget-object v7, p1, Lg/daw;->e:Ljava/lang/Object;

    check-cast v7, Lg/eyn;

    invoke-virtual {v6, v7}, Lg/cpr;->k(Lg/eyn;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lg/dpe;->f:I

    if-ne v6, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " must retain the same host and port"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x3a

    invoke-static {p0, v6, v7, p1, v8}, Lg/dpe;->j(Lg/dpe;ILg/aju;Lg/daw;I)Lg/dpe;

    move-result-object p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/brb;

    invoke-interface {v2, p1}, Lg/brb;->a(Lg/dpe;)Lg/enb;

    move-result-object v7

    const-string v8, "interceptor "

    if-eqz v7, :cond_6

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    iget p1, p1, Lg/dpe;->f:I

    if-ne p1, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_1
    iget-object p1, v7, Lg/enb;->b:Lg/ehi;

    if-eqz p1, :cond_5

    return-object v7

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " returned a response with no body"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance p1, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " returned null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
