.class public final Lg/cbc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field public final b:I

.field public final c:F

.field public final d:F

.field public final e:J

.field public final f:I

.field public final g:Lg/ayj;

.field public final h:Ljava/util/List;

.field public final i:Lg/bwd;

.field public final j:Z

.field public final k:Lg/aoy;

.field public final l:J

.field public final m:Lg/cnc;

.field public final n:F

.field public final o:F

.field public final p:Lg/eld;

.field public final q:Lg/cgf;

.field public final r:I

.field public final s:Lg/dlz;

.field public final t:Ljava/util/List;

.field public final u:Ljava/lang/String;

.field public final v:Lg/fzn;

.field public final w:Ljava/lang/String;

.field public final x:Lg/dpa;


# direct methods
.method public constructor <init>(Ljava/util/List;Lg/cgf;Ljava/lang/String;JLg/ayj;JLjava/lang/String;Ljava/util/List;Lg/eld;IIIFFFFLg/dlz;Lg/dpa;Ljava/util/List;Lg/bwd;Lg/cnc;ZLg/aoy;Lg/fzn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cbc;->h:Ljava/util/List;

    iput-object p2, p0, Lg/cbc;->q:Lg/cgf;

    iput-object p3, p0, Lg/cbc;->u:Ljava/lang/String;

    iput-wide p4, p0, Lg/cbc;->e:J

    iput-object p6, p0, Lg/cbc;->g:Lg/ayj;

    iput-wide p7, p0, Lg/cbc;->l:J

    iput-object p9, p0, Lg/cbc;->w:Ljava/lang/String;

    iput-object p10, p0, Lg/cbc;->a:Ljava/util/List;

    iput-object p11, p0, Lg/cbc;->p:Lg/eld;

    iput p12, p0, Lg/cbc;->r:I

    iput p13, p0, Lg/cbc;->b:I

    iput p14, p0, Lg/cbc;->f:I

    iput p15, p0, Lg/cbc;->o:F

    move/from16 p1, p16

    iput p1, p0, Lg/cbc;->d:F

    move/from16 p1, p17

    iput p1, p0, Lg/cbc;->c:F

    move/from16 p1, p18

    iput p1, p0, Lg/cbc;->n:F

    move-object/from16 p1, p19

    iput-object p1, p0, Lg/cbc;->s:Lg/dlz;

    move-object/from16 p1, p20

    iput-object p1, p0, Lg/cbc;->x:Lg/dpa;

    move-object/from16 p1, p21

    iput-object p1, p0, Lg/cbc;->t:Ljava/util/List;

    move-object/from16 p1, p22

    iput-object p1, p0, Lg/cbc;->i:Lg/bwd;

    move-object/from16 p1, p23

    iput-object p1, p0, Lg/cbc;->m:Lg/cnc;

    move/from16 p1, p24

    iput-boolean p1, p0, Lg/cbc;->j:Z

    move-object/from16 p1, p25

    iput-object p1, p0, Lg/cbc;->k:Lg/aoy;

    move-object/from16 p1, p26

    iput-object p1, p0, Lg/cbc;->v:Lg/fzn;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    invoke-virtual {p0, v0}, Lg/cbc;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final y(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    invoke-static {p1}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lg/cbc;->u:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lg/cbc;->l:J

    iget-object v4, p0, Lg/cbc;->q:Lg/cgf;

    iget-object v5, v4, Lg/cgf;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cbc;

    if-eqz v2, :cond_1

    const-string v3, "\t\tParents: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lg/cbc;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lg/cbc;->l:J

    iget-object v5, v4, Lg/cgf;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cbc;

    :goto_0
    if-eqz v2, :cond_0

    const-string v3, "->"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Lg/cbc;->u:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, v2, Lg/cbc;->l:J

    iget-object v5, v4, Lg/cgf;->a:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cbc;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v2, p0, Lg/cbc;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tMasks: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget v2, p0, Lg/cbc;->r:I

    if-eqz v2, :cond_3

    iget v3, p0, Lg/cbc;->b:I

    if-eqz v3, :cond_3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\tBackground: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, p0, Lg/cbc;->f:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    aput-object v3, v6, v2

    const/4 v2, 0x2

    aput-object v5, v6, v2

    const-string v2, "%dx%d %X\n"

    invoke-static {v4, v2, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, p0, Lg/cbc;->h:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\tShapes:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\t\t"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
