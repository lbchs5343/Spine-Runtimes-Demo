.class public final Lg/gqu;
.super Lg/lh;
.source "SourceFile"

# interfaces
.implements Lg/cih;


# instance fields
.field public final d:Ljava/util/List;


# direct methods
.method public constructor <init>(Lg/eek;)V
    .locals 2

    invoke-direct {p0}, Lg/lh;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lg/gqu;->d:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Lg/lh;-><init>()V

    iput-object p1, p0, Lg/gqu;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    const-string v0, "IC"

    return-object v0
.end method

.method public final synthetic b(Lg/fsw;Lg/eos;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lg/awf;->k(Lg/cih;Lg/fsw;Lg/eos;)V

    return-void
.end method

.method public final c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lg/gqu;->d:Ljava/util/List;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "InsnContainer"

    return-object v0
.end method
