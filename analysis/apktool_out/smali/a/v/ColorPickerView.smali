.class public La/v/ColorPickerView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/v/ColorPickerView$OnColorSelectedListener;,
        La/v/ColorPickerView$onButtonClickListener;
    }
.end annotation


# instance fields
.field private btnCancel:Landroid/widget/Button;

.field private btnConfirm:Landroid/widget/Button;

.field private btnReset:Landroid/widget/Button;

.field private colorGrid:Landroid/widget/GridView;

.field private colorGridAdapter:Lg/ef;

.field private colorItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lg/avv;",
            ">;"
        }
    .end annotation
.end field

.field private colorName:Landroid/widget/TextView;

.field private colorPreview:Landroid/widget/ImageView;

.field private colorValue:Landroid/widget/TextView;

.field private context:Landroid/content/Context;

.field private currentColor:Ljava/lang/String;

.field private customColorClear:Landroid/widget/TextView;

.field private customColorInput:Landroid/widget/EditText;

.field private defaultColor:Ljava/lang/String;

.field private isUpdatingOpacityUI:Z

.field private onButtonClickListener:La/v/ColorPickerView$onButtonClickListener;

.field private onColorSelectedListener:La/v/ColorPickerView$OnColorSelectedListener;

.field private opacitySeekBar:Landroid/widget/SeekBar;

.field private opacityValue:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, La/v/ColorPickerView;->isUpdatingOpacityUI:Z

    invoke-direct {p0, p1}, La/v/ColorPickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, La/v/ColorPickerView;->isUpdatingOpacityUI:Z

    invoke-direct {p0, p1}, La/v/ColorPickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    iput-boolean p2, p0, La/v/ColorPickerView;->isUpdatingOpacityUI:Z

    invoke-direct {p0, p1}, La/v/ColorPickerView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static bridge synthetic a(La/v/ColorPickerView;)Landroid/widget/EditText;
    .locals 0

    iget-object p0, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    return-object p0
.end method

