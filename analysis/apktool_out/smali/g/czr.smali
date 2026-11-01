.class public final Lg/czr;
.super Lg/ccf;
.source "SourceFile"

# interfaces
.implements Lg/fzw;


# instance fields
.field public final n:Lg/fyw;


# direct methods
.method public constructor <init>(Lg/fyw;)V
    .locals 0

    invoke-direct {p0}, Lg/bfw;-><init>()V

    iput-object p1, p0, Lg/czr;->n:Lg/fyw;

    return-void
.end method


# virtual methods
.method public final _ch(Ljava/lang/Throwable;)Z
    .locals 1

    invoke-virtual {p0}, Lg/aov;->e()Lg/fyw;

    move-result-object v0

    invoke-virtual {v0, p1}, Lg/fyw;->_aa(Ljava/lang/Throwable;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object p1, p0, Lg/czr;->n:Lg/fyw;

    invoke-virtual {p0}, Lg/aov;->e()Lg/fyw;

    move-result-object v0

    invoke-virtual {p1, v0}, Lg/fyw;->ae(Ljava/lang/Object;)Z

    return-void
.end method
