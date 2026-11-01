.class public final Lg/cmw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cfr;


# instance fields
.field public final a:I

.field public final c:Ljava/lang/String;

.field public d:I

.field public final e:Lg/hed;

.field public final f:I

.field public final g:Lg/fbu;


# direct methods
.method public constructor <init>(Lg/hed;Lg/vm;)V
    .locals 3

    iget v0, p2, Lg/vm;->f:I

    iget v1, p2, Lg/vm;->g:I

    invoke-virtual {p2}, Lg/vm;->u()Lg/ejb;

    move-result-object v2

    iget-object v2, v2, Lg/ejb;->e:Lg/cwx;

    invoke-virtual {p2}, Lg/vm;->u()Lg/ejb;

    move-result-object p2

    iget-object p2, p2, Lg/ejb;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/cmw;->e:Lg/hed;

    iput v0, p0, Lg/cmw;->f:I

    iput v1, p0, Lg/cmw;->a:I

    iput-object p2, p0, Lg/cmw;->c:Ljava/lang/String;

    new-instance p1, Lg/fbu;

    invoke-direct {p1, p0}, Lg/fbu;-><init>(Lg/cmw;)V

    iput-object p1, p0, Lg/cmw;->g:Lg/fbu;

    return-void
.end method

.method public static h(Lg/hed;Lg/vm;)Lg/cmw;
    .locals 2

    invoke-virtual {p1}, Lg/vm;->u()Lg/ejb;

    move-result-object v0

    iget-boolean v1, v0, Lg/ejb;->b:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, v0, Lg/ejb;->g:Lg/cmw;

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    new-instance v1, Lg/cmw;

    invoke-direct {v1, p0, p1}, Lg/cmw;-><init>(Lg/hed;Lg/vm;)V

    iput-object v1, v0, Lg/ejb;->g:Lg/cmw;

    return-object v1
.end method


# virtual methods
.method public final b()Lg/pk;
    .locals 1

    sget-object v0, Lg/pk;->VAR:Lg/pk;

    return-object v0
.end method

.method public final bq(I)V
    .locals 0

    iput p1, p0, Lg/cmw;->d:I

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lg/cmw;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lg/cmw;

    iget v1, p0, Lg/cmw;->f:I

    iget v3, p1, Lg/cmw;->f:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Lg/cmw;->a:I

    iget v3, p1, Lg/cmw;->a:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lg/cmw;->e:Lg/hed;

    iget-object p1, p1, Lg/cmw;->e:Lg/hed;

    invoke-virtual {v1, p1}, Lg/hed;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lg/cmw;->f:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lg/cmw;->a:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lg/cmw;->e:Lg/hed;

    iget-object v1, v1, Lg/hed;->al:Lg/ayu;

    iget v1, v1, Lg/ayu;->b:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "VarNode{r"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lg/cmw;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x76

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lg/cmw;->a:I

    const/16 v2, 0x7d

    invoke-static {v0, v1, v2}, Lg/awf;->s(Ljava/lang/StringBuilder;IC)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
