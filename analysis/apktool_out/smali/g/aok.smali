.class public final Lg/aok;
.super Lg/dlv;


# static fields
.field public static final a:I

.field public static final g:I


# instance fields
.field public aa:F

.field public ab:I

.field public ac:I

.field public w:F

.field public y:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "#FFC642"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lg/aok;->g:I

    const-string v0, "#e3e3e4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    sput v0, Lg/aok;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lg/dlv;-><init>(Landroid/content/Context;I)V

    sget p1, Lg/aok;->g:I

    iput p1, p0, Lg/aok;->ab:I

    sget p1, Lg/aok;->a:I

    iput p1, p0, Lg/aok;->ac:I

    const/high16 p1, 0x40800000    # 4.0f

    iput p1, p0, Lg/aok;->w:F

    const/high16 p1, 0x41a00000    # 20.0f

    iput p1, p0, Lg/aok;->y:F

    return-void
.end method


# virtual methods
.method public final dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "lowlightColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "highlightColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v0, "score"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "gap"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "lowLightColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_6
    const-string v0, "highLightColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/high16 p1, 0x40800000    # 4.0f

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/aok;->w:F

    return-void

    :pswitch_1
    const/high16 p1, 0x41a00000    # 20.0f

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/aok;->y:F

    return-void

    :pswitch_2
    const/4 p1, 0x0

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/aok;->aa:F

    return-void

    :pswitch_3
    sget p1, Lg/aok;->a:I

    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/aok;->ac:I

    return-void

    :pswitch_4
    const/high16 p1, -0x1000000

    invoke-static {p2, p1}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/aok;->ab:I

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6befa0d1 -> :sswitch_6
        -0x6b8cd19f -> :sswitch_5
        0x18ed6 -> :sswitch_4
        0x35e001 -> :sswitch_3
        0x6833e92 -> :sswitch_2
        0x1d3e830f -> :sswitch_1
        0x1da15241 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method public final ox()Landroid/view/View;
    .locals 5

    new-instance v0, Lg/fls;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lg/fls;->b:Landroid/content/Context;

    new-instance v2, Landroid/widget/LinearLayout;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lg/fls;->e:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, v0, Lg/fls;->h:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v4, 0x800003

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object p0, v0, Lg/fls;->a:Lg/aok;

    return-object v0
.end method

.method public final p()V
    .locals 8

    invoke-super {p0}, Lg/dlv;->p()V

    invoke-virtual {p0}, Lg/dlv;->ji()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lg/fls;

    iget v0, p0, Lg/aok;->w:F

    float-to-double v2, v0

    iget v4, p0, Lg/aok;->ab:I

    iget v5, p0, Lg/aok;->ac:I

    iget v6, p0, Lg/aok;->y:F

    iget v0, p0, Lg/aok;->aa:F

    float-to-int v7, v0

    invoke-virtual/range {v1 .. v7}, Lg/fls;->i(DIIFI)V

    return-void

    :cond_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    move-object v1, v0

    check-cast v1, Lg/fls;

    iget v0, p0, Lg/aok;->w:F

    float-to-double v2, v0

    iget v4, p0, Lg/aok;->ab:I

    iget v5, p0, Lg/aok;->ac:I

    iget v6, p0, Lg/aok;->y:F

    const/4 v7, 0x5

    invoke-virtual/range {v1 .. v7}, Lg/fls;->i(DIIFI)V

    return-void
.end method
