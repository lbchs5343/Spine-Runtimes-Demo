.class public final Lg/fiq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/fog;


# instance fields
.field public final a:Lg/au;

.field public final b:Lg/cwx;


# direct methods
.method public constructor <init>(Lg/au;Lg/cwx;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fiq;->a:Lg/au;

    iput-object p2, p0, Lg/fiq;->b:Lg/cwx;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const-class v2, Lg/fiq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/fiq;

    iget-object v2, p0, Lg/fiq;->a:Lg/au;

    iget-object v3, p1, Lg/fiq;->a:Lg/au;

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lg/fiq;->b:Lg/cwx;

    iget-object p1, p1, Lg/fiq;->b:Lg/cwx;

    invoke-static {v2, p1}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final f()Lg/au;
    .locals 1

    iget-object v0, p0, Lg/fiq;->a:Lg/au;

    return-object v0
.end method

.method public final getType()Lg/cwx;
    .locals 1

    iget-object v0, p0, Lg/fiq;->b:Lg/cwx;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lg/fiq;->a:Lg/au;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lg/fiq;->b:Lg/cwx;

    aput-object v2, v0, v1

    invoke-static {v0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/fiq;->a:Lg/au;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/fiq;->b:Lg/cwx;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
