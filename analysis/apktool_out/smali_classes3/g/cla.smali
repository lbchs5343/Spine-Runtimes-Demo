.class public final Lg/cla;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Z

.field public static final b:I

.field public static c:Ljava/lang/reflect/Constructor;

.field public static d:Landroid/text/TextDirectionHeuristic;


# instance fields
.field public e:F

.field public f:Z

.field public g:I

.field public h:Landroid/text/TextUtils$TruncateAt;

.field public i:Landroid/text/Layout$Alignment;

.field public j:Ljava/lang/CharSequence;

.field public k:I

.field public l:Lg/aoi;

.field public m:I

.field public final n:Landroid/text/TextPaint;

.field public o:Z

.field public final p:I

.field public q:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput v0, Lg/cla;->b:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cla;->j:Ljava/lang/CharSequence;

    iput-object p2, p0, Lg/cla;->n:Landroid/text/TextPaint;

    iput p3, p0, Lg/cla;->p:I

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    iput p1, p0, Lg/cla;->g:I

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    iput-object p1, p0, Lg/cla;->i:Landroid/text/Layout$Alignment;

    const p1, 0x7fffffff

    iput p1, p0, Lg/cla;->k:I

    const/4 p1, 0x0

    iput p1, p0, Lg/cla;->q:F

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lg/cla;->e:F

    sget p1, Lg/cla;->b:I

    iput p1, p0, Lg/cla;->m:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lg/cla;->o:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lg/cla;->h:Landroid/text/TextUtils$TruncateAt;

    return-void
.end method


