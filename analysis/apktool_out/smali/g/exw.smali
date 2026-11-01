.class public final Lg/exw;
.super Lg/lh;
.source "SourceFile"


# instance fields
.field public final a:Lg/fza;

.field public final b:Lg/fza;


# direct methods
.method public constructor <init>(Lg/fza;Lg/fza;Z)V
    .locals 0

    invoke-direct {p0}, Lg/lh;-><init>()V

    if-eqz p3, :cond_0

    sget-object p3, Lg/csv;->SYNTHETIC:Lg/csv;

    invoke-virtual {p0, p3}, Lg/lh;->w(Lg/csv;)V

    :cond_0
    iput-object p1, p0, Lg/exw;->a:Lg/fza;

    iput-object p2, p0, Lg/exw;->b:Lg/fza;

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

    const-class v2, Lg/exw;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lg/exw;

    iget-object v2, p0, Lg/exw;->a:Lg/fza;

    iget-object v3, p1, Lg/exw;->a:Lg/fza;

    invoke-virtual {v2, v3}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lg/exw;->b:Lg/fza;

    iget-object p1, p1, Lg/exw;->b:Lg/fza;

    invoke-virtual {v2, p1}, Lg/fza;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lg/exw;->a:Lg/fza;

    iget v0, v0, Lg/fza;->h:I

    iget-object v1, p0, Lg/exw;->b:Lg/fza;

    iget v1, v1, Lg/fza;->h:I

    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v1, v0

    return v1
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Edge: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lg/exw;->a:Lg/fza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lg/exw;->b:Lg/fza;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
