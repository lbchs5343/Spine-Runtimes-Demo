.class public final Lg/had;
.super Lg/doi;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lg/had;->a:I

    iput-object p2, p0, Lg/had;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 1

    iget p1, p0, Lg/had;->a:I

    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p1, p0, Lg/had;->b:Ljava/lang/Object;

    check-cast p1, Lg/amy;

    iget-object p2, p1, Lg/amy;->e:Lg/amy;

    const-string v0, "isAppInfoScrollTiped"

    invoke-static {p2, v0}, Lg/acw;->ae(Lg/dms;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p1, p1, Lg/amy;->e:Lg/amy;

    const p2, 0x7f1200a0

    invoke-static {p1, p2}, Lg/gm;->c(Landroid/content/Context;I)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 8

    iget p2, p0, Lg/had;->a:I

    packed-switch p2, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p2, p0, Lg/had;->b:Ljava/lang/Object;

    check-cast p2, Lg/eiu;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    move-result p3

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollOffset()I

    move-result p1

    iget v0, p2, Lg/eiu;->o:I

    iget-object v1, p2, Lg/eiu;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->computeVerticalScrollRange()I

    move-result v1

    iget v2, p2, Lg/eiu;->af:I

    sub-int v3, v1, v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_0

    if-lt v2, v0, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p2, Lg/eiu;->ab:Z

    iget-object v3, p2, Lg/eiu;->t:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollRange()I

    move-result v3

    iget v6, p2, Lg/eiu;->z:I

    sub-int v7, v3, v6

    if-lez v7, :cond_1

    if-lt v6, v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p2, Lg/eiu;->p:Z

    iget-boolean v7, p2, Lg/eiu;->ab:Z

    if-nez v7, :cond_2

    if-nez v0, :cond_2

    iget p1, p2, Lg/eiu;->q:I

    if-eqz p1, :cond_6

    invoke-virtual {p2, v4}, Lg/eiu;->al(I)V

    goto :goto_2

    :cond_2
    const/high16 v0, 0x40000000    # 2.0f

    if-eqz v7, :cond_3

    int-to-float p1, p1

    int-to-float v4, v2

    div-float v7, v4, v0

    add-float/2addr v7, p1

    mul-float v7, v7, v4

    int-to-float p1, v1

    div-float/2addr v7, p1

    float-to-int p1, v7

    iput p1, p2, Lg/eiu;->m:I

    mul-int p1, v2, v2

    div-int/2addr p1, v1

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Lg/eiu;->f:I

    :cond_3
    iget-boolean p1, p2, Lg/eiu;->p:Z

    if-eqz p1, :cond_4

    int-to-float p1, p3

    int-to-float p3, v6

    div-float v0, p3, v0

    add-float/2addr v0, p1

    mul-float v0, v0, p3

    int-to-float p1, v3

    div-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, p2, Lg/eiu;->h:I

    mul-int p1, v6, v6

    div-int/2addr p1, v3

    invoke-static {v6, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p2, Lg/eiu;->j:I

    :cond_4
    iget p1, p2, Lg/eiu;->q:I

    if-eqz p1, :cond_5

    if-ne p1, v5, :cond_6

    :cond_5
    invoke-virtual {p2, v5}, Lg/eiu;->al(I)V

    :cond_6
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
