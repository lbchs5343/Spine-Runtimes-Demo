.class public Lg/grs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/eos;


# static fields
.field public static final u:Lg/dba;


# instance fields
.field public final v:Ljava/lang/String;

.field public final w:Ljava/lang/String;

.field public x:Ljava/lang/StringBuilder;

.field public y:Ljava/lang/String;

.field public z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lg/grs;

    invoke-static {v0}, Lg/dsr;->k(Ljava/lang/Class;)Lg/dba;

    move-result-object v0

    sput-object v0, Lg/grs;->u:Lg/dba;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    const-string v0, ""

    iput-object v0, p0, Lg/grs;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lg/grs;->z:I

    const-string v0, "    "

    iput-object v0, p0, Lg/grs;->v:Ljava/lang/String;

    sget-object v0, Lg/ur;->a:Ljava/lang/String;

    iput-object v0, p0, Lg/grs;->w:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lg/ur;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x2000

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    const-string v0, ""

    iput-object v0, p0, Lg/grs;->y:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lg/grs;->z:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p1, Lg/ur;->au:Ljava/lang/String;

    iput-object v0, p0, Lg/grs;->v:Ljava/lang/String;

    iget-object p1, p1, Lg/ur;->x:Ljava/lang/String;

    iput-object p1, p0, Lg/grs;->w:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bridge synthetic a(C)Lg/eos;
    .locals 0

    invoke-virtual {p0, p1}, Lg/grs;->s(C)Lg/grs;

    move-result-object p1

    return-object p1
.end method

.method public final aa()V
    .locals 1

    iget v0, p0, Lg/grs;->z:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lg/grs;->z:I

    invoke-virtual {p0}, Lg/grs;->af()V

    return-void
.end method

.method public final ab()V
    .locals 2

    iget v0, p0, Lg/grs;->z:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lg/grs;->z:I

    if-gez v0, :cond_0

    sget-object v0, Lg/grs;->u:Lg/dba;

    const-string v1, "Indent < 0"

    invoke-interface {v0, v1}, Lg/dba;->k(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lg/grs;->z:I

    :cond_0
    invoke-virtual {p0}, Lg/grs;->af()V

    return-void
.end method

.method public final ac(I)Lg/grs;
    .locals 0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lg/grs;->ag()V

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lg/grs;->ag()V

    invoke-virtual {p0, p1}, Lg/grs;->e(I)V

    return-object p0
.end method

.method public final ad(C)Lg/grs;
    .locals 0

    invoke-virtual {p0}, Lg/grs;->ag()V

    invoke-virtual {p0, p1}, Lg/grs;->s(C)Lg/grs;

    return-object p0
.end method

.method public final ae(Ljava/lang/String;)Lg/grs;
    .locals 0

    invoke-virtual {p0}, Lg/grs;->ag()V

    invoke-virtual {p0, p1}, Lg/grs;->t(Ljava/lang/String;)Lg/grs;

    return-object p0
.end method

.method public final af()V
    .locals 4

    iget v0, p0, Lg/grs;->z:I

    sget-object v1, Lg/evh;->a:Ljava/lang/String;

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const-string v0, ""

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lg/grs;->v:Ljava/lang/String;

    if-ne v0, v1, :cond_1

    move-object v0, v2

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    mul-int v3, v3, v0

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lg/grs;->y:Ljava/lang/String;

    return-void
.end method

.method public final ag()V
    .locals 0

    invoke-virtual {p0}, Lg/grs;->m()V

    invoke-virtual {p0}, Lg/grs;->n()V

    return-void
.end method

.method public b(Lg/cdv;)V
    .locals 0

    return-void
.end method

.method public c(Lg/flc;)Lg/eos;
    .locals 1

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    iget-object p1, p1, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic d(Ljava/lang/String;)Lg/eos;
    .locals 0

    invoke-virtual {p0, p1}, Lg/grs;->t(Ljava/lang/String;)Lg/grs;

    move-result-object p1

    return-object p1
.end method

.method public e(I)V
    .locals 0

    return-void
.end method

.method public f(Lg/ahw;)V
    .locals 0

    return-void
.end method

.method public finish()Lg/emz;
    .locals 4

    iget-object v0, p0, Lg/grs;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v2, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object v2, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v1, 0x0

    iput-object v1, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    new-instance v1, Lg/grx;

    invoke-direct {v1, v0}, Lg/grx;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method public g(Lg/cfr;)V
    .locals 0

    return-void
.end method

.method public bridge synthetic h(Ljava/lang/String;)Lg/eos;
    .locals 0

    invoke-virtual {p0, p1}, Lg/grs;->r(Ljava/lang/String;)Lg/grs;

    move-result-object p1

    return-object p1
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/grs;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public n()V
    .locals 2

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/grs;->y:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public r(Ljava/lang/String;)Lg/grs;
    .locals 4

    iget-object v0, p0, Lg/grs;->w:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lg/grs;->y:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0

    :cond_0
    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public s(C)Lg/grs;
    .locals 1

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lg/grs;
    .locals 1

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lg/grs;->x:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
