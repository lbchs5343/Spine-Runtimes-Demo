.class public Lg/efb;
.super Lg/dlv;


# instance fields
.field private a:I

.field private ah:F

.field protected d:I

.field private dk:Landroid/text/TextUtils$TruncateAt;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected dq:Ljava/lang/String;

.field private g:F

.field private hy:F

.field private ip:F

.field private nt:I

.field private ny:I

.field private ox:F

.field private p:I

.field private sc:I

.field private sy:Landroid/text/TextUtils$TruncateAt;

.field private tv:I

.field private zi:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lg/dlv;-><init>(Landroid/content/Context;I)V

    const/high16 p1, -0x1000000

    iput p1, p0, Lg/efb;->d:I

    const/high16 p1, 0x41400000    # 12.0f

    iput p1, p0, Lg/efb;->ox:F

    const p1, 0x7fffffff

    iput p1, p0, Lg/efb;->nt:I

    const/4 p1, 0x2

    iput p1, p0, Lg/efb;->ny:I

    const/high16 p1, -0x40800000    # -1.0f

    iput p1, p0, Lg/efb;->g:F

    const/high16 p1, 0x43c80000    # 400.0f

    iput p1, p0, Lg/efb;->zi:F

    return-void
.end method


# virtual methods
.method public dq()Lg/fmg;
    .locals 2

    new-instance v0, Lg/fmg;

    iget-object v1, p0, Lg/dlv;->s:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    new-instance v1, Lg/dv;

    invoke-direct {v1, v0}, Lg/dv;-><init>(Landroid/view/View;)V

    iput-object v1, v0, Lg/fmg;->a:Lg/dv;

    iput-object p0, v0, Lg/fmg;->b:Lg/efb;

    return-object v0
.end method

