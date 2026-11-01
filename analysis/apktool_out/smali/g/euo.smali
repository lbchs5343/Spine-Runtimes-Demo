.class public final Lg/euo;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg/bdp;
.implements Lg/qz;


# instance fields
.field public final a:Lg/w;

.field public final b:Lg/boj;


# direct methods
.method public constructor <init>(Lg/w;Lg/boj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/euo;->a:Lg/w;

    iput-object p2, p0, Lg/euo;->b:Lg/boj;

    return-void
.end method


# virtual methods
.method public final _z(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lg/euo;->a:Lg/w;

    invoke-virtual {v0, p1}, Lg/bry;->_z(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()Lg/qz;
    .locals 1

    iget-object v0, p0, Lg/euo;->a:Lg/w;

    return-object v0
.end method

.method public final getContext()Lg/boj;
    .locals 1

    iget-object v0, p0, Lg/euo;->b:Lg/boj;

    return-object v0
.end method
