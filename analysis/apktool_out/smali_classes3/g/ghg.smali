.class public final Lg/ghg;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Z

.field public final c:[B

.field public d:Lg/ghg;

.field public e:I

.field public f:I

.field public g:Lg/ghg;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    new-array v0, v0, [B

    iput-object v0, p0, Lg/ghg;->c:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ghg;->b:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/ghg;->a:Z

    return-void
.end method

.method public constructor <init>([BIIZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/ghg;->c:[B

    iput p2, p0, Lg/ghg;->e:I

    iput p3, p0, Lg/ghg;->f:I

    iput-boolean p4, p0, Lg/ghg;->a:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lg/ghg;->b:Z

    return-void
.end method


# virtual methods
.method public final h(Lg/ghg;I)V
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lg/ghg;->c:[B

    iget-boolean v1, p1, Lg/ghg;->b:Z

    if-eqz v1, :cond_3

    iget v1, p1, Lg/ghg;->f:I

    add-int v2, v1, p2

    const/16 v3, 0x2000

    if-le v2, v3, :cond_2

    iget-boolean v4, p1, Lg/ghg;->a:Z

    if-nez v4, :cond_1

    iget v4, p1, Lg/ghg;->e:I

    sub-int/2addr v2, v4

    if-gt v2, v3, :cond_0

    const/4 v2, 0x0

    invoke-static {v0, v2, v0, v4, v1}, Lg/fuv;->m([BI[BII)V

    iget v1, p1, Lg/ghg;->f:I

    iget v3, p1, Lg/ghg;->e:I

    sub-int/2addr v1, v3

    iput v1, p1, Lg/ghg;->f:I

    iput v2, p1, Lg/ghg;->e:I

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    :cond_2
    :goto_0
    iget v1, p1, Lg/ghg;->f:I

    iget v2, p0, Lg/ghg;->e:I

    add-int v3, v2, p2

    iget-object v4, p0, Lg/ghg;->c:[B

    invoke-static {v4, v1, v0, v2, v3}, Lg/fuv;->m([BI[BII)V

    iget v0, p1, Lg/ghg;->f:I

    add-int/2addr v0, p2

    iput v0, p1, Lg/ghg;->f:I

    iget p1, p0, Lg/ghg;->e:I

    add-int/2addr p1, p2

    iput p1, p0, Lg/ghg;->e:I

    return-void

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "only owner can write"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final i()Lg/ghg;
    .locals 4

    iget-object v0, p0, Lg/ghg;->d:Lg/ghg;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lg/ghg;->g:Lg/ghg;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lg/ghg;->d:Lg/ghg;

    iput-object v3, v2, Lg/ghg;->d:Lg/ghg;

    iget-object v2, p0, Lg/ghg;->d:Lg/ghg;

    invoke-static {v2}, Lg/bff;->d(Ljava/lang/Object;)V

    iget-object v3, p0, Lg/ghg;->g:Lg/ghg;

    iput-object v3, v2, Lg/ghg;->g:Lg/ghg;

    iput-object v1, p0, Lg/ghg;->d:Lg/ghg;

    iput-object v1, p0, Lg/ghg;->g:Lg/ghg;

    return-object v0
.end method

.method public final j(Lg/ghg;)V
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Lg/ghg;->g:Lg/ghg;

    iget-object v0, p0, Lg/ghg;->d:Lg/ghg;

    iput-object v0, p1, Lg/ghg;->d:Lg/ghg;

    iget-object v0, p0, Lg/ghg;->d:Lg/ghg;

    invoke-static {v0}, Lg/bff;->d(Ljava/lang/Object;)V

    iput-object p1, v0, Lg/ghg;->g:Lg/ghg;

    iput-object p1, p0, Lg/ghg;->d:Lg/ghg;

    return-void
.end method

.method public final k()Lg/ghg;
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lg/ghg;->a:Z

    new-instance v1, Lg/ghg;

    iget v2, p0, Lg/ghg;->e:I

    iget v3, p0, Lg/ghg;->f:I

    iget-object v4, p0, Lg/ghg;->c:[B

    invoke-direct {v1, v4, v2, v3, v0}, Lg/ghg;-><init>([BIIZ)V

    return-object v1
.end method