.method public dq(Landroid/text/TextUtils$TruncateAt;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    return-void
.end method

.method public dq(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-super {p0, p1, p2}, Lg/dlv;->dq(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x5

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, 0x2

    const/4 v8, 0x0

    sparse-switch v0, :sswitch_data_0

    :goto_0
    const/4 p1, -0x1

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "ellipsize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "maxLines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 p1, 0xf

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "ellipsis"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0xe

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "lines"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0xd

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "text"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    const/16 p1, 0xc

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "lineHeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    const/16 p1, 0xb

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "fontWeight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto :goto_0

    :cond_7
    const/16 p1, 0xa

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "shadowDy"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_8

    goto :goto_0

    :cond_8
    const/16 p1, 0x9

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "shadowDx"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    const/16 p1, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "textDecoration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto/16 :goto_0

    :cond_a
    const/4 p1, 0x7

    goto :goto_1

    :sswitch_a
    const-string v0, "textSize"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_0

    :cond_b
    const/4 p1, 0x6

    goto :goto_1

    :sswitch_b
    const-string v0, "shadowBlur"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto/16 :goto_0

    :cond_c
    const/4 p1, 0x5

    goto :goto_1

    :sswitch_c
    const-string v0, "textStyle"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_d

    goto/16 :goto_0

    :cond_d
    const/4 p1, 0x4

    goto :goto_1

    :sswitch_d
    const-string v0, "textColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_0

    :cond_e
    const/4 p1, 0x3

    goto :goto_1

    :sswitch_e
    const-string v0, "textAlign"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto/16 :goto_0

    :cond_f
    const/4 p1, 0x2

    goto :goto_1

    :sswitch_f
    const-string v0, "shadowColor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_0

    :cond_10
    const/4 p1, 0x1

    goto :goto_1

    :sswitch_10
    const-string v0, "shadowRadius"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_11

    goto/16 :goto_0

    :cond_11
    const/4 p1, 0x0

    :goto_1
    const-string v0, "center"

    const/high16 v9, -0x1000000

    const/4 v10, 0x0

    const/4 v11, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_2
    return-void

    :pswitch_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_1

    :goto_3
    const/4 v5, -0x1

    goto :goto_4

    :sswitch_11
    const-string p1, "start"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    goto :goto_3

    :cond_12
    const/4 v5, 0x2

    goto :goto_4

    :sswitch_12
    const-string p1, "end"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_14

    goto :goto_3

    :sswitch_13
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_3

    :cond_13
    const/4 v5, 0x0

    :cond_14
    :goto_4
    packed-switch v5, :pswitch_data_1

    iput-object v10, p0, Lg/efb;->dk:Landroid/text/TextUtils$TruncateAt;

    goto :goto_5

    :pswitch_1
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lg/efb;->dk:Landroid/text/TextUtils$TruncateAt;

    goto :goto_5

    :pswitch_2
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lg/efb;->dk:Landroid/text/TextUtils$TruncateAt;

    goto :goto_5

    :pswitch_3
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lg/efb;->dk:Landroid/text/TextUtils$TruncateAt;

    :goto_5
    iget-object p1, p0, Lg/efb;->dk:Landroid/text/TextUtils$TruncateAt;

    iput-object p1, p0, Lg/efb;->dk:Landroid/text/TextUtils$TruncateAt;

    return-void

    :pswitch_4
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lg/efb;->nt:I

    return-void

    :pswitch_5
    const-string p1, "none"

    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_15

    goto :goto_6

    :cond_15
    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    :goto_6
    iput-object v10, p0, Lg/efb;->sy:Landroid/text/TextUtils$TruncateAt;

    return-void

    :pswitch_6
    invoke-static {p2, v8}, Lg/byh;->o(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/efb;->tv:I

    return-void

    :pswitch_7
    iput-object p2, p0, Lg/efb;->dq:Ljava/lang/String;

    return-void

    :pswitch_8
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/efb;->g:F

    return-void

    :pswitch_9
    const/high16 p1, -0x40800000    # -1.0f

    invoke-static {p1, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/efb;->zi:F

    return-void

    :pswitch_a
    invoke-static {v11, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/efb;->ip:F

    return-void

    :pswitch_b
    invoke-static {v11, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/efb;->hy:F

    return-void

    :pswitch_c
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p1, "underline"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_16

    const-string p1, "strikethrough"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_17

    const v1, 0x7fffffff

    goto :goto_7

    :cond_16
    const/16 v1, 0x8

    :cond_17
    :goto_7
    iput v1, p0, Lg/efb;->a:I

    return-void

    :pswitch_d
    invoke-static {v11, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/efb;->ox:F

    return-void

    :pswitch_e
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    const v0, -0x4642c5d0

    if-eq p1, v0, :cond_1a

    const v0, -0x3df94319

    if-eq p1, v0, :cond_19

    const v0, 0x2e3a85

    if-eq p1, v0, :cond_18

    goto :goto_8

    :cond_18
    const-string p1, "bold"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v6, 0x0

    goto :goto_8

    :cond_19
    const-string p1, "normal"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v6, 0x2

    goto :goto_8

    :cond_1a
    const-string p1, "italic"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1b

    const/4 v6, 0x1

    :cond_1b
    :goto_8
    if-eqz v6, :cond_1d

    if-eq v6, v5, :cond_1c

    const/4 v5, 0x0

    goto :goto_9

    :cond_1c
    const/4 v5, 0x2

    :cond_1d
    :goto_9
    iput v5, p0, Lg/efb;->p:I

    return-void

    :pswitch_f
    invoke-static {p2, v9}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/efb;->d:I

    return-void

    :pswitch_10
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_2

    :goto_a
    const/4 v5, -0x1

    goto :goto_b

    :sswitch_14
    const-string p1, "right"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e

    goto :goto_a

    :cond_1e
    const/4 v5, 0x2

    goto :goto_b

    :sswitch_15
    const-string p1, "left"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_20

    goto :goto_a

    :sswitch_16
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_a

    :cond_1f
    const/4 v5, 0x0

    :cond_20
    :goto_b
    packed-switch v5, :pswitch_data_2

    const/4 v3, 0x2

    goto :goto_c

    :pswitch_11
    const/4 v3, 0x3

    goto :goto_c

    :pswitch_12
    const/16 v3, 0x11

    :goto_c
    :pswitch_13
    iput v3, p0, Lg/efb;->ny:I

    return-void

    :pswitch_14
    invoke-static {p2, v9}, Lg/bff;->ab(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lg/efb;->sc:I

    return-void

    :pswitch_15
    invoke-static {v11, p2}, Lg/byh;->au(FLjava/lang/String;)F

    move-result p1

    iput p1, p0, Lg/efb;->ah:F

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x609f862e -> :sswitch_10
        -0x5ec185dd -> :sswitch_f
        -0x3f826a28 -> :sswitch_e
        -0x3f64d1ca -> :sswitch_d
        -0x3e80e37c -> :sswitch_c
        -0x3cdd7259 -> :sswitch_b
        -0x3bd2c532 -> :sswitch_a
        -0x3468fa43 -> :sswitch_9
        -0x2d15462c -> :sswitch_8
        -0x2d15462b -> :sswitch_7
        -0x2bc67c59 -> :sswitch_6
        -0x1ebe99c5 -> :sswitch_5
        0x36452d -> :sswitch_4
        0x6234eff -> :sswitch_3
        0xb3f60d1 -> :sswitch_2
        0x174277fb -> :sswitch_1
        0x5cacba8d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_15
        :pswitch_14
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_15
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x514d33ab -> :sswitch_13
        0x188db -> :sswitch_12
        0x68ac462 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x514d33ab -> :sswitch_16
        0x32a007 -> :sswitch_15
        0x677c21c -> :sswitch_14
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_13
    .end packed-switch
.end method

.method public iw(I)V
    .locals 1

    iput p1, p0, Lg/efb;->a:I

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setPaintFlags(I)V

    return-void
.end method

.method public mn(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lg/efb;->dq:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "null"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, ""

    iput-object p1, p0, Lg/efb;->dq:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast p1, Lg/fmg;

    iget-object v0, p0, Lg/efb;->dq:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public synthetic ox()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lg/efb;->dq()Lg/fmg;

    move-result-object v0

    return-object v0
.end method

.method public p()V
    .locals 9

    invoke-super {p0}, Lg/dlv;->p()V

    const-string v0, "null"

    iget-object v1, p0, Lg/efb;->dq:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lg/efb;->dq:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lg/efb;->dq:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lg/efb;->mn(Ljava/lang/String;)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    iget v1, p0, Lg/efb;->ox:F

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    iget v1, p0, Lg/efb;->d:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    iget v1, p0, Lg/efb;->tv:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLines(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    iget v1, p0, Lg/efb;->nt:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    iget v1, p0, Lg/efb;->ny:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget v0, p0, Lg/efb;->a:I

    invoke-virtual {p0, v0}, Lg/efb;->iw(I)V

    invoke-virtual {p0}, Lg/dlv;->ji()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/efb;->sy:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lg/efb;->dq(Landroid/text/TextUtils$TruncateAt;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lg/efb;->dk:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v0}, Lg/efb;->dq(Landroid/text/TextUtils$TruncateAt;)V

    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-lt v0, v3, :cond_2

    iget v4, p0, Lg/efb;->g:F

    const/4 v5, 0x0

    cmpl-float v6, v4, v5

    if-ltz v6, :cond_2

    iget-object v6, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v6, Lg/fmg;

    invoke-virtual {v6, v5, v4}, Landroid/widget/TextView;->setLineSpacing(FF)V

    :cond_2
    iget-object v4, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v4, Lg/fmg;

    iget v5, p0, Lg/efb;->ah:F

    iget v6, p0, Lg/efb;->hy:F

    iget v7, p0, Lg/efb;->ip:F

    iget v8, p0, Lg/efb;->sc:I

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    iget v4, p0, Lg/efb;->p:I

    if-ne v4, v2, :cond_3

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    return-void

    :cond_3
    if-lt v0, v3, :cond_5

    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v0, p0, Lg/efb;->zi:F

    float-to-int v0, v0

    const/4 v3, 0x2

    if-ne v4, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    invoke-static {v0, v2}, Lg/agk;->b(IZ)Landroid/graphics/Typeface;

    move-result-object v0

    iget-object v1, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v1, Lg/fmg;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    return-void

    :cond_5
    iget v0, p0, Lg/efb;->zi:F

    const/high16 v1, 0x43fa0000    # 500.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_6

    iget-object v0, p0, Lg/dlv;->ia:Landroid/view/View;

    check-cast v0, Lg/fmg;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_6
    return-void
.end method
