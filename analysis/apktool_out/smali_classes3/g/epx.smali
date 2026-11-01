.class public final Lg/epx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final a:I

.field public final b:Z


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lg/epx;->a:I

    iput-boolean p2, p0, Lg/epx;->b:Z

    return-void
.end method


# virtual methods
.method public final c(Lg/eih;Lg/eih;)I
    .locals 4

    iget-boolean v0, p1, Lg/eih;->directory:Z

    iget-boolean v1, p2, Lg/eih;->directory:Z

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    return v2

    :cond_1
    iget v0, p0, Lg/epx;->a:I

    if-eq v0, v2, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lg/eih;->extension:Ljava/lang/String;

    iget-object v1, p2, Lg/eih;->extension:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_3
    iget-wide v0, p1, Lg/eih;->modifiedTime:J

    iget-wide v2, p2, Lg/eih;->modifiedTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    goto :goto_0

    :cond_4
    iget-wide v0, p1, Lg/eih;->sizeBytes:J

    iget-wide v2, p2, Lg/eih;->sizeBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    move-result v0

    :goto_0
    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    :cond_5
    if-nez v0, :cond_6

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :cond_6
    iget-boolean p1, p0, Lg/epx;->b:Z

    if-eqz p1, :cond_7

    return v0

    :cond_7
    neg-int p1, v0

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lg/eih;

    check-cast p2, Lg/eih;

    invoke-virtual {p0, p1, p2}, Lg/epx;->c(Lg/eih;Lg/eih;)I

    move-result p1

    return p1
.end method