# virtual methods
.method public final r()Landroid/text/StaticLayout;
    .locals 28

    move-object/from16 v1, p0

    iget-object v0, v1, Lg/cla;->j:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, v1, Lg/cla;->j:Ljava/lang/CharSequence;

    :cond_0
    iget v0, v1, Lg/cla;->p:I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, v1, Lg/cla;->j:Ljava/lang/CharSequence;

    iget v4, v1, Lg/cla;->k:I

    iget-object v5, v1, Lg/cla;->n:Landroid/text/TextPaint;

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    int-to-float v4, v0

    iget-object v7, v1, Lg/cla;->h:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v3, v5, v4, v7}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    iget v7, v1, Lg/cla;->g:I

    invoke-static {v4, v7}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v1, Lg/cla;->g:I

    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v8, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    const/16 v10, 0x17

    if-lt v7, v10, :cond_a

    iget-boolean v2, v1, Lg/cla;->f:Z

    if-eqz v2, :cond_2

    iget v2, v1, Lg/cla;->k:I

    if-ne v2, v6, :cond_2

    sget-object v2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    iput-object v2, v1, Lg/cla;->i:Landroid/text/Layout$Alignment;

    :cond_2
    invoke-static {v3, v4, v5, v0}, Lg/gdl;->c(Ljava/lang/CharSequence;ILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v0

    iget-object v2, v1, Lg/cla;->i:Landroid/text/Layout$Alignment;

    invoke-static {v0, v2}, Lg/gdl;->z(Landroid/text/StaticLayout$Builder;Landroid/text/Layout$Alignment;)V

    iget-boolean v2, v1, Lg/cla;->o:Z

    invoke-static {v0, v2}, Lg/gdl;->o(Landroid/text/StaticLayout$Builder;Z)V

    iget-boolean v2, v1, Lg/cla;->f:Z

    if-eqz v2, :cond_3

    sget-object v2, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_0

    :cond_3
    sget-object v2, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_0
    invoke-static {v0, v2}, Lg/gnm;->s(Landroid/text/StaticLayout$Builder;Landroid/text/TextDirectionHeuristic;)V

    iget-object v2, v1, Lg/cla;->h:Landroid/text/TextUtils$TruncateAt;

    if-eqz v2, :cond_4

    invoke-static {v0, v2}, Lg/gdl;->l(Landroid/text/StaticLayout$Builder;Landroid/text/TextUtils$TruncateAt;)V

    :cond_4
    iget v2, v1, Lg/cla;->k:I

    invoke-static {v0, v2}, Lg/gdl;->r(Landroid/text/StaticLayout$Builder;I)V

    iget v2, v1, Lg/cla;->q:F

    cmpl-float v3, v2, v9

    if-nez v3, :cond_5

    iget v3, v1, Lg/cla;->e:F

    cmpl-float v3, v3, v8

    if-eqz v3, :cond_6

    :cond_5
    iget v3, v1, Lg/cla;->e:F

    invoke-static {v0, v2, v3}, Lg/gdl;->ad(Landroid/text/StaticLayout$Builder;FF)V

    :cond_6
    iget v2, v1, Lg/cla;->k:I

    if-le v2, v6, :cond_7

    iget v2, v1, Lg/cla;->m:I

    invoke-static {v0, v2}, Lg/gdl;->n(Landroid/text/StaticLayout$Builder;I)V

    :cond_7
    iget-object v2, v1, Lg/cla;->l:Lg/aoi;

    if-eqz v2, :cond_9

    iget-object v2, v2, Lg/aoi;->b:Ljava/lang/Object;

    check-cast v2, Lcom/google/android/material/textfield/TextInputLayout;

    if-lt v7, v10, :cond_8

    iget-object v2, v2, Lcom/google/android/material/textfield/TextInputLayout;->ac:Landroidx/appcompat/widget/AppCompatTextView;

    invoke-static {v2}, Lg/gdl;->j(Landroidx/appcompat/widget/AppCompatTextView;)I

    move-result v2

    invoke-static {v0, v2}, Lg/gdl;->m(Landroid/text/StaticLayout$Builder;I)V

    goto :goto_1

    :cond_8
    sget-object v2, Lcom/google/android/material/textfield/TextInputLayout;->a:[[I

    :cond_9
    :goto_1
    invoke-static {v0}, Lg/gdl;->i(Landroid/text/StaticLayout$Builder;)Landroid/text/StaticLayout;

    move-result-object v0

    return-object v0

    :cond_a
    sget-boolean v4, Lg/cla;->a:Z

    const/16 v11, 0xc

    const/16 v12, 0xb

    const/16 v13, 0xa

    const/16 v14, 0x9

    const/16 v15, 0x8

    const/16 v16, 0x7

    const/16 v17, 0x6

    const/16 v18, 0x5

    const/16 v19, 0x4

    const/16 v20, 0x3

    const/16 v21, 0x2

    const/16 v22, 0x0

    const/16 v2, 0xd

    if-eqz v4, :cond_b

    goto :goto_4

    :cond_b
    :try_start_0
    iget-boolean v4, v1, Lg/cla;->f:Z

    if-eqz v4, :cond_c

    if-lt v7, v10, :cond_c

    const/4 v4, 0x1

    goto :goto_2

    :cond_c
    const/4 v4, 0x0

    :goto_2
    if-eqz v4, :cond_d

    sget-object v4, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_5

    :cond_d
    sget-object v4, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    :goto_3
    sput-object v4, Lg/cla;->d:Landroid/text/TextDirectionHeuristic;

    new-array v4, v2, [Ljava/lang/Class;

    const-class v7, Ljava/lang/CharSequence;

    aput-object v7, v4, v22

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v4, v6

    aput-object v7, v4, v21

    const-class v10, Landroid/text/TextPaint;

    aput-object v10, v4, v20

    aput-object v7, v4, v19

    const-class v10, Landroid/text/Layout$Alignment;

    aput-object v10, v4, v18

    const-class v10, Landroid/text/TextDirectionHeuristic;

    aput-object v10, v4, v17

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v16

    aput-object v10, v4, v15

    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v10, v4, v14

    const-class v10, Landroid/text/TextUtils$TruncateAt;

    aput-object v10, v4, v13

    aput-object v7, v4, v12

    aput-object v7, v4, v11

    const-class v7, Landroid/text/StaticLayout;

    invoke-virtual {v7, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    sput-object v4, Lg/cla;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    sput-boolean v6, Lg/cla;->a:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_4
    :try_start_1
    sget-object v4, Lg/cla;->c:Ljava/lang/reflect/Constructor;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget v10, v1, Lg/cla;->g:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v24, 0x1

    iget-object v6, v1, Lg/cla;->i:Landroid/text/Layout$Alignment;

    sget-object v25, Lg/cla;->d:Landroid/text/TextDirectionHeuristic;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/16 v26, 0xc

    iget-boolean v11, v1, Lg/cla;->o:Z

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v27, 0xb

    iget v12, v1, Lg/cla;->k:I

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v22

    aput-object v7, v2, v24

    aput-object v10, v2, v21

    aput-object v5, v2, v20

    aput-object v23, v2, v19

    aput-object v6, v2, v18

    aput-object v25, v2, v17

    aput-object v8, v2, v16

    aput-object v9, v2, v15

    aput-object v11, v2, v14

    const/4 v3, 0x0

    aput-object v3, v2, v13

    aput-object v0, v2, v27

    aput-object v12, v2, v26

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/StaticLayout;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    new-instance v2, Lg/gkz;

    invoke-direct {v2, v0}, Lg/gkz;-><init>(Ljava/lang/Exception;)V

    throw v2

    :goto_5
    new-instance v2, Lg/gkz;

    invoke-direct {v2, v0}, Lg/gkz;-><init>(Ljava/lang/Exception;)V

    throw v2
.end method
