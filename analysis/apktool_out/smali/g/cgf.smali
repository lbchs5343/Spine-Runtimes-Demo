.class public final Lg/cgf;
.super Ljava/lang/Object;


# instance fields
.field public a:Landroid/util/LongSparseArray;

.field public b:F

.field public c:I

.field public d:Z

.field public e:Ljava/util/HashMap;

.field public f:F

.field public g:Ljava/util/HashMap;

.field public final h:Lg/ejl;

.field public i:Ljava/util/ArrayList;

.field public j:Lg/bul;

.field public k:Lg/gnb;

.field public l:F

.field public m:Ljava/util/ArrayList;

.field public final n:Ljava/util/HashSet;

.field public o:Landroid/graphics/Rect;

.field public p:Ljava/lang/String;

.field public q:Ljava/util/HashMap;

.field public r:Landroid/util/SparseArray;

.field public s:Lg/dac;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lg/ejl;

    invoke-direct {v0}, Lg/ejl;-><init>()V

    iput-object v0, p0, Lg/cgf;->h:Lg/ejl;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lg/cgf;->n:Ljava/util/HashSet;

    const/4 v0, 0x0

    iput v0, p0, Lg/cgf;->c:I

    const-string v0, ""

    iput-object v0, p0, Lg/cgf;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final t(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lg/hbp;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lg/cgf;->n:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LottieComposition:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/cgf;->m:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lg/cbc;

    const-string v3, "\t"

    invoke-virtual {v2, v3}, Lg/cbc;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(Ljava/lang/String;)Lg/ewh;
    .locals 6

    iget-object v0, p0, Lg/cgf;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lg/cgf;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lg/ewh;

    iget-object v4, v3, Lg/ewh;->a:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v5, "\r"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final v()F
    .locals 2

    iget v0, p0, Lg/cgf;->f:F

    iget v1, p0, Lg/cgf;->b:F

    sub-float/2addr v0, v1

    iget v1, p0, Lg/cgf;->l:F

    div-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    mul-float v0, v0, v1

    float-to-long v0, v0

    long-to-float v0, v0

    return v0
.end method
