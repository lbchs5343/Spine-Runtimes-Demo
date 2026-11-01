.class public final Lg/bep;
.super Lg/boo;
.source "SourceFile"


# instance fields
.field public final synthetic _bp:Lg/ib;


# direct methods
.method public constructor <init>(Lg/ib;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg/bep;->_bp:Lg/ib;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 1

    iget-object v0, p0, Lg/bep;->_bp:Lg/ib;

    invoke-virtual {v0}, Lg/ib;->cancel()V

    return-void
.end method
