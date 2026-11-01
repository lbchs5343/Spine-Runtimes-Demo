.class public abstract Lg/bff;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lg/hy;

.field public static final b:[Z


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Lg/hy;

    const-string v1, "RESUME_TOKEN"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lg/hy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lg/bff;->a:Lg/hy;

    const/4 v0, 0x3

    new-array v0, v0, [Z

    sput-object v0, Lg/bff;->b:[Z

    return-void
.end method

.method public static aa(Landroid/widget/TextView;I)V
    .locals 3

    invoke-static {p1}, Lg/acw;->bm(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_1

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_1
    return-void
.end method

.method public static ab(Ljava/lang/String;I)I
    .locals 6

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "transparent"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v2, 0x4

    const/16 v3, 0x23

    const/4 v4, 0x1

    if-ne v0, v3, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v2, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "#"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :goto_0
    array-length v0, p0

    if-ge v4, v0, :cond_2

    aget-char v0, p0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-char v0, p0, v4

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_3
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v5, 0x7

    if-ne v0, v5, :cond_4

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_4
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_5

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_5
    const-string v0, "rgba"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const/high16 p0, -0x1000000

    return p0

    :cond_6
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v4

    const-string v3, ")"

    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    array-length v0, p0

    if-ne v0, v2, :cond_7

    aget-object p1, p0, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    aget-object v0, p0, v4

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    const/4 v1, 0x2

    aget-object v1, p0, v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/4 v2, 0x3

    aget-object p0, p0, v2

    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float p0, p0, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p0, v2

    float-to-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    float-to-int p1, v0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    float-to-int p1, v1

    or-int/2addr p0, p1

    return p0

    :cond_7
    :goto_1
    return p1
.end method

.method public static ac([I[I)Lg/im;
    .locals 9

    new-instance v0, Lg/im;

    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    array-length v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, p0, v4

    :try_start_0
    invoke-virtual {v1, v5}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    sget v6, Lg/im;->a:I

    sget v6, Lg/im;->a:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    sget-object v2, Lg/fso;->h:[I

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x3

    if-ge v4, v5, :cond_5

    aget v5, v2, v4

    array-length v6, p0

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v6, :cond_2

    aget v8, p0, v7

    if-ne v5, v8, :cond_1

    goto :goto_4

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_2
    const/4 v7, -0x1

    :goto_4
    if-ltz v7, :cond_3

    const/4 v6, 0x1

    goto :goto_5

    :cond_3
    const/4 v6, 0x0

    :goto_5
    if-nez v6, :cond_4

    :try_start_1
    invoke-virtual {v1, v5}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_6

    :catch_1
    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v5

    sget v6, Lg/im;->a:I

    sget v6, Lg/im;->a:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    :goto_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    array-length p0, p1

    :goto_7
    if-ge v3, p0, :cond_6

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_6
    invoke-virtual {v1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p0

    const-string p1, "networkRequest.build()"

    invoke-static {p0, p1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p0}, Lg/im;-><init>(Landroid/net/NetworkRequest;)V

    return-object v0
.end method

.method public static ad(II)I
    .locals 0

    if-ge p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    if-ne p0, p1, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static ae(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)Landroid/view/ActionMode$Callback;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    const/16 v1, 0x1b

    if-gt v0, v1, :cond_1

    instance-of v0, p0, Lg/cz;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lg/cz;

    invoke-direct {v0, p0, p1}, Lg/cz;-><init>(Landroid/view/ActionMode$Callback;Landroid/widget/TextView;)V

    return-object v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static af(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;
    .locals 2

    instance-of v0, p0, Lg/cz;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    check-cast p0, Lg/cz;

    iget-object p0, p0, Lg/cz;->c:Landroid/view/ActionMode$Callback;

    :cond_0
    return-object p0
.end method

.method public static ag(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-class p1, Lg/bff;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lg/bff;->l(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0
.end method

.method public static final ah([Ljava/lang/Object;IILg/ddt;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    mul-int/lit8 v1, p2, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    if-lez v1, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int v2, p1, v1

    aget-object v2, p0, v2

    if-ne v2, p3, :cond_1

    const-string v2, "(this Collection)"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "toString(...)"

    invoke-static {p0, p1}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public static ai(I[Ljava/lang/Object;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "at index "

    invoke-static {v0, p1}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public static aj(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static ak(Ljava/lang/String;)Lg/coy;
    .locals 13

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const-string v2, ")"

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    :cond_1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_4

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x25

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lg/coy;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string v6, "deg"

    invoke-virtual {v4, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x3

    invoke-virtual {v4, v1, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    :goto_2
    const/16 v6, 0x5a

    if-ne v4, v6, :cond_6

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_3

    :cond_6
    const/16 v6, 0xb4

    if-ne v4, v6, :cond_7

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_3

    :cond_7
    const/16 v6, 0x10e

    if-ne v4, v6, :cond_8

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_3

    :cond_8
    const/16 v6, 0x87

    if-ne v4, v6, :cond_9

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TL_BR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_3

    :cond_9
    const/16 v6, 0x2d

    if-ne v4, v6, :cond_a

    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BL_TR:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_3

    :cond_a
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_3
    iput-object v4, v5, Lg/coy;->a:Landroid/graphics/drawable/GradientDrawable$Orientation;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    new-array v0, v3, [I

    new-array v4, v3, [F

    const/4 v6, 0x0

    :goto_4
    if-ge v6, v3, :cond_c

    const-string v7, "%"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {p0, v1, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    const-string v10, "rgba"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    invoke-virtual {v9, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    goto :goto_5

    :cond_b
    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    :goto_5
    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const/high16 v12, -0x1000000

    invoke-static {v11, v12}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result v11

    aput v11, v0, v6

    invoke-virtual {v9, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v9, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    invoke-static {v9, v7}, Lg/byh;->au(FLjava/lang/String;)F

    move-result v7

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v7, v9

    aput v7, v4, v6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v8, v8, 0x2

    if-le v7, v8, :cond_c

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_c
    iput-object v0, v5, Lg/coy;->b:[I

    iput-object v4, v5, Lg/coy;->c:[F

    return-object v5
.end method

.method public static final al(Lg/glm;Ljava/lang/Object;I)I
    .locals 4

    iget v0, p0, Lg/glm;->a:I

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lg/glm;->b:[I

    invoke-static {v0, p2, v1}, Lg/erl;->w(II[I)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    if-gez v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lg/glm;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_0
    return v1

    :cond_2
    add-int/lit8 v2, v1, 0x1

    :goto_1
    if-ge v2, v0, :cond_4

    iget-object v3, p0, Lg/glm;->b:[I

    aget v3, v3, v2

    if-ne v3, p2, :cond_4

    iget-object v3, p0, Lg/glm;->c:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-static {p1, v3}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_6

    iget-object v0, p0, Lg/glm;->b:[I

    aget v0, v0, v1

    if-ne v0, p2, :cond_6

    iget-object v0, p0, Lg/glm;->c:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v1

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_6
    not-int p0, v2

    return p0

    :catch_0
    new-instance p0, Ljava/util/ConcurrentModificationException;

    invoke-direct {p0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw p0
.end method

.method public static am(Landroid/util/JsonReader;Lg/cgf;Z)Lg/cnc;
    .locals 3

    new-instance v0, Lg/cnc;

    if-eqz p2, :cond_0

    invoke-static {}, Lg/ebx;->h()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lg/bfy;->d:Lg/bfy;

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lg/ffb;->bc(Landroid/util/JsonReader;Lg/cgf;FLg/cce;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x4

    invoke-direct {v0, p1, p0}, Lg/bgf;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method

.method public static final an(II[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "<this>"

    invoke-static {p2, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge p0, p1, :cond_0

    const/4 v0, 0x0

    aput-object v0, p2, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final ao(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_10

    :cond_0
    instance-of v3, v1, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_10

    :cond_1
    instance-of v3, v1, Ljava/lang/Byte;

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_10

    :cond_2
    instance-of v3, v1, Ljava/lang/Integer;

    if-eqz v3, :cond_3

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_10

    :cond_3
    instance-of v3, v1, Ljava/lang/Long;

    if-eqz v3, :cond_4

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto/16 :goto_10

    :cond_4
    instance-of v3, v1, Ljava/lang/Float;

    if-eqz v3, :cond_5

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto/16 :goto_10

    :cond_5
    instance-of v3, v1, Ljava/lang/Double;

    if-eqz v3, :cond_6

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto/16 :goto_10

    :cond_6
    instance-of v3, v1, Ljava/lang/String;

    if-eqz v3, :cond_7

    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_7
    instance-of v3, v1, [Ljava/lang/Object;

    const-string v4, "Unsupported value type "

    if-eqz v3, :cond_28

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v3

    const-class v5, [Ljava/lang/Boolean;

    invoke-static {v5}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/16 v6, 0xe

    const/16 v7, 0xd

    const/16 v8, 0xc

    const/16 v9, 0xb

    const/16 v10, 0xa

    const/16 v11, 0x9

    const/16 v12, 0x8

    const/4 v13, 0x0

    if-eqz v5, :cond_8

    const/16 v3, 0x8

    goto :goto_0

    :cond_8
    const-class v5, [Ljava/lang/Byte;

    invoke-static {v5}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const/16 v3, 0x9

    goto :goto_0

    :cond_9
    const-class v5, [Ljava/lang/Integer;

    invoke-static {v5}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    const/16 v3, 0xa

    goto :goto_0

    :cond_a
    const-class v5, [Ljava/lang/Long;

    invoke-static {v5}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/16 v3, 0xb

    goto :goto_0

    :cond_b
    const-class v5, [Ljava/lang/Float;

    invoke-static {v5}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const/16 v3, 0xc

    goto :goto_0

    :cond_c
    const-class v5, [Ljava/lang/Double;

    invoke-static {v5}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    const/16 v3, 0xd

    goto :goto_0

    :cond_d
    const-class v5, [Ljava/lang/String;

    invoke-static {v5}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v5

    invoke-virtual {v3, v5}, Lg/beq;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const/16 v3, 0xe

    :goto_0
    invoke-virtual {v0, v3}, Ljava/io/DataOutputStream;->writeByte(I)V

    array-length v4, v1

    invoke-virtual {v0, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    array-length v4, v1

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_23

    aget-object v14, v1, v5

    if-ne v3, v12, :cond_10

    instance-of v15, v14, Ljava/lang/Boolean;

    if-eqz v15, :cond_e

    check-cast v14, Ljava/lang/Boolean;

    goto :goto_2

    :cond_e
    move-object v14, v13

    :goto_2
    if-eqz v14, :cond_f

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    goto :goto_3

    :cond_f
    const/4 v14, 0x0

    :goto_3
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto/16 :goto_f

    :cond_10
    if-ne v3, v11, :cond_13

    instance-of v15, v14, Ljava/lang/Byte;

    if-eqz v15, :cond_11

    check-cast v14, Ljava/lang/Byte;

    goto :goto_4

    :cond_11
    move-object v14, v13

    :goto_4
    if-eqz v14, :cond_12

    invoke-virtual {v14}, Ljava/lang/Byte;->byteValue()B

    move-result v14

    goto :goto_5

    :cond_12
    const/4 v14, 0x0

    :goto_5
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeByte(I)V

    goto/16 :goto_f

    :cond_13
    if-ne v3, v10, :cond_16

    instance-of v15, v14, Ljava/lang/Integer;

    if-eqz v15, :cond_14

    check-cast v14, Ljava/lang/Integer;

    goto :goto_6

    :cond_14
    move-object v14, v13

    :goto_6
    if-eqz v14, :cond_15

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    goto :goto_7

    :cond_15
    const/4 v14, 0x0

    :goto_7
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto/16 :goto_f

    :cond_16
    if-ne v3, v9, :cond_19

    instance-of v15, v14, Ljava/lang/Long;

    if-eqz v15, :cond_17

    check-cast v14, Ljava/lang/Long;

    goto :goto_8

    :cond_17
    move-object v14, v13

    :goto_8
    if-eqz v14, :cond_18

    invoke-virtual {v14}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    goto :goto_9

    :cond_18
    const-wide/16 v14, 0x0

    :goto_9
    invoke-virtual {v0, v14, v15}, Ljava/io/DataOutputStream;->writeLong(J)V

    goto :goto_f

    :cond_19
    if-ne v3, v8, :cond_1c

    instance-of v15, v14, Ljava/lang/Float;

    if-eqz v15, :cond_1a

    check-cast v14, Ljava/lang/Float;

    goto :goto_a

    :cond_1a
    move-object v14, v13

    :goto_a
    if-eqz v14, :cond_1b

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    goto :goto_b

    :cond_1b
    const/4 v14, 0x0

    :goto_b
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeFloat(F)V

    goto :goto_f

    :cond_1c
    if-ne v3, v7, :cond_1f

    instance-of v15, v14, Ljava/lang/Double;

    if-eqz v15, :cond_1d

    check-cast v14, Ljava/lang/Double;

    goto :goto_c

    :cond_1d
    move-object v14, v13

    :goto_c
    if-eqz v14, :cond_1e

    invoke-virtual {v14}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v14

    goto :goto_d

    :cond_1e
    const-wide/16 v14, 0x0

    :goto_d
    invoke-virtual {v0, v14, v15}, Ljava/io/DataOutputStream;->writeDouble(D)V

    goto :goto_f

    :cond_1f
    if-ne v3, v6, :cond_22

    instance-of v15, v14, Ljava/lang/String;

    if-eqz v15, :cond_20

    check-cast v14, Ljava/lang/String;

    goto :goto_e

    :cond_20
    move-object v14, v13

    :goto_e
    if-nez v14, :cond_21

    const-string v14, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d"

    :cond_21
    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_22
    :goto_f
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_23
    :goto_10
    invoke-virtual/range {p0 .. p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v1

    sget-object v3, Lg/beq;->c:Ljava/util/HashMap;

    iget-object v1, v1, Lg/beq;->d:Ljava/lang/Class;

    const-string v4, "jClass"

    invoke-static {v1, v4}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v1}, Ljava/lang/Class;->isLocalClass()Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_26

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_25

    const-string v3, "Array"

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    :cond_25
    if-nez v13, :cond_27

    const-string v13, "kotlin.Array"

    goto :goto_11

    :cond_26
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Ljava/lang/String;

    if-nez v13, :cond_27

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v13

    :cond_27
    :goto_11
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Lg/bii;->b(Ljava/lang/Class;)Lg/beq;

    move-result-object v1

    invoke-virtual {v1}, Lg/beq;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ap(Lg/aki;)Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lg/aki;->g()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lg/aki;->g()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p0, v1}, Lg/aki;->d(I)B

    move-result v2

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    const/16 v3, 0x27

    if-eq v2, v3, :cond_2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    const/16 v4, 0x20

    if-lt v2, v4, :cond_0

    const/16 v4, 0x7e

    if-gt v2, v4, :cond_0

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    ushr-int/lit8 v3, v2, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 v2, v2, 0x7

    add-int/lit8 v2, v2, 0x30

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_0
    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_1
    const-string v2, "\\f"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_2
    const-string v2, "\\v"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_3
    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    const-string v2, "\\b"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_6
    const-string v2, "\\a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    const-string v2, "\\\\"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v2, "\\\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    const-string v2, "\\\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final aq(Lg/glm;I)V
    .locals 1

    new-array v0, p1, [I

    iput-object v0, p0, Lg/glm;->b:[I

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lg/glm;->c:[Ljava/lang/Object;

    return-void
.end method

.method public static ar(Landroid/widget/TextView;I)V
    .locals 3

    invoke-static {p1}, Lg/acw;->bm(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lg/eyo;->k(Landroid/widget/TextView;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getIncludeFontPadding()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    goto :goto_0

    :cond_1
    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le p1, v1, :cond_2

    add-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_2
    return-void
.end method

.method public static as(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;
    .locals 4

    new-instance v0, Lg/dlz;

    invoke-static {}, Lg/ebx;->h()F

    move-result v1

    sget-object v2, Lg/bmr;->f:Lg/bmr;

    const/4 v3, 0x1

    invoke-static {p0, p1, v1, v2, v3}, Lg/ffb;->bc(Landroid/util/JsonReader;Lg/cgf;FLg/cce;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x2

    invoke-direct {v0, p1, p0}, Lg/dlz;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static at(Lg/cci;)Lg/emz;
    .locals 3

    sget-object v0, Lg/csv;->DONT_GENERATE:Lg/csv;

    iget-object v1, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v1, v0}, Lg/sm;->g(Lg/csv;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lg/emz;->e:Lg/grx;

    return-object p0

    :cond_0
    iget-object v0, p0, Lg/cci;->ab:Lg/dwg;

    iget-object v0, v0, Lg/dwg;->i:Lg/ur;

    sget-object v1, Lg/gcl;->a:[I

    iget-object v2, v0, Lg/ur;->o:Lg/dyx;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    new-instance v0, Lg/ba;

    invoke-direct {v0, p0}, Lg/ba;-><init>(Lg/cci;)V

    new-instance v1, Lg/amb;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lg/amb;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v1}, Lg/bff;->j(Lg/cci;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v0, Lg/grx;

    invoke-direct {v0, p0}, Lg/grx;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_1
    new-instance p0, Lg/gck;

    const-string v0, "Unknown output format"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance v1, Lg/ggg;

    invoke-direct {v1, p0, v0}, Lg/ggg;-><init>(Lg/cci;Lg/ur;)V

    new-instance v0, Lg/amb;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lg/amb;-><init>(ILjava/lang/Object;)V

    invoke-static {p0, v0}, Lg/bff;->j(Lg/cci;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/emz;

    return-object p0
.end method

.method public static au(Lg/aep;Lg/bwo;Lg/brh;)V
    .locals 11

    const/4 v0, -0x1

    iput v0, p2, Lg/brh;->av:I

    iget-object v1, p2, Lg/brh;->bp:Lg/hac;

    iget-object v2, p2, Lg/brh;->ch:[Lg/fol;

    iget-object v3, p2, Lg/brh;->as:Lg/hac;

    iget-object v4, p2, Lg/brh;->bx:Lg/hac;

    iget-object v5, p2, Lg/brh;->br:Lg/hac;

    iget-object v6, p2, Lg/brh;->cw:Lg/hac;

    iput v0, p2, Lg/brh;->bz:I

    iget-object v0, p0, Lg/brh;->ch:[Lg/fol;

    const/4 v7, 0x0

    aget-object v0, v0, v7

    sget-object v8, Lg/fol;->WRAP_CONTENT:Lg/fol;

    const/4 v9, 0x2

    if-eq v0, v8, :cond_0

    aget-object v0, v2, v7

    sget-object v7, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne v0, v7, :cond_0

    iget v0, v6, Lg/hac;->i:I

    invoke-virtual {p0}, Lg/brh;->eb()I

    move-result v7

    iget v10, v5, Lg/hac;->i:I

    sub-int/2addr v7, v10

    invoke-virtual {p1, v6}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v10

    iput-object v10, v6, Lg/hac;->f:Lg/crb;

    invoke-virtual {p1, v5}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v10

    iput-object v10, v5, Lg/hac;->f:Lg/crb;

    iget-object v6, v6, Lg/hac;->f:Lg/crb;

    invoke-virtual {p1, v6, v0}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v5, v5, Lg/hac;->f:Lg/crb;

    invoke-virtual {p1, v5, v7}, Lg/bwo;->v(Lg/crb;I)V

    iput v9, p2, Lg/brh;->av:I

    iput v0, p2, Lg/brh;->cv:I

    sub-int/2addr v7, v0

    iput v7, p2, Lg/brh;->bc:I

    iget v0, p2, Lg/brh;->bb:I

    if-ge v7, v0, :cond_0

    iput v0, p2, Lg/brh;->bc:I

    :cond_0
    iget-object v0, p0, Lg/brh;->ch:[Lg/fol;

    const/4 v5, 0x1

    aget-object v0, v0, v5

    if-eq v0, v8, :cond_3

    aget-object v0, v2, v5

    sget-object v2, Lg/fol;->MATCH_PARENT:Lg/fol;

    if-ne v0, v2, :cond_3

    iget v0, v4, Lg/hac;->i:I

    invoke-virtual {p0}, Lg/brh;->di()I

    move-result p0

    iget v2, v3, Lg/hac;->i:I

    sub-int/2addr p0, v2

    invoke-virtual {p1, v4}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    iput-object v2, v4, Lg/hac;->f:Lg/crb;

    invoke-virtual {p1, v3}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    iput-object v2, v3, Lg/hac;->f:Lg/crb;

    iget-object v2, v4, Lg/hac;->f:Lg/crb;

    invoke-virtual {p1, v2, v0}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v3, Lg/hac;->f:Lg/crb;

    invoke-virtual {p1, v2, p0}, Lg/bwo;->v(Lg/crb;I)V

    iget v2, p2, Lg/brh;->bn:I

    if-gtz v2, :cond_1

    iget v2, p2, Lg/brh;->aq:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    :cond_1
    invoke-virtual {p1, v1}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    iput-object v2, v1, Lg/hac;->f:Lg/crb;

    iget v1, p2, Lg/brh;->bn:I

    add-int/2addr v1, v0

    invoke-virtual {p1, v2, v1}, Lg/bwo;->v(Lg/crb;I)V

    :cond_2
    iput v9, p2, Lg/brh;->bz:I

    iput v0, p2, Lg/brh;->cb:I

    sub-int/2addr p0, v0

    iput p0, p2, Lg/brh;->bt:I

    iget p1, p2, Lg/brh;->au:I

    if-ge p0, p1, :cond_3

    iput p1, p2, Lg/brh;->bt:I

    :cond_3
    return-void
.end method

.method public static av(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;
    .locals 4

    new-instance v0, Lg/dlz;

    sget-object v1, Lg/dwm;->z:Lg/dwm;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Lg/ffb;->bc(Landroid/util/JsonReader;Lg/cgf;FLg/cce;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x6

    invoke-direct {v0, p1, p0}, Lg/dlz;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static c(Landroidx/appcompat/widget/AppCompatTextView;)Lg/bsr;
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    new-instance v0, Lg/bsr;

    invoke-static {p0}, Lg/eyo;->l(Landroidx/appcompat/widget/AppCompatTextView;)Landroid/text/PrecomputedText$Params;

    move-result-object p0

    invoke-direct {v0, p0}, Lg/bsr;-><init>(Landroid/text/PrecomputedText$Params;)V

    return-object v0

    :cond_0
    new-instance v2, Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    const/4 v3, 0x0

    const/16 v4, 0x17

    const/4 v5, 0x1

    if-lt v0, v4, :cond_1

    const/4 v6, 0x1

    const/4 v7, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    sget-object v8, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_LTR:Landroid/text/TextDirectionHeuristic;

    if-lt v0, v4, :cond_2

    invoke-static {p0}, Lg/id;->s(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v6

    invoke-static {p0}, Lg/id;->n(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v7

    :cond_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    instance-of v4, v4, Landroid/text/method/PasswordTransformationMethod;

    if-eqz v4, :cond_3

    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :cond_3
    if-lt v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getInputType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-static {p0}, Lg/cml;->b(Ljava/util/Locale;)Landroid/icu/text/DecimalFormatSymbols;

    move-result-object p0

    invoke-static {p0}, Lg/eyo;->q(Landroid/icu/text/DecimalFormatSymbols;)[Ljava/lang/String;

    move-result-object p0

    aget-object p0, p0, v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->getDirectionality(I)B

    move-result p0

    if-eq p0, v5, :cond_5

    const/4 v0, 0x2

    if-ne p0, v0, :cond_4

    goto :goto_1

    :cond_4
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :cond_5
    :goto_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v5, :cond_7

    const/4 v3, 0x1

    :cond_7
    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    if-eqz v3, :cond_8

    sget-object v8, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :pswitch_0
    sget-object v8, Landroid/text/TextDirectionHeuristics;->FIRSTSTRONG_RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :pswitch_1
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LOCALE:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :pswitch_2
    sget-object v8, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :pswitch_3
    sget-object v8, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    goto :goto_2

    :pswitch_4
    sget-object v8, Landroid/text/TextDirectionHeuristics;->ANYRTL_LTR:Landroid/text/TextDirectionHeuristic;

    :cond_8
    :goto_2
    :pswitch_5
    new-instance p0, Lg/bsr;

    invoke-direct {p0, v2, v8, v6, v7}, Lg/bsr;-><init>(Landroid/text/TextPaint;Landroid/text/TextDirectionHeuristic;II)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_5
        :pswitch_0
    .end packed-switch
.end method

.method public static d(Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    const-class v0, Lg/bff;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lg/bff;->l(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, " must not be null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-class p1, Lg/bff;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lg/bff;->l(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0
.end method

.method public static final f(Lg/fhs;I)I
    .locals 4

    iget-object v0, p0, Lg/fhs;->b:[I

    add-int/lit8 p1, p1, 0x1

    iget-object p0, p0, Lg/fhs;->a:[[B

    array-length p0, p0

    const-string v1, "<this>"

    invoke-static {v0, v1}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p0, :cond_1

    add-int v2, v1, p0

    ushr-int/lit8 v2, v2, 0x1

    aget v3, v0, v2

    if-ge v3, p1, :cond_0

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_0
    if-le v3, p1, :cond_2

    add-int/lit8 p0, v2, -0x1

    goto :goto_0

    :cond_1
    neg-int p0, v1

    add-int/lit8 v2, p0, -0x1

    :cond_2
    if-ltz v2, :cond_3

    return v2

    :cond_3
    not-int p0, v2

    return p0
.end method

.method public static g(Landroid/widget/TextView;I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    invoke-static {p0, p1}, Lg/gdl;->e(Landroid/widget/TextView;I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    return-void
.end method

.method public static h(Lg/dwg;Lg/ghr;)Lg/gsh;
    .locals 9

    iget-object v0, p1, Lg/ghr;->f:Ljava/lang/Object;

    sget-object v1, Lg/fkp;->a:[I

    iget-object v2, p1, Lg/ghr;->b:Lg/dnd;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    new-instance p0, Lg/gck;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported type for raw invoke-custom: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast v0, Lg/dpb;

    invoke-virtual {v0}, Lg/dpb;->e()Lg/ecx;

    move-result-object p1

    invoke-virtual {p1}, Lg/ecx;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Lg/epw;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "FIELD:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, v0, Lg/dpb;->a:I

    packed-switch v1, :pswitch_data_1

    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    iget-object v0, v0, Lg/dpb;->c:Ljava/lang/Object;

    check-cast v0, Lg/eok;

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/epw;-><init>(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Lg/dpb;->d()Lg/ful;

    move-result-object p1

    invoke-interface {p1}, Lg/ful;->m()V

    const-string v1, "java.lang.invoke.MethodHandles.Lookup"

    invoke-static {v1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v1

    invoke-static {p0, v1}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v1

    invoke-virtual {v0}, Lg/dpb;->e()Lg/ecx;

    move-result-object v0

    sget-object v2, Lg/fkp;->b:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x4

    if-eq v2, v5, :cond_3

    if-eq v2, v4, :cond_2

    if-eq v2, v3, :cond_1

    if-eq v2, v6, :cond_1

    const/4 v7, 0x5

    if-eq v2, v7, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v7, "<"

    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3e

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "findVirtual"

    goto :goto_1

    :cond_2
    const-string v0, "findConstructor"

    goto :goto_1

    :cond_3
    const-string v0, "findStatic"

    :goto_1
    const-string v2, "java.lang.invoke.MethodType"

    invoke-static {v2}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v2

    new-array v3, v3, [Lg/cwx;

    sget-object v7, Lg/cwx;->ab:Lg/aog;

    const/4 v8, 0x0

    aput-object v7, v3, v8

    sget-object v7, Lg/cwx;->al:Lg/aog;

    aput-object v7, v3, v5

    aput-object v2, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    const-string v3, "java.lang.invoke.MethodHandle"

    invoke-static {v3}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v3

    invoke-static {p0, v1, v0, v2, v3}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object v0

    new-instance v1, Lg/hdc;

    sget-object v2, Lg/eqp;->DIRECT:Lg/eqp;

    invoke-direct {v1, v0, v2, v6}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    invoke-static {p0}, Lg/bff;->q(Lg/dwg;)Lg/cly;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/eek;->_an(Lg/gsh;)V

    new-instance v0, Lg/dkd;

    invoke-interface {p1}, Lg/ful;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/dkd;-><init>(Lg/cwx;)V

    invoke-static {v0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/eek;->_an(Lg/gsh;)V

    new-instance v0, Lg/epw;

    invoke-interface {p1}, Lg/ful;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lg/epw;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v0

    invoke-virtual {v1, v0}, Lg/eek;->_an(Lg/gsh;)V

    invoke-static {p0, p1}, Lg/bff;->z(Lg/dwg;Lg/fw;)Lg/hdc;

    move-result-object p0

    invoke-static {p0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object p0

    invoke-virtual {v1, p0}, Lg/eek;->_an(Lg/gsh;)V

    move-object p0, v1

    :goto_2
    invoke-static {p0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast v0, Lg/fw;

    invoke-static {p0, v0}, Lg/bff;->z(Lg/dwg;Lg/fw;)Lg/hdc;

    move-result-object p0

    invoke-static {p0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object p0

    return-object p0

    :pswitch_3
    new-instance p0, Lg/dkd;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lg/cwx;->ba(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    invoke-direct {p0, p1}, Lg/dkd;-><init>(Lg/cwx;)V

    invoke-static {p0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance p0, Lg/epw;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lg/epw;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    const-wide/16 p0, 0x0

    goto :goto_3

    :cond_4
    const-wide/16 p0, 0x1

    :goto_3
    sget-object v0, Lg/cwx;->at:Lg/cff;

    invoke-static {p0, p1, v0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p0

    return-object p0

    :pswitch_6
    invoke-static {p1}, Lg/bff;->m(Lg/ghr;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lg/gsh;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static final i(Ljava/lang/Object;)Lg/fu;
    .locals 1

    sget-object v0, Lg/cro;->o:Lg/hy;

    if-eq p0, v0, :cond_0

    check-cast p0, Lg/fu;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Does not contain segment"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static j(Lg/cci;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 3

    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    sget-object v1, Lg/csv;->RESTART_CODEGEN:Lg/csv;

    iget-object v2, p0, Lg/lh;->l:Lg/sm;

    invoke-virtual {v2, v1}, Lg/sm;->g(Lg/csv;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Lg/csv;->RESTART_CODEGEN:Lg/csv;

    invoke-virtual {p0, v0}, Lg/lh;->v(Lg/csv;)V

    :try_start_1
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Lg/gck;

    const-string v0, "Code generation error after restart"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    new-instance p0, Lg/gck;

    const-string p1, "Code generation error"

    invoke-direct {p0, p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static k(Lg/dwa;)[B
    .locals 4

    const-string v0, "data"

    invoke-static {p0, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lg/dwa;->b:Ljava/util/HashMap;

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, -0x5411

    :try_start_1
    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v3, v2}, Lg/bff;->ao(Ljava/io/DataOutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/DataOutputStream;->size()I

    move-result p0

    const/16 v2, 0x2800

    if-gt p0, v2, :cond_1

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-interface {v1}, Ljava/io/Closeable;->close()V

    const-string v0, "{\n                ByteAr\u2026          }\n            }"

    invoke-static {p0, v0}, Lg/bff;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :cond_1
    :try_start_3
    const-string p0, "Data cannot occupy more than 10240 bytes when serialized"

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    :try_start_5
    invoke-static {v1, p0}, Lg/ckd;->n(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lg/ow;->a:Ljava/lang/String;

    invoke-static {}, Lg/cyl;->f()Lg/cyl;

    move-result-object v1

    const-string v2, "Error in Data#toByteArray: "

    invoke-virtual {v1, v0, v2, p0}, Lg/cyl;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0
.end method

.method public static l(Ljava/lang/RuntimeException;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    array-length v1, v0

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/StackTraceElement;

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    return-void
.end method

.method public static m(Lg/ghr;)Ljava/lang/Object;
    .locals 3

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/ghr;->f:Ljava/lang/Object;

    sget-object v1, Lg/fkp;->a:[I

    iget-object p0, p0, Lg/ghr;->b:Lg/dnd;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const-wide/16 v1, 0x0

    packed-switch p0, :pswitch_data_0

    :goto_0
    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lg/cwx;->ba(Ljava/lang/String;)Lg/cwx;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast v0, Ljava/lang/String;

    return-object v0

    :pswitch_2
    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    sget-object p0, Lg/cwx;->s:Lg/cff;

    invoke-static {v0, v1, p0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lg/cwx;->ax:Lg/cff;

    invoke-static {v0, v1, p0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget-object p0, Lg/cwx;->am:Lg/cff;

    invoke-static {v0, v1, p0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lg/cwx;->an:Lg/cff;

    invoke-static {v0, v1, p0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p0

    return-object p0

    :pswitch_6
    check-cast v0, Ljava/lang/Character;

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lg/cwx;->ai:Lg/cff;

    invoke-static {v0, v1, p0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p0

    return-object p0

    :pswitch_7
    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lg/cwx;->ac:Lg/cff;

    invoke-static {v0, v1, p0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p0

    return-object p0

    :pswitch_8
    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result p0

    int-to-long v0, p0

    sget-object p0, Lg/cwx;->z:Lg/cff;

    invoke-static {v0, v1, p0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p0

    return-object p0

    :pswitch_9
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lg/ekh;

    const-wide/16 v0, 0x1

    sget-object v2, Lg/cwx;->at:Lg/cff;

    invoke-direct {p0, v0, v1, v2}, Lg/ekh;-><init>(JLg/cwx;)V

    return-object p0

    :cond_1
    new-instance p0, Lg/ekh;

    sget-object v0, Lg/cwx;->at:Lg/cff;

    invoke-direct {p0, v1, v2, v0}, Lg/ekh;-><init>(JLg/cwx;)V

    return-object p0

    :pswitch_a
    sget-object p0, Lg/cwx;->t:Lg/aog;

    invoke-static {v1, v2, p0}, Lg/gsh;->ag(JLg/cwx;)Lg/ekh;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final o(Ljava/lang/Object;)Z
    .locals 1

    sget-object v0, Lg/cro;->o:Lg/hy;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static p(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const-class v1, Lg/bff;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    const-string v2, "."

    const-string v3, ", parameter "

    const-string v4, "Parameter specified as non-null is null: method "

    invoke-static {v4, v1, v2, v0, v3}, Lg/tn;->o(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    const-class p1, Lg/bff;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lg/bff;->l(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0
.end method

.method public static q(Lg/dwg;)Lg/cly;
    .locals 4

    const-string v0, "java.lang.invoke.MethodHandles.Lookup"

    invoke-static {v0}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v0

    const-string v1, "java.lang.invoke.MethodHandles"

    invoke-static {v1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object v1

    invoke-static {p0, v1}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v1

    const-string v2, "lookup"

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p0, v1, v2, v3, v0}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object p0

    new-instance v0, Lg/hdc;

    sget-object v1, Lg/eqp;->STATIC:Lg/eqp;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    invoke-static {v0}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object p0

    return-object p0
.end method

.method public static r(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1, p0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static s(Landroid/util/JsonReader;Lg/cgf;I)Lg/dlz;
    .locals 10

    new-instance v0, Lg/dlz;

    new-instance v1, Lg/cyl;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput p2, v1, Lg/cyl;->e:I

    const/high16 p2, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-static {p0, p1, p2, v1, v2}, Lg/ffb;->bc(Landroid/util/JsonReader;Lg/cgf;FLg/cce;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lg/flj;

    iget-object v1, p2, Lg/flj;->p:Ljava/lang/Object;

    check-cast v1, Lg/fns;

    iget-object v3, p2, Lg/flj;->r:Ljava/lang/Object;

    check-cast v3, Lg/fns;

    if-eqz v1, :cond_3

    if-eqz v3, :cond_3

    iget-object v4, v1, Lg/fns;->a:[F

    array-length v5, v4

    iget-object v6, v3, Lg/fns;->a:[F

    array-length v7, v6

    if-ne v5, v7, :cond_0

    goto :goto_2

    :cond_0
    array-length p2, v4

    array-length v5, v6

    add-int/2addr p2, v5

    new-array v5, p2, [F

    array-length v7, v4

    invoke-static {v4, v2, v5, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v4, v4

    array-length v7, v6

    invoke-static {v6, v2, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v5}, Ljava/util/Arrays;->sort([F)V

    const/high16 v4, 0x7fc00000    # Float.NaN

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, p2, :cond_2

    aget v8, v5, v6

    cmpl-float v9, v8, v4

    if-eqz v9, :cond_1

    aput v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    aget v4, v5, v6

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-static {v5, v2, v7}, Ljava/util/Arrays;->copyOfRange([FII)[F

    move-result-object p2

    invoke-virtual {v1, p2}, Lg/fns;->c([F)Lg/fns;

    move-result-object v1

    invoke-virtual {v3, p2}, Lg/fns;->c([F)Lg/fns;

    move-result-object p2

    new-instance v3, Lg/flj;

    invoke-direct {v3, v1, p2}, Lg/flj;-><init>(Lg/fns;Lg/fns;)V

    move-object p2, v3

    :cond_3
    :goto_2
    invoke-virtual {p0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    invoke-direct {v0, p1, p0}, Lg/dlz;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static t(Landroid/util/JsonReader;Lg/cgf;)Lg/dlz;
    .locals 4

    new-instance v0, Lg/dlz;

    sget-object v1, Lg/dwm;->f:Lg/dwm;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    invoke-static {p0, p1, v2, v1, v3}, Lg/ffb;->bc(Landroid/util/JsonReader;Lg/cgf;FLg/cce;Z)Ljava/util/ArrayList;

    move-result-object p0

    const/4 p1, 0x0

    invoke-direct {v0, p1, p0}, Lg/dlz;-><init>(ILjava/util/List;)V

    return-object v0
.end method

.method public static u(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lg/gvy;->c:Lg/fpc;

    sget-object v0, Lg/fnk;->d:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/fgp;

    move-object v3, v2

    check-cast v3, Lg/fnk;

    iget-object v3, v3, Lg/fnk;->e:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lg/fgp;

    check-cast v0, Lg/fnk;

    invoke-virtual {v0}, Lg/fnk;->b()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lg/fnk;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_3
    const/4 p0, 0x1

    return p0

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unknown feature "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static v(Ljava/lang/String;)V
    .locals 2

    const-string v0, "lateinit property "

    const-string v1, " has not been initialized"

    invoke-static {v0, p0, v1}, Lg/tn;->ad(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lg/dwb;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const-class p0, Lg/bff;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lg/bff;->l(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw v0
.end method

.method public static w(Landroid/widget/TextView;I)V
    .locals 2

    invoke-static {p1}, Lg/acw;->bm(I)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    move-result v0

    if-eq p1, v0, :cond_0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_0
    return-void
.end method

.method public static final x(II)Z
    .locals 0

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final y(Ljava/io/DataInputStream;B)Ljava/io/Serializable;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_4
    const/4 v1, 0x5

    if-ne p1, v1, :cond_5

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_5
    const/4 v1, 0x6

    if-ne p1, v1, :cond_6

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :cond_6
    const/4 v1, 0x7

    if-ne p1, v1, :cond_7

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_7
    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v1, :cond_9

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Boolean;

    :goto_0
    if-ge v2, p1, :cond_8

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    return-object v0

    :cond_9
    const/16 v1, 0x9

    if-ne p1, v1, :cond_b

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Byte;

    :goto_1
    if-ge v2, p1, :cond_a

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_a
    return-object v0

    :cond_b
    const/16 v1, 0xa

    if-ne p1, v1, :cond_d

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Integer;

    :goto_2
    if-ge v2, p1, :cond_c

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_c
    return-object v0

    :cond_d
    const/16 v1, 0xb

    if-ne p1, v1, :cond_f

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Long;

    :goto_3
    if-ge v2, p1, :cond_e

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_e
    return-object v0

    :cond_f
    const/16 v1, 0xc

    if-ne p1, v1, :cond_11

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Float;

    :goto_4
    if-ge v2, p1, :cond_10

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readFloat()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-object v0

    :cond_11
    const/16 v1, 0xd

    if-ne p1, v1, :cond_13

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v0, p1, [Ljava/lang/Double;

    :goto_5
    if-ge v2, p1, :cond_12

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readDouble()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    aput-object v1, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    return-object v0

    :cond_13
    const/16 v1, 0xe

    if-ne p1, v1, :cond_16

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readInt()I

    move-result p1

    new-array v1, p1, [Ljava/lang/String;

    :goto_6
    if-ge v2, p1, :cond_15

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v3

    const-string v4, "androidx.work.Data-95ed6082-b8e9-46e8-a73f-ff56f00f5d9d"

    invoke-static {v3, v4}, Lg/bff;->n(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    move-object v3, v0

    :cond_14
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_15
    return-object v1

    :cond_16
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Unsupported type "

    invoke-static {p1, v0}, Lg/awf;->ac(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static z(Lg/dwg;Lg/fw;)Lg/hdc;
    .locals 7

    invoke-interface {p1}, Lg/fw;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg/cwx;->ba(Ljava/lang/String;)Lg/cwx;

    move-result-object v0

    invoke-interface {p1}, Lg/fw;->a()Ljava/util/List;

    move-result-object p1

    new-instance v1, Lg/gpn;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Lg/gpn;-><init>(I)V

    invoke-static {p1, v1}, Lg/evh;->g(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string p1, "java.lang.invoke.MethodType"

    invoke-static {p1}, Lg/cwx;->bf(Ljava/lang/String;)Lg/cwx;

    move-result-object p1

    invoke-static {p0, p1}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v0

    const-string v2, "methodType"

    invoke-static {p0, v0, v2, v1, p1}, Lg/ayu;->k(Lg/dwg;Lg/ve;Ljava/lang/String;Ljava/util/List;Lg/cwx;)Lg/ayu;

    move-result-object p1

    new-instance v0, Lg/hdc;

    sget-object v2, Lg/eqp;->STATIC:Lg/eqp;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v0, p1, v2, v3}, Lg/hdc;-><init>(Lg/ayu;Lg/eqp;I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/cwx;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lg/cff;

    if-eqz v2, :cond_0

    new-instance v2, Lg/adz;

    sget-object v3, Lg/hay;->SGET:Lg/hay;

    invoke-virtual {v1}, Lg/cwx;->f()Lg/bjt;

    move-result-object v1

    invoke-virtual {v1}, Lg/bjt;->b()Lg/cwx;

    move-result-object v1

    invoke-static {p0, v1}, Lg/ve;->h(Lg/dwg;Lg/cwx;)Lg/ve;

    move-result-object v4

    new-instance v5, Lg/dsj;

    const-string v6, "TYPE"

    invoke-direct {v5, v4, v6, v1}, Lg/dsj;-><init>(Lg/ve;Ljava/lang/String;Lg/cwx;)V

    iget-object v1, p0, Lg/dwg;->h:Lg/fzn;

    invoke-virtual {v1, v5}, Lg/fzn;->s(Lg/dsj;)Lg/dsj;

    move-result-object v1

    const/4 v4, 0x0

    invoke-direct {v2, v3, v1, v4}, Lg/adz;-><init>(Lg/hay;Ljava/lang/Object;I)V

    goto :goto_1

    :cond_0
    new-instance v2, Lg/dkd;

    invoke-direct {v2, v1}, Lg/dkd;-><init>(Lg/cwx;)V

    :goto_1
    invoke-static {v2}, Lg/gsh;->aj(Lg/eek;)Lg/cly;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/eek;->_an(Lg/gsh;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method
