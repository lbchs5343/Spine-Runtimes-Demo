.class public final Lg/glj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/ghu;


# instance fields
.field public d:I

.field public e:I

.field public final f:Lg/ctw;

.field public g:Lg/gqc;

.field public h:Lg/esi;

.field public i:I


# direct methods
.method public constructor <init>(Lg/ctw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/glj;->f:Lg/ctw;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lg/glj;->i:I

    return v0
.end method

.method public final b()Lg/atc;
    .locals 1

    iget-object v0, p0, Lg/glj;->g:Lg/gqc;

    return-object v0
.end method

.method public final c()Lg/ful;
    .locals 1

    iget-object v0, p0, Lg/glj;->h:Lg/esi;

    return-object v0
.end method

.method public final getAttributes()Ljava/util/List;
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Lg/glj;->d:I

    iget-object v2, p0, Lg/glj;->f:Lg/ctw;

    invoke-virtual {v2, v1}, Lg/ctw;->t(I)Ljava/util/List;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v3, v0, v1}, Lg/lt;->b(Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/List;)V

    iget v1, p0, Lg/glj;->e:I

    iget-object v3, v2, Lg/ctw;->f:Ljava/lang/Object;

    check-cast v3, Lg/dsg;

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v1}, Lg/dsg;->m(I)V

    iget-object v1, v3, Lg/dsg;->a:Ljava/lang/Object;

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    if-nez v4, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    invoke-virtual {v1}, Ljava/nio/Buffer;->position()I

    move-result v8

    invoke-virtual {v2, v7}, Lg/ctw;->t(I)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Lg/dsg;->m(I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move-object v1, v5

    :goto_1
    invoke-static {v1}, Lg/gca;->b(Ljava/util/List;)Lg/gca;

    move-result-object v1

    invoke-static {v1, v0}, Lg/acr;->bj(Ljava/lang/Object;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/glj;->h:Lg/esi;

    invoke-virtual {v0}, Lg/esi;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
