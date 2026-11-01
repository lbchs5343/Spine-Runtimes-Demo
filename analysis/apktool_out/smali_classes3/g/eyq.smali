.class public final Lg/eyq;
.super Lg/fkz;
.source "SourceFile"


# instance fields
.field public final transient a:I

.field public final transient b:I

.field final synthetic zzc:Lg/fkz;


# direct methods
.method public constructor <init>(Lg/fkz;II)V
    .locals 0

    iput-object p1, p0, Lg/eyq;->zzc:Lg/fkz;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    iput p2, p0, Lg/eyq;->a:I

    iput p3, p0, Lg/eyq;->b:I

    return-void
.end method


# virtual methods
.method public final e(II)Lg/fkz;
    .locals 2

    iget v0, p0, Lg/eyq;->b:I

    invoke-static {p1, p2, v0}, Lg/acr;->bq(III)V

    iget-object v0, p0, Lg/eyq;->zzc:Lg/fkz;

    iget v1, p0, Lg/eyq;->a:I

    add-int/2addr p1, v1

    add-int/2addr p2, v1

    invoke-virtual {v0, p1, p2}, Lg/fkz;->e(II)Lg/fkz;

    move-result-object p1

    return-object p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lg/eyq;->b:I

    invoke-static {p1, v0}, Lg/acr;->bt(II)V

    iget-object v0, p0, Lg/eyq;->zzc:Lg/fkz;

    iget v1, p0, Lg/eyq;->a:I

    add-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()I
    .locals 2

    iget-object v0, p0, Lg/eyq;->zzc:Lg/fkz;

    invoke-virtual {v0}, Lg/esj;->k()I

    move-result v0

    iget v1, p0, Lg/eyq;->a:I

    add-int/2addr v0, v1

    iget v1, p0, Lg/eyq;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final k()I
    .locals 2

    iget-object v0, p0, Lg/eyq;->zzc:Lg/fkz;

    invoke-virtual {v0}, Lg/esj;->k()I

    move-result v0

    iget v1, p0, Lg/eyq;->a:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final l()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/eyq;->zzc:Lg/fkz;

    invoke-virtual {v0}, Lg/esj;->l()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lg/eyq;->b:I

    return v0
.end method

.method public final bridge synthetic subList(II)Ljava/util/List;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lg/eyq;->e(II)Lg/fkz;

    move-result-object p1

    return-object p1
.end method
