.class public final Lg/jl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/gkt;


# instance fields
.field public final a:Ljava/lang/CharSequence;

.field public final b:Lg/bto;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Lg/bto;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Lg/bff;->p(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/jl;->a:Ljava/lang/CharSequence;

    iput-object p2, p0, Lg/jl;->b:Lg/bto;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lg/fdz;

    invoke-direct {v0, p0}, Lg/fdz;-><init>(Lg/jl;)V

    return-object v0
.end method
