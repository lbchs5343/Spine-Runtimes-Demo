.class public final Lg/fgr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# instance fields
.field public final synthetic a:Lg/jl;


# direct methods
.method public constructor <init>(Lg/jl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/fgr;->a:Lg/jl;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lg/fdz;

    iget-object v1, p0, Lg/fgr;->a:Lg/jl;

    invoke-direct {v0, v1}, Lg/fdz;-><init>(Lg/jl;)V

    return-object v0
.end method
