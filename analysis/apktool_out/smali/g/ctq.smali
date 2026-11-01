.class public final Lg/ctq;
.super Lg/aov;
.source "SourceFile"


# instance fields
.field public final n:Lg/era;


# direct methods
.method public constructor <init>(Lg/era;)V
    .locals 0

    invoke-direct {p0}, Lg/bfw;-><init>()V

    iput-object p1, p0, Lg/ctq;->n:Lg/era;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/Throwable;)V
    .locals 1

    iget-object v0, p0, Lg/ctq;->n:Lg/era;

    invoke-interface {v0, p1}, Lg/era;->b(Ljava/lang/Throwable;)V

    return-void
.end method
