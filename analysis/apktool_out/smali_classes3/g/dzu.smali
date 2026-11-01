.class public final Lg/dzu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:I

.field public final c:Lg/akj;

.field public final d:Lg/ama;


# direct methods
.method public constructor <init>(Lg/akj;Lg/ama;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/dzu;->c:Lg/akj;

    iput-object p2, p0, Lg/dzu;->d:Lg/ama;

    iput-object p3, p0, Lg/dzu;->a:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const/4 p1, 0x2

    aput-object p3, v0, p1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p1

    iput p1, p0, Lg/dzu;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    :cond_1
    instance-of v2, p1, Lg/dzu;

    if-nez v2, :cond_2

    return v0

    :cond_2
    check-cast p1, Lg/dzu;

    iget-object v2, p0, Lg/dzu;->c:Lg/akj;

    iget-object v3, p1, Lg/dzu;->c:Lg/akj;

    invoke-static {v2, v3}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lg/dzu;->d:Lg/ama;

    iget-object v3, p1, Lg/dzu;->d:Lg/ama;

    invoke-static {v2, v3}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lg/dzu;->a:Ljava/lang/String;

    iget-object p1, p1, Lg/dzu;->a:Ljava/lang/String;

    invoke-static {v2, p1}, Lg/ffb;->w(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget v0, p0, Lg/dzu;->b:I

    return v0
.end method