.method private applyAlphaToColor(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lg/bkl;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-static {p1}, Lg/cux;->ax(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p2, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    const-string v0, "#%08X"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-object p1
.end method

.method public static bridge synthetic b(La/v/ColorPickerView;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, La/v/ColorPickerView;->opacityValue:Landroid/widget/TextView;

    return-object p0
.end method

.method public static bridge synthetic c(La/v/ColorPickerView;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, La/v/ColorPickerView;->isValidColor(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic d(La/v/ColorPickerView;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, La/v/ColorPickerView;->findColorPosition(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static synthetic e(La/v/ColorPickerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, La/v/ColorPickerView;->lambda$initData$5(Landroid/view/View;)V

    return-void
.end method

.method private extractAlphaFromColor(Ljava/lang/String;)I
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0xff

    if-eqz v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lg/bkl;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    :try_start_0
    invoke-static {p1}, Lg/cux;->ax(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    return v1
.end method

.method public static bridge synthetic f(La/v/ColorPickerView;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    return-void
.end method

.method private findColorPosition(Ljava/lang/String;)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, La/v/ColorPickerView;->getRGBString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, La/v/ColorPickerView;->colorItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, La/v/ColorPickerView;->colorItems:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/avv;

    invoke-virtual {v2}, Lg/avv;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, La/v/ColorPickerView;->getRGBString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static synthetic g(La/v/ColorPickerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, La/v/ColorPickerView;->lambda$initData$3(Landroid/view/View;)V

    return-void
.end method

.method private getColorName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-direct {p0, p1}, La/v/ColorPickerView;->getRGBString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, La/v/ColorPickerView;->colorItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/avv;

    invoke-virtual {v1}, Lg/avv;->getColor()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, La/v/ColorPickerView;->getRGBString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lg/avv;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, La/v/ColorPickerView;->context:Landroid/content/Context;

    const v0, 0x7f12011f

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getRGBString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lg/bkl;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-static {p1}, Lg/cux;->ax(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    const-string v3, "#%06X"

    shl-int/lit8 v1, v1, 0x10

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    or-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object p1
.end method

.method public static synthetic h(La/v/ColorPickerView;Lg/avv;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, La/v/ColorPickerView;->lambda$initData$0(Lg/avv;I)V

    return-void
.end method

.method public static synthetic i(La/v/ColorPickerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, La/v/ColorPickerView;->lambda$initData$2(Landroid/view/View;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, La/v/ColorPickerView;->context:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0c0035

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0}, La/v/ColorPickerView;->initView()V

    invoke-direct {p0}, La/v/ColorPickerView;->initData()V

    return-void
.end method

.method private initData()V
    .locals 6

    iget-object v0, p0, La/v/ColorPickerView;->context:Landroid/content/Context;

    sget-object v1, Lg/bkl;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    const-class v1, Lg/bkl;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    sget-object v4, Lg/bkl;->a:Ljava/lang/String;

    const v5, 0x7f12012e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#FFFFFF"

    const v5, 0x7f12012f

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#000000"

    const v5, 0x7f12011c

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#808080"

    const v5, 0x7f120123

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#D3D3D3"

    const v5, 0x7f120126

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#A9A9A9"

    const v5, 0x7f120122

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#FF0000"

    const v5, 0x7f12012d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#00FF00"

    const v5, 0x7f120124

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#0000FF"

    const v5, 0x7f12011d

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#FFFF00"

    const v5, 0x7f120130

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#FFA500"

    const v5, 0x7f120129

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#800080"

    const v5, 0x7f12012c

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#00FFFF"

    const v5, 0x7f120121

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#FFC0CB"

    const v5, 0x7f12012b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v2, Lg/bkl;->b:Ljava/util/ArrayList;

    new-instance v3, Lg/avv;

    const-string v4, "#A52A2A"

    const v5, 0x7f12011e

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lg/avv;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_2
    sget-object v0, Lg/bkl;->b:Ljava/util/ArrayList;

    iput-object v0, p0, La/v/ColorPickerView;->colorItems:Ljava/util/List;

    new-instance v0, Lg/ef;

    iget-object v1, p0, La/v/ColorPickerView;->context:Landroid/content/Context;

    iget-object v2, p0, La/v/ColorPickerView;->colorItems:Ljava/util/List;

    invoke-direct {v0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v3, -0x1

    iput v3, v0, Lg/ef;->d:I

    iput-object v1, v0, Lg/ef;->b:Landroid/content/Context;

    iput-object v2, v0, Lg/ef;->c:Ljava/util/List;

    iput-object v0, p0, La/v/ColorPickerView;->colorGridAdapter:Lg/ef;

    iget-object v1, p0, La/v/ColorPickerView;->colorGrid:Landroid/widget/GridView;

    invoke-virtual {v1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, La/v/ColorPickerView;->colorGridAdapter:Lg/ef;

    new-instance v1, Lg/aoi;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lg/aoi;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Lg/ef;->a:Lg/aoi;

    iget-object v0, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    new-instance v1, La/v/ColorPickerView$1;

    invoke-direct {v1, p0}, La/v/ColorPickerView$1;-><init>(La/v/ColorPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    new-instance v1, Lg/fxf;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/fxf;-><init>(Landroid/view/KeyEvent$Callback;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, La/v/ColorPickerView;->customColorClear:Landroid/widget/TextView;

    new-instance v1, Lg/fvx;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lg/fvx;-><init>(La/v/ColorPickerView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, La/v/ColorPickerView;->opacitySeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_2

    new-instance v1, La/v/ColorPickerView$2;

    invoke-direct {v1, p0}, La/v/ColorPickerView$2;-><init>(La/v/ColorPickerView;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_2
    iget-object v0, p0, La/v/ColorPickerView;->btnReset:Landroid/widget/Button;

    new-instance v1, Lg/fvx;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lg/fvx;-><init>(La/v/ColorPickerView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, La/v/ColorPickerView;->btnConfirm:Landroid/widget/Button;

    new-instance v1, Lg/fvx;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lg/fvx;-><init>(La/v/ColorPickerView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, La/v/ColorPickerView;->btnCancel:Landroid/widget/Button;

    new-instance v1, Lg/fvx;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lg/fvx;-><init>(La/v/ColorPickerView;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, La/v/ColorPickerView;->selectColor(Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private initView()V
    .locals 1

    const v0, 0x7f0900ce

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, La/v/ColorPickerView;->colorPreview:Landroid/widget/ImageView;

    const v0, 0x7f0900cd

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, La/v/ColorPickerView;->colorName:Landroid/widget/TextView;

    const v0, 0x7f0900d0

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, La/v/ColorPickerView;->colorValue:Landroid/widget/TextView;

    const v0, 0x7f0900cc

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, La/v/ColorPickerView;->colorGrid:Landroid/widget/GridView;

    const v0, 0x7f0900f4

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    const v0, 0x7f0900f3

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, La/v/ColorPickerView;->customColorClear:Landroid/widget/TextView;

    const v0, 0x7f090269

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, La/v/ColorPickerView;->opacitySeekBar:Landroid/widget/SeekBar;

    const v0, 0x7f09026b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, La/v/ColorPickerView;->opacityValue:Landroid/widget/TextView;

    const v0, 0x7f0900ab

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La/v/ColorPickerView;->btnReset:Landroid/widget/Button;

    const v0, 0x7f0900a9

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La/v/ColorPickerView;->btnCancel:Landroid/widget/Button;

    const v0, 0x7f0900aa

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, La/v/ColorPickerView;->btnConfirm:Landroid/widget/Button;

    return-void
.end method

.method private isValidColor(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lg/cux;->ax(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1
.end method

.method public static bridge synthetic j(La/v/ColorPickerView;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, La/v/ColorPickerView;->updateColorPreview(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic k(La/v/ColorPickerView;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1, p2}, La/v/ColorPickerView;->applyAlphaToColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l(La/v/ColorPickerView;)Z
    .locals 0

    iget-boolean p0, p0, La/v/ColorPickerView;->isUpdatingOpacityUI:Z

    return p0
.end method

.method private synthetic lambda$initData$0(Lg/avv;I)V
    .locals 1

    invoke-virtual {p1}, Lg/avv;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lg/avv;->getColor()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, La/v/ColorPickerView;->selectColor(Ljava/lang/String;IZ)Z

    return-void
.end method

.method private synthetic lambda$initData$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    iget-object p1, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    iget-object p1, p0, La/v/ColorPickerView;->context:Landroid/content/Context;

    const-string p2, "input_method"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz p1, :cond_0

    iget-object p2, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_0
    iget-object p1, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, La/v/ColorPickerView;->isValidColor(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-direct {p0, p1}, La/v/ColorPickerView;->selectColor(Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, La/v/ColorPickerView;->context:Landroid/content/Context;

    const p2, 0x7f12026a

    invoke-static {p1, p2}, Lg/gm;->c(Landroid/content/Context;I)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private synthetic lambda$initData$2(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    return-void
.end method

.method private synthetic lambda$initData$3(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, La/v/ColorPickerView;->defaultColor:Ljava/lang/String;

    invoke-direct {p0, p1}, La/v/ColorPickerView;->selectColor(Ljava/lang/String;)Z

    iget-object p1, p0, La/v/ColorPickerView;->onButtonClickListener:La/v/ColorPickerView$onButtonClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, La/v/ColorPickerView$onButtonClickListener;->onReset()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initData$4(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, La/v/ColorPickerView;->onButtonClickListener:La/v/ColorPickerView$onButtonClickListener;

    if-eqz p1, :cond_0

    iget-object v0, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    invoke-interface {p1, v0}, La/v/ColorPickerView$onButtonClickListener;->onConfirm(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$initData$5(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, La/v/ColorPickerView;->onButtonClickListener:La/v/ColorPickerView$onButtonClickListener;

    if-eqz p1, :cond_0

    invoke-interface {p1}, La/v/ColorPickerView$onButtonClickListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public static synthetic m(La/v/ColorPickerView;Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, La/v/ColorPickerView;->lambda$initData$1(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic n(La/v/ColorPickerView;)La/v/ColorPickerView$OnColorSelectedListener;
    .locals 0

    iget-object p0, p0, La/v/ColorPickerView;->onColorSelectedListener:La/v/ColorPickerView$OnColorSelectedListener;

    return-object p0
.end method

.method public static synthetic o(La/v/ColorPickerView;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, La/v/ColorPickerView;->lambda$initData$4(Landroid/view/View;)V

    return-void
.end method

.method public static bridge synthetic p(La/v/ColorPickerView;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    return-object p0
.end method

.method private selectColor(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0, p1}, La/v/ColorPickerView;->findColorPosition(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, La/v/ColorPickerView;->selectColor(Ljava/lang/String;IZ)Z

    move-result p1

    return p1
.end method

.method private selectColor(Ljava/lang/String;IZ)Z
    .locals 1

    invoke-direct {p0, p1}, La/v/ColorPickerView;->isValidColor(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    if-eqz p3, :cond_1

    if-ltz p2, :cond_1

    iget-object p3, p0, La/v/ColorPickerView;->opacitySeekBar:Landroid/widget/SeekBar;

    if-eqz p3, :cond_1

    iget-object p3, p0, La/v/ColorPickerView;->colorItems:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lg/avv;

    invoke-virtual {p3}, Lg/avv;->getColor()Ljava/lang/String;

    move-result-object p3

    sget-object v0, Lg/bkl;->a:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, La/v/ColorPickerView;->opacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-direct {p0, p3, p1}, La/v/ColorPickerView;->applyAlphaToColor(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    iget-object p3, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    invoke-direct {p0, p1}, La/v/ColorPickerView;->updateOpacityUIFromColor(Ljava/lang/String;)V

    return v0

    :cond_2
    iput-object p1, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    invoke-direct {p0, p1}, La/v/ColorPickerView;->updateOpacityUIFromColor(Ljava/lang/String;)V

    iget-object p1, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    if-eqz p1, :cond_4

    if-gez p2, :cond_3

    iget-object p3, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    const p3, 0x7f04011d

    invoke-static {p3, p1}, Lg/eyt;->bs(ILandroid/view/View;)I

    move-result p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_3
    const-string p3, ""

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    iget-object p1, p0, La/v/ColorPickerView;->colorGridAdapter:Lg/ef;

    if-ltz p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 p2, -0x1

    :goto_1
    iput p2, p1, Lg/ef;->d:I

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    invoke-direct {p0, p1}, La/v/ColorPickerView;->updateColorPreview(Ljava/lang/String;)V

    iget-object p1, p0, La/v/ColorPickerView;->onColorSelectedListener:La/v/ColorPickerView$OnColorSelectedListener;

    if-eqz p1, :cond_6

    iget-object p2, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    invoke-interface {p1, p2}, La/v/ColorPickerView$OnColorSelectedListener;->onColorSelected(Ljava/lang/String;)V

    :cond_6
    return v0
.end method

.method public static updateColorLayout(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p3, p4}, La/v/ColorPickerView;->updateColorPreview(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-static {p5}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p4}, Lg/eyt;->bk(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public static updateColorPreview(Landroid/view/View;Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    const v0, 0x7f0800ac

    :try_start_0
    sget-object v1, Lg/bkl;->a:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void

    :cond_0
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-static {p2}, Lg/cux;->ax(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06003f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method

.method private updateColorPreview(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, La/v/ColorPickerView;->colorPreview:Landroid/widget/ImageView;

    iget-object v1, p0, La/v/ColorPickerView;->colorName:Landroid/widget/TextView;

    iget-object v2, p0, La/v/ColorPickerView;->colorValue:Landroid/widget/TextView;

    iget-object v3, p0, La/v/ColorPickerView;->context:Landroid/content/Context;

    invoke-direct {p0, p1}, La/v/ColorPickerView;->getColorName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v4, p1

    invoke-static/range {v0 .. v5}, La/v/ColorPickerView;->updateColorLayout(Landroid/view/View;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private updateOpacityUIFromColor(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, La/v/ColorPickerView;->opacitySeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, La/v/ColorPickerView;->opacityValue:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, La/v/ColorPickerView;->extractAlphaFromColor(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    iput-boolean v0, p0, La/v/ColorPickerView;->isUpdatingOpacityUI:Z

    iget-object v0, p0, La/v/ColorPickerView;->opacitySeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, La/v/ColorPickerView;->opacityValue:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, La/v/ColorPickerView;->isUpdatingOpacityUI:Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentColor()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, La/v/ColorPickerView;->currentColor:Ljava/lang/String;

    return-object v0
.end method

.method public getOnButtonClickListener()La/v/ColorPickerView$onButtonClickListener;
    .locals 1

    iget-object v0, p0, La/v/ColorPickerView;->onButtonClickListener:La/v/ColorPickerView$onButtonClickListener;

    return-object v0
.end method

.method public setButtonTexts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, La/v/ColorPickerView;->btnReset:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    if-eqz p2, :cond_1

    iget-object p1, p0, La/v/ColorPickerView;->btnCancel:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    if-eqz p3, :cond_2

    iget-object p1, p0, La/v/ColorPickerView;->btnConfirm:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public setCurrentColor(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, La/v/ColorPickerView;->selectColor(Ljava/lang/String;)Z

    return-void
.end method

.method public setCustomColorHint(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, La/v/ColorPickerView;->customColorInput:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, La/v/ColorPickerView;->defaultColor:Ljava/lang/String;

    return-void
.end method

.method public setOnButtonClickListener(La/v/ColorPickerView$onButtonClickListener;)V
    .locals 0

    iput-object p1, p0, La/v/ColorPickerView;->onButtonClickListener:La/v/ColorPickerView$onButtonClickListener;

    return-void
.end method

.method public setOnColorSelectedListener(La/v/ColorPickerView$OnColorSelectedListener;)V
    .locals 0

    iput-object p1, p0, La/v/ColorPickerView;->onColorSelectedListener:La/v/ColorPickerView$OnColorSelectedListener;

    return-void
.end method

.method public setOnConfirmVisible(Z)V
    .locals 1

    iget-object v0, p0, La/v/ColorPickerView;->btnConfirm:Landroid/widget/Button;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method
