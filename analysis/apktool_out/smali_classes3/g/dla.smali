.class public final Lg/dla;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:F

.field public c:Landroid/text/Layout$Alignment;

.field public d:I

.field public e:I

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Ljava/lang/String;

.field public i:I

.field public j:F

.field public k:Landroid/text/Layout$Alignment;

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:Z

.field public r:I

.field public s:Lg/csc;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lg/dla;->i:I

    iput v0, p0, Lg/dla;->r:I

    iput v0, p0, Lg/dla;->a:I

    iput v0, p0, Lg/dla;->m:I

    iput v0, p0, Lg/dla;->o:I

    iput v0, p0, Lg/dla;->l:I

    iput v0, p0, Lg/dla;->d:I

    iput v0, p0, Lg/dla;->p:I

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Lg/dla;->j:F

    return-void
.end method


# virtual methods
.method public final t()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/dla;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final u(Lg/dla;)V
    .locals 4

    if-eqz p1, :cond_e

    iget-boolean v0, p0, Lg/dla;->q:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p1, Lg/dla;->q:Z

    if-eqz v0, :cond_0

    iget v0, p1, Lg/dla;->n:I

    iput v0, p0, Lg/dla;->n:I

    iput-boolean v1, p0, Lg/dla;->q:Z

    :cond_0
    iget v0, p0, Lg/dla;->a:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    iget v0, p1, Lg/dla;->a:I

    iput v0, p0, Lg/dla;->a:I

    :cond_1
    iget v0, p0, Lg/dla;->m:I

    if-ne v0, v2, :cond_2

    iget v0, p1, Lg/dla;->m:I

    iput v0, p0, Lg/dla;->m:I

    :cond_2
    iget-object v0, p0, Lg/dla;->h:Ljava/lang/String;

    if-nez v0, :cond_3

    iget-object v0, p1, Lg/dla;->h:Ljava/lang/String;

    if-eqz v0, :cond_3

    iput-object v0, p0, Lg/dla;->h:Ljava/lang/String;

    :cond_3
    iget v0, p0, Lg/dla;->i:I

    if-ne v0, v2, :cond_4

    iget v0, p1, Lg/dla;->i:I

    iput v0, p0, Lg/dla;->i:I

    :cond_4
    iget v0, p0, Lg/dla;->r:I

    if-ne v0, v2, :cond_5

    iget v0, p1, Lg/dla;->r:I

    iput v0, p0, Lg/dla;->r:I

    :cond_5
    iget v0, p0, Lg/dla;->d:I

    if-ne v0, v2, :cond_6

    iget v0, p1, Lg/dla;->d:I

    iput v0, p0, Lg/dla;->d:I

    :cond_6
    iget-object v0, p0, Lg/dla;->c:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_7

    iget-object v0, p1, Lg/dla;->c:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_7

    iput-object v0, p0, Lg/dla;->c:Landroid/text/Layout$Alignment;

    :cond_7
    iget-object v0, p0, Lg/dla;->k:Landroid/text/Layout$Alignment;

    if-nez v0, :cond_8

    iget-object v0, p1, Lg/dla;->k:Landroid/text/Layout$Alignment;

    if-eqz v0, :cond_8

    iput-object v0, p0, Lg/dla;->k:Landroid/text/Layout$Alignment;

    :cond_8
    iget v0, p0, Lg/dla;->p:I

    if-ne v0, v2, :cond_9

    iget v0, p1, Lg/dla;->p:I

    iput v0, p0, Lg/dla;->p:I

    :cond_9
    iget v0, p0, Lg/dla;->o:I

    if-ne v0, v2, :cond_a

    iget v0, p1, Lg/dla;->o:I

    iput v0, p0, Lg/dla;->o:I

    iget v0, p1, Lg/dla;->b:F

    iput v0, p0, Lg/dla;->b:F

    :cond_a
    iget-object v0, p0, Lg/dla;->s:Lg/csc;

    if-nez v0, :cond_b

    iget-object v0, p1, Lg/dla;->s:Lg/csc;

    iput-object v0, p0, Lg/dla;->s:Lg/csc;

    :cond_b
    iget v0, p0, Lg/dla;->j:F

    const v3, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v3

    if-nez v0, :cond_c

    iget v0, p1, Lg/dla;->j:F

    iput v0, p0, Lg/dla;->j:F

    :cond_c
    iget-boolean v0, p0, Lg/dla;->g:Z

    if-nez v0, :cond_d

    iget-boolean v0, p1, Lg/dla;->g:Z

    if-eqz v0, :cond_d

    iget v0, p1, Lg/dla;->e:I

    iput v0, p0, Lg/dla;->e:I

    iput-boolean v1, p0, Lg/dla;->g:Z

    :cond_d
    iget v0, p0, Lg/dla;->l:I

    if-ne v0, v2, :cond_e

    iget p1, p1, Lg/dla;->l:I

    if-eq p1, v2, :cond_e

    iput p1, p0, Lg/dla;->l:I

    :cond_e
    return-void
.end method
