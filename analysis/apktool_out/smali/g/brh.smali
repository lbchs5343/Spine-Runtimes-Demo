.class public Lg/brh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public am:F

.field public an:Ljava/lang/String;

.field public ao:I

.field public ap:Z

.field public aq:I

.field public ar:I

.field public final as:Lg/hac;

.field public final at:[Lg/brh;

.field public au:I

.field public av:I

.field public aw:I

.field public final ax:[Lg/hac;

.field public final ay:Lg/hac;

.field public az:I

.field public ba:I

.field public bb:I

.field public bc:I

.field public bd:Z

.field public be:Lg/dza;

.field public bf:F

.field public bg:Z

.field public bh:Landroid/view/View;

.field public bi:Lg/fju;

.field public bj:Lg/brh;

.field public bk:Z

.field public bl:I

.field public bm:F

.field public bn:I

.field public final bo:[I

.field public final bp:Lg/hac;

.field public bq:F

.field public final br:Lg/hac;

.field public bs:I

.field public bt:I

.field public bu:F

.field public final bv:[Z

.field public bw:I

.field public final bx:Lg/hac;

.field public by:I

.field public bz:I

.field public ca:Z

.field public cb:I

.field public final cc:Ljava/util/ArrayList;

.field public final cd:Lg/hac;

.field public ce:I

.field public final cf:[Lg/brh;

.field public cg:Lg/gnk;

.field public final ch:[Lg/fol;

.field public ci:I

.field public cj:Ljava/lang/String;

.field public ck:I

.field public cl:I

.field public final cm:[I

.field public cn:Z

.field public final co:Lg/hac;

.field public cp:F

.field public final cq:[Z

.field public cr:Lg/gnk;

.field public cs:I

.field public ct:F

.field public final cu:[F

.field public cv:I

.field public final cw:Lg/hac;

.field public cx:Z

.field public cy:I

.field public cz:Z

.field public da:I

.field public db:I


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Lg/brh;->bk:Z

    const/4 v2, 0x0

    iput-object v2, v0, Lg/brh;->be:Lg/dza;

    iput-object v2, v0, Lg/brh;->bi:Lg/fju;

    const/4 v3, 0x2

    new-array v4, v3, [Z

    fill-array-data v4, :array_0

    iput-object v4, v0, Lg/brh;->bv:[Z

    const/4 v4, 0x1

    iput-boolean v4, v0, Lg/brh;->cz:Z

    const/4 v5, -0x1

    iput v5, v0, Lg/brh;->ao:I

    iput v5, v0, Lg/brh;->ce:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-boolean v1, v0, Lg/brh;->ap:Z

    iput-boolean v1, v0, Lg/brh;->bg:Z

    iput-boolean v1, v0, Lg/brh;->ca:Z

    iput-boolean v1, v0, Lg/brh;->bd:Z

    iput v5, v0, Lg/brh;->av:I

    iput v5, v0, Lg/brh;->bz:I

    iput v1, v0, Lg/brh;->ck:I

    iput v1, v0, Lg/brh;->da:I

    iput v1, v0, Lg/brh;->by:I

    new-array v6, v3, [I

    iput-object v6, v0, Lg/brh;->cm:[I

    iput v1, v0, Lg/brh;->bl:I

    iput v1, v0, Lg/brh;->bs:I

    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v0, Lg/brh;->bu:F

    iput v1, v0, Lg/brh;->cy:I

    iput v1, v0, Lg/brh;->aw:I

    iput v6, v0, Lg/brh;->am:F

    iput v5, v0, Lg/brh;->cl:I

    iput v6, v0, Lg/brh;->bf:F

    const v6, 0x7fffffff

    filled-new-array {v6, v6}, [I

    move-result-object v6

    iput-object v6, v0, Lg/brh;->bo:[I

    const/high16 v6, 0x7fc00000    # Float.NaN

    iput v6, v0, Lg/brh;->bm:F

    iput-boolean v1, v0, Lg/brh;->cx:Z

    iput-boolean v1, v0, Lg/brh;->cn:Z

    iput v1, v0, Lg/brh;->ba:I

    iput v1, v0, Lg/brh;->ar:I

    new-instance v6, Lg/hac;

    sget-object v7, Lg/dih;->LEFT:Lg/dih;

    invoke-direct {v6, v0, v7}, Lg/hac;-><init>(Lg/brh;Lg/dih;)V

    iput-object v6, v0, Lg/brh;->cw:Lg/hac;

    new-instance v7, Lg/hac;

    sget-object v8, Lg/dih;->TOP:Lg/dih;

    invoke-direct {v7, v0, v8}, Lg/hac;-><init>(Lg/brh;Lg/dih;)V

    iput-object v7, v0, Lg/brh;->bx:Lg/hac;

    new-instance v8, Lg/hac;

    sget-object v9, Lg/dih;->RIGHT:Lg/dih;

    invoke-direct {v8, v0, v9}, Lg/hac;-><init>(Lg/brh;Lg/dih;)V

    iput-object v8, v0, Lg/brh;->br:Lg/hac;

    new-instance v9, Lg/hac;

    sget-object v10, Lg/dih;->BOTTOM:Lg/dih;

    invoke-direct {v9, v0, v10}, Lg/hac;-><init>(Lg/brh;Lg/dih;)V

    iput-object v9, v0, Lg/brh;->as:Lg/hac;

    new-instance v10, Lg/hac;

    sget-object v11, Lg/dih;->BASELINE:Lg/dih;

    invoke-direct {v10, v0, v11}, Lg/hac;-><init>(Lg/brh;Lg/dih;)V

    iput-object v10, v0, Lg/brh;->bp:Lg/hac;

    new-instance v11, Lg/hac;

    sget-object v12, Lg/dih;->CENTER_X:Lg/dih;

    invoke-direct {v11, v0, v12}, Lg/hac;-><init>(Lg/brh;Lg/dih;)V

    iput-object v11, v0, Lg/brh;->ay:Lg/hac;

    new-instance v12, Lg/hac;

    sget-object v13, Lg/dih;->CENTER_Y:Lg/dih;

    invoke-direct {v12, v0, v13}, Lg/hac;-><init>(Lg/brh;Lg/dih;)V

    iput-object v12, v0, Lg/brh;->co:Lg/hac;

    new-instance v13, Lg/hac;

    sget-object v14, Lg/dih;->CENTER:Lg/dih;

    invoke-direct {v13, v0, v14}, Lg/hac;-><init>(Lg/brh;Lg/dih;)V

    iput-object v13, v0, Lg/brh;->cd:Lg/hac;

    const/4 v14, 0x6

    new-array v14, v14, [Lg/hac;

    aput-object v6, v14, v1

    aput-object v8, v14, v4

    aput-object v7, v14, v3

    const/4 v15, 0x3

    aput-object v9, v14, v15

    const/4 v15, 0x4

    aput-object v10, v14, v15

    const/4 v15, 0x5

    aput-object v13, v14, v15

    iput-object v14, v0, Lg/brh;->ax:[Lg/hac;

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    iput-object v14, v0, Lg/brh;->cc:Ljava/util/ArrayList;

    new-array v15, v3, [Z

    iput-object v15, v0, Lg/brh;->cq:[Z

    new-array v15, v3, [Lg/fol;

    sget-object v16, Lg/fol;->FIXED:Lg/fol;

    aput-object v16, v15, v1

    aput-object v16, v15, v4

    iput-object v15, v0, Lg/brh;->ch:[Lg/fol;

    iput-object v2, v0, Lg/brh;->bj:Lg/brh;

    iput v1, v0, Lg/brh;->bc:I

    iput v1, v0, Lg/brh;->bt:I

    const/4 v15, 0x0

    iput v15, v0, Lg/brh;->bq:F

    iput v5, v0, Lg/brh;->db:I

    iput v1, v0, Lg/brh;->cv:I

    iput v1, v0, Lg/brh;->cb:I

    iput v1, v0, Lg/brh;->bn:I

    const/high16 v15, 0x3f000000    # 0.5f

    iput v15, v0, Lg/brh;->cp:F

    iput v15, v0, Lg/brh;->ct:F

    iput v1, v0, Lg/brh;->aq:I

    iput-object v2, v0, Lg/brh;->an:Ljava/lang/String;

    iput v1, v0, Lg/brh;->cs:I

    iput v1, v0, Lg/brh;->bw:I

    new-array v15, v3, [F

    fill-array-data v15, :array_1

    iput-object v15, v0, Lg/brh;->cu:[F

    new-array v15, v3, [Lg/brh;

    aput-object v2, v15, v1

    aput-object v2, v15, v4

    iput-object v15, v0, Lg/brh;->at:[Lg/brh;

    new-array v3, v3, [Lg/brh;

    aput-object v2, v3, v1

    aput-object v2, v3, v4

    iput-object v3, v0, Lg/brh;->cf:[Lg/brh;

    iput v5, v0, Lg/brh;->az:I

    iput v5, v0, Lg/brh;->ci:I

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v14, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
    .end array-data

    nop

    :array_1
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method public static dc(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V
    .locals 0

    cmpl-float p3, p2, p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, ",\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static dd(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFLg/fol;)V
    .locals 2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :  {\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p8, Lg/fol;->FIXED:Lg/fol;

    invoke-virtual {p8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p8

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    const-string p8, " :   "

    const-string v0, ",\n"

    const-string v1, "      behavior"

    invoke-static {p0, v1, p8, p1, v0}, Lg/awf;->y(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string p1, "      size"

    const/4 p8, 0x0

    invoke-static {p2, p8, p1, p0}, Lg/brh;->de(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      min"

    invoke-static {p3, p8, p1, p0}, Lg/brh;->de(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      max"

    const p2, 0x7fffffff

    invoke-static {p4, p2, p1, p0}, Lg/brh;->de(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchMin"

    invoke-static {p5, p8, p1, p0}, Lg/brh;->de(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchDef"

    invoke-static {p6, p8, p1, p0}, Lg/brh;->de(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string p1, "      matchPercent"

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p7, p2}, Lg/brh;->dc(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string p1, "    },\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static de(IILjava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 0

    if-ne p0, p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " :   "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ",\n"

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static df(Ljava/lang/StringBuilder;Ljava/lang/String;Lg/hac;)V
    .locals 2

    iget-object v0, p2, Lg/hac;->e:Lg/hac;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "    "

    const-string v1, " : [ \'"

    invoke-static {v0, p1, v1, p0}, Lg/awf;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    iget-object p1, p2, Lg/hac;->e:Lg/hac;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p2, Lg/hac;->a:I

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_1

    iget p1, p2, Lg/hac;->i:I

    if-eqz p1, :cond_2

    :cond_1
    const-string p1, ","

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lg/hac;->i:I

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p2, Lg/hac;->a:I

    if-eq v1, v0, :cond_2

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lg/hac;->a:I

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p1, " ] ,\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public ad(Ljava/lang/StringBuilder;)V
    .locals 13

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/brh;->cj:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ":{\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "    actualWidth:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lg/brh;->bc:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    actualHeight:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lg/brh;->bt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    actualLeft:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lg/brh;->cv:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "    actualTop:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lg/brh;->cb:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "left"

    iget-object v2, p0, Lg/brh;->cw:Lg/hac;

    invoke-static {p1, v1, v2}, Lg/brh;->df(Ljava/lang/StringBuilder;Ljava/lang/String;Lg/hac;)V

    const-string v1, "top"

    iget-object v2, p0, Lg/brh;->bx:Lg/hac;

    invoke-static {p1, v1, v2}, Lg/brh;->df(Ljava/lang/StringBuilder;Ljava/lang/String;Lg/hac;)V

    const-string v1, "right"

    iget-object v2, p0, Lg/brh;->br:Lg/hac;

    invoke-static {p1, v1, v2}, Lg/brh;->df(Ljava/lang/StringBuilder;Ljava/lang/String;Lg/hac;)V

    const-string v1, "bottom"

    iget-object v2, p0, Lg/brh;->as:Lg/hac;

    invoke-static {p1, v1, v2}, Lg/brh;->df(Ljava/lang/StringBuilder;Ljava/lang/String;Lg/hac;)V

    const-string v1, "baseline"

    iget-object v2, p0, Lg/brh;->bp:Lg/hac;

    invoke-static {p1, v1, v2}, Lg/brh;->df(Ljava/lang/StringBuilder;Ljava/lang/String;Lg/hac;)V

    const-string v1, "centerX"

    iget-object v2, p0, Lg/brh;->ay:Lg/hac;

    invoke-static {p1, v1, v2}, Lg/brh;->df(Ljava/lang/StringBuilder;Ljava/lang/String;Lg/hac;)V

    const-string v1, "centerY"

    iget-object v2, p0, Lg/brh;->co:Lg/hac;

    invoke-static {p1, v1, v2}, Lg/brh;->df(Ljava/lang/StringBuilder;Ljava/lang/String;Lg/hac;)V

    iget v2, p0, Lg/brh;->bc:I

    iget v3, p0, Lg/brh;->bb:I

    iget-object v9, p0, Lg/brh;->bo:[I

    const/4 v10, 0x0

    aget v4, v9, v10

    iget v5, p0, Lg/brh;->bl:I

    iget v6, p0, Lg/brh;->da:I

    iget v7, p0, Lg/brh;->bu:F

    iget-object v11, p0, Lg/brh;->ch:[Lg/fol;

    aget-object v8, v11, v10

    iget-object v12, p0, Lg/brh;->cu:[F

    aget v1, v12, v10

    const-string v1, "    width"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lg/brh;->dd(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFLg/fol;)V

    iget v2, p0, Lg/brh;->bt:I

    iget v3, p0, Lg/brh;->au:I

    const/4 v0, 0x1

    aget v4, v9, v0

    iget v5, p0, Lg/brh;->cy:I

    iget v6, p0, Lg/brh;->by:I

    iget v7, p0, Lg/brh;->am:F

    aget-object v8, v11, v0

    aget v0, v12, v0

    const-string v1, "    height"

    move-object v0, p1

    invoke-static/range {v0 .. v8}, Lg/brh;->dd(Ljava/lang/StringBuilder;Ljava/lang/String;IIIIIFLg/fol;)V

    iget v1, p0, Lg/brh;->bq:F

    iget v2, p0, Lg/brh;->db:I

    const/4 v3, 0x0

    cmpl-float v3, v1, v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "    dimensionRatio"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " :  ["

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],\n"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "    horizontalBias"

    iget v2, p0, Lg/brh;->cp:F

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {p1, v1, v2, v3}, Lg/brh;->dc(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string v1, "    verticalBias"

    iget v2, p0, Lg/brh;->ct:F

    invoke-static {p1, v1, v2, v3}, Lg/brh;->dc(Ljava/lang/StringBuilder;Ljava/lang/String;FF)V

    const-string v1, "    horizontalChainStyle"

    iget v2, p0, Lg/brh;->cs:I

    invoke-static {v2, v10, v1, p1}, Lg/brh;->de(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, "    verticalChainStyle"

    iget v2, p0, Lg/brh;->bw:I

    invoke-static {v2, v10, v1, p1}, Lg/brh;->de(IILjava/lang/String;Ljava/lang/StringBuilder;)V

    const-string v1, "  }"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public af()V
    .locals 6

    iget-object v0, p0, Lg/brh;->cw:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->s()V

    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->s()V

    iget-object v0, p0, Lg/brh;->br:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->s()V

    iget-object v0, p0, Lg/brh;->as:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->s()V

    iget-object v0, p0, Lg/brh;->bp:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->s()V

    iget-object v0, p0, Lg/brh;->ay:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->s()V

    iget-object v0, p0, Lg/brh;->co:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->s()V

    iget-object v0, p0, Lg/brh;->cd:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->s()V

    const/4 v0, 0x0

    iput-object v0, p0, Lg/brh;->bj:Lg/brh;

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Lg/brh;->bm:F

    const/4 v1, 0x0

    iput v1, p0, Lg/brh;->bc:I

    iput v1, p0, Lg/brh;->bt:I

    const/4 v2, 0x0

    iput v2, p0, Lg/brh;->bq:F

    const/4 v2, -0x1

    iput v2, p0, Lg/brh;->db:I

    iput v1, p0, Lg/brh;->cv:I

    iput v1, p0, Lg/brh;->cb:I

    iput v1, p0, Lg/brh;->bn:I

    iput v1, p0, Lg/brh;->bb:I

    iput v1, p0, Lg/brh;->au:I

    const/high16 v3, 0x3f000000    # 0.5f

    iput v3, p0, Lg/brh;->cp:F

    iput v3, p0, Lg/brh;->ct:F

    sget-object v3, Lg/fol;->FIXED:Lg/fol;

    iget-object v4, p0, Lg/brh;->ch:[Lg/fol;

    aput-object v3, v4, v1

    const/4 v5, 0x1

    aput-object v3, v4, v5

    iput-object v0, p0, Lg/brh;->bh:Landroid/view/View;

    iput v1, p0, Lg/brh;->aq:I

    iput v1, p0, Lg/brh;->cs:I

    iput v1, p0, Lg/brh;->bw:I

    iget-object v0, p0, Lg/brh;->cu:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v0, v1

    aput v3, v0, v5

    iput v2, p0, Lg/brh;->av:I

    iput v2, p0, Lg/brh;->bz:I

    iget-object v0, p0, Lg/brh;->bo:[I

    const v3, 0x7fffffff

    aput v3, v0, v1

    aput v3, v0, v5

    iput v1, p0, Lg/brh;->da:I

    iput v1, p0, Lg/brh;->by:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lg/brh;->bu:F

    iput v0, p0, Lg/brh;->am:F

    iput v3, p0, Lg/brh;->bs:I

    iput v3, p0, Lg/brh;->aw:I

    iput v1, p0, Lg/brh;->bl:I

    iput v1, p0, Lg/brh;->cy:I

    iput v2, p0, Lg/brh;->cl:I

    iput v0, p0, Lg/brh;->bf:F

    iget-object v0, p0, Lg/brh;->bv:[Z

    aput-boolean v5, v0, v1

    aput-boolean v5, v0, v5

    iput-boolean v1, p0, Lg/brh;->cn:Z

    iget-object v0, p0, Lg/brh;->cq:[Z

    aput-boolean v1, v0, v1

    aput-boolean v1, v0, v5

    iput-boolean v5, p0, Lg/brh;->cz:Z

    iget-object v0, p0, Lg/brh;->cm:[I

    aput v1, v0, v1

    aput v1, v0, v5

    iput v2, p0, Lg/brh;->ao:I

    iput v2, p0, Lg/brh;->ce:I

    return-void
.end method

.method public ai(ZZ)V
    .locals 7

    iget-object v0, p0, Lg/brh;->be:Lg/dza;

    iget-boolean v1, v0, Lg/mi;->j:Z

    and-int/2addr p1, v1

    iget-object v1, p0, Lg/brh;->bi:Lg/fju;

    iget-boolean v2, v1, Lg/mi;->j:Z

    and-int/2addr p2, v2

    iget-object v2, v0, Lg/mi;->a:Lg/big;

    iget v2, v2, Lg/big;->l:I

    iget-object v3, v1, Lg/mi;->a:Lg/big;

    iget v3, v3, Lg/big;->l:I

    iget-object v0, v0, Lg/mi;->f:Lg/big;

    iget v0, v0, Lg/big;->l:I

    iget-object v1, v1, Lg/mi;->f:Lg/big;

    iget v1, v1, Lg/big;->l:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    const/4 v6, 0x0

    if-ltz v4, :cond_0

    if-ltz v5, :cond_0

    const/high16 v4, -0x80000000

    if-eq v2, v4, :cond_0

    const v5, 0x7fffffff

    if-eq v2, v5, :cond_0

    if-eq v3, v4, :cond_0

    if-eq v3, v5, :cond_0

    if-eq v0, v4, :cond_0

    if-eq v0, v5, :cond_0

    if-eq v1, v4, :cond_0

    if-ne v1, v5, :cond_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    sub-int/2addr v0, v2

    sub-int/2addr v1, v3

    if-eqz p1, :cond_2

    iput v2, p0, Lg/brh;->cv:I

    :cond_2
    if-eqz p2, :cond_3

    iput v3, p0, Lg/brh;->cb:I

    :cond_3
    iget v2, p0, Lg/brh;->aq:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    iput v6, p0, Lg/brh;->bc:I

    iput v6, p0, Lg/brh;->bt:I

    return-void

    :cond_4
    iget-object v2, p0, Lg/brh;->ch:[Lg/fol;

    if-eqz p1, :cond_6

    aget-object p1, v2, v6

    sget-object v3, Lg/fol;->FIXED:Lg/fol;

    if-ne p1, v3, :cond_5

    iget p1, p0, Lg/brh;->bc:I

    if-ge v0, p1, :cond_5

    move v0, p1

    :cond_5
    iput v0, p0, Lg/brh;->bc:I

    iget p1, p0, Lg/brh;->bb:I

    if-ge v0, p1, :cond_6

    iput p1, p0, Lg/brh;->bc:I

    :cond_6
    if-eqz p2, :cond_8

    const/4 p1, 0x1

    aget-object p1, v2, p1

    sget-object p2, Lg/fol;->FIXED:Lg/fol;

    if-ne p1, p2, :cond_7

    iget p1, p0, Lg/brh;->bt:I

    if-ge v1, p1, :cond_7

    move v1, p1

    :cond_7
    iput v1, p0, Lg/brh;->bt:I

    iget p1, p0, Lg/brh;->au:I

    if-ge v1, p1, :cond_8

    iput p1, p0, Lg/brh;->bt:I

    :cond_8
    return-void
.end method

.method public ak(Lg/fpd;)V
    .locals 0

    iget-object p1, p0, Lg/brh;->cw:Lg/hac;

    invoke-virtual {p1}, Lg/hac;->k()V

    iget-object p1, p0, Lg/brh;->bx:Lg/hac;

    invoke-virtual {p1}, Lg/hac;->k()V

    iget-object p1, p0, Lg/brh;->br:Lg/hac;

    invoke-virtual {p1}, Lg/hac;->k()V

    iget-object p1, p0, Lg/brh;->as:Lg/hac;

    invoke-virtual {p1}, Lg/hac;->k()V

    iget-object p1, p0, Lg/brh;->bp:Lg/hac;

    invoke-virtual {p1}, Lg/hac;->k()V

    iget-object p1, p0, Lg/brh;->cd:Lg/hac;

    invoke-virtual {p1}, Lg/hac;->k()V

    iget-object p1, p0, Lg/brh;->ay:Lg/hac;

    invoke-virtual {p1}, Lg/hac;->k()V

    iget-object p1, p0, Lg/brh;->co:Lg/hac;

    invoke-virtual {p1}, Lg/hac;->k()V

    return-void
.end method

.method public final dg()Z
    .locals 2

    iget-boolean v0, p0, Lg/brh;->cz:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lg/brh;->aq:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final dh()V
    .locals 4

    iget-object v0, p0, Lg/brh;->be:Lg/dza;

    if-nez v0, :cond_0

    new-instance v0, Lg/dza;

    invoke-direct {v0, p0}, Lg/mi;-><init>(Lg/brh;)V

    iget-object v1, v0, Lg/mi;->a:Lg/big;

    sget-object v2, Lg/gfv;->LEFT:Lg/gfv;

    iput-object v2, v1, Lg/big;->e:Lg/gfv;

    iget-object v1, v0, Lg/mi;->f:Lg/big;

    sget-object v2, Lg/gfv;->RIGHT:Lg/gfv;

    iput-object v2, v1, Lg/big;->e:Lg/gfv;

    const/4 v1, 0x0

    iput v1, v0, Lg/mi;->e:I

    iput-object v0, p0, Lg/brh;->be:Lg/dza;

    :cond_0
    iget-object v0, p0, Lg/brh;->bi:Lg/fju;

    if-nez v0, :cond_1

    new-instance v0, Lg/fju;

    invoke-direct {v0, p0}, Lg/mi;-><init>(Lg/brh;)V

    new-instance v1, Lg/big;

    invoke-direct {v1, v0}, Lg/big;-><init>(Lg/mi;)V

    iput-object v1, v0, Lg/fju;->w:Lg/big;

    const/4 v2, 0x0

    iput-object v2, v0, Lg/fju;->x:Lg/fgk;

    iget-object v2, v0, Lg/mi;->a:Lg/big;

    sget-object v3, Lg/gfv;->TOP:Lg/gfv;

    iput-object v3, v2, Lg/big;->e:Lg/gfv;

    iget-object v2, v0, Lg/mi;->f:Lg/big;

    sget-object v3, Lg/gfv;->BOTTOM:Lg/gfv;

    iput-object v3, v2, Lg/big;->e:Lg/gfv;

    sget-object v2, Lg/gfv;->BASELINE:Lg/gfv;

    iput-object v2, v1, Lg/big;->e:Lg/gfv;

    const/4 v1, 0x1

    iput v1, v0, Lg/mi;->e:I

    iput-object v0, p0, Lg/brh;->bi:Lg/fju;

    :cond_1
    return-void
.end method

.method public final di()I
    .locals 2

    iget v0, p0, Lg/brh;->aq:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lg/brh;->bt:I

    return v0
.end method

.method public final dj(I)V
    .locals 1

    iput p1, p0, Lg/brh;->bt:I

    iget v0, p0, Lg/brh;->au:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lg/brh;->bt:I

    :cond_0
    return-void
.end method

.method public final dk()Z
    .locals 2

    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lg/hac;->e:Lg/hac;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lg/brh;->as:Lg/hac;

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lg/hac;->e:Lg/hac;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final dl(Lg/fol;)V
    .locals 2

    iget-object v0, p0, Lg/brh;->ch:[Lg/fol;

    const/4 v1, 0x1

    aput-object p1, v0, v1

    return-void
.end method

.method public final dm(Lg/bwo;ZZZZLg/crb;Lg/crb;Lg/fol;ZLg/hac;Lg/hac;IIIIFZZZZZIIIIFZ)V
    .locals 29

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move/from16 v14, p14

    move/from16 v2, p15

    move/from16 v4, p24

    move/from16 v5, p25

    move/from16 v6, p26

    invoke-virtual {v1, v12}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v7

    invoke-virtual {v1, v13}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v8

    iget-object v9, v12, Lg/hac;->e:Lg/hac;

    invoke-virtual {v1, v9}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v9

    iget-object v15, v13, Lg/hac;->e:Lg/hac;

    invoke-virtual {v1, v15}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v15

    invoke-virtual {v12}, Lg/hac;->j()Z

    move-result v16

    invoke-virtual {v13}, Lg/hac;->j()Z

    move-result v17

    iget-object v11, v0, Lg/brh;->cd:Lg/hac;

    invoke-virtual {v11}, Lg/hac;->j()Z

    move-result v11

    if-eqz v17, :cond_0

    add-int/lit8 v18, v16, 0x1

    goto :goto_0

    :cond_0
    move/from16 v18, v16

    :goto_0
    if-eqz v11, :cond_1

    add-int/lit8 v18, v18, 0x1

    :cond_1
    move/from16 v19, v11

    move/from16 v11, v18

    if-eqz p17, :cond_2

    const/4 v3, 0x3

    goto :goto_1

    :cond_2
    move/from16 v3, p22

    :goto_1
    invoke-virtual/range {p8 .. p8}, Ljava/lang/Enum;->ordinal()I

    move-result v13

    const/4 v10, 0x1

    move-object/from16 v20, v15

    if-eqz v13, :cond_3

    if-eq v13, v10, :cond_3

    const/4 v10, 0x2

    if-eq v13, v10, :cond_4

    :cond_3
    const/4 v13, 0x0

    goto :goto_2

    :cond_4
    const/4 v10, 0x4

    if-eq v3, v10, :cond_3

    const/4 v13, 0x1

    :goto_2
    iget v10, v0, Lg/brh;->ao:I

    const/4 v15, -0x1

    if-eq v10, v15, :cond_5

    if-eqz p2, :cond_5

    iput v15, v0, Lg/brh;->ao:I

    move/from16 p13, v10

    const/4 v13, 0x0

    :cond_5
    iget v10, v0, Lg/brh;->ce:I

    if-eq v10, v15, :cond_6

    if-nez p2, :cond_6

    iput v15, v0, Lg/brh;->ce:I

    const/4 v13, 0x0

    goto :goto_3

    :cond_6
    move/from16 v10, p13

    :goto_3
    iget v15, v0, Lg/brh;->aq:I

    move/from16 p13, v10

    const/16 v10, 0x8

    if-ne v15, v10, :cond_7

    const/4 v13, 0x0

    const/4 v15, 0x0

    goto :goto_4

    :cond_7
    move/from16 v15, p13

    :goto_4
    if-eqz p27, :cond_8

    if-nez v16, :cond_9

    if-nez v17, :cond_9

    if-nez v19, :cond_9

    move/from16 v10, p12

    invoke-virtual {v1, v7, v10}, Lg/bwo;->v(Lg/crb;I)V

    :cond_8
    move/from16 v24, v13

    const/16 v13, 0x8

    goto :goto_5

    :cond_9
    if-eqz v16, :cond_8

    if-nez v17, :cond_8

    invoke-virtual {v12}, Lg/hac;->n()I

    move-result v10

    move/from16 v24, v13

    const/16 v13, 0x8

    invoke-virtual {v1, v7, v9, v10, v13}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    :goto_5
    if-nez v24, :cond_d

    if-eqz p9, :cond_b

    const/4 v6, 0x3

    const/4 v10, 0x0

    invoke-virtual {v1, v8, v7, v10, v6}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    if-lez v14, :cond_a

    invoke-virtual {v1, v8, v7, v14, v13}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_a
    const v6, 0x7fffffff

    if-ge v2, v6, :cond_c

    invoke-virtual {v1, v8, v7, v2, v13}, Lg/bwo;->aj(Lg/crb;Lg/crb;II)V

    goto :goto_6

    :cond_b
    invoke-virtual {v1, v8, v7, v15, v13}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    :cond_c
    :goto_6
    move/from16 v10, p5

    move v13, v4

    goto/16 :goto_a

    :cond_d
    const/4 v10, 0x2

    if-eq v11, v10, :cond_10

    if-nez p17, :cond_10

    const/4 v2, 0x1

    if-eq v3, v2, :cond_e

    if-nez v3, :cond_10

    :cond_e
    invoke-static {v4, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-lez v5, :cond_f

    invoke-static {v5, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    :cond_f
    const/16 v13, 0x8

    invoke-virtual {v1, v8, v7, v2, v13}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    move/from16 v10, p5

    move v13, v4

    const/16 v24, 0x0

    goto/16 :goto_a

    :cond_10
    const/4 v2, -0x2

    if-ne v4, v2, :cond_11

    move v4, v15

    :cond_11
    if-ne v5, v2, :cond_12

    move v5, v15

    :cond_12
    if-lez v15, :cond_13

    const/4 v2, 0x1

    if-eq v3, v2, :cond_13

    const/4 v15, 0x0

    :cond_13
    const/16 v13, 0x8

    if-lez v4, :cond_14

    invoke-virtual {v1, v8, v7, v4, v13}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    invoke-static {v15, v4}, Ljava/lang/Math;->max(II)I

    move-result v15

    :cond_14
    const/4 v2, 0x1

    if-lez v5, :cond_16

    if-eqz p3, :cond_15

    if-ne v3, v2, :cond_15

    goto :goto_7

    :cond_15
    invoke-virtual {v1, v8, v7, v5, v13}, Lg/bwo;->aj(Lg/crb;Lg/crb;II)V

    :goto_7
    invoke-static {v15, v5}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_16
    if-ne v3, v2, :cond_19

    if-eqz p3, :cond_17

    invoke-virtual {v1, v8, v7, v15, v13}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    goto :goto_6

    :cond_17
    if-eqz p19, :cond_18

    const/4 v2, 0x5

    invoke-virtual {v1, v8, v7, v15, v2}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    invoke-virtual {v1, v8, v7, v15, v13}, Lg/bwo;->aj(Lg/crb;Lg/crb;II)V

    goto :goto_6

    :cond_18
    const/4 v2, 0x5

    invoke-virtual {v1, v8, v7, v15, v2}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    invoke-virtual {v1, v8, v7, v15, v13}, Lg/bwo;->aj(Lg/crb;Lg/crb;II)V

    goto :goto_6

    :cond_19
    const/4 v10, 0x2

    if-ne v3, v10, :cond_1d

    iget-object v2, v12, Lg/hac;->c:Lg/dih;

    sget-object v10, Lg/dih;->TOP:Lg/dih;

    if-eq v2, v10, :cond_1b

    sget-object v13, Lg/dih;->BOTTOM:Lg/dih;

    if-ne v2, v13, :cond_1a

    goto :goto_8

    :cond_1a
    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    sget-object v10, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {v2, v10}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    iget-object v10, v0, Lg/brh;->bj:Lg/brh;

    sget-object v13, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {v10, v13}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v10

    invoke-virtual {v1, v10}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v10

    goto :goto_9

    :cond_1b
    :goto_8
    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    invoke-virtual {v2, v10}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v2

    invoke-virtual {v1, v2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    iget-object v10, v0, Lg/brh;->bj:Lg/brh;

    sget-object v13, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {v10, v13}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v10

    invoke-virtual {v1, v10}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v10

    :goto_9
    invoke-virtual {v1}, Lg/bwo;->w()Lg/gz;

    move-result-object v13

    iget-object v15, v13, Lg/gz;->a:Lg/fnf;

    move/from16 p9, v4

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v15, v8, v4}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v4, v13, Lg/gz;->a:Lg/fnf;

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7, v15}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v4, v13, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v4, v10, v6}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v4, v13, Lg/gz;->a:Lg/fnf;

    neg-float v6, v6

    invoke-virtual {v4, v2, v6}, Lg/fnf;->r(Lg/crb;F)V

    invoke-virtual {v1, v13}, Lg/bwo;->ai(Lg/gz;)V

    if-eqz p3, :cond_1c

    const/16 v24, 0x0

    :cond_1c
    move/from16 v10, p5

    move/from16 v13, p9

    goto :goto_a

    :cond_1d
    move/from16 p9, v4

    move/from16 v13, p9

    const/4 v10, 0x1

    :goto_a
    if-eqz p27, :cond_1e

    if-eqz p19, :cond_1f

    :cond_1e
    move-object/from16 v15, p6

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move/from16 p5, v10

    const/4 v10, 0x2

    goto/16 :goto_2c

    :cond_1f
    if-nez v16, :cond_20

    if-nez v17, :cond_20

    if-nez v19, :cond_20

    move-object/from16 v13, p11

    move-object v7, v8

    move/from16 p5, v10

    move-object/from16 v6, v20

    :goto_b
    const/4 v4, 0x5

    goto/16 :goto_28

    :cond_20
    if-eqz v16, :cond_22

    if-nez v17, :cond_22

    iget-object v2, v12, Lg/hac;->e:Lg/hac;

    iget-object v2, v2, Lg/hac;->b:Lg/brh;

    if-eqz p3, :cond_21

    instance-of v2, v2, Lg/r;

    if-eqz v2, :cond_21

    const/16 v2, 0x8

    goto :goto_c

    :cond_21
    const/4 v2, 0x5

    :goto_c
    move-object/from16 v13, p11

    move-object v7, v8

    move/from16 p5, v10

    move-object/from16 v6, v20

    move/from16 v20, p3

    move v10, v2

    goto/16 :goto_29

    :cond_22
    if-nez v16, :cond_24

    if-eqz v17, :cond_24

    invoke-virtual/range {p11 .. p11}, Lg/hac;->n()I

    move-result v2

    neg-int v2, v2

    move-object/from16 v6, v20

    const/16 v13, 0x8

    invoke-virtual {v1, v8, v6, v2, v13}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    if-eqz p3, :cond_23

    move-object/from16 v15, p6

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v7, v15, v3, v2}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_23
    move-object/from16 v13, p11

    move-object v7, v8

    move/from16 p5, v10

    goto :goto_b

    :cond_24
    move-object/from16 v15, p6

    move-object/from16 v6, v20

    if-eqz v16, :cond_23

    if-eqz v17, :cond_23

    iget-object v2, v12, Lg/hac;->e:Lg/hac;

    iget-object v11, v2, Lg/hac;->b:Lg/brh;

    move-object/from16 v2, p11

    iget-object v4, v2, Lg/hac;->e:Lg/hac;

    iget-object v4, v4, Lg/hac;->b:Lg/brh;

    move/from16 p5, v10

    iget-object v10, v0, Lg/brh;->bj:Lg/brh;

    const/16 v16, 0x6

    if-eqz v24, :cond_39

    if-nez v3, :cond_29

    if-nez v5, :cond_26

    if-nez v13, :cond_26

    iget-boolean v5, v9, Lg/crb;->l:Z

    if-eqz v5, :cond_25

    iget-boolean v5, v6, Lg/crb;->l:Z

    if-eqz v5, :cond_25

    invoke-virtual {v12}, Lg/hac;->n()I

    move-result v3

    const/16 v13, 0x8

    invoke-virtual {v1, v7, v9, v3, v13}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, v8, v6, v2, v13}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    return-void

    :cond_25
    const/16 v5, 0x8

    const/16 v17, 0x8

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v23, 0x0

    goto :goto_d

    :cond_26
    const/4 v5, 0x5

    const/16 v17, 0x5

    const/16 v19, 0x1

    const/16 v20, 0x0

    const/16 v23, 0x1

    :goto_d
    instance-of v1, v11, Lg/r;

    if-nez v1, :cond_28

    instance-of v1, v4, Lg/r;

    if-eqz v1, :cond_27

    goto :goto_f

    :cond_27
    move-object v1, v9

    move v9, v5

    move-object v5, v1

    move-object/from16 v1, p1

    move-object v2, v7

    move-object v7, v8

    move/from16 v25, v20

    const/4 v8, 0x6

    move/from16 v20, v19

    move/from16 v19, v17

    move/from16 v17, v3

    :goto_e
    move-object/from16 v3, p7

    goto/16 :goto_1d

    :cond_28
    :goto_f
    move-object v1, v9

    move v9, v5

    move-object v5, v1

    move-object/from16 v1, p1

    move/from16 v17, v3

    move-object v2, v7

    move-object v7, v8

    move/from16 v25, v20

    const/4 v8, 0x6

    move-object/from16 v3, p7

    move/from16 v20, v19

    const/16 v19, 0x4

    goto/16 :goto_1d

    :cond_29
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2c

    instance-of v1, v11, Lg/r;

    if-nez v1, :cond_2b

    instance-of v1, v4, Lg/r;

    if-eqz v1, :cond_2a

    goto :goto_11

    :cond_2a
    move-object/from16 v1, p1

    move/from16 v17, v3

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/16 v19, 0x5

    :goto_10
    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v25, 0x0

    goto :goto_e

    :cond_2b
    :goto_11
    move-object/from16 v1, p1

    move/from16 v17, v3

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/4 v9, 0x5

    :goto_12
    const/16 v19, 0x4

    goto :goto_10

    :cond_2c
    const/4 v1, 0x1

    if-ne v3, v1, :cond_2d

    move-object/from16 v1, p1

    move/from16 v17, v3

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/16 v9, 0x8

    goto :goto_12

    :cond_2d
    const/4 v1, 0x3

    if-ne v3, v1, :cond_38

    iget v1, v0, Lg/brh;->cl:I

    move/from16 v17, v3

    const/4 v3, -0x1

    if-ne v1, v3, :cond_30

    if-eqz p20, :cond_2f

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    if-eqz p3, :cond_2e

    const/4 v8, 0x5

    :goto_13
    const/16 v9, 0x8

    :goto_14
    const/16 v19, 0x5

    :goto_15
    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v25, 0x1

    goto/16 :goto_1d

    :cond_2e
    const/4 v8, 0x4

    goto :goto_13

    :cond_2f
    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/16 v8, 0x8

    goto :goto_13

    :cond_30
    if-eqz p17, :cond_33

    move/from16 v3, p23

    const/4 v1, 0x2

    if-eq v3, v1, :cond_32

    const/4 v1, 0x1

    if-ne v3, v1, :cond_31

    goto :goto_16

    :cond_31
    const/16 v1, 0x8

    const/4 v3, 0x5

    goto :goto_17

    :cond_32
    :goto_16
    const/4 v1, 0x5

    const/4 v3, 0x4

    :goto_17
    move/from16 v19, v3

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v25, 0x1

    move-object/from16 v3, p7

    :goto_18
    move v9, v1

    move-object/from16 v1, p1

    goto/16 :goto_1d

    :cond_33
    if-lez v5, :cond_34

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/4 v9, 0x5

    goto :goto_14

    :cond_34
    if-nez v5, :cond_37

    if-nez v13, :cond_37

    if-nez p20, :cond_35

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/16 v19, 0x8

    goto :goto_15

    :cond_35
    if-eq v11, v10, :cond_36

    if-eq v4, v10, :cond_36

    const/4 v1, 0x4

    goto :goto_19

    :cond_36
    const/4 v1, 0x5

    :goto_19
    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v23, 0x1

    const/16 v25, 0x1

    goto :goto_18

    :cond_37
    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/16 v19, 0x4

    goto :goto_15

    :cond_38
    move/from16 v17, v3

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x0

    const/16 v23, 0x0

    :goto_1a
    const/16 v25, 0x0

    goto :goto_1d

    :cond_39
    move/from16 v17, v3

    iget-boolean v1, v9, Lg/crb;->l:Z

    if-eqz v1, :cond_3b

    iget-boolean v1, v6, Lg/crb;->l:Z

    if-eqz v1, :cond_3b

    invoke-virtual {v12}, Lg/hac;->n()I

    move-result v1

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v3

    const/16 v4, 0x8

    move-object/from16 p17, p1

    move/from16 p21, p16

    move/from16 p20, v1

    move/from16 p24, v3

    move-object/from16 p22, v6

    move-object/from16 p18, v7

    move-object/from16 p23, v8

    move-object/from16 p19, v9

    const/16 p25, 0x8

    invoke-virtual/range {p17 .. p25}, Lg/bwo;->ae(Lg/crb;Lg/crb;IFLg/crb;Lg/crb;II)V

    move-object/from16 v1, p17

    move-object/from16 v7, p23

    if-eqz p3, :cond_5a

    if-eqz p5, :cond_5a

    iget-object v3, v2, Lg/hac;->e:Lg/hac;

    if-eqz v3, :cond_3a

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v15

    :goto_1b
    move-object/from16 v3, p7

    goto :goto_1c

    :cond_3a
    const/4 v15, 0x0

    goto :goto_1b

    :goto_1c
    if-eq v6, v3, :cond_5a

    const/4 v2, 0x5

    invoke-virtual {v1, v3, v7, v15, v2}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    return-void

    :cond_3b
    move-object/from16 v1, p1

    move-object/from16 v3, p7

    move-object v2, v7

    move-object v7, v8

    move-object v5, v9

    const/4 v8, 0x6

    const/4 v9, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x1

    const/16 v23, 0x1

    goto :goto_1a

    :goto_1d
    if-eqz v23, :cond_3c

    if-ne v5, v6, :cond_3c

    if-eq v11, v10, :cond_3c

    const/16 v23, 0x0

    const/16 v26, 0x0

    goto :goto_1e

    :cond_3c
    const/16 v26, 0x1

    :goto_1e
    if-eqz v20, :cond_3e

    if-nez v24, :cond_3d

    if-nez p18, :cond_3d

    if-nez p20, :cond_3d

    if-ne v5, v15, :cond_3d

    if-ne v6, v3, :cond_3d

    const/16 v9, 0x8

    const/16 v20, 0x0

    const/16 v26, 0x8

    const/16 v27, 0x0

    :goto_1f
    move-object v8, v4

    goto :goto_20

    :cond_3d
    move/from16 v20, p3

    move/from16 v27, v26

    move/from16 v26, v9

    move v9, v8

    goto :goto_1f

    :goto_20
    invoke-virtual {v12}, Lg/hac;->n()I

    move-result v4

    move-object/from16 v28, v8

    invoke-virtual/range {p11 .. p11}, Lg/hac;->n()I

    move-result v8

    move-object v3, v5

    move/from16 p8, v13

    move/from16 v14, v17

    move-object/from16 v12, v28

    move-object/from16 v13, p11

    move/from16 v5, p16

    invoke-virtual/range {v1 .. v9}, Lg/bwo;->ae(Lg/crb;Lg/crb;IFLg/crb;Lg/crb;II)V

    move-object v5, v3

    move/from16 v9, v26

    move/from16 v26, v27

    goto :goto_21

    :cond_3e
    move-object v12, v4

    move/from16 p8, v13

    move/from16 v14, v17

    move-object/from16 v13, p11

    move/from16 v20, p3

    :goto_21
    iget v3, v0, Lg/brh;->aq:I

    const/16 v4, 0x8

    if-ne v3, v4, :cond_40

    iget-object v3, v13, Lg/hac;->d:Ljava/util/HashSet;

    if-nez v3, :cond_3f

    goto/16 :goto_30

    :cond_3f
    invoke-virtual {v3}, Ljava/util/HashSet;->size()I

    move-result v3

    if-lez v3, :cond_5a

    :cond_40
    if-eqz v23, :cond_43

    if-eqz v20, :cond_42

    if-eq v5, v6, :cond_42

    if-nez v24, :cond_42

    instance-of v3, v11, Lg/r;

    if-nez v3, :cond_41

    instance-of v3, v12, Lg/r;

    if-eqz v3, :cond_42

    :cond_41
    const/4 v9, 0x6

    :cond_42
    invoke-virtual/range {p10 .. p10}, Lg/hac;->n()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v9}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    invoke-virtual {v13}, Lg/hac;->n()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v7, v6, v3, v9}, Lg/bwo;->aj(Lg/crb;Lg/crb;II)V

    :cond_43
    if-eqz v20, :cond_44

    if-eqz p21, :cond_44

    instance-of v3, v11, Lg/r;

    if-nez v3, :cond_44

    instance-of v3, v12, Lg/r;

    if-nez v3, :cond_44

    if-eq v12, v10, :cond_44

    const/4 v3, 0x6

    const/4 v9, 0x6

    const/16 v21, 0x1

    goto :goto_22

    :cond_44
    move/from16 v3, v19

    move/from16 v21, v26

    :goto_22
    if-eqz v21, :cond_50

    if-eqz v25, :cond_4d

    if-eqz p20, :cond_45

    if-eqz p4, :cond_4d

    :cond_45
    if-eq v11, v10, :cond_47

    if-ne v12, v10, :cond_46

    goto :goto_23

    :cond_46
    move/from16 v16, v3

    :cond_47
    :goto_23
    instance-of v4, v11, Lg/aar;

    if-nez v4, :cond_48

    instance-of v4, v12, Lg/aar;

    if-eqz v4, :cond_49

    :cond_48
    const/16 v16, 0x5

    :cond_49
    instance-of v4, v11, Lg/r;

    if-nez v4, :cond_4a

    instance-of v4, v12, Lg/r;

    if-eqz v4, :cond_4b

    :cond_4a
    const/16 v16, 0x5

    :cond_4b
    if-eqz p20, :cond_4c

    const/4 v4, 0x5

    goto :goto_24

    :cond_4c
    move/from16 v4, v16

    :goto_24
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_4d
    if-eqz v20, :cond_4f

    invoke-static {v9, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz p17, :cond_4f

    if-nez p20, :cond_4f

    if-eq v11, v10, :cond_4e

    if-ne v12, v10, :cond_4f

    :cond_4e
    const/4 v10, 0x4

    goto :goto_25

    :cond_4f
    move v10, v3

    :goto_25
    invoke-virtual/range {p10 .. p10}, Lg/hac;->n()I

    move-result v3

    invoke-virtual {v1, v2, v5, v3, v10}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    invoke-virtual {v13}, Lg/hac;->n()I

    move-result v3

    neg-int v3, v3

    invoke-virtual {v1, v7, v6, v3, v10}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    :cond_50
    if-eqz v20, :cond_52

    if-ne v15, v5, :cond_51

    invoke-virtual/range {p10 .. p10}, Lg/hac;->n()I

    move-result v3

    goto :goto_26

    :cond_51
    const/4 v3, 0x0

    :goto_26
    if-eq v5, v15, :cond_52

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v15, v3, v4}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_52
    if-eqz v20, :cond_53

    if-eqz v24, :cond_53

    if-nez p14, :cond_53

    if-nez p8, :cond_53

    if-eqz v24, :cond_54

    const/4 v3, 0x3

    if-ne v14, v3, :cond_54

    const/16 v4, 0x8

    const/4 v10, 0x0

    invoke-virtual {v1, v7, v2, v10, v4}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_53
    const/4 v4, 0x5

    goto :goto_27

    :cond_54
    const/4 v10, 0x0

    const/4 v4, 0x5

    invoke-virtual {v1, v7, v2, v10, v4}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :goto_27
    const/4 v10, 0x5

    goto :goto_29

    :goto_28
    move/from16 v20, p3

    goto :goto_27

    :goto_29
    if-eqz v20, :cond_5a

    if-eqz p5, :cond_5a

    iget-object v2, v13, Lg/hac;->e:Lg/hac;

    if-eqz v2, :cond_55

    invoke-virtual {v13}, Lg/hac;->n()I

    move-result v15

    :goto_2a
    move-object/from16 v3, p7

    goto :goto_2b

    :cond_55
    const/4 v15, 0x0

    goto :goto_2a

    :goto_2b
    if-eq v6, v3, :cond_5a

    invoke-virtual {v1, v3, v7, v15, v10}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    return-void

    :goto_2c
    if-ge v11, v10, :cond_5a

    if-eqz p3, :cond_5a

    if-eqz p5, :cond_5a

    const/4 v10, 0x0

    const/16 v13, 0x8

    invoke-virtual {v1, v2, v15, v10, v13}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    iget-object v2, v0, Lg/brh;->bp:Lg/hac;

    if-nez p2, :cond_57

    iget-object v4, v2, Lg/hac;->e:Lg/hac;

    if-nez v4, :cond_56

    goto :goto_2d

    :cond_56
    const/4 v10, 0x0

    goto :goto_2e

    :cond_57
    :goto_2d
    const/4 v10, 0x1

    :goto_2e
    if-nez p2, :cond_59

    iget-object v2, v2, Lg/hac;->e:Lg/hac;

    if-eqz v2, :cond_59

    iget-object v2, v2, Lg/hac;->b:Lg/brh;

    iget v4, v2, Lg/brh;->bq:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_58

    iget-object v2, v2, Lg/brh;->ch:[Lg/fol;

    const/16 v22, 0x0

    aget-object v4, v2, v22

    sget-object v5, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne v4, v5, :cond_58

    const/16 v21, 0x1

    aget-object v2, v2, v21

    if-ne v2, v5, :cond_58

    const/4 v10, 0x1

    goto :goto_2f

    :cond_58
    const/4 v10, 0x0

    :cond_59
    :goto_2f
    if-eqz v10, :cond_5a

    const/4 v10, 0x0

    const/16 v13, 0x8

    invoke-virtual {v1, v3, v7, v10, v13}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_5a
    :goto_30
    return-void
.end method

.method public final dn(I)Lg/brh;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/brh;->br:Lg/hac;

    iget-object v0, p1, Lg/hac;->e:Lg/hac;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lg/hac;->b:Lg/brh;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lg/brh;->as:Lg/hac;

    iget-object v0, p1, Lg/hac;->e:Lg/hac;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lg/hac;->b:Lg/brh;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final do(Lg/dih;Lg/brh;Lg/dih;I)V
    .locals 8

    sget-object v0, Lg/dih;->CENTER:Lg/dih;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_c

    if-ne p3, v0, :cond_8

    sget-object p1, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    sget-object p4, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {p0, p4}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v2

    sget-object v3, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {p0, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v4

    sget-object v5, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {p0, v5}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v6

    const/4 v7, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lg/hac;->j()Z

    move-result p3

    if-nez p3, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lg/hac;->j()Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1, p2, p1, v1}, Lg/brh;->do(Lg/dih;Lg/brh;Lg/dih;I)V

    invoke-virtual {p0, p4, p2, p4, v1}, Lg/brh;->do(Lg/dih;Lg/brh;Lg/dih;I)V

    const/4 p1, 0x1

    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lg/hac;->j()Z

    move-result p3

    if-nez p3, :cond_4

    :cond_3
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lg/hac;->j()Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v3, p2, v3, v1}, Lg/brh;->do(Lg/dih;Lg/brh;Lg/dih;I)V

    invoke-virtual {p0, v5, p2, v5, v1}, Lg/brh;->do(Lg/dih;Lg/brh;Lg/dih;I)V

    :goto_1
    if-eqz p1, :cond_6

    if-eqz v7, :cond_6

    invoke-virtual {p0, v0}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p2, v0}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lg/hac;->o(Lg/hac;I)V

    return-void

    :cond_6
    if-eqz p1, :cond_7

    sget-object p1, Lg/dih;->CENTER_X:Lg/dih;

    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    invoke-virtual {p2, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p3, p1, v1}, Lg/hac;->o(Lg/hac;I)V

    return-void

    :cond_7
    if-eqz v7, :cond_1c

    sget-object p1, Lg/dih;->CENTER_Y:Lg/dih;

    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    invoke-virtual {p2, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p3, p1, v1}, Lg/hac;->o(Lg/hac;I)V

    return-void

    :cond_8
    sget-object p1, Lg/dih;->LEFT:Lg/dih;

    if-eq p3, p1, :cond_b

    sget-object p4, Lg/dih;->RIGHT:Lg/dih;

    if-ne p3, p4, :cond_9

    goto :goto_2

    :cond_9
    sget-object p1, Lg/dih;->TOP:Lg/dih;

    if-eq p3, p1, :cond_a

    sget-object p4, Lg/dih;->BOTTOM:Lg/dih;

    if-ne p3, p4, :cond_1c

    :cond_a
    invoke-virtual {p0, p1, p2, p3, v1}, Lg/brh;->do(Lg/dih;Lg/brh;Lg/dih;I)V

    sget-object p1, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {p0, p1, p2, p3, v1}, Lg/brh;->do(Lg/dih;Lg/brh;Lg/dih;I)V

    invoke-virtual {p0, v0}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p2, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lg/hac;->o(Lg/hac;I)V

    return-void

    :cond_b
    :goto_2
    invoke-virtual {p0, p1, p2, p3, v1}, Lg/brh;->do(Lg/dih;Lg/brh;Lg/dih;I)V

    sget-object p1, Lg/dih;->RIGHT:Lg/dih;

    :try_start_0
    invoke-virtual {p0, p1, p2, p3, v1}, Lg/brh;->do(Lg/dih;Lg/brh;Lg/dih;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, v0}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p2, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lg/hac;->o(Lg/hac;I)V

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :cond_c
    sget-object v2, Lg/dih;->CENTER_X:Lg/dih;

    if-ne p1, v2, :cond_e

    sget-object v3, Lg/dih;->LEFT:Lg/dih;

    if-eq p3, v3, :cond_d

    sget-object v4, Lg/dih;->RIGHT:Lg/dih;

    if-ne p3, v4, :cond_e

    :cond_d
    invoke-virtual {p0, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p2, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    sget-object p3, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {p0, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    invoke-virtual {p1, p2, v1}, Lg/hac;->o(Lg/hac;I)V

    invoke-virtual {p3, p2, v1}, Lg/hac;->o(Lg/hac;I)V

    invoke-virtual {p0, v2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p1, p2, v1}, Lg/hac;->o(Lg/hac;I)V

    return-void

    :cond_e
    sget-object v3, Lg/dih;->CENTER_Y:Lg/dih;

    if-ne p1, v3, :cond_10

    sget-object v4, Lg/dih;->TOP:Lg/dih;

    if-eq p3, v4, :cond_f

    sget-object v5, Lg/dih;->BOTTOM:Lg/dih;

    if-ne p3, v5, :cond_10

    :cond_f
    invoke-virtual {p2, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p0, v4}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lg/hac;->o(Lg/hac;I)V

    sget-object p2, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {p0, p2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lg/hac;->o(Lg/hac;I)V

    invoke-virtual {p0, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lg/hac;->o(Lg/hac;I)V

    return-void

    :cond_10
    if-ne p1, v2, :cond_11

    if-ne p3, v2, :cond_11

    sget-object p1, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p4

    invoke-virtual {p2, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lg/hac;->o(Lg/hac;I)V

    sget-object p1, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p4

    invoke-virtual {p2, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lg/hac;->o(Lg/hac;I)V

    invoke-virtual {p0, v2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p2, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lg/hac;->o(Lg/hac;I)V

    return-void

    :cond_11
    if-ne p1, v3, :cond_12

    if-ne p3, v3, :cond_12

    sget-object p1, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p4

    invoke-virtual {p2, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lg/hac;->o(Lg/hac;I)V

    sget-object p1, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p4

    invoke-virtual {p2, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p4, p1, v1}, Lg/hac;->o(Lg/hac;I)V

    invoke-virtual {p0, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p2, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Lg/hac;->o(Lg/hac;I)V

    return-void

    :cond_12
    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v1

    invoke-virtual {p2, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    invoke-virtual {v1, p2}, Lg/hac;->q(Lg/hac;)Z

    move-result p3

    if-eqz p3, :cond_1c

    sget-object p3, Lg/dih;->BASELINE:Lg/dih;

    if-ne p1, p3, :cond_14

    sget-object p1, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    sget-object p3, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {p0, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lg/hac;->s()V

    :cond_13
    if-eqz p3, :cond_1b

    invoke-virtual {p3}, Lg/hac;->s()V

    goto :goto_4

    :cond_14
    sget-object v4, Lg/dih;->TOP:Lg/dih;

    if-eq p1, v4, :cond_18

    sget-object v4, Lg/dih;->BOTTOM:Lg/dih;

    if-ne p1, v4, :cond_15

    goto :goto_3

    :cond_15
    sget-object p3, Lg/dih;->LEFT:Lg/dih;

    if-eq p1, p3, :cond_16

    sget-object p3, Lg/dih;->RIGHT:Lg/dih;

    if-ne p1, p3, :cond_1b

    :cond_16
    invoke-virtual {p0, v0}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    iget-object v0, p3, Lg/hac;->e:Lg/hac;

    if-eq v0, p2, :cond_17

    invoke-virtual {p3}, Lg/hac;->s()V

    :cond_17
    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p1}, Lg/hac;->p()Lg/hac;

    move-result-object p1

    invoke-virtual {p0, v2}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    invoke-virtual {p3}, Lg/hac;->j()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lg/hac;->s()V

    invoke-virtual {p3}, Lg/hac;->s()V

    goto :goto_4

    :cond_18
    :goto_3
    invoke-virtual {p0, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    if-eqz p3, :cond_19

    invoke-virtual {p3}, Lg/hac;->s()V

    :cond_19
    invoke-virtual {p0, v0}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    iget-object v0, p3, Lg/hac;->e:Lg/hac;

    if-eq v0, p2, :cond_1a

    invoke-virtual {p3}, Lg/hac;->s()V

    :cond_1a
    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p1}, Lg/hac;->p()Lg/hac;

    move-result-object p1

    invoke-virtual {p0, v3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p3

    invoke-virtual {p3}, Lg/hac;->j()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lg/hac;->s()V

    invoke-virtual {p3}, Lg/hac;->s()V

    :cond_1b
    :goto_4
    invoke-virtual {v1, p2, p4}, Lg/hac;->o(Lg/hac;I)V

    :cond_1c
    return-void
.end method

.method public final dp(Lg/aep;Lg/bwo;Ljava/util/HashSet;IZ)V
    .locals 7

    if-eqz p5, :cond_1

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {p1, p2, p0}, Lg/bff;->au(Lg/aep;Lg/bwo;Lg/brh;)V

    invoke-virtual {p3, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/16 v0, 0x40

    invoke-virtual {p1, v0}, Lg/aep;->ag(I)Z

    move-result v0

    invoke-virtual {p0, p2, v0}, Lg/brh;->g(Lg/bwo;Z)V

    :cond_1
    if-nez p4, :cond_3

    iget-object v0, p0, Lg/brh;->cw:Lg/hac;

    iget-object v0, v0, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hac;

    iget-object v1, v1, Lg/hac;->b:Lg/brh;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lg/brh;->dp(Lg/aep;Lg/bwo;Ljava/util/HashSet;IZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lg/brh;->br:Lg/hac;

    iget-object v0, v0, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hac;

    iget-object v1, v1, Lg/hac;->b:Lg/brh;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lg/brh;->dp(Lg/aep;Lg/bwo;Ljava/util/HashSet;IZ)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    iget-object v0, v0, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hac;

    iget-object v1, v1, Lg/hac;->b:Lg/brh;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lg/brh;->dp(Lg/aep;Lg/bwo;Ljava/util/HashSet;IZ)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lg/brh;->as:Lg/hac;

    iget-object v0, v0, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hac;

    iget-object v1, v1, Lg/hac;->b:Lg/brh;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lg/brh;->dp(Lg/aep;Lg/bwo;Ljava/util/HashSet;IZ)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lg/brh;->bp:Lg/hac;

    iget-object v0, v0, Lg/hac;->d:Ljava/util/HashSet;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lg/hac;

    iget-object v1, v1, Lg/hac;->b:Lg/brh;

    const/4 v6, 0x1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    :try_start_0
    invoke-virtual/range {v1 .. v6}, Lg/brh;->dp(Lg/aep;Lg/bwo;Ljava/util/HashSet;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    :cond_6
    :goto_5
    return-void
.end method

.method public final dq(II)Z
    .locals 3

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/brh;->cw:Lg/hac;

    iget-object v0, p1, Lg/hac;->e:Lg/hac;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lg/hac;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/brh;->br:Lg/hac;

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lg/hac;->h:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lg/hac;->l()I

    move-result v1

    invoke-virtual {v0}, Lg/hac;->n()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p1, Lg/hac;->e:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->l()I

    move-result v0

    invoke-virtual {p1}, Lg/hac;->n()I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr v1, p1

    if-lt v1, p2, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lg/brh;->bx:Lg/hac;

    iget-object v0, p1, Lg/hac;->e:Lg/hac;

    if-eqz v0, :cond_1

    iget-boolean v0, v0, Lg/hac;->h:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lg/brh;->as:Lg/hac;

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-eqz v1, :cond_1

    iget-boolean v2, v1, Lg/hac;->h:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lg/hac;->l()I

    move-result v1

    invoke-virtual {v0}, Lg/hac;->n()I

    move-result v0

    sub-int/2addr v1, v0

    iget-object v0, p1, Lg/hac;->e:Lg/hac;

    invoke-virtual {v0}, Lg/hac;->l()I

    move-result v0

    invoke-virtual {p1}, Lg/hac;->n()I

    move-result p1

    add-int/2addr p1, v0

    sub-int/2addr v1, p1

    if-lt v1, p2, :cond_1

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final dr()V
    .locals 4

    iget-object v0, p0, Lg/brh;->bj:Lg/brh;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lg/aep;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aep;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v0, p0, Lg/brh;->cc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/hac;

    invoke-virtual {v3}, Lg/hac;->s()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ds(Lg/fol;)V
    .locals 2

    iget-object v0, p0, Lg/brh;->ch:[Lg/fol;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public final dt(II)V
    .locals 1

    iget-boolean v0, p0, Lg/brh;->bg:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v0, p1}, Lg/hac;->m(I)V

    iget-object v0, p0, Lg/brh;->as:Lg/hac;

    invoke-virtual {v0, p2}, Lg/hac;->m(I)V

    iput p1, p0, Lg/brh;->cb:I

    sub-int/2addr p2, p1

    iput p2, p0, Lg/brh;->bt:I

    iget-boolean p2, p0, Lg/brh;->cx:Z

    if-eqz p2, :cond_1

    iget p2, p0, Lg/brh;->bn:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lg/brh;->bp:Lg/hac;

    invoke-virtual {p2, p1}, Lg/hac;->m(I)V

    :cond_1
    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/brh;->bg:Z

    return-void
.end method

.method public final du(Lg/dih;Lg/brh;Lg/dih;II)V
    .locals 0

    invoke-virtual {p0, p1}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p1

    invoke-virtual {p2, p3}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p4, p5, p3}, Lg/hac;->r(Lg/hac;IIZ)Z

    return-void
.end method

.method public final dv(I)Z
    .locals 3

    mul-int/lit8 p1, p1, 0x2

    iget-object v0, p0, Lg/brh;->ax:[Lg/hac;

    aget-object v1, v0, p1

    iget-object v2, v1, Lg/hac;->e:Lg/hac;

    if-eqz v2, :cond_0

    iget-object v2, v2, Lg/hac;->e:Lg/hac;

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    add-int/2addr p1, v1

    aget-object p1, v0, p1

    iget-object v0, p1, Lg/hac;->e:Lg/hac;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lg/hac;->e:Lg/hac;

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final dw(Lg/hac;Lg/hac;I)V
    .locals 1

    iget-object v0, p1, Lg/hac;->b:Lg/brh;

    if-ne v0, p0, :cond_0

    iget-object p1, p1, Lg/hac;->c:Lg/dih;

    iget-object v0, p2, Lg/hac;->b:Lg/brh;

    iget-object p2, p2, Lg/hac;->c:Lg/dih;

    invoke-virtual {p0, p1, v0, p2, p3}, Lg/brh;->do(Lg/dih;Lg/brh;Lg/dih;I)V

    :cond_0
    return-void
.end method

.method public final dx(II)V
    .locals 1

    iget-boolean v0, p0, Lg/brh;->ap:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lg/brh;->cw:Lg/hac;

    invoke-virtual {v0, p1}, Lg/hac;->m(I)V

    iget-object v0, p0, Lg/brh;->br:Lg/hac;

    invoke-virtual {v0, p2}, Lg/hac;->m(I)V

    iput p1, p0, Lg/brh;->cv:I

    sub-int/2addr p2, p1

    iput p2, p0, Lg/brh;->bc:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/brh;->ap:Z

    return-void
.end method

.method public final dy()I
    .locals 2

    iget-object v0, p0, Lg/brh;->bj:Lg/brh;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lg/aep;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aep;

    iget v0, v0, Lg/aep;->o:I

    iget v1, p0, Lg/brh;->cb:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lg/brh;->cb:I

    return v0
.end method

.method public final dz(I)Lg/brh;
    .locals 2

    if-nez p1, :cond_0

    iget-object p1, p0, Lg/brh;->cw:Lg/hac;

    iget-object v0, p1, Lg/hac;->e:Lg/hac;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lg/hac;->b:Lg/brh;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lg/brh;->bx:Lg/hac;

    iget-object v0, p1, Lg/hac;->e:Lg/hac;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-ne v1, p1, :cond_1

    iget-object p1, v0, Lg/hac;->b:Lg/brh;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lg/brh;->bg:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    iget-boolean v0, v0, Lg/hac;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/brh;->as:Lg/hac;

    iget-boolean v0, v0, Lg/hac;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final ea(I)Lg/fol;
    .locals 2

    iget-object v0, p0, Lg/brh;->ch:[Lg/fol;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    aget-object p1, v0, p1

    return-object p1

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    aget-object p1, v0, v1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final eb()I
    .locals 2

    iget v0, p0, Lg/brh;->aq:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, p0, Lg/brh;->bc:I

    return v0
.end method

.method public final ec(I)Z
    .locals 4

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-object p1, p0, Lg/brh;->cw:Lg/hac;

    iget-object p1, p1, Lg/hac;->e:Lg/hac;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object v3, p0, Lg/brh;->br:Lg/hac;

    iget-object v3, v3, Lg/hac;->e:Lg/hac;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_6

    goto :goto_5

    :cond_2
    iget-object p1, p0, Lg/brh;->bx:Lg/hac;

    iget-object p1, p1, Lg/hac;->e:Lg/hac;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iget-object v3, p0, Lg/brh;->as:Lg/hac;

    iget-object v3, v3, Lg/hac;->e:Lg/hac;

    if-eqz v3, :cond_4

    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    const/4 v3, 0x0

    :goto_3
    add-int/2addr p1, v3

    iget-object v3, p0, Lg/brh;->bp:Lg/hac;

    iget-object v3, v3, Lg/hac;->e:Lg/hac;

    if-eqz v3, :cond_5

    const/4 v3, 0x1

    goto :goto_4

    :cond_5
    const/4 v3, 0x0

    :goto_4
    add-int/2addr p1, v3

    if-ge p1, v0, :cond_6

    :goto_5
    return v2

    :cond_6
    return v1
.end method

.method public final ed(I)V
    .locals 1

    iput p1, p0, Lg/brh;->bc:I

    iget v0, p0, Lg/brh;->bb:I

    if-ge p1, v0, :cond_0

    iput v0, p0, Lg/brh;->bc:I

    :cond_0
    return-void
.end method

.method public final ee(I)V
    .locals 0

    iput p1, p0, Lg/brh;->bn:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lg/brh;->cx:Z

    return-void
.end method

.method public final ef()V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lg/brh;->ap:Z

    iput-boolean v0, p0, Lg/brh;->bg:Z

    iput-boolean v0, p0, Lg/brh;->ca:Z

    iput-boolean v0, p0, Lg/brh;->bd:Z

    iget-object v1, p0, Lg/brh;->cc:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lg/hac;

    iput-boolean v0, v4, Lg/hac;->h:Z

    iput v0, v4, Lg/hac;->g:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final eg()Z
    .locals 2

    iget-object v0, p0, Lg/brh;->cw:Lg/hac;

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lg/hac;->e:Lg/hac;

    if-eq v1, v0, :cond_1

    :cond_0
    iget-object v0, p0, Lg/brh;->br:Lg/hac;

    iget-object v1, v0, Lg/hac;->e:Lg/hac;

    if-eqz v1, :cond_2

    iget-object v1, v1, Lg/hac;->e:Lg/hac;

    if-ne v1, v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final eh(Lg/bwo;)V
    .locals 1

    iget-object v0, p0, Lg/brh;->cw:Lg/hac;

    invoke-virtual {p1, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    invoke-virtual {p1, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    iget-object v0, p0, Lg/brh;->br:Lg/hac;

    invoke-virtual {p1, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    iget-object v0, p0, Lg/brh;->as:Lg/hac;

    invoke-virtual {p1, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    iget v0, p0, Lg/brh;->bn:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lg/brh;->bp:Lg/hac;

    invoke-virtual {p1, v0}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    :cond_0
    return-void
.end method

.method public final ei()I
    .locals 2

    iget-object v0, p0, Lg/brh;->bj:Lg/brh;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lg/aep;

    if-eqz v1, :cond_0

    check-cast v0, Lg/aep;

    iget v0, v0, Lg/aep;->z:I

    iget v1, p0, Lg/brh;->cv:I

    add-int/2addr v0, v1

    return v0

    :cond_0
    iget v0, p0, Lg/brh;->cv:I

    return v0
.end method

.method public g(Lg/bwo;Z)V
    .locals 60

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lg/brh;->cw:Lg/hac;

    invoke-virtual {v1, v2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v3

    iget-object v4, v0, Lg/brh;->br:Lg/hac;

    invoke-virtual {v1, v4}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v5

    iget-object v6, v0, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v1, v6}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v7

    iget-object v8, v0, Lg/brh;->as:Lg/hac;

    invoke-virtual {v1, v8}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v9

    iget-object v10, v0, Lg/brh;->bp:Lg/hac;

    invoke-virtual {v1, v10}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v11

    iget-object v12, v0, Lg/brh;->bj:Lg/brh;

    const/4 v15, 0x1

    if-eqz v12, :cond_5

    iget-object v12, v12, Lg/brh;->ch:[Lg/fol;

    const/16 v17, 0x0

    aget-object v14, v12, v17

    sget-object v13, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v14, v13, :cond_0

    const/4 v14, 0x1

    goto :goto_0

    :cond_0
    const/4 v14, 0x0

    :goto_0
    aget-object v12, v12, v15

    if-ne v12, v13, :cond_1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    iget v13, v0, Lg/brh;->ck:I

    if-eq v13, v15, :cond_4

    const/4 v15, 0x2

    const/16 v19, 0x1

    if-eq v13, v15, :cond_3

    const/4 v15, 0x3

    if-eq v13, v15, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    const/4 v12, 0x0

    :cond_3
    const/4 v14, 0x0

    goto :goto_3

    :cond_4
    const/16 v19, 0x1

    const/4 v12, 0x0

    goto :goto_3

    :cond_5
    const/16 v17, 0x0

    const/16 v19, 0x1

    goto :goto_2

    :goto_3
    iget v13, v0, Lg/brh;->aq:I

    iget-object v15, v0, Lg/brh;->cq:[Z

    move/from16 v20, v12

    const/16 v12, 0x8

    if-ne v13, v12, :cond_9

    iget-object v13, v0, Lg/brh;->cc:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v12

    move/from16 v22, v14

    const/4 v14, 0x0

    :goto_4
    if-ge v14, v12, :cond_8

    invoke-virtual {v13, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    move/from16 v24, v12

    move-object/from16 v12, v23

    check-cast v12, Lg/hac;

    iget-object v12, v12, Lg/hac;->d:Ljava/util/HashSet;

    if-nez v12, :cond_6

    goto :goto_5

    :cond_6
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v12

    if-lez v12, :cond_7

    goto :goto_6

    :cond_7
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v24

    goto :goto_4

    :cond_8
    aget-boolean v12, v15, v17

    if-nez v12, :cond_a

    aget-boolean v12, v15, v19

    if-nez v12, :cond_a

    return-void

    :cond_9
    move/from16 v22, v14

    :cond_a
    :goto_6
    iget-boolean v12, v0, Lg/brh;->ap:Z

    if-nez v12, :cond_b

    iget-boolean v13, v0, Lg/brh;->bg:Z

    if-eqz v13, :cond_16

    :cond_b
    if-eqz v12, :cond_f

    iget v12, v0, Lg/brh;->cv:I

    invoke-virtual {v1, v3, v12}, Lg/bwo;->v(Lg/crb;I)V

    iget v12, v0, Lg/brh;->cv:I

    iget v13, v0, Lg/brh;->bc:I

    add-int/2addr v12, v13

    invoke-virtual {v1, v5, v12}, Lg/bwo;->v(Lg/crb;I)V

    if-eqz v22, :cond_f

    iget-object v12, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v12, :cond_f

    check-cast v12, Lg/aep;

    iget-object v13, v12, Lg/aep;->q:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_c

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_c

    invoke-virtual {v2}, Lg/hac;->l()I

    move-result v13

    iget-object v14, v12, Lg/aep;->q:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/hac;

    invoke-virtual {v14}, Lg/hac;->l()I

    move-result v14

    if-le v13, v14, :cond_d

    :cond_c
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v13, v12, Lg/aep;->q:Ljava/lang/ref/WeakReference;

    :cond_d
    iget-object v13, v12, Lg/aep;->h:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_e

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_e

    invoke-virtual {v4}, Lg/hac;->l()I

    move-result v13

    iget-object v14, v12, Lg/aep;->h:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/hac;

    invoke-virtual {v14}, Lg/hac;->l()I

    move-result v14

    if-le v13, v14, :cond_f

    :cond_e
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v13, v12, Lg/aep;->h:Ljava/lang/ref/WeakReference;

    :cond_f
    iget-boolean v12, v0, Lg/brh;->bg:Z

    if-eqz v12, :cond_15

    iget v12, v0, Lg/brh;->cb:I

    invoke-virtual {v1, v7, v12}, Lg/bwo;->v(Lg/crb;I)V

    iget v12, v0, Lg/brh;->cb:I

    iget v13, v0, Lg/brh;->bt:I

    add-int/2addr v12, v13

    invoke-virtual {v1, v9, v12}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v12, v10, Lg/hac;->d:Ljava/util/HashSet;

    if-nez v12, :cond_10

    goto :goto_7

    :cond_10
    invoke-virtual {v12}, Ljava/util/HashSet;->size()I

    move-result v12

    if-lez v12, :cond_11

    iget v12, v0, Lg/brh;->cb:I

    iget v13, v0, Lg/brh;->bn:I

    add-int/2addr v12, v13

    invoke-virtual {v1, v11, v12}, Lg/bwo;->v(Lg/crb;I)V

    :cond_11
    :goto_7
    if-eqz v20, :cond_15

    iget-object v12, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v12, :cond_15

    check-cast v12, Lg/aep;

    iget-object v13, v12, Lg/aep;->t:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_12

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_12

    invoke-virtual {v6}, Lg/hac;->l()I

    move-result v13

    iget-object v14, v12, Lg/aep;->t:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/hac;

    invoke-virtual {v14}, Lg/hac;->l()I

    move-result v14

    if-le v13, v14, :cond_13

    :cond_12
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v13, v12, Lg/aep;->t:Ljava/lang/ref/WeakReference;

    :cond_13
    iget-object v13, v12, Lg/aep;->aa:Ljava/lang/ref/WeakReference;

    if-eqz v13, :cond_14

    invoke-virtual {v13}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_14

    invoke-virtual {v8}, Lg/hac;->l()I

    move-result v13

    iget-object v14, v12, Lg/aep;->aa:Ljava/lang/ref/WeakReference;

    invoke-virtual {v14}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lg/hac;

    invoke-virtual {v14}, Lg/hac;->l()I

    move-result v14

    if-le v13, v14, :cond_15

    :cond_14
    new-instance v13, Ljava/lang/ref/WeakReference;

    invoke-direct {v13, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v13, v12, Lg/aep;->aa:Ljava/lang/ref/WeakReference;

    :cond_15
    iget-boolean v12, v0, Lg/brh;->ap:Z

    if-eqz v12, :cond_16

    iget-boolean v12, v0, Lg/brh;->bg:Z

    if-eqz v12, :cond_16

    const/4 v12, 0x0

    iput-boolean v12, v0, Lg/brh;->ap:Z

    iput-boolean v12, v0, Lg/brh;->bg:Z

    return-void

    :cond_16
    iget-object v12, v0, Lg/brh;->bv:[Z

    if-eqz p2, :cond_1a

    iget-object v13, v0, Lg/brh;->be:Lg/dza;

    if-eqz v13, :cond_1a

    iget-object v14, v0, Lg/brh;->bi:Lg/fju;

    if-eqz v14, :cond_1a

    move-object/from16 v23, v10

    iget-object v10, v13, Lg/mi;->a:Lg/big;

    move-object/from16 v24, v12

    iget-boolean v12, v10, Lg/big;->j:Z

    if-eqz v12, :cond_19

    iget-object v12, v13, Lg/mi;->f:Lg/big;

    iget-boolean v12, v12, Lg/big;->j:Z

    if-eqz v12, :cond_19

    iget-object v12, v14, Lg/mi;->a:Lg/big;

    iget-boolean v12, v12, Lg/big;->j:Z

    if-eqz v12, :cond_19

    iget-object v12, v14, Lg/mi;->f:Lg/big;

    iget-boolean v12, v12, Lg/big;->j:Z

    if-eqz v12, :cond_19

    iget v2, v10, Lg/big;->l:I

    invoke-virtual {v1, v3, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->be:Lg/dza;

    iget-object v2, v2, Lg/mi;->f:Lg/big;

    iget v2, v2, Lg/big;->l:I

    invoke-virtual {v1, v5, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->bi:Lg/fju;

    iget-object v2, v2, Lg/mi;->a:Lg/big;

    iget v2, v2, Lg/big;->l:I

    invoke-virtual {v1, v7, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->bi:Lg/fju;

    iget-object v2, v2, Lg/mi;->f:Lg/big;

    iget v2, v2, Lg/big;->l:I

    invoke-virtual {v1, v9, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->bi:Lg/fju;

    iget-object v2, v2, Lg/fju;->w:Lg/big;

    iget v2, v2, Lg/big;->l:I

    invoke-virtual {v1, v11, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v2, :cond_18

    if-eqz v22, :cond_17

    const/4 v12, 0x0

    aget-boolean v2, v24, v12

    if-eqz v2, :cond_17

    invoke-virtual {v0}, Lg/brh;->eg()Z

    move-result v2

    if-nez v2, :cond_17

    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    iget-object v2, v2, Lg/brh;->br:Lg/hac;

    invoke-virtual {v1, v2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v5, v12, v3}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_17
    if-eqz v20, :cond_18

    aget-boolean v2, v24, v19

    if-eqz v2, :cond_18

    invoke-virtual {v0}, Lg/brh;->dk()Z

    move-result v2

    if-nez v2, :cond_18

    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    iget-object v2, v2, Lg/brh;->as:Lg/hac;

    invoke-virtual {v1, v2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    const/16 v3, 0x8

    const/4 v12, 0x0

    invoke-virtual {v1, v2, v9, v12, v3}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    goto :goto_8

    :cond_18
    const/4 v12, 0x0

    :goto_8
    iput-boolean v12, v0, Lg/brh;->ap:Z

    iput-boolean v12, v0, Lg/brh;->bg:Z

    return-void

    :cond_19
    :goto_9
    const/4 v12, 0x0

    goto :goto_a

    :cond_1a
    move-object/from16 v23, v10

    move-object/from16 v24, v12

    goto :goto_9

    :goto_a
    iget-object v10, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v10, :cond_1f

    invoke-virtual {v0, v12}, Lg/brh;->dv(I)Z

    move-result v10

    if-eqz v10, :cond_1b

    iget-object v10, v0, Lg/brh;->bj:Lg/brh;

    check-cast v10, Lg/aep;

    invoke-virtual {v10, v0, v12}, Lg/aep;->ah(Lg/brh;I)V

    const/4 v10, 0x1

    :goto_b
    const/4 v12, 0x1

    goto :goto_c

    :cond_1b
    invoke-virtual {v0}, Lg/brh;->eg()Z

    move-result v10

    goto :goto_b

    :goto_c
    invoke-virtual {v0, v12}, Lg/brh;->dv(I)Z

    move-result v13

    if-eqz v13, :cond_1c

    iget-object v13, v0, Lg/brh;->bj:Lg/brh;

    check-cast v13, Lg/aep;

    invoke-virtual {v13, v0, v12}, Lg/aep;->ah(Lg/brh;I)V

    const/4 v12, 0x1

    goto :goto_d

    :cond_1c
    invoke-virtual {v0}, Lg/brh;->dk()Z

    move-result v12

    :goto_d
    if-nez v10, :cond_1d

    if-eqz v22, :cond_1d

    iget v13, v0, Lg/brh;->aq:I

    const/16 v14, 0x8

    if-eq v13, v14, :cond_1d

    iget-object v13, v2, Lg/hac;->e:Lg/hac;

    if-nez v13, :cond_1d

    iget-object v13, v4, Lg/hac;->e:Lg/hac;

    if-nez v13, :cond_1d

    iget-object v13, v0, Lg/brh;->bj:Lg/brh;

    iget-object v13, v13, Lg/brh;->br:Lg/hac;

    invoke-virtual {v1, v13}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v13

    move-object/from16 v25, v2

    const/4 v2, 0x0

    const/4 v14, 0x1

    invoke-virtual {v1, v13, v5, v2, v14}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    goto :goto_e

    :cond_1d
    move-object/from16 v25, v2

    :goto_e
    if-nez v12, :cond_1e

    if-eqz v20, :cond_1e

    iget v2, v0, Lg/brh;->aq:I

    const/16 v14, 0x8

    if-eq v2, v14, :cond_1e

    iget-object v2, v6, Lg/hac;->e:Lg/hac;

    if-nez v2, :cond_1e

    iget-object v2, v8, Lg/hac;->e:Lg/hac;

    if-nez v2, :cond_1e

    if-nez v23, :cond_1e

    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    iget-object v2, v2, Lg/brh;->as:Lg/hac;

    invoke-virtual {v1, v2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v1, v2, v9, v13, v14}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_1e
    move-object v2, v4

    move/from16 v4, v20

    move/from16 v20, v12

    move v12, v10

    goto :goto_f

    :cond_1f
    move-object/from16 v25, v2

    move-object v2, v4

    move/from16 v4, v20

    const/4 v12, 0x0

    const/16 v20, 0x0

    :goto_f
    iget v10, v0, Lg/brh;->bc:I

    iget v13, v0, Lg/brh;->bb:I

    if-ge v10, v13, :cond_20

    goto :goto_10

    :cond_20
    move v13, v10

    :goto_10
    iget v14, v0, Lg/brh;->bt:I

    move-object/from16 v26, v2

    iget v2, v0, Lg/brh;->au:I

    if-ge v14, v2, :cond_21

    move/from16 v27, v2

    goto :goto_11

    :cond_21
    move/from16 v27, v14

    :goto_11
    iget-object v2, v0, Lg/brh;->ch:[Lg/fol;

    move-object/from16 v28, v2

    const/16 v17, 0x0

    aget-object v2, v28, v17

    move/from16 v29, v4

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-eq v2, v4, :cond_22

    const/16 v30, 0x1

    :goto_12
    move-object/from16 v31, v6

    const/16 v19, 0x1

    goto :goto_13

    :cond_22
    const/16 v30, 0x0

    goto :goto_12

    :goto_13
    aget-object v6, v28, v19

    if-eq v6, v4, :cond_23

    const/16 v32, 0x1

    :goto_14
    move-object/from16 v33, v7

    goto :goto_15

    :cond_23
    const/16 v32, 0x0

    goto :goto_14

    :goto_15
    iget v7, v0, Lg/brh;->db:I

    iput v7, v0, Lg/brh;->cl:I

    move-object/from16 v34, v8

    iget v8, v0, Lg/brh;->bq:F

    iput v8, v0, Lg/brh;->bf:F

    move/from16 v35, v8

    iget v8, v0, Lg/brh;->da:I

    move/from16 v36, v8

    iget v8, v0, Lg/brh;->by:I

    const/16 v37, 0x0

    move/from16 v38, v8

    const/high16 v39, 0x3f800000    # 1.0f

    cmpl-float v37, v35, v37

    if-lez v37, :cond_38

    iget v8, v0, Lg/brh;->aq:I

    move-object/from16 v40, v9

    const/16 v9, 0x8

    if-eq v8, v9, :cond_37

    if-ne v2, v4, :cond_24

    if-nez v36, :cond_24

    const/4 v8, 0x3

    goto :goto_16

    :cond_24
    move/from16 v8, v36

    :goto_16
    if-ne v6, v4, :cond_25

    if-nez v38, :cond_25

    const/4 v9, 0x3

    goto :goto_17

    :cond_25
    move/from16 v9, v38

    :goto_17
    if-ne v2, v4, :cond_30

    if-ne v6, v4, :cond_30

    move-object/from16 v41, v11

    const/4 v11, 0x3

    if-ne v8, v11, :cond_31

    if-ne v9, v11, :cond_31

    const/4 v11, -0x1

    if-ne v7, v11, :cond_27

    if-eqz v30, :cond_26

    if-nez v32, :cond_26

    const/4 v2, 0x0

    iput v2, v0, Lg/brh;->cl:I

    goto :goto_18

    :cond_26
    if-nez v30, :cond_27

    if-eqz v32, :cond_27

    const/4 v14, 0x1

    iput v14, v0, Lg/brh;->cl:I

    if-ne v7, v11, :cond_27

    div-float v2, v39, v35

    iput v2, v0, Lg/brh;->bf:F

    :cond_27
    :goto_18
    iget v2, v0, Lg/brh;->cl:I

    if-nez v2, :cond_29

    invoke-virtual/range {v31 .. v31}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual/range {v34 .. v34}, Lg/hac;->j()Z

    move-result v2

    if-nez v2, :cond_29

    :cond_28
    const/4 v14, 0x1

    goto :goto_19

    :cond_29
    const/4 v14, 0x1

    goto :goto_1a

    :goto_19
    iput v14, v0, Lg/brh;->cl:I

    goto :goto_1b

    :goto_1a
    iget v2, v0, Lg/brh;->cl:I

    if-ne v2, v14, :cond_2b

    invoke-virtual/range {v25 .. v25}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_2a

    invoke-virtual/range {v26 .. v26}, Lg/hac;->j()Z

    move-result v2

    if-nez v2, :cond_2b

    :cond_2a
    const/4 v2, 0x0

    iput v2, v0, Lg/brh;->cl:I

    :cond_2b
    :goto_1b
    iget v2, v0, Lg/brh;->cl:I

    const/4 v11, -0x1

    if-ne v2, v11, :cond_2e

    invoke-virtual/range {v31 .. v31}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual/range {v34 .. v34}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual/range {v25 .. v25}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual/range {v26 .. v26}, Lg/hac;->j()Z

    move-result v2

    if-nez v2, :cond_2e

    :cond_2c
    invoke-virtual/range {v31 .. v31}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-virtual/range {v34 .. v34}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_2d

    const/4 v2, 0x0

    iput v2, v0, Lg/brh;->cl:I

    goto :goto_1c

    :cond_2d
    invoke-virtual/range {v25 .. v25}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-virtual/range {v26 .. v26}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget v2, v0, Lg/brh;->bf:F

    div-float v2, v39, v2

    iput v2, v0, Lg/brh;->bf:F

    const/4 v14, 0x1

    iput v14, v0, Lg/brh;->cl:I

    :cond_2e
    :goto_1c
    iget v2, v0, Lg/brh;->cl:I

    const/4 v11, -0x1

    if-ne v2, v11, :cond_36

    iget v2, v0, Lg/brh;->bl:I

    if-lez v2, :cond_2f

    iget v6, v0, Lg/brh;->cy:I

    if-nez v6, :cond_2f

    const/4 v6, 0x0

    iput v6, v0, Lg/brh;->cl:I

    goto :goto_20

    :cond_2f
    if-nez v2, :cond_36

    iget v2, v0, Lg/brh;->cy:I

    if-lez v2, :cond_36

    iget v2, v0, Lg/brh;->bf:F

    div-float v2, v39, v2

    iput v2, v0, Lg/brh;->bf:F

    const/4 v14, 0x1

    iput v14, v0, Lg/brh;->cl:I

    goto :goto_20

    :cond_30
    move-object/from16 v41, v11

    :cond_31
    if-ne v2, v4, :cond_33

    const/4 v11, 0x3

    if-ne v8, v11, :cond_33

    const/4 v11, 0x0

    iput v11, v0, Lg/brh;->cl:I

    int-to-float v2, v14

    mul-float v2, v2, v35

    float-to-int v2, v2

    move v13, v2

    move-object/from16 v2, v23

    move/from16 v30, v27

    if-eq v6, v4, :cond_32

    const/4 v8, 0x4

    const/16 v31, 0x0

    :goto_1d
    move/from16 v23, v9

    goto :goto_23

    :cond_32
    :goto_1e
    const/16 v31, 0x1

    goto :goto_1d

    :cond_33
    if-ne v6, v4, :cond_36

    const/4 v11, 0x3

    if-ne v9, v11, :cond_36

    const/4 v14, 0x1

    iput v14, v0, Lg/brh;->cl:I

    const/4 v11, -0x1

    if-ne v7, v11, :cond_34

    div-float v6, v39, v35

    iput v6, v0, Lg/brh;->bf:F

    :cond_34
    iget v6, v0, Lg/brh;->bf:F

    int-to-float v7, v10

    mul-float v6, v6, v7

    float-to-int v6, v6

    move/from16 v30, v6

    if-eq v2, v4, :cond_35

    move-object/from16 v2, v23

    const/16 v23, 0x4

    :goto_1f
    const/16 v31, 0x0

    goto :goto_23

    :cond_35
    move-object/from16 v2, v23

    goto :goto_1e

    :cond_36
    :goto_20
    move-object/from16 v2, v23

    move/from16 v30, v27

    goto :goto_1e

    :cond_37
    :goto_21
    move-object/from16 v41, v11

    goto :goto_22

    :cond_38
    move-object/from16 v40, v9

    goto :goto_21

    :goto_22
    move-object/from16 v2, v23

    move/from16 v30, v27

    move/from16 v8, v36

    move/from16 v23, v38

    goto :goto_1f

    :goto_23
    iget-object v6, v0, Lg/brh;->cm:[I

    const/16 v17, 0x0

    aput v8, v6, v17

    const/16 v19, 0x1

    aput v23, v6, v19

    if-eqz v31, :cond_3a

    iget v6, v0, Lg/brh;->cl:I

    const/4 v11, -0x1

    if-eqz v6, :cond_39

    if-ne v6, v11, :cond_3b

    :cond_39
    const/4 v6, 0x1

    goto :goto_24

    :cond_3a
    const/4 v11, -0x1

    :cond_3b
    const/4 v6, 0x0

    :goto_24
    if-eqz v31, :cond_3d

    iget v7, v0, Lg/brh;->cl:I

    const/4 v14, 0x1

    if-eq v7, v14, :cond_3c

    if-ne v7, v11, :cond_3d

    :cond_3c
    const/16 v32, 0x1

    :goto_25
    const/16 v17, 0x0

    goto :goto_26

    :cond_3d
    const/16 v32, 0x0

    goto :goto_25

    :goto_26
    aget-object v7, v28, v17

    sget-object v9, Lg/fol;->WRAP_CONTENT:Lg/fol;

    if-ne v7, v9, :cond_3e

    instance-of v7, v0, Lg/aep;

    if-eqz v7, :cond_3e

    move-object v7, v9

    const/4 v9, 0x1

    goto :goto_27

    :cond_3e
    move-object v7, v9

    const/4 v9, 0x0

    :goto_27
    if-eqz v9, :cond_3f

    const/4 v13, 0x0

    :cond_3f
    iget-object v10, v0, Lg/brh;->cd:Lg/hac;

    invoke-virtual {v10}, Lg/hac;->j()Z

    move-result v11

    const/16 v19, 0x1

    xor-int/lit8 v27, v11, 0x1

    const/16 v14, 0x8

    const/16 v17, 0x0

    aget-boolean v21, v15, v17

    aget-boolean v35, v15, v19

    iget v11, v0, Lg/brh;->av:I

    iget-object v15, v0, Lg/brh;->bo:[I

    const/16 v36, 0x0

    const/4 v14, 0x2

    if-eq v11, v14, :cond_47

    iget-boolean v11, v0, Lg/brh;->ap:Z

    if-nez v11, :cond_47

    if-eqz p2, :cond_43

    iget-object v11, v0, Lg/brh;->be:Lg/dza;

    if-eqz v11, :cond_43

    iget-object v14, v11, Lg/mi;->a:Lg/big;

    move-object/from16 v25, v2

    iget-boolean v2, v14, Lg/big;->j:Z

    if-eqz v2, :cond_40

    iget-object v2, v11, Lg/mi;->f:Lg/big;

    iget-boolean v2, v2, Lg/big;->j:Z

    if-nez v2, :cond_41

    :cond_40
    :goto_28
    const/16 v14, 0x8

    goto :goto_2a

    :cond_41
    if-eqz p2, :cond_42

    iget v2, v14, Lg/big;->l:I

    invoke-virtual {v1, v3, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->be:Lg/dza;

    iget-object v2, v2, Lg/mi;->f:Lg/big;

    iget v2, v2, Lg/big;->l:I

    invoke-virtual {v1, v5, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v2, :cond_42

    if-eqz v22, :cond_42

    const/4 v2, 0x0

    aget-boolean v6, v24, v2

    if-eqz v6, :cond_42

    invoke-virtual {v0}, Lg/brh;->eg()Z

    move-result v6

    if-nez v6, :cond_42

    iget-object v6, v0, Lg/brh;->bj:Lg/brh;

    iget-object v6, v6, Lg/brh;->br:Lg/hac;

    invoke-virtual {v1, v6}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v6

    const/16 v14, 0x8

    invoke-virtual {v1, v6, v5, v2, v14}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_42
    move-object/from16 v49, v3

    move-object/from16 v54, v4

    move-object/from16 v50, v5

    move-object/from16 v55, v7

    move-object/from16 v47, v10

    move/from16 v19, v12

    move-object/from16 v42, v15

    move/from16 v3, v22

    move-object/from16 v57, v25

    :goto_29
    move/from16 v4, v29

    move-object/from16 v51, v33

    move-object/from16 v56, v34

    move-object/from16 v52, v40

    move-object/from16 v53, v41

    move/from16 v22, v8

    move-object/from16 v29, v24

    goto/16 :goto_2f

    :cond_43
    move-object/from16 v25, v2

    goto :goto_28

    :goto_2a
    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v2, :cond_44

    iget-object v2, v2, Lg/brh;->br:Lg/hac;

    invoke-virtual {v1, v2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    goto :goto_2b

    :cond_44
    move-object/from16 v2, v36

    :goto_2b
    iget-object v11, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v11, :cond_45

    iget-object v11, v11, Lg/brh;->cw:Lg/hac;

    invoke-virtual {v1, v11}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v11

    :goto_2c
    move-object/from16 v16, v5

    const/16 v17, 0x0

    goto :goto_2d

    :cond_45
    move-object/from16 v11, v36

    goto :goto_2c

    :goto_2d
    aget-boolean v5, v24, v17

    move-object/from16 v26, v3

    move/from16 v3, v22

    move/from16 v22, v8

    aget-object v8, v28, v17

    move/from16 v19, v12

    const/16 v37, 0x1

    iget v12, v0, Lg/brh;->cv:I

    const/16 v38, 0x8

    iget v14, v0, Lg/brh;->bb:I

    move-object/from16 v42, v15

    aget v15, v42, v17

    iget v1, v0, Lg/brh;->cp:F

    move/from16 v43, v1

    aget-object v1, v28, v37

    if-ne v1, v4, :cond_46

    const/16 v18, 0x1

    goto :goto_2e

    :cond_46
    const/16 v18, 0x0

    :goto_2e
    iget v1, v0, Lg/brh;->bl:I

    move/from16 v44, v1

    iget v1, v0, Lg/brh;->bs:I

    move/from16 v45, v1

    iget v1, v0, Lg/brh;->bu:F

    move-object/from16 v46, v7

    move-object v7, v2

    const/4 v2, 0x1

    move-object/from16 v47, v10

    iget-object v10, v0, Lg/brh;->cw:Lg/hac;

    move/from16 v17, v6

    move-object v6, v11

    const/16 v48, 0x0

    iget-object v11, v0, Lg/brh;->br:Lg/hac;

    move-object/from16 v54, v4

    move-object/from16 v50, v16

    move-object/from16 v57, v25

    move-object/from16 v49, v26

    move/from16 v4, v29

    move-object/from16 v51, v33

    move-object/from16 v56, v34

    move-object/from16 v52, v40

    move-object/from16 v53, v41

    move/from16 v16, v43

    move/from16 v25, v45

    move-object/from16 v55, v46

    move/from16 v26, v1

    move-object/from16 v29, v24

    move/from16 v24, v44

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v27}, Lg/brh;->dm(Lg/bwo;ZZZZLg/crb;Lg/crb;Lg/fol;ZLg/hac;Lg/hac;IIIIFZZZZZIIIIFZ)V

    goto :goto_2f

    :cond_47
    move-object/from16 v57, v2

    move-object/from16 v49, v3

    move-object/from16 v54, v4

    move-object/from16 v50, v5

    move-object/from16 v55, v7

    move-object/from16 v47, v10

    move/from16 v19, v12

    move-object/from16 v42, v15

    move/from16 v3, v22

    goto/16 :goto_29

    :goto_2f
    if-eqz p2, :cond_4a

    iget-object v2, v0, Lg/brh;->bi:Lg/fju;

    if-eqz v2, :cond_4a

    iget-object v5, v2, Lg/mi;->a:Lg/big;

    iget-boolean v6, v5, Lg/big;->j:Z

    if-eqz v6, :cond_4a

    iget-object v2, v2, Lg/mi;->f:Lg/big;

    iget-boolean v2, v2, Lg/big;->j:Z

    if-eqz v2, :cond_4a

    iget v2, v5, Lg/big;->l:I

    move-object/from16 v5, v51

    invoke-virtual {v1, v5, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->bi:Lg/fju;

    iget-object v2, v2, Lg/mi;->f:Lg/big;

    iget v2, v2, Lg/big;->l:I

    move-object/from16 v6, v52

    invoke-virtual {v1, v6, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->bi:Lg/fju;

    iget-object v2, v2, Lg/fju;->w:Lg/big;

    iget v2, v2, Lg/big;->l:I

    move-object/from16 v7, v53

    invoke-virtual {v1, v7, v2}, Lg/bwo;->v(Lg/crb;I)V

    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v2, :cond_49

    if-nez v20, :cond_49

    if-eqz v4, :cond_49

    const/4 v14, 0x1

    aget-boolean v8, v29, v14

    if-eqz v8, :cond_48

    iget-object v2, v2, Lg/brh;->as:Lg/hac;

    invoke-virtual {v1, v2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    const/4 v8, 0x0

    const/16 v9, 0x8

    invoke-virtual {v1, v2, v6, v8, v9}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    goto :goto_30

    :cond_48
    const/4 v8, 0x0

    const/16 v9, 0x8

    goto :goto_30

    :cond_49
    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v14, 0x1

    :goto_30
    const/4 v15, 0x0

    goto :goto_31

    :cond_4a
    move-object/from16 v5, v51

    move-object/from16 v6, v52

    move-object/from16 v7, v53

    const/4 v8, 0x0

    const/16 v9, 0x8

    const/4 v14, 0x1

    const/4 v15, 0x1

    :goto_31
    iget v2, v0, Lg/brh;->bz:I

    const/4 v10, 0x2

    if-ne v2, v10, :cond_4b

    const/4 v15, 0x0

    :cond_4b
    if-eqz v15, :cond_56

    iget-boolean v2, v0, Lg/brh;->bg:Z

    if-nez v2, :cond_56

    aget-object v2, v28, v14

    move-object/from16 v10, v55

    if-ne v2, v10, :cond_4c

    instance-of v2, v0, Lg/aep;

    if-eqz v2, :cond_4c

    const/4 v15, 0x1

    goto :goto_32

    :cond_4c
    const/4 v15, 0x0

    :goto_32
    if-eqz v15, :cond_4d

    const/4 v13, 0x0

    goto :goto_33

    :cond_4d
    move/from16 v13, v30

    :goto_33
    iget-object v2, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v2, :cond_4e

    iget-object v2, v2, Lg/brh;->as:Lg/hac;

    invoke-virtual {v1, v2}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v2

    goto :goto_34

    :cond_4e
    move-object/from16 v2, v36

    :goto_34
    iget-object v10, v0, Lg/brh;->bj:Lg/brh;

    if-eqz v10, :cond_4f

    iget-object v10, v10, Lg/brh;->bx:Lg/hac;

    invoke-virtual {v1, v10}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v36

    :cond_4f
    iget v10, v0, Lg/brh;->bn:I

    if-gtz v10, :cond_50

    iget v11, v0, Lg/brh;->aq:I

    if-ne v11, v9, :cond_54

    :cond_50
    move-object/from16 v11, v57

    iget-object v12, v11, Lg/hac;->e:Lg/hac;

    if-eqz v12, :cond_52

    invoke-virtual {v1, v7, v5, v10, v9}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    iget-object v10, v11, Lg/hac;->e:Lg/hac;

    invoke-virtual {v1, v10}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v10

    invoke-virtual {v11}, Lg/hac;->n()I

    move-result v11

    invoke-virtual {v1, v7, v10, v11, v9}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    if-eqz v4, :cond_51

    move-object/from16 v7, v56

    invoke-virtual {v1, v7}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v7

    const/4 v9, 0x5

    invoke-virtual {v1, v2, v7, v8, v9}, Lg/bwo;->z(Lg/crb;Lg/crb;II)V

    :cond_51
    const/16 v27, 0x0

    goto :goto_35

    :cond_52
    iget v12, v0, Lg/brh;->aq:I

    if-ne v12, v9, :cond_53

    invoke-virtual {v11}, Lg/hac;->n()I

    move-result v10

    invoke-virtual {v1, v7, v5, v10, v9}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    goto :goto_35

    :cond_53
    invoke-virtual {v1, v7, v5, v10, v9}, Lg/bwo;->x(Lg/crb;Lg/crb;II)V

    :cond_54
    :goto_35
    aget-boolean v7, v29, v14

    const/16 v17, 0x0

    aget-object v8, v28, v14

    iget v12, v0, Lg/brh;->cb:I

    const/16 v37, 0x1

    iget v14, v0, Lg/brh;->au:I

    aget v9, v42, v37

    iget v10, v0, Lg/brh;->ct:F

    aget-object v11, v28, v17

    move-object/from16 v1, v54

    if-ne v11, v1, :cond_55

    const/16 v18, 0x1

    goto :goto_36

    :cond_55
    const/16 v18, 0x0

    :goto_36
    iget v1, v0, Lg/brh;->cy:I

    iget v11, v0, Lg/brh;->aw:I

    move/from16 v24, v1

    iget v1, v0, Lg/brh;->am:F

    move-object/from16 v33, v5

    move v5, v7

    move-object v7, v2

    const/4 v2, 0x0

    move/from16 v16, v10

    iget-object v10, v0, Lg/brh;->bx:Lg/hac;

    move/from16 v25, v11

    iget-object v11, v0, Lg/brh;->as:Lg/hac;

    move/from16 v17, v4

    move v4, v3

    move/from16 v3, v17

    move/from16 v17, v15

    move v15, v9

    move/from16 v9, v17

    move/from16 v17, v20

    move/from16 v20, v19

    move/from16 v19, v17

    move/from16 v17, v23

    move/from16 v23, v22

    move/from16 v22, v17

    move/from16 v26, v1

    move-object/from16 v59, v6

    move/from16 v17, v32

    move-object/from16 v58, v33

    move/from16 v21, v35

    move-object/from16 v6, v36

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v27}, Lg/brh;->dm(Lg/bwo;ZZZZLg/crb;Lg/crb;Lg/fol;ZLg/hac;Lg/hac;IIIIFZZZZZIIIIFZ)V

    goto :goto_37

    :cond_56
    move-object/from16 v58, v5

    move-object/from16 v59, v6

    :goto_37
    if-eqz v31, :cond_58

    iget v2, v0, Lg/brh;->cl:I

    const/high16 v3, -0x40800000    # -1.0f

    const/4 v14, 0x1

    if-ne v2, v14, :cond_57

    iget v2, v0, Lg/brh;->bf:F

    invoke-virtual {v1}, Lg/bwo;->w()Lg/gz;

    move-result-object v4

    iget-object v5, v4, Lg/gz;->a:Lg/fnf;

    move-object/from16 v6, v59

    invoke-virtual {v5, v6, v3}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v3, v4, Lg/gz;->a:Lg/fnf;

    move-object/from16 v5, v58

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v7}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v3, v4, Lg/gz;->a:Lg/fnf;

    move-object/from16 v8, v50

    invoke-virtual {v3, v8, v2}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v3, v4, Lg/gz;->a:Lg/fnf;

    neg-float v2, v2

    move-object/from16 v9, v49

    invoke-virtual {v3, v9, v2}, Lg/fnf;->r(Lg/crb;F)V

    invoke-virtual {v1, v4}, Lg/bwo;->ai(Lg/gz;)V

    goto :goto_38

    :cond_57
    move-object/from16 v9, v49

    move-object/from16 v8, v50

    move-object/from16 v5, v58

    move-object/from16 v6, v59

    const/high16 v7, 0x3f800000    # 1.0f

    iget v2, v0, Lg/brh;->bf:F

    invoke-virtual {v1}, Lg/bwo;->w()Lg/gz;

    move-result-object v4

    iget-object v10, v4, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v10, v8, v3}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v3, v4, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v3, v9, v7}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v3, v4, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v3, v6, v2}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v3, v4, Lg/gz;->a:Lg/fnf;

    neg-float v2, v2

    invoke-virtual {v3, v5, v2}, Lg/fnf;->r(Lg/crb;F)V

    invoke-virtual {v1, v4}, Lg/bwo;->ai(Lg/gz;)V

    :cond_58
    :goto_38
    invoke-virtual/range {v47 .. v47}, Lg/hac;->j()Z

    move-result v2

    if-eqz v2, :cond_59

    move-object/from16 v2, v47

    iget-object v3, v2, Lg/hac;->e:Lg/hac;

    iget-object v3, v3, Lg/hac;->b:Lg/brh;

    iget v4, v0, Lg/brh;->bm:F

    const/high16 v5, 0x42b40000    # 90.0f

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2}, Lg/hac;->n()I

    move-result v2

    sget-object v5, Lg/dih;->LEFT:Lg/dih;

    invoke-virtual {v0, v5}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v6

    invoke-virtual {v1, v6}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v6

    sget-object v7, Lg/dih;->TOP:Lg/dih;

    invoke-virtual {v0, v7}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v8

    invoke-virtual {v1, v8}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v8

    sget-object v9, Lg/dih;->RIGHT:Lg/dih;

    invoke-virtual {v0, v9}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v10

    invoke-virtual {v1, v10}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v10

    sget-object v11, Lg/dih;->BOTTOM:Lg/dih;

    invoke-virtual {v0, v11}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v12

    invoke-virtual {v1, v12}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v12

    invoke-virtual {v3, v5}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v5

    invoke-virtual {v1, v5}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v5

    invoke-virtual {v3, v7}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v7

    invoke-virtual {v1, v7}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v7

    invoke-virtual {v3, v9}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v9

    invoke-virtual {v1, v9}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v9

    invoke-virtual {v3, v11}, Lg/brh;->m(Lg/dih;)Lg/hac;

    move-result-object v3

    invoke-virtual {v1, v3}, Lg/bwo;->t(Ljava/lang/Object;)Lg/crb;

    move-result-object v3

    invoke-virtual {v1}, Lg/bwo;->w()Lg/gz;

    move-result-object v11

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v15

    move-wide/from16 v17, v13

    int-to-double v13, v2

    move-wide/from16 v19, v13

    mul-double v13, v15, v19

    double-to-float v2, v13

    iget-object v4, v11, Lg/gz;->a:Lg/fnf;

    const/high16 v13, 0x3f000000    # 0.5f

    invoke-virtual {v4, v7, v13}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v4, v11, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v4, v3, v13}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v3, v11, Lg/gz;->a:Lg/fnf;

    const/high16 v4, -0x41000000    # -0.5f

    invoke-virtual {v3, v8, v4}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v3, v11, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v3, v12, v4}, Lg/fnf;->r(Lg/crb;F)V

    neg-float v2, v2

    iput v2, v11, Lg/gz;->d:F

    invoke-virtual {v1, v11}, Lg/bwo;->ai(Lg/gz;)V

    invoke-virtual {v1}, Lg/bwo;->w()Lg/gz;

    move-result-object v2

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double v7, v7, v19

    double-to-float v3, v7

    iget-object v7, v2, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v7, v5, v13}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v5, v2, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v5, v9, v13}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v5, v2, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v5, v6, v4}, Lg/fnf;->r(Lg/crb;F)V

    iget-object v5, v2, Lg/gz;->a:Lg/fnf;

    invoke-virtual {v5, v10, v4}, Lg/fnf;->r(Lg/crb;F)V

    neg-float v3, v3

    iput v3, v2, Lg/gz;->d:F

    invoke-virtual {v1, v2}, Lg/bwo;->ai(Lg/gz;)V

    :cond_59
    const/4 v2, 0x0

    iput-boolean v2, v0, Lg/brh;->ap:Z

    iput-boolean v2, v0, Lg/brh;->bg:Z

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lg/brh;->ap:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lg/brh;->cw:Lg/hac;

    iget-boolean v0, v0, Lg/hac;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/brh;->br:Lg/hac;

    iget-boolean v0, v0, Lg/hac;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public j()Z
    .locals 2

    iget v0, p0, Lg/brh;->aq:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k(Lg/bwo;Z)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lg/brh;->cw:Lg/hac;

    invoke-static {p1}, Lg/bwo;->r(Ljava/lang/Object;)I

    move-result p1

    iget-object v0, p0, Lg/brh;->bx:Lg/hac;

    invoke-static {v0}, Lg/bwo;->r(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Lg/brh;->br:Lg/hac;

    invoke-static {v1}, Lg/bwo;->r(Ljava/lang/Object;)I

    move-result v1

    iget-object v2, p0, Lg/brh;->as:Lg/hac;

    invoke-static {v2}, Lg/bwo;->r(Ljava/lang/Object;)I

    move-result v2

    if-eqz p2, :cond_0

    iget-object v3, p0, Lg/brh;->be:Lg/dza;

    if-eqz v3, :cond_0

    iget-object v4, v3, Lg/mi;->a:Lg/big;

    iget-boolean v5, v4, Lg/big;->j:Z

    if-eqz v5, :cond_0

    iget-object v3, v3, Lg/mi;->f:Lg/big;

    iget-boolean v5, v3, Lg/big;->j:Z

    if-eqz v5, :cond_0

    iget p1, v4, Lg/big;->l:I

    iget v1, v3, Lg/big;->l:I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p2, p0, Lg/brh;->bi:Lg/fju;

    if-eqz p2, :cond_1

    iget-object v3, p2, Lg/mi;->a:Lg/big;

    iget-boolean v4, v3, Lg/big;->j:Z

    if-eqz v4, :cond_1

    iget-object p2, p2, Lg/mi;->f:Lg/big;

    iget-boolean v4, p2, Lg/big;->j:Z

    if-eqz v4, :cond_1

    iget v0, v3, Lg/big;->l:I

    iget v2, p2, Lg/big;->l:I

    :cond_1
    sub-int p2, v1, p1

    sub-int v3, v2, v0

    const/4 v4, 0x0

    if-ltz p2, :cond_2

    if-ltz v3, :cond_2

    const/high16 p2, -0x80000000

    if-eq p1, p2, :cond_2

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_2

    if-eq v0, p2, :cond_2

    if-eq v0, v3, :cond_2

    if-eq v1, p2, :cond_2

    if-eq v1, v3, :cond_2

    if-eq v2, p2, :cond_2

    if-ne v2, v3, :cond_3

    :cond_2
    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_3
    sub-int/2addr v1, p1

    sub-int/2addr v2, v0

    iput p1, p0, Lg/brh;->cv:I

    iput v0, p0, Lg/brh;->cb:I

    iget p1, p0, Lg/brh;->aq:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_4

    iput v4, p0, Lg/brh;->bc:I

    iput v4, p0, Lg/brh;->bt:I

    return-void

    :cond_4
    iget-object p1, p0, Lg/brh;->ch:[Lg/fol;

    aget-object p2, p1, v4

    sget-object v0, Lg/fol;->FIXED:Lg/fol;

    if-ne p2, v0, :cond_5

    iget v3, p0, Lg/brh;->bc:I

    if-ge v1, v3, :cond_5

    move v1, v3

    :cond_5
    const/4 v3, 0x1

    aget-object v4, p1, v3

    if-ne v4, v0, :cond_6

    iget v0, p0, Lg/brh;->bt:I

    if-ge v2, v0, :cond_6

    move v2, v0

    :cond_6
    iput v1, p0, Lg/brh;->bc:I

    iput v2, p0, Lg/brh;->bt:I

    iget v0, p0, Lg/brh;->au:I

    if-ge v2, v0, :cond_7

    iput v0, p0, Lg/brh;->bt:I

    :cond_7
    iget v0, p0, Lg/brh;->bb:I

    if-ge v1, v0, :cond_8

    iput v0, p0, Lg/brh;->bc:I

    :cond_8
    iget v0, p0, Lg/brh;->bs:I

    if-lez v0, :cond_9

    sget-object v4, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne p2, v4, :cond_9

    iget p2, p0, Lg/brh;->bc:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iput p2, p0, Lg/brh;->bc:I

    :cond_9
    iget p2, p0, Lg/brh;->aw:I

    if-lez p2, :cond_a

    aget-object p1, p1, v3

    sget-object v0, Lg/fol;->MATCH_CONSTRAINT:Lg/fol;

    if-ne p1, v0, :cond_a

    iget p1, p0, Lg/brh;->bt:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lg/brh;->bt:I

    :cond_a
    iget p1, p0, Lg/brh;->bc:I

    if-eq v1, p1, :cond_b

    iput p1, p0, Lg/brh;->ao:I

    :cond_b
    iget p1, p0, Lg/brh;->bt:I

    if-eq v2, p1, :cond_c

    iput p1, p0, Lg/brh;->ce:I

    :cond_c
    return-void
.end method

.method public m(Lg/dih;)Lg/hac;
    .locals 2

    sget-object v0, Lg/chg;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    const/4 p1, 0x0

    return-object p1

    :pswitch_1
    iget-object p1, p0, Lg/brh;->co:Lg/hac;

    return-object p1

    :pswitch_2
    iget-object p1, p0, Lg/brh;->ay:Lg/hac;

    return-object p1

    :pswitch_3
    iget-object p1, p0, Lg/brh;->cd:Lg/hac;

    return-object p1

    :pswitch_4
    iget-object p1, p0, Lg/brh;->bp:Lg/hac;

    return-object p1

    :pswitch_5
    iget-object p1, p0, Lg/brh;->as:Lg/hac;

    return-object p1

    :pswitch_6
    iget-object p1, p0, Lg/brh;->br:Lg/hac;

    return-object p1

    :pswitch_7
    iget-object p1, p0, Lg/brh;->bx:Lg/hac;

    return-object p1

    :pswitch_8
    iget-object p1, p0, Lg/brh;->cw:Lg/hac;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public toString()Ljava/lang/String;
    .locals 4

    const-string v0, ""

    invoke-static {v0}, Lg/awf;->o(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lg/brh;->an:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "id: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lg/brh;->an:Ljava/lang/String;

    const-string v3, " "

    invoke-static {v0, v2, v3}, Lg/awf;->ad(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/brh;->cv:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/brh;->cb:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ") - ("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/brh;->bc:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " x "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lg/brh;->bt:I

    const-string v2, ")"

    invoke-static {v1, v0, v2}, Lg/awf;->x(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
