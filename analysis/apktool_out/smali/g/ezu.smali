.class public final Lg/ezu;
.super Lg/pj;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^\\d+$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public final f()Ljava/lang/String;
    .locals 1

    const-string v0, "RenameVisitor"

    return-object v0
.end method

.method public final h(Lg/dwg;)V
    .locals 0

    iget-object p1, p1, Lg/dwg;->i:Lg/ur;

    iget-object p1, p1, Lg/ur;->ad:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    return-void
.end method
