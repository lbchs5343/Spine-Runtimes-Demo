.class public final Lg/ayf;
.super Lg/w;
.source "SourceFile"


# instance fields
.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field synthetic result:Ljava/lang/Object;


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lg/ayf;->result:Ljava/lang/Object;

    iget p1, p0, Lg/ayf;->label:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lg/ayf;->label:I

    const/4 p1, 0x0

    invoke-static {p1, p0}, Lg/gs;->aj(Lg/vd;Lg/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
