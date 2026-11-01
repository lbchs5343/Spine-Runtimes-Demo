.class public final Lg/dib;
.super Lg/awo;


# instance fields
.field public final t:Z

.field public final u:Lg/dph;


# direct methods
.method public constructor <init>(Lg/fts;Lg/grq;Lg/esd;)V
    .locals 10

    iget-object v0, p3, Lg/esd;->f:Lg/ctn;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Lg/avw;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    sget-object v0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    :goto_0
    move-object v3, v0

    goto :goto_1

    :cond_0
    sget-object v0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    goto :goto_0

    :goto_1
    iget-object v0, p3, Lg/esd;->j:Lg/fvo;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Lg/avw;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_2
    move-object v4, v0

    goto :goto_3

    :cond_2
    sget-object v0, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    goto :goto_2

    :goto_3
    iget v5, p3, Lg/esd;->a:F

    iget-object v6, p3, Lg/esd;->b:Lg/dlz;

    iget-object v7, p3, Lg/esd;->c:Lg/cnc;

    iget-object v8, p3, Lg/esd;->h:Ljava/util/ArrayList;

    iget-object v9, p3, Lg/esd;->d:Lg/cnc;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lg/awo;-><init>(Lg/fts;Lg/grq;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLg/dlz;Lg/cnc;Ljava/util/ArrayList;Lg/cnc;)V

    iget-boolean v1, p3, Lg/esd;->g:Z

    iput-boolean v1, p0, Lg/dib;->t:Z

    iget-object v1, p3, Lg/esd;->i:Lg/dlz;

    invoke-virtual {v1}, Lg/dlz;->dq()Lg/cej;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lg/dph;

    iput-object v2, p0, Lg/dib;->u:Lg/dph;

    invoke-virtual {v1, p0}, Lg/cej;->l(Lg/fyj;)V

    invoke-virtual {p2, v1}, Lg/grq;->bg(Lg/cej;)V

    return-void
.end method


# virtual methods
.method public final l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-boolean v0, p0, Lg/dib;->t:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/dib;->u:Lg/dph;

    invoke-virtual {v0}, Lg/cej;->n()Lg/flj;

    move-result-object v1

    invoke-virtual {v0}, Lg/cej;->k()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lg/dph;->c(Lg/flj;F)I

    move-result v0

    iget-object v1, p0, Lg/awo;->o:Lg/gee;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    invoke-super {p0, p1, p2, p3}, Lg/awo;->l(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method
