.class public final Lg/ef;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field public a:Lg/aoi;

.field public b:Landroid/content/Context;

.field public c:Ljava/util/List;

.field public d:I


# virtual methods
.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lg/ef;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lg/ef;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lg/ef;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v2, 0x7f0c0061

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance p3, Lg/fjl;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    const v2, 0x7f0900d1

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lg/fjl;->a:Landroid/widget/ImageView;

    const v2, 0x7f0902e7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p3, Lg/fjl;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/fjl;

    :goto_0
    iget-object v2, p0, Lg/ef;->c:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/avv;

    iget-object v3, p3, Lg/fjl;->a:Landroid/widget/ImageView;

    invoke-virtual {v2}, Lg/avv;->getColor()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v0, v4}, La/v/ColorPickerView;->updateColorPreview(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)V

    iget-object p3, p3, Lg/fjl;->b:Landroid/widget/ImageView;

    iget v0, p0, Lg/ef;->d:I

    if-ne v0, p1, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    :goto_1
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance p3, Lg/fhx;

    invoke-direct {p3, p0, v2, p1}, Lg/fhx;-><init>(Lg/ef;Lg/avv;I)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2
.end method
