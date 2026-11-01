.class public final Lg/zm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/cka;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lg/dpa;
    .locals 4

    new-instance v0, Lg/dpa;

    const-string v1, "Java Input"

    const-string v2, "Load .class and .jar files"

    const-string v3, "java-input"

    invoke-direct {v0, v3, v1, v2}, Lg/dpa;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final b(Lg/gay;)V
    .locals 2

    new-instance v0, Lg/gpy;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lg/gpy;-><init>(ILjava/lang/Object;)V

    iget-object p1, p1, Lg/gay;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
